; ModuleID = 'src/tif_dirinfo.c'
source_filename = "src/tif_dirinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TIFFFieldInfo = type { i32, i16, i16, i32, i16, i8, i8, ptr }
%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }

@tiffFieldInfo = internal constant [92 x %struct.TIFFFieldInfo] [%struct.TIFFFieldInfo { i32 254, i16 1, i16 1, i32 4, i16 5, i8 1, i8 0, ptr @.str.8 }, %struct.TIFFFieldInfo { i32 254, i16 1, i16 1, i32 3, i16 5, i8 1, i8 0, ptr @.str.8 }, %struct.TIFFFieldInfo { i32 255, i16 1, i16 1, i32 3, i16 5, i8 1, i8 0, ptr @.str.9 }, %struct.TIFFFieldInfo { i32 256, i16 1, i16 1, i32 4, i16 1, i8 0, i8 0, ptr @.str.10 }, %struct.TIFFFieldInfo { i32 256, i16 1, i16 1, i32 3, i16 1, i8 0, i8 0, ptr @.str.10 }, %struct.TIFFFieldInfo { i32 257, i16 1, i16 1, i32 4, i16 1, i8 1, i8 0, ptr @.str.11 }, %struct.TIFFFieldInfo { i32 257, i16 1, i16 1, i32 3, i16 1, i8 1, i8 0, ptr @.str.11 }, %struct.TIFFFieldInfo { i32 258, i16 -1, i16 -1, i32 3, i16 6, i8 0, i8 0, ptr @.str.12 }, %struct.TIFFFieldInfo { i32 259, i16 -1, i16 1, i32 3, i16 7, i8 0, i8 0, ptr @.str.13 }, %struct.TIFFFieldInfo { i32 262, i16 1, i16 1, i32 3, i16 8, i8 0, i8 0, ptr @.str.14 }, %struct.TIFFFieldInfo { i32 263, i16 1, i16 1, i32 3, i16 9, i8 1, i8 0, ptr @.str.15 }, %struct.TIFFFieldInfo { i32 264, i16 1, i16 1, i32 3, i16 0, i8 1, i8 0, ptr @.str.16 }, %struct.TIFFFieldInfo { i32 265, i16 1, i16 1, i32 3, i16 0, i8 1, i8 0, ptr @.str.17 }, %struct.TIFFFieldInfo { i32 266, i16 1, i16 1, i32 3, i16 10, i8 0, i8 0, ptr @.str.18 }, %struct.TIFFFieldInfo { i32 269, i16 -1, i16 -1, i32 2, i16 11, i8 1, i8 0, ptr @.str.19 }, %struct.TIFFFieldInfo { i32 270, i16 -1, i16 -1, i32 2, i16 12, i8 1, i8 0, ptr @.str.20 }, %struct.TIFFFieldInfo { i32 271, i16 -1, i16 -1, i32 2, i16 13, i8 1, i8 0, ptr @.str.21 }, %struct.TIFFFieldInfo { i32 272, i16 -1, i16 -1, i32 2, i16 14, i8 1, i8 0, ptr @.str.22 }, %struct.TIFFFieldInfo { i32 273, i16 -1, i16 -1, i32 4, i16 25, i8 0, i8 0, ptr @.str.23 }, %struct.TIFFFieldInfo { i32 273, i16 -1, i16 -1, i32 3, i16 25, i8 0, i8 0, ptr @.str.23 }, %struct.TIFFFieldInfo { i32 274, i16 1, i16 1, i32 3, i16 15, i8 0, i8 0, ptr @.str.24 }, %struct.TIFFFieldInfo { i32 277, i16 1, i16 1, i32 3, i16 16, i8 0, i8 0, ptr @.str.25 }, %struct.TIFFFieldInfo { i32 278, i16 1, i16 1, i32 4, i16 17, i8 0, i8 0, ptr @.str.26 }, %struct.TIFFFieldInfo { i32 278, i16 1, i16 1, i32 3, i16 17, i8 0, i8 0, ptr @.str.26 }, %struct.TIFFFieldInfo { i32 279, i16 -1, i16 -1, i32 4, i16 24, i8 0, i8 0, ptr @.str.27 }, %struct.TIFFFieldInfo { i32 279, i16 -1, i16 -1, i32 3, i16 24, i8 0, i8 0, ptr @.str.27 }, %struct.TIFFFieldInfo { i32 280, i16 -2, i16 -1, i32 3, i16 18, i8 1, i8 0, ptr @.str.28 }, %struct.TIFFFieldInfo { i32 281, i16 -2, i16 -1, i32 3, i16 19, i8 1, i8 0, ptr @.str.29 }, %struct.TIFFFieldInfo { i32 282, i16 1, i16 1, i32 5, i16 3, i8 0, i8 0, ptr @.str.30 }, %struct.TIFFFieldInfo { i32 283, i16 1, i16 1, i32 5, i16 3, i8 0, i8 0, ptr @.str.31 }, %struct.TIFFFieldInfo { i32 284, i16 1, i16 1, i32 3, i16 20, i8 0, i8 0, ptr @.str.32 }, %struct.TIFFFieldInfo { i32 285, i16 -1, i16 -1, i32 2, i16 21, i8 1, i8 0, ptr @.str.33 }, %struct.TIFFFieldInfo { i32 286, i16 1, i16 1, i32 5, i16 4, i8 1, i8 0, ptr @.str.34 }, %struct.TIFFFieldInfo { i32 287, i16 1, i16 1, i32 5, i16 4, i8 1, i8 0, ptr @.str.35 }, %struct.TIFFFieldInfo { i32 288, i16 -1, i16 -1, i32 4, i16 0, i8 0, i8 0, ptr @.str.36 }, %struct.TIFFFieldInfo { i32 289, i16 -1, i16 -1, i32 4, i16 0, i8 0, i8 0, ptr @.str.37 }, %struct.TIFFFieldInfo { i32 290, i16 1, i16 1, i32 3, i16 0, i8 1, i8 0, ptr @.str.38 }, %struct.TIFFFieldInfo { i32 291, i16 -1, i16 -1, i32 3, i16 0, i8 1, i8 0, ptr @.str.39 }, %struct.TIFFFieldInfo { i32 296, i16 1, i16 1, i32 3, i16 22, i8 0, i8 0, ptr @.str.40 }, %struct.TIFFFieldInfo { i32 297, i16 2, i16 2, i32 3, i16 23, i8 1, i8 0, ptr @.str.41 }, %struct.TIFFFieldInfo { i32 300, i16 1, i16 1, i32 3, i16 0, i8 1, i8 0, ptr @.str.42 }, %struct.TIFFFieldInfo { i32 301, i16 -1, i16 -1, i32 3, i16 44, i8 1, i8 0, ptr @.str.43 }, %struct.TIFFFieldInfo { i32 305, i16 -1, i16 -1, i32 2, i16 30, i8 1, i8 0, ptr @.str.44 }, %struct.TIFFFieldInfo { i32 306, i16 20, i16 20, i32 2, i16 28, i8 1, i8 0, ptr @.str.45 }, %struct.TIFFFieldInfo { i32 315, i16 -1, i16 -1, i32 2, i16 27, i8 1, i8 0, ptr @.str.46 }, %struct.TIFFFieldInfo { i32 316, i16 -1, i16 -1, i32 2, i16 29, i8 1, i8 0, ptr @.str.47 }, %struct.TIFFFieldInfo { i32 318, i16 2, i16 2, i32 5, i16 42, i8 1, i8 0, ptr @.str.48 }, %struct.TIFFFieldInfo { i32 319, i16 6, i16 6, i32 5, i16 43, i8 1, i8 0, ptr @.str.49 }, %struct.TIFFFieldInfo { i32 320, i16 -1, i16 -1, i32 3, i16 26, i8 1, i8 0, ptr @.str.50 }, %struct.TIFFFieldInfo { i32 321, i16 2, i16 2, i32 3, i16 37, i8 1, i8 0, ptr @.str.51 }, %struct.TIFFFieldInfo { i32 322, i16 1, i16 1, i32 4, i16 2, i8 0, i8 0, ptr @.str.52 }, %struct.TIFFFieldInfo { i32 322, i16 1, i16 1, i32 3, i16 2, i8 0, i8 0, ptr @.str.52 }, %struct.TIFFFieldInfo { i32 323, i16 1, i16 1, i32 4, i16 2, i8 0, i8 0, ptr @.str.53 }, %struct.TIFFFieldInfo { i32 323, i16 1, i16 1, i32 3, i16 2, i8 0, i8 0, ptr @.str.53 }, %struct.TIFFFieldInfo { i32 324, i16 -1, i16 1, i32 4, i16 25, i8 0, i8 0, ptr @.str.54 }, %struct.TIFFFieldInfo { i32 325, i16 -1, i16 1, i32 4, i16 24, i8 0, i8 0, ptr @.str.55 }, %struct.TIFFFieldInfo { i32 325, i16 -1, i16 1, i32 3, i16 24, i8 0, i8 0, ptr @.str.55 }, %struct.TIFFFieldInfo { i32 330, i16 -1, i16 -1, i32 4, i16 49, i8 1, i8 1, ptr @.str.56 }, %struct.TIFFFieldInfo { i32 332, i16 1, i16 1, i32 3, i16 45, i8 0, i8 0, ptr @.str.57 }, %struct.TIFFFieldInfo { i32 333, i16 -1, i16 -1, i32 2, i16 46, i8 1, i8 1, ptr @.str.58 }, %struct.TIFFFieldInfo { i32 334, i16 1, i16 1, i32 3, i16 50, i8 1, i8 0, ptr @.str.59 }, %struct.TIFFFieldInfo { i32 336, i16 2, i16 2, i32 3, i16 47, i8 0, i8 0, ptr @.str.60 }, %struct.TIFFFieldInfo { i32 336, i16 2, i16 2, i32 1, i16 47, i8 0, i8 0, ptr @.str.60 }, %struct.TIFFFieldInfo { i32 337, i16 -1, i16 -1, i32 2, i16 48, i8 1, i8 0, ptr @.str.61 }, %struct.TIFFFieldInfo { i32 338, i16 -1, i16 -1, i32 3, i16 31, i8 0, i8 0, ptr @.str.62 }, %struct.TIFFFieldInfo { i32 338, i16 -1, i16 -1, i32 1, i16 31, i8 0, i8 0, ptr @.str.62 }, %struct.TIFFFieldInfo { i32 339, i16 -1, i16 -1, i32 3, i16 32, i8 0, i8 0, ptr @.str.63 }, %struct.TIFFFieldInfo { i32 340, i16 -2, i16 -1, i32 0, i16 33, i8 1, i8 0, ptr @.str.64 }, %struct.TIFFFieldInfo { i32 341, i16 -2, i16 -1, i32 0, i16 34, i8 1, i8 0, ptr @.str.65 }, %struct.TIFFFieldInfo { i32 529, i16 3, i16 3, i32 5, i16 38, i8 0, i8 0, ptr @.str.66 }, %struct.TIFFFieldInfo { i32 530, i16 2, i16 2, i32 3, i16 39, i8 0, i8 0, ptr @.str.67 }, %struct.TIFFFieldInfo { i32 531, i16 1, i16 1, i32 3, i16 40, i8 0, i8 0, ptr @.str.68 }, %struct.TIFFFieldInfo { i32 532, i16 6, i16 6, i32 5, i16 41, i8 1, i8 0, ptr @.str.69 }, %struct.TIFFFieldInfo { i32 532, i16 6, i16 6, i32 4, i16 41, i8 1, i8 0, ptr @.str.69 }, %struct.TIFFFieldInfo { i32 32995, i16 1, i16 1, i32 3, i16 31, i8 0, i8 0, ptr @.str.70 }, %struct.TIFFFieldInfo { i32 32996, i16 -2, i16 -1, i32 3, i16 32, i8 0, i8 0, ptr @.str.71 }, %struct.TIFFFieldInfo { i32 32997, i16 1, i16 1, i32 4, i16 35, i8 0, i8 0, ptr @.str.72 }, %struct.TIFFFieldInfo { i32 32997, i16 1, i16 1, i32 3, i16 35, i8 0, i8 0, ptr @.str.72 }, %struct.TIFFFieldInfo { i32 32998, i16 1, i16 1, i32 4, i16 36, i8 0, i8 0, ptr @.str.73 }, %struct.TIFFFieldInfo { i32 32998, i16 1, i16 1, i32 3, i16 36, i8 0, i8 0, ptr @.str.73 }, %struct.TIFFFieldInfo { i32 33723, i16 -1, i16 -1, i32 4, i16 53, i8 0, i8 1, ptr @.str.74 }, %struct.TIFFFieldInfo { i32 34377, i16 -1, i16 -3, i32 7, i16 52, i8 0, i8 1, ptr @.str.75 }, %struct.TIFFFieldInfo { i32 34377, i16 -1, i16 -1, i32 1, i16 52, i8 0, i8 1, ptr @.str.75 }, %struct.TIFFFieldInfo { i32 34675, i16 -1, i16 -3, i32 7, i16 51, i8 0, i8 1, ptr @.str.76 }, %struct.TIFFFieldInfo { i32 37439, i16 1, i16 1, i32 12, i16 54, i8 0, i8 0, ptr @.str.77 }, %struct.TIFFFieldInfo { i32 33300, i16 1, i16 1, i32 4, i16 55, i8 1, i8 0, ptr @.str.78 }, %struct.TIFFFieldInfo { i32 33301, i16 1, i16 1, i32 4, i16 56, i8 1, i8 0, ptr @.str.79 }, %struct.TIFFFieldInfo { i32 33302, i16 -1, i16 -1, i32 2, i16 57, i8 1, i8 0, ptr @.str.80 }, %struct.TIFFFieldInfo { i32 33303, i16 -1, i16 -1, i32 2, i16 58, i8 1, i8 0, ptr @.str.81 }, %struct.TIFFFieldInfo { i32 33304, i16 1, i16 1, i32 11, i16 59, i8 1, i8 0, ptr @.str.82 }, %struct.TIFFFieldInfo { i32 33305, i16 16, i16 16, i32 11, i16 60, i8 1, i8 0, ptr @.str.83 }, %struct.TIFFFieldInfo { i32 33306, i16 16, i16 16, i32 11, i16 61, i8 1, i8 0, ptr @.str.84 }], align 16
@.str = private unnamed_addr constant [6 x i8] c"%s: \0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"field[%2d] %5lu, %2d, %2d, %d, %2d, %5s, %5s, %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@tiffDataWidth = dso_local local_unnamed_addr constant [13 x i32] [i32 1, i32 1, i32 1, i32 2, i32 4, i32 8, i32 1, i32 1, i32 2, i32 4, i32 8, i32 4, i32 8], align 16
@_TIFFFindFieldInfo.last = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"TIFFFieldWithTag\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Internal error, unknown tag 0x%x\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"fip != NULL\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"src/tif_dirinfo.c\00", align 1
@__PRETTY_FUNCTION__._TIFFFieldWithTag = private unnamed_addr constant [55 x i8] c"const TIFFFieldInfo *_TIFFFieldWithTag(TIFF *, ttag_t)\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"SubfileType\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"OldSubfileType\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"ImageWidth\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"ImageLength\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"BitsPerSample\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Compression\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"PhotometricInterpretation\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"Threshholding\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"CellWidth\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"CellLength\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"FillOrder\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"DocumentName\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"ImageDescription\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"Make\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"Model\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"StripOffsets\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Orientation\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"SamplesPerPixel\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"RowsPerStrip\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"StripByteCounts\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"MinSampleValue\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"MaxSampleValue\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"XResolution\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"YResolution\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"PlanarConfiguration\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"PageName\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"XPosition\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"YPosition\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"FreeOffsets\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"FreeByteCounts\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"GrayResponseUnit\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"GrayResponseCurve\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"ResolutionUnit\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"PageNumber\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"ColorResponseUnit\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"TransferFunction\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"Software\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"DateTime\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"Artist\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"HostComputer\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"WhitePoint\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"PrimaryChromaticities\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"ColorMap\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"HalftoneHints\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"TileWidth\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"TileLength\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"TileOffsets\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"TileByteCounts\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"SubIFD\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"InkSet\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"InkNames\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"NumberOfInks\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"DotRange\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"TargetPrinter\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"ExtraSamples\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"SampleFormat\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"SMinSampleValue\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"SMaxSampleValue\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"YCbCrCoefficients\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"YCbCrSubsampling\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"YCbCrPositioning\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"ReferenceBlackWhite\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"Matteing\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"DataType\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"ImageDepth\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"TileDepth\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"RichTIFFIPTC\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"Photoshop\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"ICC Profile\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"StoNits\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"ImageFullWidth\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"ImageFullLength\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"TextureFormat\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"TextureWrapModes\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"FieldOfViewCotan\00", align 1
@.str.83 = private unnamed_addr constant [20 x i8] c"MatrixWorldToScreen\00", align 1
@.str.84 = private unnamed_addr constant [20 x i8] c"MatrixWorldToCamera\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @_TIFFSetupFieldInfo(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 55
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @_TIFFfree(ptr noundef nonnull %3) #9
  %6 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 56
  store i32 0, ptr %6, align 8, !tbaa !16
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 56
  %9 = load i32, ptr %8, align 8, !tbaa !16
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load ptr, ptr %2, align 8, !tbaa !5
  %13 = shl i32 %9, 3
  %14 = add i32 %13, 736
  %15 = tail call ptr @_TIFFrealloc(ptr noundef %12, i32 noundef %14) #9
  br label %18

