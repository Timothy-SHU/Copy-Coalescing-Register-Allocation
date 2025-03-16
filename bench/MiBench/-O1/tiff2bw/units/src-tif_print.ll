; ModuleID = 'src/tif_print.c'
source_filename = "src/tif_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }

@.str = private unnamed_addr constant [32 x i8] c"TIFF Directory at offset 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"  Subfile Type:\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%sreduced-resolution image\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"%smulti-page document\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"%stransparency mask\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c" (%lu = 0x%lx)\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"  Image Width: %lu Image Length: %lu\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c" Image Depth: %lu\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"  Pixar Full Image Width: %lu Full Image Length: %lu\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Texture Format\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Texture Wrap Modes\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"  Field of View Cotangent: %g\0A\00", align 1
@.str.15 = private unnamed_addr constant [66 x i8] c"  Matrix NP:\0A\09%g %g %g %g\0A\09%g %g %g %g\0A\09%g %g %g %g\0A\09%g %g %g %g\0A\00", align 1
@.str.16 = private unnamed_addr constant [66 x i8] c"  Matrix Nl:\0A\09%g %g %g %g\0A\09%g %g %g %g\0A\09%g %g %g %g\0A\09%g %g %g %g\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"  Tile Width: %lu Tile Length: %lu\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c" Tile Depth: %lu\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"  Resolution: %g, %g\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c" (unitless)\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c" pixels/inch\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c" pixels/cm\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c" (unit %u = 0x%x)\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"  Position: %g, %g\0A\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"  Bits/Sample: %u\0A\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"  Sample Format: \00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"void\0A\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"signed integer\0A\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"unsigned integer\0A\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"IEEE floating point\0A\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"%u (0x%x)\0A\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"  Compression Scheme: \00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"  Photometric Interpretation: \00", align 1
@reltable.TIFFPrintDirectory = internal unnamed_addr constant [9 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.112 to i64), i64 ptrtoint (ptr @reltable.TIFFPrintDirectory to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.113 to i64), i64 ptrtoint (ptr @reltable.TIFFPrintDirectory to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.114 to i64), i64 ptrtoint (ptr @reltable.TIFFPrintDirectory to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.115 to i64), i64 ptrtoint (ptr @reltable.TIFFPrintDirectory to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.116 to i64), i64 ptrtoint (ptr @reltable.TIFFPrintDirectory to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.117 to i64), i64 ptrtoint (ptr @reltable.TIFFPrintDirectory to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.118 to i64), i64 ptrtoint (ptr @reltable.TIFFPrintDirectory to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.119 to i64), i64 ptrtoint (ptr @reltable.TIFFPrintDirectory to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.120 to i64), i64 ptrtoint (ptr @reltable.TIFFPrintDirectory to i64)) to i32)], align 4
@.str.35 = private unnamed_addr constant [13 x i8] c"CIE Log2(L)\0A\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"CIE Log2(L) (u',v')\0A\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"  Extra Samples: %u<\00", align 1
@.str.38 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"%sunspecified\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"%sassoc-alpha\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"%sunassoc-alpha\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"%s%u (0x%x)\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@.str.45 = private unnamed_addr constant [42 x i8] c"  Sample to Nits conversion factor: %.4e\0A\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"  Ink Set: \00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"CMYK\0A\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"  Ink Names: \00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c" Number of Inks: %u\0A\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"  Dot Range: %u-%u\0A\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"Target Printer\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"  Thresholding: \00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"bilevel art scan\0A\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"halftone or dithered scan\0A\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"error diffused\0A\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"  FillOrder: \00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"msb-to-lsb\0A\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"lsb-to-msb\0A\00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"  YCbCr Subsampling: %u, %u\0A\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"  YCbCr Positioning: \00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"centered\0A\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"cosited\0A\00", align 1
@.str.64 = private unnamed_addr constant [34 x i8] c"  YCbCr Coefficients: %g, %g, %g\0A\00", align 1
@.str.65 = private unnamed_addr constant [36 x i8] c"  Halftone Hints: light %u dark %u\0A\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"Artist\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"Date & Time\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"Host Computer\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"Software\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"Document Name\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"Image Description\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"Make\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"Model\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"  Orientation: \00", align 1
@reltable.TIFFPrintDirectory.130 = internal unnamed_addr constant [9 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.121 to i64), i64 ptrtoint (ptr @reltable.TIFFPrintDirectory.130 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.122 to i64), i64 ptrtoint (ptr @reltable.TIFFPrintDirectory.130 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.123 to i64), i64 ptrtoint (ptr @reltable.TIFFPrintDirectory.130 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.124 to i64), i64 ptrtoint (ptr @reltable.TIFFPrintDirectory.130 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.125 to i64), i64 ptrtoint (ptr @reltable.TIFFPrintDirectory.130 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.126 to i64), i64 ptrtoint (ptr @reltable.TIFFPrintDirectory.130 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.127 to i64), i64 ptrtoint (ptr @reltable.TIFFPrintDirectory.130 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.128 to i64), i64 ptrtoint (ptr @reltable.TIFFPrintDirectory.130 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.129 to i64), i64 ptrtoint (ptr @reltable.TIFFPrintDirectory.130 to i64)) to i32)], align 4
@.str.75 = private unnamed_addr constant [21 x i8] c"  Samples/Pixel: %u\0A\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"  Rows/Strip: \00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"(infinite)\0A\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"  Min Sample Value: %u\0A\00", align 1
@.str.80 = private unnamed_addr constant [24 x i8] c"  Max Sample Value: %u\0A\00", align 1
@.str.81 = private unnamed_addr constant [25 x i8] c"  SMin Sample Value: %g\0A\00", align 1
@.str.82 = private unnamed_addr constant [25 x i8] c"  SMax Sample Value: %g\0A\00", align 1
@.str.83 = private unnamed_addr constant [25 x i8] c"  Planar Configuration: \00", align 1
@.str.84 = private unnamed_addr constant [20 x i8] c"single image plane\0A\00", align 1
@.str.85 = private unnamed_addr constant [23 x i8] c"separate image planes\0A\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"Page Name\00", align 1
@.str.87 = private unnamed_addr constant [22 x i8] c"  Page Number: %u-%u\0A\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"  Color Map: \00", align 1
@.str.89 = private unnamed_addr constant [22 x i8] c"   %5lu: %5u %5u %5u\0A\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"(present)\0A\00", align 1
@.str.91 = private unnamed_addr constant [22 x i8] c"  White Point: %g-%g\0A\00", align 1
@.str.92 = private unnamed_addr constant [45 x i8] c"  Primary Chromaticities: %g,%g %g,%g %g,%g\0A\00", align 1
@.str.93 = private unnamed_addr constant [26 x i8] c"  Reference Black/White:\0A\00", align 1
@.str.94 = private unnamed_addr constant [18 x i8] c"    %2d: %5g %5g\0A\00", align 1
@.str.95 = private unnamed_addr constant [22 x i8] c"  Transfer Function: \00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"    %2lu: %5u\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c" %5u\00", align 1
@.str.98 = private unnamed_addr constant [37 x i8] c"  ICC Profile: <present>, %lu bytes\0A\00", align 1
@.str.99 = private unnamed_addr constant [40 x i8] c"  Photoshop Data: <present>, %lu bytes\0A\00", align 1
@.str.100 = private unnamed_addr constant [43 x i8] c"  RichTIFFIPTC Data: <present>, %lu bytes\0A\00", align 1
@.str.101 = private unnamed_addr constant [18 x i8] c"  SubIFD Offsets:\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c" %5lu\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"  %lu %s:\0A\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"Tiles\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"Strips\00", align 1
@.str.106 = private unnamed_addr constant [24 x i8] c"    %3lu: [%8lu, %8lu]\0A\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"\09t\08b\0Dr\0An\0Bv\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"\\%c\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"  %s: \22\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.112 = private unnamed_addr constant [13 x i8] c"min-is-white\00", align 1
@.str.113 = private unnamed_addr constant [13 x i8] c"min-is-black\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"RGB color\00", align 1
@.str.115 = private unnamed_addr constant [34 x i8] c"palette color (RGB from colormap)\00", align 1
@.str.116 = private unnamed_addr constant [18 x i8] c"transparency mask\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"separated\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"YCbCr\00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c"7 (0x7)\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"CIE L*a*b*\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"0 (0x0)\00", align 1
@.str.122 = private unnamed_addr constant [21 x i8] c"row 0 top, col 0 lhs\00", align 1
@.str.123 = private unnamed_addr constant [21 x i8] c"row 0 top, col 0 rhs\00", align 1
@.str.124 = private unnamed_addr constant [24 x i8] c"row 0 bottom, col 0 rhs\00", align 1
@.str.125 = private unnamed_addr constant [24 x i8] c"row 0 bottom, col 0 lhs\00", align 1
@.str.126 = private unnamed_addr constant [21 x i8] c"row 0 lhs, col 0 top\00", align 1
@.str.127 = private unnamed_addr constant [21 x i8] c"row 0 rhs, col 0 top\00", align 1
@.str.128 = private unnamed_addr constant [24 x i8] c"row 0 rhs, col 0 bottom\00", align 1
@.str.129 = private unnamed_addr constant [24 x i8] c"row 0 lhs, col 0 bottom\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @TIFFPrintDirectory(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i64 noundef %6)
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6
  %9 = load i64, ptr %8, align 8, !tbaa !16
  %10 = and i64 %9, 32
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %38, label %12