16:                                               ; preds = %7
  %17 = tail call ptr @_TIFFmalloc(i32 noundef 736) #9
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi ptr [ %17, %16 ], [ %15, %11 ]
  store ptr %19, ptr %2, align 8, !tbaa !5
  %20 = load i32, ptr %8, align 8, !tbaa !16
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %19, i64 %21
  br label %23

23:                                               ; preds = %23, %18
  %24 = phi i64 [ 0, %18 ], [ %27, %23 ]
  %25 = getelementptr inbounds %struct.TIFFFieldInfo, ptr @tiffFieldInfo, i64 %24
  %26 = getelementptr inbounds ptr, ptr %22, i64 %24
  store ptr %25, ptr %26, align 8, !tbaa !17
  %27 = add nuw nsw i64 %24, 1
  %28 = icmp eq i64 %27, 92
  br i1 %28, label %29, label %23, !llvm.loop !18

29:                                               ; preds = %23
  %30 = icmp sgt i32 %20, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = load ptr, ptr %2, align 8, !tbaa !5
  %33 = add nuw nsw i32 %20, 92
  store i32 %33, ptr %8, align 8, !tbaa !16
  %34 = zext nneg i32 %33 to i64
  tail call void @qsort(ptr noundef %32, i64 noundef %34, i64 noundef 8, ptr noundef nonnull @tagCompare) #9
  br label %37