12:                                               ; preds = %3
  %13 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %1)
  %14 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !18
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2)
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi ptr [ @.str.4, %18 ], [ @.str.2, %12 ]
  %22 = load i32, ptr %14, align 8, !tbaa !18
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %21)
  br label %27

27:                                               ; preds = %25, %20
  %28 = phi ptr [ @.str.4, %25 ], [ %21, %20 ]
  %29 = load i32, ptr %14, align 8, !tbaa !18
  %30 = and i32 %29, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %28)
  br label %34

34:                                               ; preds = %32, %27
  %35 = load i32, ptr %14, align 8, !tbaa !18
  %36 = zext i32 %35 to i64
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.7, i64 noundef %36, i64 noundef %36)
  br label %38

38:                                               ; preds = %34, %3
  %39 = load i64, ptr %8, align 8, !tbaa !16
  %40 = and i64 %39, 2
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %61, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !19
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !20
  %48 = zext i32 %47 to i64
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.8, i64 noundef %45, i64 noundef %48)
  %50 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 0, i64 1
  %51 = load i64, ptr %50, align 8, !tbaa !16
  %52 = and i64 %51, 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 3
  %56 = load i32, ptr %55, align 8, !tbaa !21
  %57 = zext i32 %56 to i64
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.9, i64 noundef %57)
  br label %59

59:                                               ; preds = %54, %42
  %60 = tail call i32 @fputc(i32 10, ptr %1)
  br label %61

61:                                               ; preds = %59, %38
  %62 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 0, i64 1
  %63 = load i64, ptr %62, align 8, !tbaa !16
  %64 = and i64 %63, 25165824
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 67
  %68 = load i32, ptr %67, align 8, !tbaa !22
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 68
  %71 = load i32, ptr %70, align 4, !tbaa !23
  %72 = zext i32 %71 to i64
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.11, i64 noundef %69, i64 noundef %72)
  br label %74

74:                                               ; preds = %61, %66
  %75 = load i64, ptr %62, align 8, !tbaa !16
  %76 = and i64 %75, 33554432
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 69
  %80 = load ptr, ptr %79, align 8, !tbaa !24
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.12)
  tail call void @_TIFFprintAscii(ptr noundef %1, ptr noundef %80)
  %82 = tail call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %1)
  br label %83

83:                                               ; preds = %78, %74
  %84 = load i64, ptr %62, align 8, !tbaa !16
  %85 = and i64 %84, 67108864
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 70
  %89 = load ptr, ptr %88, align 8, !tbaa !25
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.13)
  tail call void @_TIFFprintAscii(ptr noundef %1, ptr noundef %89)
  %91 = tail call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %1)
  br label %92

92:                                               ; preds = %87, %83
  %93 = load i64, ptr %62, align 8, !tbaa !16
  %94 = and i64 %93, 134217728
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 71
  %98 = load float, ptr %97, align 8, !tbaa !26
  %99 = fpext float %98 to double
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.14, double noundef %99)
  br label %101

101:                                              ; preds = %96, %92
  %102 = load i64, ptr %62, align 8, !tbaa !16
  %103 = and i64 %102, 268435456
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %156, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 72
  %107 = load ptr, ptr %106, align 8, !tbaa !27
  %108 = load float, ptr %107, align 4, !tbaa !28
  %109 = fpext float %108 to double
  %110 = getelementptr inbounds [4 x float], ptr %107, i64 0, i64 1
  %111 = load float, ptr %110, align 4, !tbaa !28
  %112 = fpext float %111 to double
  %113 = getelementptr inbounds [4 x float], ptr %107, i64 0, i64 2
  %114 = load float, ptr %113, align 4, !tbaa !28
  %115 = fpext float %114 to double
  %116 = getelementptr inbounds [4 x float], ptr %107, i64 0, i64 3
  %117 = load float, ptr %116, align 4, !tbaa !28
  %118 = fpext float %117 to double
  %119 = getelementptr inbounds [4 x [4 x float]], ptr %107, i64 0, i64 1
  %120 = load float, ptr %119, align 4, !tbaa !28
  %121 = fpext float %120 to double
  %122 = getelementptr inbounds [4 x [4 x float]], ptr %107, i64 0, i64 1, i64 1
  %123 = load float, ptr %122, align 4, !tbaa !28
  %124 = fpext float %123 to double
  %125 = getelementptr inbounds [4 x [4 x float]], ptr %107, i64 0, i64 1, i64 2
  %126 = load float, ptr %125, align 4, !tbaa !28
  %127 = fpext float %126 to double
  %128 = getelementptr inbounds [4 x [4 x float]], ptr %107, i64 0, i64 1, i64 3
  %129 = load float, ptr %128, align 4, !tbaa !28
  %130 = fpext float %129 to double
  %131 = getelementptr inbounds [4 x [4 x float]], ptr %107, i64 0, i64 2
  %132 = load float, ptr %131, align 4, !tbaa !28
  %133 = fpext float %132 to double
  %134 = getelementptr inbounds [4 x [4 x float]], ptr %107, i64 0, i64 2, i64 1
  %135 = load float, ptr %134, align 4, !tbaa !28
  %136 = fpext float %135 to double
  %137 = getelementptr inbounds [4 x [4 x float]], ptr %107, i64 0, i64 2, i64 2
  %138 = load float, ptr %137, align 4, !tbaa !28
  %139 = fpext float %138 to double
  %140 = getelementptr inbounds [4 x [4 x float]], ptr %107, i64 0, i64 2, i64 3
  %141 = load float, ptr %140, align 4, !tbaa !28
  %142 = fpext float %141 to double
  %143 = getelementptr inbounds [4 x [4 x float]], ptr %107, i64 0, i64 3
  %144 = load float, ptr %143, align 4, !tbaa !28
  %145 = fpext float %144 to double
  %146 = getelementptr inbounds [4 x [4 x float]], ptr %107, i64 0, i64 3, i64 1
  %147 = load float, ptr %146, align 4, !tbaa !28
  %148 = fpext float %147 to double
  %149 = getelementptr inbounds [4 x [4 x float]], ptr %107, i64 0, i64 3, i64 2
  %150 = load float, ptr %149, align 4, !tbaa !28
  %151 = fpext float %150 to double
  %152 = getelementptr inbounds [4 x [4 x float]], ptr %107, i64 0, i64 3, i64 3
  %153 = load float, ptr %152, align 4, !tbaa !28
  %154 = fpext float %153 to double
  %155 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.15, double noundef %109, double noundef %112, double noundef %115, double noundef %118, double noundef %121, double noundef %124, double noundef %127, double noundef %130, double noundef %133, double noundef %136, double noundef %139, double noundef %142, double noundef %145, double noundef %148, double noundef %151, double noundef %154)
  br label %156