35:                                               ; preds = %29
  %36 = add nsw i32 %20, 92
  store i32 %36, ptr %8, align 8, !tbaa !16
  br label %37

37:                                               ; preds = %31, %35
  ret void
}

declare void @_TIFFfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @_TIFFMergeFieldInfo(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 56
  %5 = load i32, ptr %4, align 8, !tbaa !16
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 55
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = add nsw i32 %5, %2
  %11 = shl i32 %10, 3
  %12 = tail call ptr @_TIFFrealloc(ptr noundef %9, i32 noundef %11) #9
  store ptr %12, ptr %8, align 8, !tbaa !5
  br label %17

13:                                               ; preds = %3
  %14 = shl i32 %2, 3
  %15 = tail call ptr @_TIFFmalloc(i32 noundef %14) #9
  %16 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 55
  store ptr %15, ptr %16, align 8, !tbaa !5
  br label %17

17:                                               ; preds = %13, %7
  %18 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 55
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = load i32, ptr %4, align 8, !tbaa !16
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %19, i64 %21
  %23 = icmp sgt i32 %2, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = zext nneg i32 %2 to i64
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ 0, %24 ], [ %30, %26 ]
  %28 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %1, i64 %27
  %29 = getelementptr inbounds ptr, ptr %22, i64 %27
  store ptr %28, ptr %29, align 8, !tbaa !17
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %25
  br i1 %31, label %32, label %26, !llvm.loop !18