156:                                              ; preds = %105, %101
  %157 = load i64, ptr %62, align 8, !tbaa !16
  %158 = and i64 %157, 536870912
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %211, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 73
  %162 = load ptr, ptr %161, align 8, !tbaa !29
  %163 = load float, ptr %162, align 4, !tbaa !28
  %164 = fpext float %163 to double
  %165 = getelementptr inbounds [4 x float], ptr %162, i64 0, i64 1
  %166 = load float, ptr %165, align 4, !tbaa !28
  %167 = fpext float %166 to double
  %168 = getelementptr inbounds [4 x float], ptr %162, i64 0, i64 2
  %169 = load float, ptr %168, align 4, !tbaa !28
  %170 = fpext float %169 to double
  %171 = getelementptr inbounds [4 x float], ptr %162, i64 0, i64 3
  %172 = load float, ptr %171, align 4, !tbaa !28
  %173 = fpext float %172 to double
  %174 = getelementptr inbounds [4 x [4 x float]], ptr %162, i64 0, i64 1
  %175 = load float, ptr %174, align 4, !tbaa !28
  %176 = fpext float %175 to double
  %177 = getelementptr inbounds [4 x [4 x float]], ptr %162, i64 0, i64 1, i64 1
  %178 = load float, ptr %177, align 4, !tbaa !28
  %179 = fpext float %178 to double
  %180 = getelementptr inbounds [4 x [4 x float]], ptr %162, i64 0, i64 1, i64 2
  %181 = load float, ptr %180, align 4, !tbaa !28
  %182 = fpext float %181 to double
  %183 = getelementptr inbounds [4 x [4 x float]], ptr %162, i64 0, i64 1, i64 3
  %184 = load float, ptr %183, align 4, !tbaa !28
  %185 = fpext float %184 to double
  %186 = getelementptr inbounds [4 x [4 x float]], ptr %162, i64 0, i64 2
  %187 = load float, ptr %186, align 4, !tbaa !28
  %188 = fpext float %187 to double
  %189 = getelementptr inbounds [4 x [4 x float]], ptr %162, i64 0, i64 2, i64 1
  %190 = load float, ptr %189, align 4, !tbaa !28
  %191 = fpext float %190 to double
  %192 = getelementptr inbounds [4 x [4 x float]], ptr %162, i64 0, i64 2, i64 2
  %193 = load float, ptr %192, align 4, !tbaa !28
  %194 = fpext float %193 to double
  %195 = getelementptr inbounds [4 x [4 x float]], ptr %162, i64 0, i64 2, i64 3
  %196 = load float, ptr %195, align 4, !tbaa !28
  %197 = fpext float %196 to double
  %198 = getelementptr inbounds [4 x [4 x float]], ptr %162, i64 0, i64 3
  %199 = load float, ptr %198, align 4, !tbaa !28
  %200 = fpext float %199 to double
  %201 = getelementptr inbounds [4 x [4 x float]], ptr %162, i64 0, i64 3, i64 1
  %202 = load float, ptr %201, align 4, !tbaa !28
  %203 = fpext float %202 to double
  %204 = getelementptr inbounds [4 x [4 x float]], ptr %162, i64 0, i64 3, i64 2
  %205 = load float, ptr %204, align 4, !tbaa !28
  %206 = fpext float %205 to double
  %207 = getelementptr inbounds [4 x [4 x float]], ptr %162, i64 0, i64 3, i64 3
  %208 = load float, ptr %207, align 4, !tbaa !28
  %209 = fpext float %208 to double
  %210 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.16, double noundef %164, double noundef %167, double noundef %170, double noundef %173, double noundef %176, double noundef %179, double noundef %182, double noundef %185, double noundef %188, double noundef %191, double noundef %194, double noundef %197, double noundef %200, double noundef %203, double noundef %206, double noundef %209)
  br label %211

211:                                              ; preds = %160, %156
  %212 = load i64, ptr %8, align 8, !tbaa !16
  %213 = and i64 %212, 4
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %233, label %215

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 4
  %217 = load i32, ptr %216, align 4, !tbaa !30
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 5
  %220 = load i32, ptr %219, align 8, !tbaa !31
  %221 = zext i32 %220 to i64
  %222 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.17, i64 noundef %218, i64 noundef %221)
  %223 = load i64, ptr %62, align 8, !tbaa !16
  %224 = and i64 %223, 16
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %231, label %226

226:                                              ; preds = %215
  %227 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 6
  %228 = load i32, ptr %227, align 4, !tbaa !32
  %229 = zext i32 %228 to i64
  %230 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.18, i64 noundef %229)
  br label %231

231:                                              ; preds = %226, %215
  %232 = tail call i32 @fputc(i32 10, ptr %1)
  br label %233

233:                                              ; preds = %231, %211
  %234 = load i64, ptr %8, align 8, !tbaa !16
  %235 = and i64 %234, 8
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %262, label %237

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 21
  %239 = load float, ptr %238, align 8, !tbaa !33
  %240 = fpext float %239 to double
  %241 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 22
  %242 = load float, ptr %241, align 4, !tbaa !34
  %243 = fpext float %242 to double
  %244 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.19, double noundef %240, double noundef %243)
  %245 = load i64, ptr %8, align 8, !tbaa !16
  %246 = and i64 %245, 4194304
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %260, label %248

248:                                              ; preds = %237
  %249 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 23
  %250 = load i16, ptr %249, align 8, !tbaa !35
  switch i16 %250, label %257 [
    i16 1, label %251
    i16 2, label %253
    i16 3, label %255
  ]

251:                                              ; preds = %248
  %252 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 11, i64 1, ptr %1)
  br label %260

253:                                              ; preds = %248
  %254 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 12, i64 1, ptr %1)
  br label %260

255:                                              ; preds = %248
  %256 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 10, i64 1, ptr %1)
  br label %260

257:                                              ; preds = %248
  %258 = zext i16 %250 to i32
  %259 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %258, i32 noundef %258)
  br label %260

260:                                              ; preds = %251, %253, %255, %257, %237
  %261 = tail call i32 @fputc(i32 10, ptr %1)
  br label %262

262:                                              ; preds = %260, %233
  %263 = load i64, ptr %8, align 8, !tbaa !16
  %264 = and i64 %263, 16
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %274, label %266

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 25
  %268 = load float, ptr %267, align 4, !tbaa !36
  %269 = fpext float %268 to double
  %270 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 26
  %271 = load float, ptr %270, align 8, !tbaa !37
  %272 = fpext float %271 to double
  %273 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.24, double noundef %269, double noundef %272)
  br label %274

274:                                              ; preds = %266, %262
  %275 = load i64, ptr %8, align 8, !tbaa !16
  %276 = and i64 %275, 64
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %283, label %278

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %280 = load i16, ptr %279, align 4, !tbaa !38
  %281 = zext i16 %280 to i32
  %282 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef %281)
  br label %283

283:                                              ; preds = %278, %274
  %284 = load i64, ptr %62, align 8, !tbaa !16
  %285 = and i64 %284, 1
  %286 = icmp eq i64 %285, 0
  br i1 %286, label %302, label %287

287:                                              ; preds = %283
  %288 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 17, i64 1, ptr %1)
  %289 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 9
  %290 = load i16, ptr %289, align 2, !tbaa !39
  switch i16 %290, label %299 [
    i16 4, label %291
    i16 2, label %293
    i16 1, label %295
    i16 3, label %297
  ]

291:                                              ; preds = %287
  %292 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 5, i64 1, ptr %1)
  br label %302

293:                                              ; preds = %287
  %294 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 15, i64 1, ptr %1)
  br label %302

295:                                              ; preds = %287
  %296 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 17, i64 1, ptr %1)
  br label %302

297:                                              ; preds = %287
  %298 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 20, i64 1, ptr %1)
  br label %302

299:                                              ; preds = %287
  %300 = zext i16 %290 to i32
  %301 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %300, i32 noundef %300)
  br label %302

302:                                              ; preds = %291, %293, %295, %297, %299, %283
  %303 = load i64, ptr %8, align 8, !tbaa !16
  %304 = and i64 %303, 128
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %319, label %306

306:                                              ; preds = %302
  %307 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 10
  %308 = load i16, ptr %307, align 8, !tbaa !40
  %309 = tail call ptr @TIFFFindCODEC(i16 noundef zeroext %308) #9
  %310 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 22, i64 1, ptr %1)
  %311 = icmp eq ptr %309, null
  br i1 %311, label %315, label %312

312:                                              ; preds = %306
  %313 = load ptr, ptr %309, align 8, !tbaa !41
  %314 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef %313)
  br label %319

315:                                              ; preds = %306
  %316 = load i16, ptr %307, align 8, !tbaa !40
  %317 = zext i16 %316 to i32
  %318 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %317, i32 noundef %317)
  br label %319

319:                                              ; preds = %312, %315, %302
  %320 = load i64, ptr %8, align 8, !tbaa !16
  %321 = and i64 %320, 256
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %341, label %323

323:                                              ; preds = %319
  %324 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 30, i64 1, ptr %1)
  %325 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 11
  %326 = load i16, ptr %325, align 2, !tbaa !43
  %327 = icmp ult i16 %326, 9
  br i1 %327, label %328, label %333

328:                                              ; preds = %323
  %329 = zext nneg i16 %326 to i64
  %330 = shl i64 %329, 2
  %331 = call ptr @llvm.load.relative.i64(ptr @reltable.TIFFPrintDirectory, i64 %330)
  %332 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef %331)
  br label %341

333:                                              ; preds = %323
  switch i16 %326, label %338 [
    i16 -32692, label %334
    i16 -32691, label %336
  ]

334:                                              ; preds = %333
  %335 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 12, i64 1, ptr %1)
  br label %341

336:                                              ; preds = %333
  %337 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 20, i64 1, ptr %1)
  br label %341

338:                                              ; preds = %333
  %339 = zext i16 %326 to i32
  %340 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %339, i32 noundef %339)
  br label %341

341:                                              ; preds = %328, %338, %336, %334, %319
  %342 = load i64, ptr %8, align 8, !tbaa !16
  %343 = and i64 %342, 2147483648
  %344 = icmp eq i64 %343, 0
  br i1 %344, label %378, label %345

345:                                              ; preds = %341
  %346 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 30
  %347 = load i16, ptr %346, align 4, !tbaa !44
  %348 = icmp eq i16 %347, 0
  br i1 %348, label %378, label %349

349:                                              ; preds = %345
  %350 = zext i16 %347 to i32
  %351 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef %350)
  %352 = load i16, ptr %346, align 4, !tbaa !44
  %353 = icmp eq i16 %352, 0
  br i1 %353, label %376, label %354

354:                                              ; preds = %349
  %355 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 31
  br label %356

356:                                              ; preds = %354, %371
  %357 = phi i64 [ 0, %354 ], [ %372, %371 ]
  %358 = phi ptr [ @.str.38, %354 ], [ @.str.43, %371 ]
  %359 = load ptr, ptr %355, align 8, !tbaa !45
  %360 = getelementptr inbounds i16, ptr %359, i64 %357
  %361 = load i16, ptr %360, align 2, !tbaa !46
  switch i16 %361, label %368 [
    i16 0, label %362
    i16 1, label %364
    i16 2, label %366
  ]

362:                                              ; preds = %356
  %363 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef nonnull %358)
  br label %371

364:                                              ; preds = %356
  %365 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.40, ptr noundef nonnull %358)
  br label %371

366:                                              ; preds = %356
  %367 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef nonnull %358)
  br label %371

368:                                              ; preds = %356
  %369 = zext i16 %361 to i32
  %370 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.42, ptr noundef nonnull %358, i32 noundef %369, i32 noundef %369)
  br label %371

371:                                              ; preds = %368, %366, %364, %362
  %372 = add nuw nsw i64 %357, 1
  %373 = load i16, ptr %346, align 4, !tbaa !44
  %374 = zext i16 %373 to i64
  %375 = icmp ult i64 %372, %374
  br i1 %375, label %356, label %376, !llvm.loop !47

376:                                              ; preds = %371, %349
  %377 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 2, i64 1, ptr %1)
  br label %378

378:                                              ; preds = %376, %345, %341
  %379 = load i64, ptr %62, align 8, !tbaa !16
  %380 = and i64 %379, 4194304
  %381 = icmp eq i64 %380, 0
  br i1 %381, label %386, label %382

382:                                              ; preds = %378
  %383 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 32
  %384 = load double, ptr %383, align 8, !tbaa !49
  %385 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.45, double noundef %384)
  br label %386

386:                                              ; preds = %382, %378
  %387 = load i64, ptr %62, align 8, !tbaa !16
  %388 = and i64 %387, 8192
  %389 = icmp eq i64 %388, 0
  br i1 %389, label %400, label %390

390:                                              ; preds = %386
  %391 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 11, i64 1, ptr %1)
  %392 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 55
  %393 = load i16, ptr %392, align 8, !tbaa !50
  %394 = icmp eq i16 %393, 1
  br i1 %394, label %395, label %397

395:                                              ; preds = %390
  %396 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 5, i64 1, ptr %1)
  br label %400

397:                                              ; preds = %390
  %398 = zext i16 %393 to i32
  %399 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %398, i32 noundef %398)
  br label %400

400:                                              ; preds = %395, %397, %386
  %401 = load i64, ptr %62, align 8, !tbaa !16
  %402 = and i64 %401, 16384
  %403 = icmp eq i64 %402, 0
  br i1 %403, label %422, label %404

404:                                              ; preds = %400
  %405 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 13, i64 1, ptr %1)
  %406 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %407 = load i16, ptr %406, align 2, !tbaa !51
  %408 = icmp eq i16 %407, 0
  br i1 %408, label %422, label %409

409:                                              ; preds = %404
  %410 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 59
  %411 = load ptr, ptr %410, align 8, !tbaa !52
  br label %412

412:                                              ; preds = %409, %412
  %413 = phi ptr [ %419, %412 ], [ %411, %409 ]
  %414 = phi ptr [ @.str.43, %412 ], [ @.str.38, %409 ]
  %415 = phi i16 [ %420, %412 ], [ %407, %409 ]
  %416 = tail call i32 @fputs(ptr nonnull %414, ptr %1)
  tail call void @_TIFFprintAscii(ptr noundef %1, ptr noundef %413)
  %417 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %413)
  %418 = getelementptr inbounds i8, ptr %413, i64 %417
  %419 = getelementptr inbounds i8, ptr %418, i64 1
  %420 = add i16 %415, -1
  %421 = icmp eq i16 %420, 0
  br i1 %421, label %422, label %412, !llvm.loop !53

422:                                              ; preds = %412, %404, %400
  %423 = load i64, ptr %62, align 8, !tbaa !16
  %424 = and i64 %423, 262144
  %425 = icmp eq i64 %424, 0
  br i1 %425, label %431, label %426

426:                                              ; preds = %422
  %427 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 56
  %428 = load i16, ptr %427, align 2, !tbaa !54
  %429 = zext i16 %428 to i32
  %430 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.50, i32 noundef %429)
  br label %431

431:                                              ; preds = %426, %422
  %432 = load i64, ptr %62, align 8, !tbaa !16
  %433 = and i64 %432, 32768
  %434 = icmp eq i64 %433, 0
  br i1 %434, label %443, label %435

435:                                              ; preds = %431
  %436 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 57
  %437 = load i16, ptr %436, align 4, !tbaa !46
  %438 = zext i16 %437 to i32
  %439 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 57, i64 1
  %440 = load i16, ptr %439, align 2, !tbaa !46
  %441 = zext i16 %440 to i32
  %442 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.51, i32 noundef %438, i32 noundef %441)
  br label %443

443:                                              ; preds = %435, %431
  %444 = load i64, ptr %62, align 8, !tbaa !16
  %445 = and i64 %444, 65536
  %446 = icmp eq i64 %445, 0
  br i1 %446, label %452, label %447

447:                                              ; preds = %443
  %448 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 60
  %449 = load ptr, ptr %448, align 8, !tbaa !55
  %450 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.52)
  tail call void @_TIFFprintAscii(ptr noundef %1, ptr noundef %449)
  %451 = tail call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %1)
  br label %452

452:                                              ; preds = %447, %443
  %453 = load i64, ptr %8, align 8, !tbaa !16
  %454 = and i64 %453, 512
  %455 = icmp eq i64 %454, 0
  br i1 %455, label %469, label %456

456:                                              ; preds = %452
  %457 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 16, i64 1, ptr %1)
  %458 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 12
  %459 = load i16, ptr %458, align 4, !tbaa !56
  switch i16 %459, label %466 [
    i16 1, label %460
    i16 2, label %462
    i16 3, label %464
  ]

460:                                              ; preds = %456
  %461 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 17, i64 1, ptr %1)
  br label %469

462:                                              ; preds = %456
  %463 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 26, i64 1, ptr %1)
  br label %469

464:                                              ; preds = %456
  %465 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 15, i64 1, ptr %1)
  br label %469

466:                                              ; preds = %456
  %467 = zext i16 %459 to i32
  %468 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %467, i32 noundef %467)
  br label %469

469:                                              ; preds = %460, %462, %464, %466, %452
  %470 = load i64, ptr %8, align 8, !tbaa !16
  %471 = and i64 %470, 1024
  %472 = icmp eq i64 %471, 0
  br i1 %472, label %484, label %473

473:                                              ; preds = %469
  %474 = tail call i64 @fwrite(ptr nonnull @.str.57, i64 13, i64 1, ptr %1)
  %475 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 13
  %476 = load i16, ptr %475, align 2, !tbaa !57
  switch i16 %476, label %481 [
    i16 1, label %477
    i16 2, label %479
  ]

477:                                              ; preds = %473
  %478 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 11, i64 1, ptr %1)
  br label %484

479:                                              ; preds = %473
  %480 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 11, i64 1, ptr %1)
  br label %484

481:                                              ; preds = %473
  %482 = zext i16 %476 to i32
  %483 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %482, i32 noundef %482)
  br label %484

484:                                              ; preds = %477, %479, %481, %469
  %485 = load i64, ptr %62, align 8, !tbaa !16
  %486 = and i64 %485, 128
  %487 = icmp eq i64 %486, 0
  br i1 %487, label %496, label %488

488:                                              ; preds = %484
  %489 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 49
  %490 = load i16, ptr %489, align 8, !tbaa !46
  %491 = zext i16 %490 to i32
  %492 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 49, i64 1
  %493 = load i16, ptr %492, align 2, !tbaa !46
  %494 = zext i16 %493 to i32
  %495 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.60, i32 noundef %491, i32 noundef %494)
  br label %496