32:                                               ; preds = %26, %17
  %33 = icmp sgt i32 %20, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  %35 = load ptr, ptr %18, align 8, !tbaa !5
  %36 = add nsw i32 %20, %2
  store i32 %36, ptr %4, align 8, !tbaa !16
  %37 = sext i32 %36 to i64
  tail call void @qsort(ptr noundef %35, i64 noundef %37, i64 noundef 8, ptr noundef nonnull @tagCompare) #9
  br label %40

38:                                               ; preds = %32
  %39 = add nsw i32 %20, %2
  store i32 %39, ptr %4, align 8, !tbaa !16
  br label %40

40:                                               ; preds = %38, %34
  ret void
}

declare ptr @_TIFFrealloc(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @_TIFFmalloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @tagCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !17
  %4 = load ptr, ptr %1, align 8, !tbaa !17
  %5 = load i32, ptr %3, align 8, !tbaa !20
  %6 = load i32, ptr %4, align 8, !tbaa !20
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = icmp ult i32 %5, %6
  br label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %4, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %3, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !22
  %15 = icmp ult i32 %12, %14
  br label %16

16:                                               ; preds = %10, %8
  %17 = phi i1 [ %15, %10 ], [ %9, %8 ]
  %18 = select i1 %17, i32 -1, i32 1
  ret i32 %18
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @_TIFFPrintFieldInfo(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !23
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef %3)
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 56
  %6 = load i32, ptr %5, align 8, !tbaa !16
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %44

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 55
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %40, %10 ]
  %12 = load ptr, ptr %9, align 8, !tbaa !5
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  %15 = load i32, ptr %14, align 8, !tbaa !20
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %14, i64 0, i32 1
  %18 = load i16, ptr %17, align 4, !tbaa !24
  %19 = sext i16 %18 to i32
  %20 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %14, i64 0, i32 2
  %21 = load i16, ptr %20, align 2, !tbaa !25
  %22 = sext i16 %21 to i32
  %23 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %14, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !22
  %25 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %14, i64 0, i32 4
  %26 = load i16, ptr %25, align 4, !tbaa !26
  %27 = zext i16 %26 to i32
  %28 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %14, i64 0, i32 5
  %29 = load i8, ptr %28, align 2, !tbaa !27
  %30 = icmp eq i8 %29, 0
  %31 = select i1 %30, ptr @.str.3, ptr @.str.2
  %32 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %14, i64 0, i32 6
  %33 = load i8, ptr %32, align 1, !tbaa !28
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %34, ptr @.str.3, ptr @.str.2
  %36 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %14, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !29
  %38 = trunc i64 %11 to i32
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %38, i64 noundef %16, i32 noundef %19, i32 noundef %22, i32 noundef %24, i32 noundef %27, ptr noundef nonnull %31, ptr noundef nonnull %35, ptr noundef %37)
  %40 = add nuw nsw i64 %11, 1
  %41 = load i32, ptr %5, align 8, !tbaa !16
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %10, label %44, !llvm.loop !30

44:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @_TIFFSampleToTagType(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %3 = load i16, ptr %2, align 4, !tbaa !31
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 9
  %5 = load i16, ptr %4, align 2, !tbaa !32
  switch i16 %5, label %22 [
    i16 3, label %6
    i16 2, label %12
    i16 1, label %17
  ]

6:                                                ; preds = %1
  %7 = zext i16 %3 to i32
  %8 = add nuw nsw i32 %7, 7
  %9 = and i32 %8, 131064
  %10 = icmp eq i32 %9, 32
  %11 = select i1 %10, i32 11, i32 12
  br label %22

12:                                               ; preds = %1
  %13 = icmp ult i16 %3, 9
  %14 = icmp ult i16 %3, 17
  %15 = select i1 %14, i32 8, i32 9
  %16 = select i1 %13, i32 6, i32 %15
  br label %22

17:                                               ; preds = %1
  %18 = icmp ult i16 %3, 9
  %19 = icmp ult i16 %3, 17
  %20 = select i1 %19, i32 3, i32 4
  %21 = select i1 %18, i32 1, i32 %20
  br label %22

22:                                               ; preds = %1, %17, %12, %6
  %23 = phi i32 [ %21, %17 ], [ %16, %12 ], [ %11, %6 ], [ 7, %1 ]
  ret i32 %23
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local ptr @_TIFFFindFieldInfo(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = load ptr, ptr @_TIFFFindFieldInfo.last, align 8, !tbaa !17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 8, !tbaa !20
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %43, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %4, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !22
  %14 = icmp eq i32 %13, %2
  br i1 %14, label %43, label %15

15:                                               ; preds = %11, %6, %3
  %16 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 56
  %17 = load i32, ptr %16, align 8, !tbaa !16
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 55
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = icmp eq i32 %2, 0
  %23 = zext nneg i32 %17 to i64
  br label %27

24:                                               ; preds = %40
  %25 = add nuw nsw i64 %28, 1
  %26 = icmp eq i64 %25, %23
  br i1 %26, label %43, label %27, !llvm.loop !33

27:                                               ; preds = %19, %24
  %28 = phi i64 [ 0, %19 ], [ %25, %24 ]
  %29 = phi ptr [ undef, %19 ], [ %42, %24 ]
  %30 = getelementptr inbounds ptr, ptr %21, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !17
  %32 = load i32, ptr %31, align 8, !tbaa !20
  %33 = icmp eq i32 %32, %1
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  br i1 %22, label %39, label %35

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %31, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !22
  %38 = icmp eq i32 %37, %2
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %34
  store ptr %31, ptr @_TIFFFindFieldInfo.last, align 8, !tbaa !17
  br label %40

40:                                               ; preds = %27, %35, %39
  %41 = phi i1 [ false, %39 ], [ true, %35 ], [ true, %27 ]
  %42 = phi ptr [ %31, %39 ], [ %29, %35 ], [ %29, %27 ]
  br i1 %41, label %24, label %43

43:                                               ; preds = %40, %24, %15, %9, %11
  %44 = phi ptr [ %4, %11 ], [ %4, %9 ], [ null, %15 ], [ null, %24 ], [ %42, %40 ]
  ret ptr %44
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_TIFFFieldWithTag(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @_TIFFFindFieldInfo.last, align 8, !tbaa !17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !20
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %29, label %8

8:                                                ; preds = %5, %2
  %9 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 56
  %10 = load i32, ptr %9, align 8, !tbaa !16
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 55
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = zext nneg i32 %10 to i64
  br label %19

16:                                               ; preds = %27
  %17 = add nuw nsw i64 %20, 1
  %18 = icmp eq i64 %17, %15
  br i1 %18, label %29, label %19, !llvm.loop !33

19:                                               ; preds = %16, %12
  %20 = phi i64 [ 0, %12 ], [ %17, %16 ]
  %21 = phi ptr [ undef, %12 ], [ %28, %16 ]
  %22 = getelementptr inbounds ptr, ptr %14, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !17
  %24 = load i32, ptr %23, align 8, !tbaa !20
  %25 = icmp eq i32 %24, %1
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store ptr %23, ptr @_TIFFFindFieldInfo.last, align 8, !tbaa !17
  br label %27

27:                                               ; preds = %26, %19
  %28 = phi ptr [ %23, %26 ], [ %21, %19 ]
  br i1 %25, label %29, label %16

29:                                               ; preds = %16, %27, %5, %8
  %30 = phi ptr [ null, %8 ], [ %3, %5 ], [ null, %16 ], [ %28, %27 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %1) #9
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 398, ptr noundef nonnull @__PRETTY_FUNCTION__._TIFFFieldWithTag) #10
  unreachable

33:                                               ; preds = %29
  ret ptr %30
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 840}
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
!16 = !{!6, !10, i64 848}
!17 = !{!7, !7, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!21, !10, i64 0}
!21 = !{!"", !10, i64 0, !12, i64 4, !12, i64 6, !10, i64 8, !12, i64 12, !8, i64 14, !8, i64 15, !7, i64 16}
!22 = !{!21, !10, i64 8}
!23 = !{!6, !7, i64 0}
!24 = !{!21, !12, i64 4}
!25 = !{!21, !12, i64 6}
!26 = !{!21, !12, i64 12}
!27 = !{!21, !8, i64 14}
!28 = !{!21, !8, i64 15}
!29 = !{!21, !7, i64 16}
!30 = distinct !{!30, !19}
!31 = !{!6, !12, i64 84}
!32 = !{!6, !12, i64 86}
!33 = distinct !{!33, !19}