496:                                              ; preds = %488, %484
  %497 = load i64, ptr %62, align 8, !tbaa !16
  %498 = and i64 %497, 256
  %499 = icmp eq i64 %498, 0
  br i1 %499, label %511, label %500

500:                                              ; preds = %496
  %501 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 21, i64 1, ptr %1)
  %502 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 50
  %503 = load i16, ptr %502, align 4, !tbaa !58
  switch i16 %503, label %508 [
    i16 1, label %504
    i16 2, label %506
  ]

504:                                              ; preds = %500
  %505 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 9, i64 1, ptr %1)
  br label %511

506:                                              ; preds = %500
  %507 = tail call i64 @fwrite(ptr nonnull @.str.63, i64 8, i64 1, ptr %1)
  br label %511

508:                                              ; preds = %500
  %509 = zext i16 %503 to i32
  %510 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %509, i32 noundef %509)
  br label %511

511:                                              ; preds = %504, %506, %508, %496
  %512 = load i64, ptr %62, align 8, !tbaa !16
  %513 = and i64 %512, 64
  %514 = icmp eq i64 %513, 0
  br i1 %514, label %527, label %515

515:                                              ; preds = %511
  %516 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 48
  %517 = load ptr, ptr %516, align 8, !tbaa !59
  %518 = load float, ptr %517, align 4, !tbaa !28
  %519 = fpext float %518 to double
  %520 = getelementptr inbounds float, ptr %517, i64 1
  %521 = load float, ptr %520, align 4, !tbaa !28
  %522 = fpext float %521 to double
  %523 = getelementptr inbounds float, ptr %517, i64 2
  %524 = load float, ptr %523, align 4, !tbaa !28
  %525 = fpext float %524 to double
  %526 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.64, double noundef %519, double noundef %522, double noundef %525)
  br label %527

527:                                              ; preds = %515, %511
  %528 = load i64, ptr %62, align 8, !tbaa !16
  %529 = and i64 %528, 32
  %530 = icmp eq i64 %529, 0
  br i1 %530, label %539, label %531

531:                                              ; preds = %527
  %532 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 29
  %533 = load i16, ptr %532, align 8, !tbaa !46
  %534 = zext i16 %533 to i32
  %535 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 29, i64 1
  %536 = load i16, ptr %535, align 2, !tbaa !46
  %537 = zext i16 %536 to i32
  %538 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.65, i32 noundef %534, i32 noundef %537)
  br label %539

539:                                              ; preds = %531, %527
  %540 = load i64, ptr %8, align 8, !tbaa !16
  %541 = and i64 %540, 134217728
  %542 = icmp eq i64 %541, 0
  br i1 %542, label %548, label %543

543:                                              ; preds = %539
  %544 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 34
  %545 = load ptr, ptr %544, align 8, !tbaa !60
  %546 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.66)
  tail call void @_TIFFprintAscii(ptr noundef %1, ptr noundef %545)
  %547 = tail call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %1)
  br label %548

548:                                              ; preds = %543, %539
  %549 = load i64, ptr %8, align 8, !tbaa !16
  %550 = and i64 %549, 268435456
  %551 = icmp eq i64 %550, 0
  br i1 %551, label %557, label %552

552:                                              ; preds = %548
  %553 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 35
  %554 = load ptr, ptr %553, align 8, !tbaa !61
  %555 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.67)
  tail call void @_TIFFprintAscii(ptr noundef %1, ptr noundef %554)
  %556 = tail call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %1)
  br label %557

557:                                              ; preds = %552, %548
  %558 = load i64, ptr %8, align 8, !tbaa !16
  %559 = and i64 %558, 536870912
  %560 = icmp eq i64 %559, 0
  br i1 %560, label %566, label %561

561:                                              ; preds = %557
  %562 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 36
  %563 = load ptr, ptr %562, align 8, !tbaa !62
  %564 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.68)
  tail call void @_TIFFprintAscii(ptr noundef %1, ptr noundef %563)
  %565 = tail call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %1)
  br label %566

566:                                              ; preds = %561, %557
  %567 = load i64, ptr %8, align 8, !tbaa !16
  %568 = and i64 %567, 1073741824
  %569 = icmp eq i64 %568, 0
  br i1 %569, label %575, label %570

570:                                              ; preds = %566
  %571 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 40
  %572 = load ptr, ptr %571, align 8, !tbaa !63
  %573 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.69)
  tail call void @_TIFFprintAscii(ptr noundef %1, ptr noundef %572)
  %574 = tail call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %1)
  br label %575

575:                                              ; preds = %570, %566
  %576 = load i64, ptr %8, align 8, !tbaa !16
  %577 = and i64 %576, 2048
  %578 = icmp eq i64 %577, 0
  br i1 %578, label %584, label %579

579:                                              ; preds = %575
  %580 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 33
  %581 = load ptr, ptr %580, align 8, !tbaa !64
  %582 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.70)
  tail call void @_TIFFprintAscii(ptr noundef %1, ptr noundef %581)
  %583 = tail call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %1)
  br label %584

584:                                              ; preds = %579, %575
  %585 = load i64, ptr %8, align 8, !tbaa !16
  %586 = and i64 %585, 4096
  %587 = icmp eq i64 %586, 0
  br i1 %587, label %593, label %588

588:                                              ; preds = %584
  %589 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 37
  %590 = load ptr, ptr %589, align 8, !tbaa !65
  %591 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.71)
  tail call void @_TIFFprintAscii(ptr noundef %1, ptr noundef %590)
  %592 = tail call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %1)
  br label %593

593:                                              ; preds = %588, %584
  %594 = load i64, ptr %8, align 8, !tbaa !16
  %595 = and i64 %594, 8192
  %596 = icmp eq i64 %595, 0
  br i1 %596, label %602, label %597

597:                                              ; preds = %593
  %598 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 38
  %599 = load ptr, ptr %598, align 8, !tbaa !66
  %600 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.72)
  tail call void @_TIFFprintAscii(ptr noundef %1, ptr noundef %599)
  %601 = tail call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %1)
  br label %602

602:                                              ; preds = %597, %593
  %603 = load i64, ptr %8, align 8, !tbaa !16
  %604 = and i64 %603, 16384
  %605 = icmp eq i64 %604, 0
  br i1 %605, label %611, label %606

606:                                              ; preds = %602
  %607 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 39
  %608 = load ptr, ptr %607, align 8, !tbaa !67
  %609 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.73)
  tail call void @_TIFFprintAscii(ptr noundef %1, ptr noundef %608)
  %610 = tail call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %1)
  br label %611

611:                                              ; preds = %606, %602
  %612 = load i64, ptr %8, align 8, !tbaa !16
  %613 = and i64 %612, 32768
  %614 = icmp eq i64 %613, 0
  br i1 %614, label %628, label %615

615:                                              ; preds = %611
  %616 = tail call i64 @fwrite(ptr nonnull @.str.74, i64 15, i64 1, ptr %1)
  %617 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 14
  %618 = load i16, ptr %617, align 8, !tbaa !68
  %619 = icmp ult i16 %618, 9
  br i1 %619, label %620, label %625

620:                                              ; preds = %615
  %621 = zext nneg i16 %618 to i64
  %622 = shl i64 %621, 2
  %623 = call ptr @llvm.load.relative.i64(ptr @reltable.TIFFPrintDirectory.130, i64 %622)
  %624 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef %623)
  br label %628

625:                                              ; preds = %615
  %626 = zext i16 %618 to i32
  %627 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %626, i32 noundef %626)
  br label %628

628:                                              ; preds = %620, %625, %611
  %629 = load i64, ptr %8, align 8, !tbaa !16
  %630 = and i64 %629, 65536
  %631 = icmp eq i64 %630, 0
  br i1 %631, label %637, label %632

632:                                              ; preds = %628
  %633 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %634 = load i16, ptr %633, align 2, !tbaa !51
  %635 = zext i16 %634 to i32
  %636 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.75, i32 noundef %635)
  br label %637

637:                                              ; preds = %632, %628
  %638 = load i64, ptr %8, align 8, !tbaa !16
  %639 = and i64 %638, 131072
  %640 = icmp eq i64 %639, 0
  br i1 %640, label %651, label %641

641:                                              ; preds = %637
  %642 = tail call i64 @fwrite(ptr nonnull @.str.76, i64 14, i64 1, ptr %1)
  %643 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  %644 = load i32, ptr %643, align 4, !tbaa !69
  %645 = icmp eq i32 %644, -1
  br i1 %645, label %646, label %648

646:                                              ; preds = %641
  %647 = tail call i64 @fwrite(ptr nonnull @.str.77, i64 11, i64 1, ptr %1)
  br label %651

648:                                              ; preds = %641
  %649 = zext i32 %644 to i64
  %650 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.78, i64 noundef %649)
  br label %651

651:                                              ; preds = %646, %648, %637
  %652 = load i64, ptr %8, align 8, !tbaa !16
  %653 = and i64 %652, 262144
  %654 = icmp eq i64 %653, 0
  br i1 %654, label %660, label %655

655:                                              ; preds = %651
  %656 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 17
  %657 = load i16, ptr %656, align 8, !tbaa !70
  %658 = zext i16 %657 to i32
  %659 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.79, i32 noundef %658)
  br label %660

660:                                              ; preds = %655, %651
  %661 = load i64, ptr %8, align 8, !tbaa !16
  %662 = and i64 %661, 524288
  %663 = icmp eq i64 %662, 0
  br i1 %663, label %669, label %664

664:                                              ; preds = %660
  %665 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 18
  %666 = load i16, ptr %665, align 2, !tbaa !71
  %667 = zext i16 %666 to i32
  %668 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.80, i32 noundef %667)
  br label %669

669:                                              ; preds = %664, %660
  %670 = load i64, ptr %62, align 8, !tbaa !16
  %671 = and i64 %670, 2
  %672 = icmp eq i64 %671, 0
  br i1 %672, label %677, label %673

673:                                              ; preds = %669
  %674 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 19
  %675 = load double, ptr %674, align 8, !tbaa !72
  %676 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.81, double noundef %675)
  br label %677

677:                                              ; preds = %673, %669
  %678 = load i64, ptr %62, align 8, !tbaa !16
  %679 = and i64 %678, 4
  %680 = icmp eq i64 %679, 0
  br i1 %680, label %685, label %681

681:                                              ; preds = %677
  %682 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 20
  %683 = load double, ptr %682, align 8, !tbaa !73
  %684 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.82, double noundef %683)
  br label %685

685:                                              ; preds = %681, %677
  %686 = load i64, ptr %8, align 8, !tbaa !16
  %687 = and i64 %686, 1048576
  %688 = icmp eq i64 %687, 0
  br i1 %688, label %700, label %689

689:                                              ; preds = %685
  %690 = tail call i64 @fwrite(ptr nonnull @.str.83, i64 24, i64 1, ptr %1)
  %691 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %692 = load i16, ptr %691, align 2, !tbaa !74
  switch i16 %692, label %697 [
    i16 1, label %693
    i16 2, label %695
  ]

693:                                              ; preds = %689
  %694 = tail call i64 @fwrite(ptr nonnull @.str.84, i64 19, i64 1, ptr %1)
  br label %700

695:                                              ; preds = %689
  %696 = tail call i64 @fwrite(ptr nonnull @.str.85, i64 22, i64 1, ptr %1)
  br label %700

697:                                              ; preds = %689
  %698 = zext i16 %692 to i32
  %699 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %698, i32 noundef %698)
  br label %700

700:                                              ; preds = %693, %695, %697, %685
  %701 = load i64, ptr %8, align 8, !tbaa !16
  %702 = and i64 %701, 2097152
  %703 = icmp eq i64 %702, 0
  br i1 %703, label %709, label %704

704:                                              ; preds = %700
  %705 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 41
  %706 = load ptr, ptr %705, align 8, !tbaa !75
  %707 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.86)
  tail call void @_TIFFprintAscii(ptr noundef %1, ptr noundef %706)
  %708 = tail call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %1)
  br label %709

709:                                              ; preds = %704, %700
  %710 = load i64, ptr %8, align 8, !tbaa !16
  %711 = and i64 %710, 8388608
  %712 = icmp eq i64 %711, 0
  br i1 %712, label %721, label %713

713:                                              ; preds = %709
  %714 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 27
  %715 = load i16, ptr %714, align 4, !tbaa !46
  %716 = zext i16 %715 to i32
  %717 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 27, i64 1
  %718 = load i16, ptr %717, align 2, !tbaa !46
  %719 = zext i16 %718 to i32
  %720 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.87, i32 noundef %716, i32 noundef %719)
  br label %721

721:                                              ; preds = %713, %709
  %722 = load i64, ptr %8, align 8, !tbaa !16
  %723 = and i64 %722, 67108864
  %724 = icmp eq i64 %723, 0
  br i1 %724, label %760, label %725

725:                                              ; preds = %721
  %726 = tail call i64 @fwrite(ptr nonnull @.str.88, i64 13, i64 1, ptr %1)
  %727 = and i64 %2, 4
  %728 = icmp eq i64 %727, 0
  br i1 %728, label %758, label %729

729:                                              ; preds = %725
  %730 = tail call i32 @fputc(i32 10, ptr %1)
  %731 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %732 = load i16, ptr %731, align 4, !tbaa !38
  %733 = icmp eq i16 %732, 63
  br i1 %733, label %760, label %734

734:                                              ; preds = %729
  %735 = zext nneg i16 %732 to i64
  %736 = shl nuw i64 1, %735
  %737 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 28
  %738 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 28, i64 1
  %739 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 28, i64 2
  %740 = tail call i64 @llvm.smax.i64(i64 %736, i64 1)
  br label %741

741:                                              ; preds = %734, %741
  %742 = phi i64 [ 0, %734 ], [ %756, %741 ]
  %743 = load ptr, ptr %737, align 8, !tbaa !76
  %744 = getelementptr inbounds i16, ptr %743, i64 %742
  %745 = load i16, ptr %744, align 2, !tbaa !46
  %746 = zext i16 %745 to i32
  %747 = load ptr, ptr %738, align 8, !tbaa !76
  %748 = getelementptr inbounds i16, ptr %747, i64 %742
  %749 = load i16, ptr %748, align 2, !tbaa !46
  %750 = zext i16 %749 to i32
  %751 = load ptr, ptr %739, align 8, !tbaa !76
  %752 = getelementptr inbounds i16, ptr %751, i64 %742
  %753 = load i16, ptr %752, align 2, !tbaa !46
  %754 = zext i16 %753 to i32
  %755 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.89, i64 noundef %742, i32 noundef %746, i32 noundef %750, i32 noundef %754)
  %756 = add nuw nsw i64 %742, 1
  %757 = icmp eq i64 %756, %740
  br i1 %757, label %760, label %741, !llvm.loop !77

758:                                              ; preds = %725
  %759 = tail call i64 @fwrite(ptr nonnull @.str.90, i64 10, i64 1, ptr %1)
  br label %760

760:                                              ; preds = %741, %729, %758, %721
  %761 = load i64, ptr %62, align 8, !tbaa !16
  %762 = and i64 %761, 1024
  %763 = icmp eq i64 %762, 0
  br i1 %763, label %773, label %764

764:                                              ; preds = %760
  %765 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 51
  %766 = load ptr, ptr %765, align 8, !tbaa !78
  %767 = load float, ptr %766, align 4, !tbaa !28
  %768 = fpext float %767 to double
  %769 = getelementptr inbounds float, ptr %766, i64 1
  %770 = load float, ptr %769, align 4, !tbaa !28
  %771 = fpext float %770 to double
  %772 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.91, double noundef %768, double noundef %771)
  br label %773

773:                                              ; preds = %764, %760
  %774 = load i64, ptr %62, align 8, !tbaa !16
  %775 = and i64 %774, 2048
  %776 = icmp eq i64 %775, 0
  br i1 %776, label %798, label %777

777:                                              ; preds = %773
  %778 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 52
  %779 = load ptr, ptr %778, align 8, !tbaa !79
  %780 = load float, ptr %779, align 4, !tbaa !28
  %781 = fpext float %780 to double
  %782 = getelementptr inbounds float, ptr %779, i64 1
  %783 = load float, ptr %782, align 4, !tbaa !28
  %784 = fpext float %783 to double
  %785 = getelementptr inbounds float, ptr %779, i64 2
  %786 = load float, ptr %785, align 4, !tbaa !28
  %787 = fpext float %786 to double
  %788 = getelementptr inbounds float, ptr %779, i64 3
  %789 = load float, ptr %788, align 4, !tbaa !28
  %790 = fpext float %789 to double
  %791 = getelementptr inbounds float, ptr %779, i64 4
  %792 = load float, ptr %791, align 4, !tbaa !28
  %793 = fpext float %792 to double
  %794 = getelementptr inbounds float, ptr %779, i64 5
  %795 = load float, ptr %794, align 4, !tbaa !28
  %796 = fpext float %795 to double
  %797 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.92, double noundef %781, double noundef %784, double noundef %787, double noundef %790, double noundef %793, double noundef %796)
  br label %798

798:                                              ; preds = %777, %773
  %799 = load i64, ptr %62, align 8, !tbaa !16
  %800 = and i64 %799, 512
  %801 = icmp eq i64 %800, 0
  br i1 %801, label %826, label %802

802:                                              ; preds = %798
  %803 = tail call i64 @fwrite(ptr nonnull @.str.93, i64 25, i64 1, ptr %1)
  %804 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %805 = load i16, ptr %804, align 2, !tbaa !51
  %806 = icmp eq i16 %805, 0
  br i1 %806, label %826, label %807

807:                                              ; preds = %802
  %808 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 53
  br label %809

809:                                              ; preds = %807, %809
  %810 = phi i64 [ 0, %807 ], [ %822, %809 ]
  %811 = load ptr, ptr %808, align 8, !tbaa !80
  %812 = shl nuw nsw i64 %810, 1
  %813 = getelementptr inbounds float, ptr %811, i64 %812
  %814 = load float, ptr %813, align 4, !tbaa !28
  %815 = fpext float %814 to double
  %816 = or disjoint i64 %812, 1
  %817 = getelementptr inbounds float, ptr %811, i64 %816
  %818 = load float, ptr %817, align 4, !tbaa !28
  %819 = fpext float %818 to double
  %820 = trunc i64 %810 to i32
  %821 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.94, i32 noundef %820, double noundef %815, double noundef %819)
  %822 = add nuw nsw i64 %810, 1
  %823 = load i16, ptr %804, align 2, !tbaa !51
  %824 = zext i16 %823 to i64
  %825 = icmp ult i64 %822, %824
  br i1 %825, label %809, label %826, !llvm.loop !81

826:                                              ; preds = %809, %802, %798
  %827 = load i64, ptr %62, align 8, !tbaa !16
  %828 = and i64 %827, 4096
  %829 = icmp eq i64 %828, 0
  br i1 %829, label %872, label %830

830:                                              ; preds = %826
  %831 = tail call i64 @fwrite(ptr nonnull @.str.95, i64 21, i64 1, ptr %1)
  %832 = and i64 %2, 2
  %833 = icmp eq i64 %832, 0
  br i1 %833, label %870, label %834

834:                                              ; preds = %830
  %835 = tail call i32 @fputc(i32 10, ptr %1)
  %836 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %837 = load i16, ptr %836, align 4, !tbaa !38
  %838 = icmp eq i16 %837, 63
  br i1 %838, label %872, label %839

839:                                              ; preds = %834
  %840 = zext nneg i16 %837 to i64
  %841 = shl nuw i64 1, %840
  %842 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 54
  %843 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %844 = tail call i64 @llvm.smax.i64(i64 %841, i64 1)
  br label %845

845:                                              ; preds = %839, %866
  %846 = phi i64 [ 0, %839 ], [ %868, %866 ]
  %847 = load ptr, ptr %842, align 8, !tbaa !76
  %848 = getelementptr inbounds i16, ptr %847, i64 %846
  %849 = load i16, ptr %848, align 2, !tbaa !46
  %850 = zext i16 %849 to i32
  %851 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.96, i64 noundef %846, i32 noundef %850)
  %852 = load i16, ptr %843, align 2, !tbaa !51
  %853 = icmp ugt i16 %852, 1
  br i1 %853, label %854, label %866

854:                                              ; preds = %845, %854
  %855 = phi i64 [ %862, %854 ], [ 1, %845 ]
  %856 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 54, i64 %855
  %857 = load ptr, ptr %856, align 8, !tbaa !76
  %858 = getelementptr inbounds i16, ptr %857, i64 %846
  %859 = load i16, ptr %858, align 2, !tbaa !46
  %860 = zext i16 %859 to i32
  %861 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.97, i32 noundef %860)
  %862 = add nuw nsw i64 %855, 1
  %863 = load i16, ptr %843, align 2, !tbaa !51
  %864 = zext i16 %863 to i64
  %865 = icmp ult i64 %862, %864
  br i1 %865, label %854, label %866, !llvm.loop !82

866:                                              ; preds = %854, %845
  %867 = tail call i32 @fputc(i32 noundef 10, ptr noundef %1)
  %868 = add nuw nsw i64 %846, 1
  %869 = icmp eq i64 %868, %844
  br i1 %869, label %872, label %845, !llvm.loop !83

870:                                              ; preds = %830
  %871 = tail call i64 @fwrite(ptr nonnull @.str.90, i64 10, i64 1, ptr %1)
  br label %872

872:                                              ; preds = %866, %834, %870, %826
  %873 = load i64, ptr %62, align 8, !tbaa !16
  %874 = and i64 %873, 524288
  %875 = icmp eq i64 %874, 0
  br i1 %875, label %881, label %876

876:                                              ; preds = %872
  %877 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 61
  %878 = load i32, ptr %877, align 8, !tbaa !84
  %879 = zext i32 %878 to i64
  %880 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.98, i64 noundef %879)
  br label %881

881:                                              ; preds = %876, %872
  %882 = load i64, ptr %62, align 8, !tbaa !16
  %883 = and i64 %882, 1048576
  %884 = icmp eq i64 %883, 0
  br i1 %884, label %890, label %885

885:                                              ; preds = %881
  %886 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 63
  %887 = load i32, ptr %886, align 8, !tbaa !85
  %888 = zext i32 %887 to i64
  %889 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.99, i64 noundef %888)
  br label %890

890:                                              ; preds = %885, %881
  %891 = load i64, ptr %62, align 8, !tbaa !16
  %892 = and i64 %891, 2097152
  %893 = icmp eq i64 %892, 0
  br i1 %893, label %899, label %894

894:                                              ; preds = %890
  %895 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 65
  %896 = load i32, ptr %895, align 8, !tbaa !86
  %897 = zext i32 %896 to i64
  %898 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.100, i64 noundef %897)
  br label %899

899:                                              ; preds = %894, %890
  %900 = load i64, ptr %62, align 8, !tbaa !16
  %901 = and i64 %900, 131072
  %902 = icmp eq i64 %901, 0
  br i1 %902, label %923, label %903

903:                                              ; preds = %899
  %904 = tail call i64 @fwrite(ptr nonnull @.str.101, i64 17, i64 1, ptr %1)
  %905 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 46
  %906 = load i16, ptr %905, align 8, !tbaa !87
  %907 = icmp eq i16 %906, 0
  br i1 %907, label %921, label %908

908:                                              ; preds = %903
  %909 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 47
  br label %910

910:                                              ; preds = %908, %910
  %911 = phi i64 [ 0, %908 ], [ %917, %910 ]
  %912 = load ptr, ptr %909, align 8, !tbaa !88
  %913 = getelementptr inbounds i32, ptr %912, i64 %911
  %914 = load i32, ptr %913, align 4, !tbaa !89
  %915 = zext i32 %914 to i64
  %916 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.102, i64 noundef %915)
  %917 = add nuw nsw i64 %911, 1
  %918 = load i16, ptr %905, align 8, !tbaa !87
  %919 = zext i16 %918 to i64
  %920 = icmp ult i64 %917, %919
  br i1 %920, label %910, label %921, !llvm.loop !90

921:                                              ; preds = %910, %903
  %922 = tail call i32 @fputc(i32 noundef 10, ptr noundef %1)
  br label %923

923:                                              ; preds = %921, %899
  %924 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 59
  %925 = load ptr, ptr %924, align 8, !tbaa !91
  %926 = icmp eq ptr %925, null
  br i1 %926, label %928, label %927

927:                                              ; preds = %923
  tail call void %925(ptr noundef %0, ptr noundef %1, i64 noundef %2) #9
  br label %928

928:                                              ; preds = %927, %923
  %929 = and i64 %2, 1
  %930 = icmp eq i64 %929, 0
  br i1 %930, label %965, label %931

931:                                              ; preds = %928
  %932 = load i64, ptr %8, align 8, !tbaa !16
  %933 = and i64 %932, 33554432
  %934 = icmp eq i64 %933, 0
  br i1 %934, label %965, label %935

935:                                              ; preds = %931
  %936 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 43
  %937 = load i32, ptr %936, align 4, !tbaa !92
  %938 = zext i32 %937 to i64
  %939 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %940 = load i32, ptr %939, align 8, !tbaa !93
  %941 = and i32 %940, 1024
  %942 = icmp eq i32 %941, 0
  %943 = select i1 %942, ptr @.str.105, ptr @.str.104
  %944 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.103, i64 noundef %938, ptr noundef nonnull %943)
  %945 = load i32, ptr %936, align 4, !tbaa !92
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %965, label %947

947:                                              ; preds = %935
  %948 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 44
  %949 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 45
  br label %950

950:                                              ; preds = %947, %950
  %951 = phi i64 [ 0, %947 ], [ %961, %950 ]
  %952 = load ptr, ptr %948, align 8, !tbaa !94
  %953 = getelementptr inbounds i32, ptr %952, i64 %951
  %954 = load i32, ptr %953, align 4, !tbaa !89
  %955 = zext i32 %954 to i64
  %956 = load ptr, ptr %949, align 8, !tbaa !95
  %957 = getelementptr inbounds i32, ptr %956, i64 %951
  %958 = load i32, ptr %957, align 4, !tbaa !89
  %959 = zext i32 %958 to i64
  %960 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.106, i64 noundef %951, i64 noundef %955, i64 noundef %959)
  %961 = add nuw nsw i64 %951, 1
  %962 = load i32, ptr %936, align 4, !tbaa !92
  %963 = zext i32 %962 to i64
  %964 = icmp ult i64 %961, %963
  br i1 %964, label %950, label %965, !llvm.loop !96

965:                                              ; preds = %950, %935, %931, %928
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @_TIFFprintAsciiTag(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.110, ptr noundef %1)
  tail call void @_TIFFprintAscii(ptr noundef %0, ptr noundef %2)
  %5 = tail call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %0)
  ret void
}

declare ptr @TIFFFindCODEC(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local void @_TIFFprintAscii(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = load i8, ptr %1, align 1, !tbaa !97
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %43, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @__ctype_b_loc() #10
  br label %7

7:                                                ; preds = %5, %39
  %8 = phi i8 [ %3, %5 ], [ %41, %39 ]
  %9 = phi ptr [ %1, %5 ], [ %40, %39 ]
  %10 = load ptr, ptr %6, align 8, !tbaa !76
  %11 = sext i8 %8 to i64
  %12 = getelementptr inbounds i16, ptr %10, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !46
  %14 = and i16 %13, 16384
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %7
  %17 = sext i8 %8 to i32
  %18 = tail call i32 @fputc(i32 noundef %17, ptr noundef %0)
  br label %39

19:                                               ; preds = %7, %23
  %20 = phi i8 [ %25, %23 ], [ 9, %7 ]
  %21 = phi ptr [ %24, %23 ], [ @.str.107, %7 ]
  %22 = icmp eq i8 %20, %8
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %21, i64 2
  %25 = load i8, ptr %24, align 1, !tbaa !97
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %19, !llvm.loop !98

27:                                               ; preds = %19
  %28 = getelementptr inbounds i8, ptr %21, i64 1
  br label %29

29:                                               ; preds = %23, %27
  %30 = phi ptr [ %28, %27 ], [ getelementptr inbounds ([11 x i8], ptr @.str.107, i64 0, i64 10), %23 ]
  %31 = load i8, ptr %30, align 1, !tbaa !97
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = sext i8 %31 to i32
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.108, i32 noundef %34)
  br label %39

36:                                               ; preds = %29
  %37 = zext i8 %8 to i32
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.109, i32 noundef %37)
  br label %39

39:                                               ; preds = %33, %36, %16
  %40 = getelementptr inbounds i8, ptr %9, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !97
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %7, !llvm.loop !99

43:                                               ; preds = %39, %2
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree nounwind willreturn memory(argmem: read) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 20}
!6 = !{!"tiff", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !11, i64 32, !15, i64 504, !7, i64 512, !7, i64 520, !7, i64 528, !10, i64 536, !12, i64 540, !10, i64 544, !10, i64 548, !10, i64 552, !12, i64 556, !10, i64 560, !10, i64 564, !10, i64 568, !10, i64 572, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !7, i64 616, !7, i64 624, !7, i64 632, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !7, i64 672, !7, i64 680, !7, i64 688, !7, i64 696, !7, i64 704, !10, i64 712, !10, i64 716, !7, i64 720, !10, i64 728, !7, i64 736, !10, i64 744, !7, i64 752, !10, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824, !7, i64 832, !7, i64 840, !10, i64 848, !7, i64 856, !7, i64 864, !7, i64 872}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"", !8, i64 0, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !12, i64 52, !12, i64 54, !12, i64 56, !12, i64 58, !12, i64 60, !12, i64 62, !12, i64 64, !12, i64 66, !10, i64 68, !12, i64 72, !12, i64 74, !13, i64 80, !13, i64 88, !14, i64 96, !14, i64 100, !12, i64 104, !12, i64 106, !14, i64 108, !14, i64 112, !8, i64 116, !8, i64 120, !8, i64 144, !12, i64 148, !7, i64 152, !13, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !10, i64 240, !10, i64 244, !7, i64 248, !7, i64 256, !12, i64 264, !7, i64 272, !7, i64 280, !8, i64 288, !12, i64 292, !7, i64 296, !7, i64 304, !7, i64 312, !8, i64 320, !12, i64 344, !12, i64 346, !8, i64 348, !10, i64 352, !7, i64 360, !7, i64 368, !10, i64 376, !7, i64 384, !10, i64 392, !7, i64 400, !10, i64 408, !7, i64 416, !10, i64 424, !10, i64 428, !7, i64 432, !7, i64 440, !14, i64 448, !7, i64 456, !7, i64 464}
!12 = !{!"short", !8, i64 0}
!13 = !{!"double", !8, i64 0}
!14 = !{!"float", !8, i64 0}
!15 = !{!"", !12, i64 0, !12, i64 2, !10, i64 4}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !8, i64 0}
!18 = !{!11, !10, i64 48}
!19 = !{!11, !10, i64 24}
!20 = !{!11, !10, i64 28}
!21 = !{!11, !10, i64 32}
!22 = !{!11, !10, i64 424}
!23 = !{!11, !10, i64 428}
!24 = !{!11, !7, i64 432}
!25 = !{!11, !7, i64 440}
!26 = !{!11, !14, i64 448}
!27 = !{!11, !7, i64 456}
!28 = !{!14, !14, i64 0}
!29 = !{!11, !7, i64 464}
!30 = !{!11, !10, i64 36}
!31 = !{!11, !10, i64 40}
!32 = !{!11, !10, i64 44}
!33 = !{!11, !14, i64 96}
!34 = !{!11, !14, i64 100}
!35 = !{!11, !12, i64 104}
!36 = !{!11, !14, i64 108}
!37 = !{!11, !14, i64 112}
!38 = !{!11, !12, i64 52}
!39 = !{!11, !12, i64 54}
!40 = !{!11, !12, i64 56}
!41 = !{!42, !7, i64 0}
!42 = !{!"", !7, i64 0, !12, i64 8, !7, i64 16}
!43 = !{!11, !12, i64 58}
!44 = !{!11, !12, i64 148}
!45 = !{!11, !7, i64 152}
!46 = !{!12, !12, i64 0}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!11, !13, i64 160}
!50 = !{!11, !12, i64 344}
!51 = !{!11, !12, i64 66}
!52 = !{!11, !7, i64 360}
!53 = distinct !{!53, !48}
!54 = !{!11, !12, i64 346}
!55 = !{!11, !7, i64 368}
!56 = !{!11, !12, i64 60}
!57 = !{!11, !12, i64 62}
!58 = !{!11, !12, i64 292}
!59 = !{!11, !7, i64 280}
!60 = !{!11, !7, i64 176}
!61 = !{!11, !7, i64 184}
!62 = !{!11, !7, i64 192}
!63 = !{!11, !7, i64 224}
!64 = !{!11, !7, i64 168}
!65 = !{!11, !7, i64 200}
!66 = !{!11, !7, i64 208}
!67 = !{!11, !7, i64 216}
!68 = !{!11, !12, i64 64}
!69 = !{!11, !10, i64 68}
!70 = !{!11, !12, i64 72}
!71 = !{!11, !12, i64 74}
!72 = !{!11, !13, i64 80}
!73 = !{!11, !13, i64 88}
!74 = !{!11, !12, i64 106}
!75 = !{!11, !7, i64 232}
!76 = !{!7, !7, i64 0}
!77 = distinct !{!77, !48}
!78 = !{!11, !7, i64 296}
!79 = !{!11, !7, i64 304}
!80 = !{!11, !7, i64 312}
!81 = distinct !{!81, !48}
!82 = distinct !{!82, !48}
!83 = distinct !{!83, !48}
!84 = !{!11, !10, i64 376}
!85 = !{!11, !10, i64 392}
!86 = !{!11, !10, i64 408}
!87 = !{!11, !12, i64 264}
!88 = !{!11, !7, i64 272}
!89 = !{!10, !10, i64 0}
!90 = distinct !{!90, !48}
!91 = !{!6, !7, i64 872}
!92 = !{!11, !10, i64 244}
!93 = !{!6, !10, i64 16}
!94 = !{!11, !7, i64 248}
!95 = !{!11, !7, i64 256}
!96 = distinct !{!96, !48}
!97 = !{!8, !8, i64 0}
!98 = distinct !{!98, !48}
!99 = distinct !{!99, !48}
