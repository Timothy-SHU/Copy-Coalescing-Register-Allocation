; ModuleID = 'src/tif_fax3.c'
source_filename = "src/tif_fax3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tableentry = type { i16, i16, i16 }
%struct.TIFFFieldInfo = type { i32, i16, i16, i32, i16, i8, i8, ptr }
%struct.TIFFFaxTabEnt = type { i8, i8, i32 }
%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }
%struct.Fax3BaseState = type { i32, i32, i32, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr }
%struct.Fax3DecodeState = type { %struct.Fax3BaseState, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.Fax3EncodeState = type { %struct.Fax3BaseState, i32, i32, i32, ptr, i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@TIFFFaxWhiteCodes = dso_local constant [109 x %struct.tableentry] [%struct.tableentry { i16 8, i16 53, i16 0 }, %struct.tableentry { i16 6, i16 7, i16 1 }, %struct.tableentry { i16 4, i16 7, i16 2 }, %struct.tableentry { i16 4, i16 8, i16 3 }, %struct.tableentry { i16 4, i16 11, i16 4 }, %struct.tableentry { i16 4, i16 12, i16 5 }, %struct.tableentry { i16 4, i16 14, i16 6 }, %struct.tableentry { i16 4, i16 15, i16 7 }, %struct.tableentry { i16 5, i16 19, i16 8 }, %struct.tableentry { i16 5, i16 20, i16 9 }, %struct.tableentry { i16 5, i16 7, i16 10 }, %struct.tableentry { i16 5, i16 8, i16 11 }, %struct.tableentry { i16 6, i16 8, i16 12 }, %struct.tableentry { i16 6, i16 3, i16 13 }, %struct.tableentry { i16 6, i16 52, i16 14 }, %struct.tableentry { i16 6, i16 53, i16 15 }, %struct.tableentry { i16 6, i16 42, i16 16 }, %struct.tableentry { i16 6, i16 43, i16 17 }, %struct.tableentry { i16 7, i16 39, i16 18 }, %struct.tableentry { i16 7, i16 12, i16 19 }, %struct.tableentry { i16 7, i16 8, i16 20 }, %struct.tableentry { i16 7, i16 23, i16 21 }, %struct.tableentry { i16 7, i16 3, i16 22 }, %struct.tableentry { i16 7, i16 4, i16 23 }, %struct.tableentry { i16 7, i16 40, i16 24 }, %struct.tableentry { i16 7, i16 43, i16 25 }, %struct.tableentry { i16 7, i16 19, i16 26 }, %struct.tableentry { i16 7, i16 36, i16 27 }, %struct.tableentry { i16 7, i16 24, i16 28 }, %struct.tableentry { i16 8, i16 2, i16 29 }, %struct.tableentry { i16 8, i16 3, i16 30 }, %struct.tableentry { i16 8, i16 26, i16 31 }, %struct.tableentry { i16 8, i16 27, i16 32 }, %struct.tableentry { i16 8, i16 18, i16 33 }, %struct.tableentry { i16 8, i16 19, i16 34 }, %struct.tableentry { i16 8, i16 20, i16 35 }, %struct.tableentry { i16 8, i16 21, i16 36 }, %struct.tableentry { i16 8, i16 22, i16 37 }, %struct.tableentry { i16 8, i16 23, i16 38 }, %struct.tableentry { i16 8, i16 40, i16 39 }, %struct.tableentry { i16 8, i16 41, i16 40 }, %struct.tableentry { i16 8, i16 42, i16 41 }, %struct.tableentry { i16 8, i16 43, i16 42 }, %struct.tableentry { i16 8, i16 44, i16 43 }, %struct.tableentry { i16 8, i16 45, i16 44 }, %struct.tableentry { i16 8, i16 4, i16 45 }, %struct.tableentry { i16 8, i16 5, i16 46 }, %struct.tableentry { i16 8, i16 10, i16 47 }, %struct.tableentry { i16 8, i16 11, i16 48 }, %struct.tableentry { i16 8, i16 82, i16 49 }, %struct.tableentry { i16 8, i16 83, i16 50 }, %struct.tableentry { i16 8, i16 84, i16 51 }, %struct.tableentry { i16 8, i16 85, i16 52 }, %struct.tableentry { i16 8, i16 36, i16 53 }, %struct.tableentry { i16 8, i16 37, i16 54 }, %struct.tableentry { i16 8, i16 88, i16 55 }, %struct.tableentry { i16 8, i16 89, i16 56 }, %struct.tableentry { i16 8, i16 90, i16 57 }, %struct.tableentry { i16 8, i16 91, i16 58 }, %struct.tableentry { i16 8, i16 74, i16 59 }, %struct.tableentry { i16 8, i16 75, i16 60 }, %struct.tableentry { i16 8, i16 50, i16 61 }, %struct.tableentry { i16 8, i16 51, i16 62 }, %struct.tableentry { i16 8, i16 52, i16 63 }, %struct.tableentry { i16 5, i16 27, i16 64 }, %struct.tableentry { i16 5, i16 18, i16 128 }, %struct.tableentry { i16 6, i16 23, i16 192 }, %struct.tableentry { i16 7, i16 55, i16 256 }, %struct.tableentry { i16 8, i16 54, i16 320 }, %struct.tableentry { i16 8, i16 55, i16 384 }, %struct.tableentry { i16 8, i16 100, i16 448 }, %struct.tableentry { i16 8, i16 101, i16 512 }, %struct.tableentry { i16 8, i16 104, i16 576 }, %struct.tableentry { i16 8, i16 103, i16 640 }, %struct.tableentry { i16 9, i16 204, i16 704 }, %struct.tableentry { i16 9, i16 205, i16 768 }, %struct.tableentry { i16 9, i16 210, i16 832 }, %struct.tableentry { i16 9, i16 211, i16 896 }, %struct.tableentry { i16 9, i16 212, i16 960 }, %struct.tableentry { i16 9, i16 213, i16 1024 }, %struct.tableentry { i16 9, i16 214, i16 1088 }, %struct.tableentry { i16 9, i16 215, i16 1152 }, %struct.tableentry { i16 9, i16 216, i16 1216 }, %struct.tableentry { i16 9, i16 217, i16 1280 }, %struct.tableentry { i16 9, i16 218, i16 1344 }, %struct.tableentry { i16 9, i16 219, i16 1408 }, %struct.tableentry { i16 9, i16 152, i16 1472 }, %struct.tableentry { i16 9, i16 153, i16 1536 }, %struct.tableentry { i16 9, i16 154, i16 1600 }, %struct.tableentry { i16 6, i16 24, i16 1664 }, %struct.tableentry { i16 9, i16 155, i16 1728 }, %struct.tableentry { i16 11, i16 8, i16 1792 }, %struct.tableentry { i16 11, i16 12, i16 1856 }, %struct.tableentry { i16 11, i16 13, i16 1920 }, %struct.tableentry { i16 12, i16 18, i16 1984 }, %struct.tableentry { i16 12, i16 19, i16 2048 }, %struct.tableentry { i16 12, i16 20, i16 2112 }, %struct.tableentry { i16 12, i16 21, i16 2176 }, %struct.tableentry { i16 12, i16 22, i16 2240 }, %struct.tableentry { i16 12, i16 23, i16 2304 }, %struct.tableentry { i16 12, i16 28, i16 2368 }, %struct.tableentry { i16 12, i16 29, i16 2432 }, %struct.tableentry { i16 12, i16 30, i16 2496 }, %struct.tableentry { i16 12, i16 31, i16 2560 }, %struct.tableentry { i16 12, i16 1, i16 -1 }, %struct.tableentry { i16 9, i16 1, i16 -2 }, %struct.tableentry { i16 10, i16 1, i16 -2 }, %struct.tableentry { i16 11, i16 1, i16 -2 }, %struct.tableentry { i16 12, i16 0, i16 -2 }], align 16
@TIFFFaxBlackCodes = dso_local constant [109 x %struct.tableentry] [%struct.tableentry { i16 10, i16 55, i16 0 }, %struct.tableentry { i16 3, i16 2, i16 1 }, %struct.tableentry { i16 2, i16 3, i16 2 }, %struct.tableentry { i16 2, i16 2, i16 3 }, %struct.tableentry { i16 3, i16 3, i16 4 }, %struct.tableentry { i16 4, i16 3, i16 5 }, %struct.tableentry { i16 4, i16 2, i16 6 }, %struct.tableentry { i16 5, i16 3, i16 7 }, %struct.tableentry { i16 6, i16 5, i16 8 }, %struct.tableentry { i16 6, i16 4, i16 9 }, %struct.tableentry { i16 7, i16 4, i16 10 }, %struct.tableentry { i16 7, i16 5, i16 11 }, %struct.tableentry { i16 7, i16 7, i16 12 }, %struct.tableentry { i16 8, i16 4, i16 13 }, %struct.tableentry { i16 8, i16 7, i16 14 }, %struct.tableentry { i16 9, i16 24, i16 15 }, %struct.tableentry { i16 10, i16 23, i16 16 }, %struct.tableentry { i16 10, i16 24, i16 17 }, %struct.tableentry { i16 10, i16 8, i16 18 }, %struct.tableentry { i16 11, i16 103, i16 19 }, %struct.tableentry { i16 11, i16 104, i16 20 }, %struct.tableentry { i16 11, i16 108, i16 21 }, %struct.tableentry { i16 11, i16 55, i16 22 }, %struct.tableentry { i16 11, i16 40, i16 23 }, %struct.tableentry { i16 11, i16 23, i16 24 }, %struct.tableentry { i16 11, i16 24, i16 25 }, %struct.tableentry { i16 12, i16 202, i16 26 }, %struct.tableentry { i16 12, i16 203, i16 27 }, %struct.tableentry { i16 12, i16 204, i16 28 }, %struct.tableentry { i16 12, i16 205, i16 29 }, %struct.tableentry { i16 12, i16 104, i16 30 }, %struct.tableentry { i16 12, i16 105, i16 31 }, %struct.tableentry { i16 12, i16 106, i16 32 }, %struct.tableentry { i16 12, i16 107, i16 33 }, %struct.tableentry { i16 12, i16 210, i16 34 }, %struct.tableentry { i16 12, i16 211, i16 35 }, %struct.tableentry { i16 12, i16 212, i16 36 }, %struct.tableentry { i16 12, i16 213, i16 37 }, %struct.tableentry { i16 12, i16 214, i16 38 }, %struct.tableentry { i16 12, i16 215, i16 39 }, %struct.tableentry { i16 12, i16 108, i16 40 }, %struct.tableentry { i16 12, i16 109, i16 41 }, %struct.tableentry { i16 12, i16 218, i16 42 }, %struct.tableentry { i16 12, i16 219, i16 43 }, %struct.tableentry { i16 12, i16 84, i16 44 }, %struct.tableentry { i16 12, i16 85, i16 45 }, %struct.tableentry { i16 12, i16 86, i16 46 }, %struct.tableentry { i16 12, i16 87, i16 47 }, %struct.tableentry { i16 12, i16 100, i16 48 }, %struct.tableentry { i16 12, i16 101, i16 49 }, %struct.tableentry { i16 12, i16 82, i16 50 }, %struct.tableentry { i16 12, i16 83, i16 51 }, %struct.tableentry { i16 12, i16 36, i16 52 }, %struct.tableentry { i16 12, i16 55, i16 53 }, %struct.tableentry { i16 12, i16 56, i16 54 }, %struct.tableentry { i16 12, i16 39, i16 55 }, %struct.tableentry { i16 12, i16 40, i16 56 }, %struct.tableentry { i16 12, i16 88, i16 57 }, %struct.tableentry { i16 12, i16 89, i16 58 }, %struct.tableentry { i16 12, i16 43, i16 59 }, %struct.tableentry { i16 12, i16 44, i16 60 }, %struct.tableentry { i16 12, i16 90, i16 61 }, %struct.tableentry { i16 12, i16 102, i16 62 }, %struct.tableentry { i16 12, i16 103, i16 63 }, %struct.tableentry { i16 10, i16 15, i16 64 }, %struct.tableentry { i16 12, i16 200, i16 128 }, %struct.tableentry { i16 12, i16 201, i16 192 }, %struct.tableentry { i16 12, i16 91, i16 256 }, %struct.tableentry { i16 12, i16 51, i16 320 }, %struct.tableentry { i16 12, i16 52, i16 384 }, %struct.tableentry { i16 12, i16 53, i16 448 }, %struct.tableentry { i16 13, i16 108, i16 512 }, %struct.tableentry { i16 13, i16 109, i16 576 }, %struct.tableentry { i16 13, i16 74, i16 640 }, %struct.tableentry { i16 13, i16 75, i16 704 }, %struct.tableentry { i16 13, i16 76, i16 768 }, %struct.tableentry { i16 13, i16 77, i16 832 }, %struct.tableentry { i16 13, i16 114, i16 896 }, %struct.tableentry { i16 13, i16 115, i16 960 }, %struct.tableentry { i16 13, i16 116, i16 1024 }, %struct.tableentry { i16 13, i16 117, i16 1088 }, %struct.tableentry { i16 13, i16 118, i16 1152 }, %struct.tableentry { i16 13, i16 119, i16 1216 }, %struct.tableentry { i16 13, i16 82, i16 1280 }, %struct.tableentry { i16 13, i16 83, i16 1344 }, %struct.tableentry { i16 13, i16 84, i16 1408 }, %struct.tableentry { i16 13, i16 85, i16 1472 }, %struct.tableentry { i16 13, i16 90, i16 1536 }, %struct.tableentry { i16 13, i16 91, i16 1600 }, %struct.tableentry { i16 13, i16 100, i16 1664 }, %struct.tableentry { i16 13, i16 101, i16 1728 }, %struct.tableentry { i16 11, i16 8, i16 1792 }, %struct.tableentry { i16 11, i16 12, i16 1856 }, %struct.tableentry { i16 11, i16 13, i16 1920 }, %struct.tableentry { i16 12, i16 18, i16 1984 }, %struct.tableentry { i16 12, i16 19, i16 2048 }, %struct.tableentry { i16 12, i16 20, i16 2112 }, %struct.tableentry { i16 12, i16 21, i16 2176 }, %struct.tableentry { i16 12, i16 22, i16 2240 }, %struct.tableentry { i16 12, i16 23, i16 2304 }, %struct.tableentry { i16 12, i16 28, i16 2368 }, %struct.tableentry { i16 12, i16 29, i16 2432 }, %struct.tableentry { i16 12, i16 30, i16 2496 }, %struct.tableentry { i16 12, i16 31, i16 2560 }, %struct.tableentry { i16 12, i16 1, i16 -1 }, %struct.tableentry { i16 9, i16 1, i16 -2 }, %struct.tableentry { i16 10, i16 1, i16 -2 }, %struct.tableentry { i16 11, i16 1, i16 -2 }, %struct.tableentry { i16 12, i16 0, i16 -2 }], align 16
@_TIFFFax3fillruns._fillmasks = internal unnamed_addr constant [9 x i8] c"\00\80\C0\E0\F0\F8\FC\FE\FF", align 1
@.str = private unnamed_addr constant [11 x i8] c"x == lastx\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"src/tif_fax3.c\00", align 1
@__PRETTY_FUNCTION__._TIFFFax3fillruns = private unnamed_addr constant [61 x i8] c"void _TIFFFax3fillruns(u_char *, uint32 *, uint32 *, uint32)\00", align 1
@fax3FieldInfo = internal constant [1 x %struct.TIFFFieldInfo] [%struct.TIFFFieldInfo { i32 292, i16 1, i16 1, i32 4, i16 68, i8 0, i8 0, ptr @.str.43 }], align 16
@fax4FieldInfo = internal constant [1 x %struct.TIFFFieldInfo] [%struct.TIFFFieldInfo { i32 293, i16 1, i16 1, i32 4, i16 68, i8 0, i8 0, ptr @.str.44 }], align 16
@.str.2 = private unnamed_addr constant [18 x i8] c"TIFFInitCCITTFax3\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: No space for state block\00", align 1
@faxFieldInfo = internal constant [10 x %struct.TIFFFieldInfo] [%struct.TIFFFieldInfo { i32 65536, i16 0, i16 0, i32 0, i16 0, i8 0, i8 0, ptr @.str.4 }, %struct.TIFFFieldInfo { i32 65540, i16 0, i16 0, i32 0, i16 0, i8 0, i8 0, ptr @.str.5 }, %struct.TIFFFieldInfo { i32 326, i16 1, i16 1, i32 4, i16 62, i8 1, i8 0, ptr @.str.6 }, %struct.TIFFFieldInfo { i32 326, i16 1, i16 1, i32 3, i16 62, i8 1, i8 0, ptr @.str.6 }, %struct.TIFFFieldInfo { i32 327, i16 1, i16 1, i32 3, i16 63, i8 1, i8 0, ptr @.str.7 }, %struct.TIFFFieldInfo { i32 328, i16 1, i16 1, i32 4, i16 64, i8 1, i8 0, ptr @.str.8 }, %struct.TIFFFieldInfo { i32 328, i16 1, i16 1, i32 3, i16 64, i8 1, i8 0, ptr @.str.8 }, %struct.TIFFFieldInfo { i32 34908, i16 1, i16 1, i32 4, i16 65, i8 1, i8 0, ptr @.str.9 }, %struct.TIFFFieldInfo { i32 34909, i16 -1, i16 -1, i32 2, i16 66, i8 1, i8 0, ptr @.str.10 }, %struct.TIFFFieldInfo { i32 34910, i16 1, i16 1, i32 4, i16 67, i8 1, i8 0, ptr @.str.11 }], align 16
@.str.4 = private unnamed_addr constant [8 x i8] c"FaxMode\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"FaxFillFunc\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"BadFaxLines\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"CleanFaxData\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"ConsecutiveBadFaxLines\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"FaxRecvParams\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"FaxSubAddress\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"FaxRecvTime\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"  Group 4 Options:\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"%suncompressed data\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"  Group 3 Options:\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"%s2-d encoding\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"%sEOL padding\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c" (%lu = 0x%lx)\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"  Fax Data:\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c" clean\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c" receiver regenerated\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c" uncorrected errors\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c" (%u = 0x%x)\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"  Bad Fax Lines: %lu\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"  Consecutive Bad Fax Lines: %lu\0A\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"  Fax Receive Parameters: %08lx\0A\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"  Fax SubAddress: %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"  Fax Receive Time: %lu secs\0A\00", align 1
@.str.30 = private unnamed_addr constant [54 x i8] c"Bits/sample must be 1 for Group 3/4 encoding/decoding\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"Fax3SetupState\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"%s: No space for Group 3/4 run arrays\00", align 1
@.str.33 = private unnamed_addr constant [42 x i8] c"%s: No space for Group 3/4 reference line\00", align 1
@Fax3Decode2D.module = internal constant [13 x i8] c"Fax3Decode2D\00", align 1
@TIFFFaxWhiteTable = external local_unnamed_addr constant [0 x %struct.TIFFFaxTabEnt], align 4
@TIFFFaxBlackTable = external local_unnamed_addr constant [0 x %struct.TIFFFaxTabEnt], align 4
@TIFFFaxMainTable = external local_unnamed_addr constant [0 x %struct.TIFFFaxTabEnt], align 4
@.str.34 = private unnamed_addr constant [41 x i8] c"%s: Bad code word at scanline %d (x %lu)\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"%s: Premature EOF at scanline %d (x %lu)\00", align 1
@.str.36 = private unnamed_addr constant [46 x i8] c"%s: %s at scanline %d (got %lu, expected %lu)\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"Premature EOL\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"Line length mismatch\00", align 1
@.str.39 = private unnamed_addr constant [61 x i8] c"%s: Uncompressed data (not supported) at scanline %d (x %lu)\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"sp != NULL\00", align 1
@__PRETTY_FUNCTION__.Fax3PreDecode = private unnamed_addr constant [37 x i8] c"int Fax3PreDecode(TIFF *, tsample_t)\00", align 1
@Fax3Decode1D.module = internal constant [13 x i8] c"Fax3Decode1D\00", align 1
@__PRETTY_FUNCTION__.Fax3PreEncode = private unnamed_addr constant [37 x i8] c"int Fax3PreEncode(TIFF *, tsample_t)\00", align 1
@_msbmask = internal unnamed_addr constant [9 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255], align 16
@zeroruns = internal unnamed_addr constant <{ [128 x i8], [128 x i8] }> <{ [128 x i8] c"\08\07\06\06\05\05\05\05\04\04\04\04\04\04\04\04\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [128 x i8] zeroinitializer }>, align 16
@.str.42 = private unnamed_addr constant [27 x i8] c"te->runlen == 64*(span>>6)\00", align 1
@__PRETTY_FUNCTION__.putspan = private unnamed_addr constant [48 x i8] c"void putspan(TIFF *, int32, const tableentry *)\00", align 1
@oneruns = internal unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\06\06\07\08", align 16
@vcodes = internal unnamed_addr constant [7 x %struct.tableentry] [%struct.tableentry { i16 7, i16 3, i16 0 }, %struct.tableentry { i16 6, i16 3, i16 0 }, %struct.tableentry { i16 3, i16 3, i16 0 }, %struct.tableentry { i16 1, i16 1, i16 0 }, %struct.tableentry { i16 3, i16 2, i16 0 }, %struct.tableentry { i16 6, i16 2, i16 0 }, %struct.tableentry { i16 7, i16 2, i16 0 }], align 16
@.str.43 = private unnamed_addr constant [14 x i8] c"Group3Options\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"Group4Options\00", align 1
@Fax4Decode.module = internal constant [11 x i8] c"Fax4Decode\00", align 1
@Fax3DecodeRLE.module = internal constant [14 x i8] c"Fax3DecodeRLE\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @_TIFFFax3fillruns(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = and i64 %7, 4
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 0, ptr %2, align 4, !tbaa !5
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi ptr [ %11, %10 ], [ %2, %4 ]
  %14 = icmp ugt ptr %13, %1
  br i1 %14, label %15, label %244

15:                                               ; preds = %12, %240
  %16 = phi i32 [ %241, %240 ], [ 0, %12 ]
  %17 = phi ptr [ %242, %240 ], [ %1, %12 ]
  %18 = load i32, ptr %17, align 4, !tbaa !5
  %19 = add i32 %18, %16
  %20 = icmp ugt i32 %19, %3
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = sub i32 %3, %16
  %23 = and i32 %22, 65535
  store i32 %23, ptr %17, align 4, !tbaa !5
  br label %24

24:                                               ; preds = %21, %15
  %25 = phi i32 [ %23, %21 ], [ %18, %15 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %129, label %27

27:                                               ; preds = %24
  %28 = lshr i32 %16, 3
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds i8, ptr %0, i64 %29
  %31 = and i32 %16, 7
  %32 = sub nuw nsw i32 8, %31
  %33 = icmp ugt i32 %25, %32
  br i1 %33, label %34, label %116

34:                                               ; preds = %27
  %35 = icmp eq i32 %31, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %34
  %37 = shl nuw nsw i32 255, %32
  %38 = getelementptr inbounds i8, ptr %30, i64 1
  %39 = load i8, ptr %30, align 1, !tbaa !9
  %40 = trunc i32 %37 to i8
  %41 = and i8 %39, %40
  store i8 %41, ptr %30, align 1, !tbaa !9
  %42 = sub i32 %25, %32
  br label %43

43:                                               ; preds = %36, %34
  %44 = phi ptr [ %38, %36 ], [ %30, %34 ]
  %45 = phi i32 [ %42, %36 ], [ %25, %34 ]
  %46 = freeze ptr %44
  %47 = icmp ult i32 %45, 8
  br i1 %47, label %109, label %48

48:                                               ; preds = %43
  %49 = lshr i32 %45, 3
  %50 = icmp ugt i32 %45, 127
  br i1 %50, label %51, label %88

51:                                               ; preds = %48
  %52 = ptrtoint ptr %46 to i64
  %53 = and i64 %52, 7
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %74, label %55

55:                                               ; preds = %51
  %56 = and i64 %52, 7
  %57 = xor i64 %56, 7
  %58 = add nsw i32 %49, -1
  %59 = zext i32 %58 to i64
  %60 = tail call i64 @llvm.umin.i64(i64 %57, i64 %59)
  %61 = add nuw nsw i64 %60, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %46, i8 0, i64 %61, i1 false), !tbaa !9
  %62 = trunc i64 %52 to i3
  %63 = xor i3 %62, -1
  %64 = zext i3 %63 to i32
  %65 = add nsw i32 %49, -1
  %66 = tail call i32 @llvm.umin.i32(i32 %64, i32 %65)
  %67 = getelementptr i8, ptr %46, i64 1
  %68 = zext i3 %63 to i64
  %69 = zext i32 %65 to i64
  %70 = tail call i64 @llvm.umin.i64(i64 %68, i64 %69)
  %71 = getelementptr i8, ptr %67, i64 %70
  %72 = xor i32 %66, -1
  %73 = add nsw i32 %49, %72
  br label %74

74:                                               ; preds = %55, %51
  %75 = phi ptr [ %46, %51 ], [ %71, %55 ]
  %76 = phi i32 [ %49, %51 ], [ %73, %55 ]
  %77 = lshr i32 %76, 3
  %78 = add nsw i32 %77, -1
  %79 = zext i32 %78 to i64
  %80 = shl nuw nsw i64 %79, 3
  %81 = add nuw nsw i64 %80, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %75, i8 0, i64 %81, i1 false), !tbaa !10
  %82 = add nsw i32 %77, -1
  %83 = zext i32 %82 to i64
  %84 = shl nuw nsw i64 %83, 3
  %85 = and i32 %76, 7
  %86 = getelementptr i8, ptr %75, i64 8
  %87 = getelementptr i8, ptr %86, i64 %84
  br label %88

88:                                               ; preds = %74, %48
  %89 = phi ptr [ %46, %48 ], [ %87, %74 ]
  %90 = phi i32 [ %49, %48 ], [ %85, %74 ]
  switch i32 %90, label %106 [
    i32 7, label %91
    i32 6, label %93
    i32 5, label %95
    i32 4, label %97
    i32 3, label %99
    i32 2, label %101
    i32 1, label %103
  ]

91:                                               ; preds = %88
  %92 = getelementptr inbounds i8, ptr %89, i64 6
  store i8 0, ptr %92, align 1, !tbaa !9
  br label %93

93:                                               ; preds = %88, %91
  %94 = getelementptr inbounds i8, ptr %89, i64 5
  store i8 0, ptr %94, align 1, !tbaa !9
  br label %95

95:                                               ; preds = %88, %93
  %96 = getelementptr inbounds i8, ptr %89, i64 4
  store i8 0, ptr %96, align 1, !tbaa !9
  br label %97

97:                                               ; preds = %88, %95
  %98 = getelementptr inbounds i8, ptr %89, i64 3
  store i8 0, ptr %98, align 1, !tbaa !9
  br label %99

99:                                               ; preds = %88, %97
  %100 = getelementptr inbounds i8, ptr %89, i64 2
  store i8 0, ptr %100, align 1, !tbaa !9
  br label %101

101:                                              ; preds = %88, %99
  %102 = getelementptr inbounds i8, ptr %89, i64 1
  store i8 0, ptr %102, align 1, !tbaa !9
  br label %103

103:                                              ; preds = %88, %101
  store i8 0, ptr %89, align 1, !tbaa !9
  %104 = zext nneg i32 %90 to i64
  %105 = getelementptr inbounds i8, ptr %89, i64 %104
  br label %106

106:                                              ; preds = %103, %88
  %107 = phi ptr [ %89, %88 ], [ %105, %103 ]
  %108 = and i32 %45, 7
  br label %109

109:                                              ; preds = %106, %43
  %110 = phi ptr [ %107, %106 ], [ %46, %43 ]
  %111 = phi i32 [ %108, %106 ], [ %45, %43 ]
  %112 = lshr i32 255, %111
  %113 = load i8, ptr %110, align 1, !tbaa !9
  %114 = trunc i32 %112 to i8
  %115 = and i8 %113, %114
  store i8 %115, ptr %110, align 1, !tbaa !9
  br label %126

116:                                              ; preds = %27
  %117 = zext nneg i32 %25 to i64
  %118 = getelementptr inbounds [9 x i8], ptr @_TIFFFax3fillruns._fillmasks, i64 0, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !9
  %120 = zext i8 %119 to i32
  %121 = lshr i32 %120, %31
  %122 = load i8, ptr %30, align 1, !tbaa !9
  %123 = trunc i32 %121 to i8
  %124 = xor i8 %123, -1
  %125 = and i8 %122, %124
  store i8 %125, ptr %30, align 1, !tbaa !9
  br label %126

126:                                              ; preds = %116, %109
  %127 = load i32, ptr %17, align 4, !tbaa !5
  %128 = add i32 %127, %16
  br label %129

129:                                              ; preds = %126, %24
  %130 = phi i32 [ %128, %126 ], [ %16, %24 ]
  %131 = getelementptr inbounds i32, ptr %17, i64 1
  %132 = load i32, ptr %131, align 4, !tbaa !5
  %133 = add i32 %132, %130
  %134 = icmp ugt i32 %133, %3
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = sub i32 %3, %130
  store i32 %136, ptr %131, align 4, !tbaa !5
  br label %137

137:                                              ; preds = %135, %129
  %138 = phi i32 [ %136, %135 ], [ %132, %129 ]
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %240, label %140

140:                                              ; preds = %137
  %141 = lshr i32 %130, 3
  %142 = zext nneg i32 %141 to i64
  %143 = getelementptr inbounds i8, ptr %0, i64 %142
  %144 = and i32 %130, 7
  %145 = sub nuw nsw i32 8, %144
  %146 = icmp ugt i32 %138, %145
  br i1 %146, label %147, label %226

147:                                              ; preds = %140
  %148 = icmp eq i32 %144, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %147
  %150 = lshr i32 255, %144
  %151 = getelementptr inbounds i8, ptr %143, i64 1
  %152 = load i8, ptr %143, align 1, !tbaa !9
  %153 = trunc i32 %150 to i8
  %154 = or i8 %152, %153
  store i8 %154, ptr %143, align 1, !tbaa !9
  %155 = sub i32 %138, %145
  br label %156

156:                                              ; preds = %149, %147
  %157 = phi ptr [ %151, %149 ], [ %143, %147 ]
  %158 = phi i32 [ %155, %149 ], [ %138, %147 ]
  %159 = freeze ptr %157
  %160 = icmp ult i32 %158, 8
  br i1 %160, label %222, label %161

161:                                              ; preds = %156
  %162 = lshr i32 %158, 3
  %163 = icmp ugt i32 %158, 127
  br i1 %163, label %164, label %201

164:                                              ; preds = %161
  %165 = ptrtoint ptr %159 to i64
  %166 = and i64 %165, 7
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %187, label %168

168:                                              ; preds = %164
  %169 = and i64 %165, 7
  %170 = xor i64 %169, 7
  %171 = add nsw i32 %162, -1
  %172 = zext i32 %171 to i64
  %173 = tail call i64 @llvm.umin.i64(i64 %170, i64 %172)
  %174 = add nuw nsw i64 %173, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %159, i8 -1, i64 %174, i1 false), !tbaa !9
  %175 = trunc i64 %165 to i3
  %176 = xor i3 %175, -1
  %177 = zext i3 %176 to i32
  %178 = add nsw i32 %162, -1
  %179 = tail call i32 @llvm.umin.i32(i32 %177, i32 %178)
  %180 = getelementptr i8, ptr %159, i64 1
  %181 = zext i3 %176 to i64
  %182 = zext i32 %178 to i64
  %183 = tail call i64 @llvm.umin.i64(i64 %181, i64 %182)
  %184 = getelementptr i8, ptr %180, i64 %183
  %185 = xor i32 %179, -1
  %186 = add nsw i32 %162, %185
  br label %187

187:                                              ; preds = %168, %164
  %188 = phi ptr [ %159, %164 ], [ %184, %168 ]
  %189 = phi i32 [ %162, %164 ], [ %186, %168 ]
  %190 = lshr i32 %189, 3
  %191 = add nsw i32 %190, -1
  %192 = zext i32 %191 to i64
  %193 = shl nuw nsw i64 %192, 3
  %194 = add nuw nsw i64 %193, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %188, i8 -1, i64 %194, i1 false), !tbaa !10
  %195 = add nsw i32 %190, -1
  %196 = zext i32 %195 to i64
  %197 = shl nuw nsw i64 %196, 3
  %198 = and i32 %189, 7
  %199 = getelementptr i8, ptr %188, i64 8
  %200 = getelementptr i8, ptr %199, i64 %197
  br label %201

201:                                              ; preds = %187, %161
  %202 = phi ptr [ %159, %161 ], [ %200, %187 ]
  %203 = phi i32 [ %162, %161 ], [ %198, %187 ]
  switch i32 %203, label %219 [
    i32 7, label %204
    i32 6, label %206
    i32 5, label %208
    i32 4, label %210
    i32 3, label %212
    i32 2, label %214
    i32 1, label %216
  ]

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, ptr %202, i64 6
  store i8 -1, ptr %205, align 1, !tbaa !9
  br label %206

206:                                              ; preds = %201, %204
  %207 = getelementptr inbounds i8, ptr %202, i64 5
  store i8 -1, ptr %207, align 1, !tbaa !9
  br label %208

208:                                              ; preds = %201, %206
  %209 = getelementptr inbounds i8, ptr %202, i64 4
  store i8 -1, ptr %209, align 1, !tbaa !9
  br label %210

210:                                              ; preds = %201, %208
  %211 = getelementptr inbounds i8, ptr %202, i64 3
  store i8 -1, ptr %211, align 1, !tbaa !9
  br label %212

212:                                              ; preds = %201, %210
  %213 = getelementptr inbounds i8, ptr %202, i64 2
  store i8 -1, ptr %213, align 1, !tbaa !9
  br label %214

214:                                              ; preds = %201, %212
  %215 = getelementptr inbounds i8, ptr %202, i64 1
  store i8 -1, ptr %215, align 1, !tbaa !9
  br label %216

216:                                              ; preds = %201, %214
  store i8 -1, ptr %202, align 1, !tbaa !9
  %217 = zext nneg i32 %203 to i64
  %218 = getelementptr inbounds i8, ptr %202, i64 %217
  br label %219

219:                                              ; preds = %216, %201
  %220 = phi ptr [ %202, %201 ], [ %218, %216 ]
  %221 = and i32 %158, 7
  br label %222

222:                                              ; preds = %219, %156
  %223 = phi ptr [ %220, %219 ], [ %159, %156 ]
  %224 = phi i32 [ %221, %219 ], [ %158, %156 ]
  %225 = lshr exact i32 65280, %224
  br label %232

226:                                              ; preds = %140
  %227 = zext nneg i32 %138 to i64
  %228 = getelementptr inbounds [9 x i8], ptr @_TIFFFax3fillruns._fillmasks, i64 0, i64 %227
  %229 = load i8, ptr %228, align 1, !tbaa !9
  %230 = zext i8 %229 to i32
  %231 = lshr i32 %230, %144
  br label %232

232:                                              ; preds = %226, %222
  %233 = phi ptr [ %143, %226 ], [ %223, %222 ]
  %234 = phi i32 [ %231, %226 ], [ %225, %222 ]
  %235 = load i8, ptr %233, align 1, !tbaa !9
  %236 = trunc i32 %234 to i8
  %237 = or i8 %235, %236
  store i8 %237, ptr %233, align 1, !tbaa !9
  %238 = load i32, ptr %131, align 4, !tbaa !5
  %239 = add i32 %238, %130
  br label %240

240:                                              ; preds = %137, %232
  %241 = phi i32 [ %239, %232 ], [ %130, %137 ]
  %242 = getelementptr inbounds i32, ptr %17, i64 2
  %243 = icmp ult ptr %242, %13
  br i1 %243, label %15, label %244, !llvm.loop !12

244:                                              ; preds = %240, %12
  %245 = phi i32 [ 0, %12 ], [ %241, %240 ]
  %246 = icmp eq i32 %245, %3
  br i1 %246, label %248, label %247

247:                                              ; preds = %244
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 454, ptr noundef nonnull @__PRETTY_FUNCTION__._TIFFFax3fillruns) #8
  unreachable

248:                                              ; preds = %244
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @TIFFInitCCITTFax3(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @InitCCITTFax3(ptr noundef %0), !range !14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  tail call void @_TIFFMergeFieldInfo(ptr noundef %0, ptr noundef nonnull @fax3FieldInfo, i32 noundef 1) #9
  %6 = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef 65536, i32 noundef 1) #9
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @InitCCITTFax3(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !15
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %6 = select i1 %4, i32 120, i32 96
  %7 = tail call ptr @_TIFFmalloc(i32 noundef %6) #9
  store ptr %7, ptr %5, align 8, !tbaa !23
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 8, !tbaa !24
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %11) #9
  br label %47

12:                                               ; preds = %1
  tail call void @_TIFFMergeFieldInfo(ptr noundef %0, ptr noundef nonnull @faxFieldInfo, i32 noundef 10) #9
  %13 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 58
  %14 = load ptr, ptr %13, align 8, !tbaa !25
  %15 = getelementptr inbounds %struct.Fax3BaseState, ptr %7, i64 0, i32 10
  store ptr %14, ptr %15, align 8, !tbaa !26
  store ptr @Fax3VGetField, ptr %13, align 8, !tbaa !25
  %16 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 57
  %17 = load ptr, ptr %16, align 8, !tbaa !28
  %18 = getelementptr inbounds %struct.Fax3BaseState, ptr %7, i64 0, i32 11
  store ptr %17, ptr %18, align 8, !tbaa !29
  store ptr @Fax3VSetField, ptr %16, align 8, !tbaa !28
  %19 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 59
  store ptr @Fax3PrintDir, ptr %19, align 8, !tbaa !30
  %20 = getelementptr inbounds %struct.Fax3BaseState, ptr %7, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %21 = load i32, ptr %2, align 4, !tbaa !15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !31
  %26 = or i32 %25, 256
  store i32 %26, ptr %24, align 8, !tbaa !31
  %27 = load ptr, ptr %8, align 8, !tbaa !23
  %28 = getelementptr inbounds %struct.Fax3DecodeState, ptr %27, i64 0, i32 6
  store ptr null, ptr %28, align 8, !tbaa !32
  %29 = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef 65540, ptr noundef nonnull @_TIFFFax3fillruns) #9
  br label %33

30:                                               ; preds = %12
  %31 = load ptr, ptr %8, align 8, !tbaa !23
  %32 = getelementptr inbounds %struct.Fax3EncodeState, ptr %31, i64 0, i32 4
  store ptr null, ptr %32, align 8, !tbaa !34
  br label %33

33:                                               ; preds = %30, %23
  %34 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 21
  store ptr @Fax3SetupState, ptr %34, align 8, !tbaa !36
  %35 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 22
  store ptr @Fax3PreDecode, ptr %35, align 8, !tbaa !37
  %36 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 26
  store ptr @Fax3Decode1D, ptr %36, align 8, !tbaa !38
  %37 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 28
  store ptr @Fax3Decode1D, ptr %37, align 8, !tbaa !39
  %38 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 30
  store ptr @Fax3Decode1D, ptr %38, align 8, !tbaa !40
  %39 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 23
  store ptr @Fax3SetupState, ptr %39, align 8, !tbaa !41
  %40 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 24
  store ptr @Fax3PreEncode, ptr %40, align 8, !tbaa !42
  %41 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 25
  store ptr @Fax3PostEncode, ptr %41, align 8, !tbaa !43
  %42 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 27
  store ptr @Fax3Encode, ptr %42, align 8, !tbaa !44
  %43 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 29
  store ptr @Fax3Encode, ptr %43, align 8, !tbaa !45
  %44 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 31
  store ptr @Fax3Encode, ptr %44, align 8, !tbaa !46
  %45 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 32
  store ptr @Fax3Close, ptr %45, align 8, !tbaa !47
  %46 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 34
  store ptr @Fax3Cleanup, ptr %46, align 8, !tbaa !48
  br label %47

47:                                               ; preds = %33, %10
  %48 = phi i32 [ 0, %10 ], [ 1, %33 ]
  ret i32 %48
}

declare void @_TIFFMergeFieldInfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @TIFFSetField(ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @TIFFInitCCITTFax4(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @InitCCITTFax3(ptr noundef %0), !range !14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  tail call void @_TIFFMergeFieldInfo(ptr noundef %0, ptr noundef nonnull @fax4FieldInfo, i32 noundef 1) #9
  %6 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 26
  store ptr @Fax4Decode, ptr %6, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 28
  store ptr @Fax4Decode, ptr %7, align 8, !tbaa !39
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 30
  store ptr @Fax4Decode, ptr %8, align 8, !tbaa !40
  %9 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 27
  store ptr @Fax4Encode, ptr %9, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 29
  store ptr @Fax4Encode, ptr %10, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 31
  store ptr @Fax4Encode, ptr %11, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 25
  store ptr @Fax4PostEncode, ptr %12, align 8, !tbaa !43
  %13 = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef 65536, i32 noundef 1) #9
  br label %14

14:                                               ; preds = %2, %5
  %15 = phi i32 [ %13, %5 ], [ 0, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @Fax4Decode(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i16 zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  %7 = getelementptr inbounds %struct.Fax3BaseState, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !49
  %9 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !52
  %15 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %20 = load i32, ptr %19, align 8, !tbaa !55
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %18, i64 %21
  %23 = icmp sgt i32 %2, 0
  br i1 %23, label %24, label %710

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 8
  %26 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 7
  %27 = icmp sgt i32 %8, 0
  %28 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %29 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %30 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %31 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %32 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %33 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %34 = zext i32 %8 to i64
  %35 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 5
  %36 = getelementptr inbounds %struct.Fax3BaseState, ptr %6, i64 0, i32 1
  %37 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  br label %38

38:                                               ; preds = %24, %704
  %39 = phi ptr [ %1, %24 ], [ %698, %704 ]
  %40 = phi i32 [ %16, %24 ], [ %644, %704 ]
  %41 = phi i32 [ %2, %24 ], [ %699, %704 ]
  %42 = phi ptr [ %18, %24 ], [ %641, %704 ]
  %43 = phi i32 [ %14, %24 ], [ %639, %704 ]
  %44 = phi i32 [ %12, %24 ], [ %638, %704 ]
  %45 = load ptr, ptr %25, align 8, !tbaa !56
  br i1 %27, label %46, label %596

46:                                               ; preds = %38
  %47 = load ptr, ptr %26, align 8, !tbaa !57
  %48 = load i32, ptr %47, align 4, !tbaa !5
  %49 = getelementptr inbounds i32, ptr %47, i64 1
  %50 = ptrtoint ptr %45 to i64
  br label %51

51:                                               ; preds = %46, %585
  %52 = phi i32 [ 0, %46 ], [ %594, %585 ]
  %53 = phi ptr [ %49, %46 ], [ %593, %585 ]
  %54 = phi i32 [ %48, %46 ], [ %592, %585 ]
  %55 = phi ptr [ %45, %46 ], [ %591, %585 ]
  %56 = phi i32 [ 0, %46 ], [ %590, %585 ]
  %57 = phi ptr [ %42, %46 ], [ %589, %585 ]
  %58 = phi i32 [ 0, %46 ], [ %588, %585 ]
  %59 = phi i32 [ %43, %46 ], [ %587, %585 ]
  %60 = phi i32 [ %44, %46 ], [ %586, %585 ]
  %61 = icmp slt i32 %59, 7
  br i1 %61, label %62, label %76

62:                                               ; preds = %51
  %63 = icmp ult ptr %57, %22
  br i1 %63, label %66, label %64

64:                                               ; preds = %62
  %65 = icmp eq i32 %59, 0
  br i1 %65, label %529, label %76

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, ptr %57, i64 1
  %68 = load i8, ptr %57, align 1, !tbaa !9
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds i8, ptr %10, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !9
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 %72, %59
  %74 = or i32 %73, %60
  %75 = add nsw i32 %59, 8
  br label %76

76:                                               ; preds = %64, %66, %51
  %77 = phi i32 [ %74, %66 ], [ %60, %51 ], [ %60, %64 ]
  %78 = phi i32 [ %75, %66 ], [ %59, %51 ], [ 7, %64 ]
  %79 = phi ptr [ %67, %66 ], [ %57, %51 ], [ %57, %64 ]
  %80 = and i32 %77, 127
  %81 = zext nneg i32 %80 to i64
  %82 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxMainTable, i64 %81
  %83 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxMainTable, i64 %81, i32 1
  %84 = load i8, ptr %83, align 1, !tbaa !58
  %85 = zext i8 %84 to i32
  %86 = sub nsw i32 %78, %85
  %87 = lshr i32 %77, %85
  %88 = load i8, ptr %82, align 4, !tbaa !60
  switch i8 %88, label %499 [
    i8 1, label %89
    i8 2, label %118
    i8 3, label %376
    i8 4, label %403
    i8 5, label %434
    i8 6, label %465
    i8 12, label %471
  ]

89:                                               ; preds = %76
  %90 = icmp eq ptr %55, %45
  br i1 %90, label %107, label %91

91:                                               ; preds = %89
  %92 = icmp sle i32 %54, %56
  %93 = icmp slt i32 %54, %8
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %95, label %107

95:                                               ; preds = %91, %95
  %96 = phi ptr [ %103, %95 ], [ %53, %91 ]
  %97 = phi i32 [ %102, %95 ], [ %54, %91 ]
  %98 = load i32, ptr %96, align 4, !tbaa !5
  %99 = getelementptr inbounds i32, ptr %96, i64 1
  %100 = load i32, ptr %99, align 4, !tbaa !5
  %101 = add i32 %98, %97
  %102 = add i32 %101, %100
  %103 = getelementptr inbounds i32, ptr %96, i64 2
  %104 = icmp sle i32 %102, %56
  %105 = icmp slt i32 %102, %8
  %106 = select i1 %104, i1 %105, i1 false
  br i1 %106, label %95, label %107, !llvm.loop !61

107:                                              ; preds = %95, %91, %89
  %108 = phi i32 [ %54, %89 ], [ %54, %91 ], [ %102, %95 ]
  %109 = phi ptr [ %53, %89 ], [ %53, %91 ], [ %103, %95 ]
  %110 = getelementptr inbounds i32, ptr %109, i64 1
  %111 = load i32, ptr %109, align 4, !tbaa !5
  %112 = add i32 %111, %108
  %113 = add i32 %52, %58
  %114 = add i32 %113, %112
  %115 = getelementptr inbounds i32, ptr %109, i64 2
  %116 = load i32, ptr %110, align 4, !tbaa !5
  %117 = add i32 %112, %116
  br label %585

118:                                              ; preds = %76
  %119 = ptrtoint ptr %55 to i64
  %120 = sub i64 %119, %50
  %121 = and i64 %120, 4
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %238, label %123

123:                                              ; preds = %118, %176
  %124 = phi i32 [ %168, %176 ], [ %87, %118 ]
  %125 = phi i32 [ %167, %176 ], [ %86, %118 ]
  %126 = phi i32 [ %180, %176 ], [ %58, %118 ]
  %127 = phi ptr [ %160, %176 ], [ %79, %118 ]
  %128 = phi i32 [ %179, %176 ], [ %56, %118 ]
  %129 = icmp slt i32 %125, 13
  br i1 %129, label %130, label %157

130:                                              ; preds = %123
  %131 = icmp ult ptr %127, %22
  br i1 %131, label %134, label %132

132:                                              ; preds = %130
  %133 = icmp eq i32 %125, 0
  br i1 %133, label %529, label %157

134:                                              ; preds = %130
  %135 = getelementptr inbounds i8, ptr %127, i64 1
  %136 = load i8, ptr %127, align 1, !tbaa !9
  %137 = zext i8 %136 to i64
  %138 = getelementptr inbounds i8, ptr %10, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !9
  %140 = zext i8 %139 to i32
  %141 = shl nuw nsw i32 %140, %125
  %142 = or i32 %141, %124
  %143 = add nsw i32 %125, 8
  %144 = icmp slt i32 %125, 5
  br i1 %144, label %145, label %157

145:                                              ; preds = %134
  %146 = icmp ult ptr %135, %22
  br i1 %146, label %147, label %157

147:                                              ; preds = %145
  %148 = getelementptr inbounds i8, ptr %127, i64 2
  %149 = load i8, ptr %135, align 1, !tbaa !9
  %150 = zext i8 %149 to i64
  %151 = getelementptr inbounds i8, ptr %10, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !9
  %153 = zext i8 %152 to i32
  %154 = shl nuw nsw i32 %153, %143
  %155 = or i32 %154, %142
  %156 = add nsw i32 %125, 16
  br label %157

157:                                              ; preds = %145, %132, %147, %134, %123
  %158 = phi i32 [ %155, %147 ], [ %142, %134 ], [ %124, %123 ], [ %124, %132 ], [ %142, %145 ]
  %159 = phi i32 [ %156, %147 ], [ %143, %134 ], [ %125, %123 ], [ 13, %132 ], [ 13, %145 ]
  %160 = phi ptr [ %148, %147 ], [ %135, %134 ], [ %127, %123 ], [ %127, %132 ], [ %135, %145 ]
  %161 = and i32 %158, 8191
  %162 = zext nneg i32 %161 to i64
  %163 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %162
  %164 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %162, i32 1
  %165 = load i8, ptr %164, align 1, !tbaa !58
  %166 = zext i8 %165 to i32
  %167 = sub nsw i32 %159, %166
  %168 = lshr i32 %158, %166
  %169 = load i8, ptr %163, align 4, !tbaa !60
  switch i8 %169, label %509 [
    i8 8, label %170
    i8 10, label %176
    i8 11, label %176
  ]

170:                                              ; preds = %157
  %171 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %162, i32 2
  %172 = load i32, ptr %171, align 4, !tbaa !62
  %173 = add i32 %172, %126
  %174 = getelementptr inbounds i32, ptr %55, i64 1
  store i32 %173, ptr %55, align 4, !tbaa !5
  %175 = add i32 %172, %128
  br label %181

176:                                              ; preds = %157, %157
  %177 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %162, i32 2
  %178 = load i32, ptr %177, align 4, !tbaa !62
  %179 = add i32 %178, %128
  %180 = add i32 %178, %126
  br label %123, !llvm.loop !63

181:                                              ; preds = %233, %170
  %182 = phi i32 [ %168, %170 ], [ %226, %233 ]
  %183 = phi i32 [ %167, %170 ], [ %225, %233 ]
  %184 = phi i32 [ 0, %170 ], [ %237, %233 ]
  %185 = phi ptr [ %160, %170 ], [ %218, %233 ]
  %186 = phi i32 [ %175, %170 ], [ %236, %233 ]
  %187 = icmp slt i32 %183, 12
  br i1 %187, label %188, label %215

188:                                              ; preds = %181
  %189 = icmp ult ptr %185, %22
  br i1 %189, label %192, label %190

190:                                              ; preds = %188
  %191 = icmp eq i32 %183, 0
  br i1 %191, label %529, label %215

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, ptr %185, i64 1
  %194 = load i8, ptr %185, align 1, !tbaa !9
  %195 = zext i8 %194 to i64
  %196 = getelementptr inbounds i8, ptr %10, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !9
  %198 = zext i8 %197 to i32
  %199 = shl nuw nsw i32 %198, %183
  %200 = or i32 %199, %182
  %201 = add nsw i32 %183, 8
  %202 = icmp slt i32 %183, 4
  br i1 %202, label %203, label %215

203:                                              ; preds = %192
  %204 = icmp ult ptr %193, %22
  br i1 %204, label %205, label %215

205:                                              ; preds = %203
  %206 = getelementptr inbounds i8, ptr %185, i64 2
  %207 = load i8, ptr %193, align 1, !tbaa !9
  %208 = zext i8 %207 to i64
  %209 = getelementptr inbounds i8, ptr %10, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !9
  %211 = zext i8 %210 to i32
  %212 = shl nuw nsw i32 %211, %201
  %213 = or i32 %212, %200
  %214 = add nsw i32 %183, 16
  br label %215

215:                                              ; preds = %203, %190, %205, %192, %181
  %216 = phi i32 [ %213, %205 ], [ %200, %192 ], [ %182, %181 ], [ %182, %190 ], [ %200, %203 ]
  %217 = phi i32 [ %214, %205 ], [ %201, %192 ], [ %183, %181 ], [ 12, %190 ], [ 12, %203 ]
  %218 = phi ptr [ %206, %205 ], [ %193, %192 ], [ %185, %181 ], [ %185, %190 ], [ %193, %203 ]
  %219 = and i32 %216, 4095
  %220 = zext nneg i32 %219 to i64
  %221 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %220
  %222 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %220, i32 1
  %223 = load i8, ptr %222, align 1, !tbaa !58
  %224 = zext i8 %223 to i32
  %225 = sub nsw i32 %217, %224
  %226 = lshr i32 %216, %224
  %227 = load i8, ptr %221, align 4, !tbaa !60
  switch i8 %227, label %519 [
    i8 7, label %228
    i8 9, label %233
    i8 11, label %233
  ]

228:                                              ; preds = %215
  %229 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %220, i32 2
  %230 = load i32, ptr %229, align 4, !tbaa !62
  %231 = add i32 %230, %184
  store i32 %231, ptr %174, align 4, !tbaa !5
  %232 = add i32 %230, %186
  br label %353

233:                                              ; preds = %215, %215
  %234 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %220, i32 2
  %235 = load i32, ptr %234, align 4, !tbaa !62
  %236 = add i32 %235, %186
  %237 = add i32 %235, %184
  br label %181, !llvm.loop !64

238:                                              ; preds = %118, %291
  %239 = phi i32 [ %283, %291 ], [ %87, %118 ]
  %240 = phi i32 [ %282, %291 ], [ %86, %118 ]
  %241 = phi i32 [ %295, %291 ], [ %58, %118 ]
  %242 = phi ptr [ %275, %291 ], [ %79, %118 ]
  %243 = phi i32 [ %294, %291 ], [ %56, %118 ]
  %244 = icmp slt i32 %240, 12
  br i1 %244, label %245, label %272

245:                                              ; preds = %238
  %246 = icmp ult ptr %242, %22
  br i1 %246, label %249, label %247

247:                                              ; preds = %245
  %248 = icmp eq i32 %240, 0
  br i1 %248, label %529, label %272

249:                                              ; preds = %245
  %250 = getelementptr inbounds i8, ptr %242, i64 1
  %251 = load i8, ptr %242, align 1, !tbaa !9
  %252 = zext i8 %251 to i64
  %253 = getelementptr inbounds i8, ptr %10, i64 %252
  %254 = load i8, ptr %253, align 1, !tbaa !9
  %255 = zext i8 %254 to i32
  %256 = shl nuw nsw i32 %255, %240
  %257 = or i32 %256, %239
  %258 = add nsw i32 %240, 8
  %259 = icmp slt i32 %240, 4
  br i1 %259, label %260, label %272

260:                                              ; preds = %249
  %261 = icmp ult ptr %250, %22
  br i1 %261, label %262, label %272

262:                                              ; preds = %260
  %263 = getelementptr inbounds i8, ptr %242, i64 2
  %264 = load i8, ptr %250, align 1, !tbaa !9
  %265 = zext i8 %264 to i64
  %266 = getelementptr inbounds i8, ptr %10, i64 %265
  %267 = load i8, ptr %266, align 1, !tbaa !9
  %268 = zext i8 %267 to i32
  %269 = shl nuw nsw i32 %268, %258
  %270 = or i32 %269, %257
  %271 = add nsw i32 %240, 16
  br label %272

272:                                              ; preds = %260, %247, %262, %249, %238
  %273 = phi i32 [ %270, %262 ], [ %257, %249 ], [ %239, %238 ], [ %239, %247 ], [ %257, %260 ]
  %274 = phi i32 [ %271, %262 ], [ %258, %249 ], [ %240, %238 ], [ 12, %247 ], [ 12, %260 ]
  %275 = phi ptr [ %263, %262 ], [ %250, %249 ], [ %242, %238 ], [ %242, %247 ], [ %250, %260 ]
  %276 = and i32 %273, 4095
  %277 = zext nneg i32 %276 to i64
  %278 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %277
  %279 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %277, i32 1
  %280 = load i8, ptr %279, align 1, !tbaa !58
  %281 = zext i8 %280 to i32
  %282 = sub nsw i32 %274, %281
  %283 = lshr i32 %273, %281
  %284 = load i8, ptr %278, align 4, !tbaa !60
  switch i8 %284, label %519 [
    i8 7, label %285
    i8 9, label %291
    i8 11, label %291
  ]

285:                                              ; preds = %272
  %286 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %277, i32 2
  %287 = load i32, ptr %286, align 4, !tbaa !62
  %288 = add i32 %287, %241
  %289 = getelementptr inbounds i32, ptr %55, i64 1
  store i32 %288, ptr %55, align 4, !tbaa !5
  %290 = add i32 %287, %243
  br label %296

291:                                              ; preds = %272, %272
  %292 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %277, i32 2
  %293 = load i32, ptr %292, align 4, !tbaa !62
  %294 = add i32 %293, %243
  %295 = add i32 %293, %241
  br label %238, !llvm.loop !65

296:                                              ; preds = %348, %285
  %297 = phi i32 [ %283, %285 ], [ %341, %348 ]
  %298 = phi i32 [ %282, %285 ], [ %340, %348 ]
  %299 = phi i32 [ 0, %285 ], [ %352, %348 ]
  %300 = phi ptr [ %275, %285 ], [ %333, %348 ]
  %301 = phi i32 [ %290, %285 ], [ %351, %348 ]
  %302 = icmp slt i32 %298, 13
  br i1 %302, label %303, label %330

303:                                              ; preds = %296
  %304 = icmp ult ptr %300, %22
  br i1 %304, label %307, label %305

305:                                              ; preds = %303
  %306 = icmp eq i32 %298, 0
  br i1 %306, label %529, label %330

307:                                              ; preds = %303
  %308 = getelementptr inbounds i8, ptr %300, i64 1
  %309 = load i8, ptr %300, align 1, !tbaa !9
  %310 = zext i8 %309 to i64
  %311 = getelementptr inbounds i8, ptr %10, i64 %310
  %312 = load i8, ptr %311, align 1, !tbaa !9
  %313 = zext i8 %312 to i32
  %314 = shl nuw nsw i32 %313, %298
  %315 = or i32 %314, %297
  %316 = add nsw i32 %298, 8
  %317 = icmp slt i32 %298, 5
  br i1 %317, label %318, label %330

318:                                              ; preds = %307
  %319 = icmp ult ptr %308, %22
  br i1 %319, label %320, label %330

320:                                              ; preds = %318
  %321 = getelementptr inbounds i8, ptr %300, i64 2
  %322 = load i8, ptr %308, align 1, !tbaa !9
  %323 = zext i8 %322 to i64
  %324 = getelementptr inbounds i8, ptr %10, i64 %323
  %325 = load i8, ptr %324, align 1, !tbaa !9
  %326 = zext i8 %325 to i32
  %327 = shl nuw nsw i32 %326, %316
  %328 = or i32 %327, %315
  %329 = add nsw i32 %298, 16
  br label %330

330:                                              ; preds = %318, %305, %320, %307, %296
  %331 = phi i32 [ %328, %320 ], [ %315, %307 ], [ %297, %296 ], [ %297, %305 ], [ %315, %318 ]
  %332 = phi i32 [ %329, %320 ], [ %316, %307 ], [ %298, %296 ], [ 13, %305 ], [ 13, %318 ]
  %333 = phi ptr [ %321, %320 ], [ %308, %307 ], [ %300, %296 ], [ %300, %305 ], [ %308, %318 ]
  %334 = and i32 %331, 8191
  %335 = zext nneg i32 %334 to i64
  %336 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %335
  %337 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %335, i32 1
  %338 = load i8, ptr %337, align 1, !tbaa !58
  %339 = zext i8 %338 to i32
  %340 = sub nsw i32 %332, %339
  %341 = lshr i32 %331, %339
  %342 = load i8, ptr %336, align 4, !tbaa !60
  switch i8 %342, label %509 [
    i8 8, label %343
    i8 10, label %348
    i8 11, label %348
  ]

343:                                              ; preds = %330
  %344 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %335, i32 2
  %345 = load i32, ptr %344, align 4, !tbaa !62
  %346 = add i32 %345, %299
  store i32 %346, ptr %289, align 4, !tbaa !5
  %347 = add i32 %345, %301
  br label %353

348:                                              ; preds = %330, %330
  %349 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %335, i32 2
  %350 = load i32, ptr %349, align 4, !tbaa !62
  %351 = add i32 %350, %301
  %352 = add i32 %350, %299
  br label %296, !llvm.loop !66

353:                                              ; preds = %228, %343
  %354 = phi i32 [ %226, %228 ], [ %341, %343 ]
  %355 = phi i32 [ %225, %228 ], [ %340, %343 ]
  %356 = phi ptr [ %218, %228 ], [ %333, %343 ]
  %357 = phi i32 [ %232, %228 ], [ %347, %343 ]
  %358 = getelementptr inbounds i32, ptr %55, i64 2
  %359 = icmp eq ptr %358, %45
  br i1 %359, label %585, label %360

360:                                              ; preds = %353
  %361 = icmp sle i32 %54, %357
  %362 = icmp slt i32 %54, %8
  %363 = select i1 %361, i1 %362, i1 false
  br i1 %363, label %364, label %585

364:                                              ; preds = %360, %364
  %365 = phi ptr [ %372, %364 ], [ %53, %360 ]
  %366 = phi i32 [ %371, %364 ], [ %54, %360 ]
  %367 = load i32, ptr %365, align 4, !tbaa !5
  %368 = getelementptr inbounds i32, ptr %365, i64 1
  %369 = load i32, ptr %368, align 4, !tbaa !5
  %370 = add i32 %367, %366
  %371 = add i32 %370, %369
  %372 = getelementptr inbounds i32, ptr %365, i64 2
  %373 = icmp sle i32 %371, %357
  %374 = icmp slt i32 %371, %8
  %375 = select i1 %373, i1 %374, i1 false
  br i1 %375, label %364, label %585, !llvm.loop !67

376:                                              ; preds = %76
  %377 = icmp eq ptr %55, %45
  br i1 %377, label %394, label %378

378:                                              ; preds = %376
  %379 = icmp sle i32 %54, %56
  %380 = icmp slt i32 %54, %8
  %381 = select i1 %379, i1 %380, i1 false
  br i1 %381, label %382, label %394

382:                                              ; preds = %378, %382
  %383 = phi ptr [ %390, %382 ], [ %53, %378 ]
  %384 = phi i32 [ %389, %382 ], [ %54, %378 ]
  %385 = load i32, ptr %383, align 4, !tbaa !5
  %386 = getelementptr inbounds i32, ptr %383, i64 1
  %387 = load i32, ptr %386, align 4, !tbaa !5
  %388 = add i32 %385, %384
  %389 = add i32 %388, %387
  %390 = getelementptr inbounds i32, ptr %383, i64 2
  %391 = icmp sle i32 %389, %56
  %392 = icmp slt i32 %389, %8
  %393 = select i1 %391, i1 %392, i1 false
  br i1 %393, label %382, label %394, !llvm.loop !68

394:                                              ; preds = %382, %378, %376
  %395 = phi i32 [ %54, %376 ], [ %54, %378 ], [ %389, %382 ]
  %396 = phi ptr [ %53, %376 ], [ %53, %378 ], [ %390, %382 ]
  %397 = add i32 %52, %58
  %398 = add i32 %397, %395
  %399 = getelementptr inbounds i32, ptr %55, i64 1
  store i32 %398, ptr %55, align 4, !tbaa !5
  %400 = getelementptr inbounds i32, ptr %396, i64 1
  %401 = load i32, ptr %396, align 4, !tbaa !5
  %402 = add i32 %401, %395
  br label %585

403:                                              ; preds = %76
  %404 = icmp eq ptr %55, %45
  br i1 %404, label %421, label %405

405:                                              ; preds = %403
  %406 = icmp sle i32 %54, %56
  %407 = icmp slt i32 %54, %8
  %408 = select i1 %406, i1 %407, i1 false
  br i1 %408, label %409, label %421

409:                                              ; preds = %405, %409
  %410 = phi ptr [ %417, %409 ], [ %53, %405 ]
  %411 = phi i32 [ %416, %409 ], [ %54, %405 ]
  %412 = load i32, ptr %410, align 4, !tbaa !5
  %413 = getelementptr inbounds i32, ptr %410, i64 1
  %414 = load i32, ptr %413, align 4, !tbaa !5
  %415 = add i32 %412, %411
  %416 = add i32 %415, %414
  %417 = getelementptr inbounds i32, ptr %410, i64 2
  %418 = icmp sle i32 %416, %56
  %419 = icmp slt i32 %416, %8
  %420 = select i1 %418, i1 %419, i1 false
  br i1 %420, label %409, label %421, !llvm.loop !69

421:                                              ; preds = %409, %405, %403
  %422 = phi i32 [ %54, %403 ], [ %54, %405 ], [ %416, %409 ]
  %423 = phi ptr [ %53, %403 ], [ %53, %405 ], [ %417, %409 ]
  %424 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxMainTable, i64 %81, i32 2
  %425 = load i32, ptr %424, align 4, !tbaa !62
  %426 = add i32 %52, %58
  %427 = add i32 %426, %422
  %428 = add i32 %427, %425
  %429 = getelementptr inbounds i32, ptr %55, i64 1
  store i32 %428, ptr %55, align 4, !tbaa !5
  %430 = add i32 %425, %422
  %431 = getelementptr inbounds i32, ptr %423, i64 1
  %432 = load i32, ptr %423, align 4, !tbaa !5
  %433 = add i32 %432, %422
  br label %585

434:                                              ; preds = %76
  %435 = icmp eq ptr %55, %45
  br i1 %435, label %452, label %436

436:                                              ; preds = %434
  %437 = icmp sle i32 %54, %56
  %438 = icmp slt i32 %54, %8
  %439 = select i1 %437, i1 %438, i1 false
  br i1 %439, label %440, label %452

440:                                              ; preds = %436, %440
  %441 = phi ptr [ %448, %440 ], [ %53, %436 ]
  %442 = phi i32 [ %447, %440 ], [ %54, %436 ]
  %443 = load i32, ptr %441, align 4, !tbaa !5
  %444 = getelementptr inbounds i32, ptr %441, i64 1
  %445 = load i32, ptr %444, align 4, !tbaa !5
  %446 = add i32 %443, %442
  %447 = add i32 %446, %445
  %448 = getelementptr inbounds i32, ptr %441, i64 2
  %449 = icmp sle i32 %447, %56
  %450 = icmp slt i32 %447, %8
  %451 = select i1 %449, i1 %450, i1 false
  br i1 %451, label %440, label %452, !llvm.loop !70

452:                                              ; preds = %440, %436, %434
  %453 = phi i32 [ %54, %434 ], [ %54, %436 ], [ %447, %440 ]
  %454 = phi ptr [ %53, %434 ], [ %53, %436 ], [ %448, %440 ]
  %455 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxMainTable, i64 %81, i32 2
  %456 = load i32, ptr %455, align 4, !tbaa !62
  %457 = add i32 %453, %52
  %458 = sub i32 %457, %456
  %459 = add i32 %458, %58
  %460 = getelementptr inbounds i32, ptr %55, i64 1
  store i32 %459, ptr %55, align 4, !tbaa !5
  %461 = add i32 %458, %56
  %462 = getelementptr inbounds i32, ptr %454, i64 -1
  %463 = load i32, ptr %462, align 4, !tbaa !5
  %464 = sub i32 %453, %463
  br label %585

465:                                              ; preds = %76
  %466 = sub nsw i32 %8, %56
  %467 = getelementptr inbounds i32, ptr %55, i64 1
  store i32 %466, ptr %55, align 4, !tbaa !5
  %468 = load ptr, ptr %0, align 8, !tbaa !24
  %469 = load i32, ptr %29, align 8, !tbaa !71
  %470 = zext i32 %56 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax4Decode.module, ptr noundef nonnull @.str.39, ptr noundef %468, i32 noundef %469, i64 noundef %470) #9
  br label %637

471:                                              ; preds = %76
  %472 = sub nsw i32 %8, %56
  %473 = getelementptr inbounds i32, ptr %55, i64 1
  store i32 %472, ptr %55, align 4, !tbaa !5
  %474 = icmp slt i32 %86, 5
  br i1 %474, label %475, label %489

475:                                              ; preds = %471
  %476 = icmp ult ptr %79, %22
  br i1 %476, label %479, label %477

477:                                              ; preds = %475
  %478 = icmp eq i32 %86, 0
  br i1 %478, label %529, label %489

479:                                              ; preds = %475
  %480 = getelementptr inbounds i8, ptr %79, i64 1
  %481 = load i8, ptr %79, align 1, !tbaa !9
  %482 = zext i8 %481 to i64
  %483 = getelementptr inbounds i8, ptr %10, i64 %482
  %484 = load i8, ptr %483, align 1, !tbaa !9
  %485 = zext i8 %484 to i32
  %486 = shl nuw nsw i32 %485, %86
  %487 = or i32 %486, %87
  %488 = add nsw i32 %86, 8
  br label %489

489:                                              ; preds = %477, %479, %471
  %490 = phi i32 [ %487, %479 ], [ %87, %471 ], [ %87, %477 ]
  %491 = phi i32 [ %488, %479 ], [ %86, %471 ], [ 5, %477 ]
  %492 = phi ptr [ %480, %479 ], [ %79, %471 ], [ %79, %477 ]
  %493 = and i32 %490, 31
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %637, label %495

495:                                              ; preds = %489
  %496 = load ptr, ptr %0, align 8, !tbaa !24
  %497 = load i32, ptr %28, align 8, !tbaa !71
  %498 = zext i32 %56 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax4Decode.module, ptr noundef nonnull @.str.34, ptr noundef %496, i32 noundef %497, i64 noundef %498) #9
  br label %637

499:                                              ; preds = %76, %623
  %500 = phi i32 [ %599, %623 ], [ %58, %76 ]
  %501 = phi i32 [ %601, %623 ], [ %56, %76 ]
  %502 = phi ptr [ %602, %623 ], [ %55, %76 ]
  %503 = phi i32 [ %624, %623 ], [ %87, %76 ]
  %504 = phi i32 [ %625, %623 ], [ %86, %76 ]
  %505 = phi ptr [ %626, %623 ], [ %79, %76 ]
  %506 = load ptr, ptr %0, align 8, !tbaa !24
  %507 = load i32, ptr %32, align 8, !tbaa !71
  %508 = zext i32 %501 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax4Decode.module, ptr noundef nonnull @.str.34, ptr noundef %506, i32 noundef %507, i64 noundef %508) #9
  br label %637

509:                                              ; preds = %157, %330
  %510 = phi i32 [ %341, %330 ], [ %168, %157 ]
  %511 = phi i32 [ %340, %330 ], [ %167, %157 ]
  %512 = phi i32 [ %299, %330 ], [ %126, %157 ]
  %513 = phi ptr [ %333, %330 ], [ %160, %157 ]
  %514 = phi i32 [ %301, %330 ], [ %128, %157 ]
  %515 = phi ptr [ %289, %330 ], [ %55, %157 ]
  %516 = load ptr, ptr %0, align 8, !tbaa !24
  %517 = load i32, ptr %30, align 8, !tbaa !71
  %518 = zext i32 %514 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax4Decode.module, ptr noundef nonnull @.str.34, ptr noundef %516, i32 noundef %517, i64 noundef %518) #9
  br label %637

519:                                              ; preds = %215, %272
  %520 = phi i32 [ %283, %272 ], [ %226, %215 ]
  %521 = phi i32 [ %282, %272 ], [ %225, %215 ]
  %522 = phi i32 [ %241, %272 ], [ %184, %215 ]
  %523 = phi ptr [ %275, %272 ], [ %218, %215 ]
  %524 = phi i32 [ %243, %272 ], [ %186, %215 ]
  %525 = phi ptr [ %55, %272 ], [ %174, %215 ]
  %526 = load ptr, ptr %0, align 8, !tbaa !24
  %527 = load i32, ptr %31, align 8, !tbaa !71
  %528 = zext i32 %524 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax4Decode.module, ptr noundef nonnull @.str.34, ptr noundef %526, i32 noundef %527, i64 noundef %528) #9
  br label %637

529:                                              ; preds = %611, %477, %64, %132, %190, %247, %305
  %530 = phi i32 [ %297, %305 ], [ %239, %247 ], [ %182, %190 ], [ %124, %132 ], [ %60, %64 ], [ %87, %477 ], [ %597, %611 ]
  %531 = phi i32 [ %299, %305 ], [ %241, %247 ], [ %184, %190 ], [ %126, %132 ], [ %58, %64 ], [ %58, %477 ], [ %599, %611 ]
  %532 = phi ptr [ %300, %305 ], [ %242, %247 ], [ %185, %190 ], [ %127, %132 ], [ %57, %64 ], [ %79, %477 ], [ %600, %611 ]
  %533 = phi i32 [ %301, %305 ], [ %243, %247 ], [ %186, %190 ], [ %128, %132 ], [ %56, %64 ], [ %56, %477 ], [ %601, %611 ]
  %534 = phi ptr [ %289, %305 ], [ %55, %247 ], [ %174, %190 ], [ %55, %132 ], [ %55, %64 ], [ %473, %477 ], [ %602, %611 ]
  %535 = load ptr, ptr %0, align 8, !tbaa !24
  %536 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %537 = load i32, ptr %536, align 8, !tbaa !71
  %538 = zext i32 %533 to i64
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax4Decode.module, ptr noundef nonnull @.str.35, ptr noundef %535, i32 noundef %537, i64 noundef %538) #9
  %539 = icmp eq i32 %531, 0
  br i1 %539, label %542, label %540

540:                                              ; preds = %529
  %541 = getelementptr inbounds i32, ptr %534, i64 1
  store i32 %531, ptr %534, align 4, !tbaa !5
  br label %542

542:                                              ; preds = %540, %529
  %543 = phi ptr [ %541, %540 ], [ %534, %529 ]
  %544 = icmp eq i32 %533, %8
  br i1 %544, label %706, label %545

545:                                              ; preds = %542
  %546 = load ptr, ptr %0, align 8, !tbaa !24
  %547 = icmp ult i32 %533, %8
  %548 = select i1 %547, ptr @.str.37, ptr @.str.38
  %549 = load i32, ptr %536, align 8, !tbaa !71
  %550 = zext i32 %8 to i64
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax4Decode.module, ptr noundef nonnull @.str.36, ptr noundef %546, ptr noundef nonnull %548, i32 noundef %549, i64 noundef %538, i64 noundef %550) #9
  %551 = icmp sgt i32 %533, %8
  %552 = icmp ugt ptr %543, %45
  %553 = select i1 %551, i1 %552, i1 false
  br i1 %553, label %554, label %563

554:                                              ; preds = %545, %554
  %555 = phi ptr [ %557, %554 ], [ %543, %545 ]
  %556 = phi i32 [ %559, %554 ], [ %533, %545 ]
  %557 = getelementptr inbounds i32, ptr %555, i64 -1
  %558 = load i32, ptr %557, align 4, !tbaa !5
  %559 = sub i32 %556, %558
  %560 = icmp sgt i32 %559, %8
  %561 = icmp ugt ptr %557, %45
  %562 = select i1 %560, i1 %561, i1 false
  br i1 %562, label %554, label %563, !llvm.loop !72

563:                                              ; preds = %554, %545
  %564 = phi i32 [ %533, %545 ], [ %559, %554 ]
  %565 = phi ptr [ %543, %545 ], [ %557, %554 ]
  %566 = phi i1 [ %551, %545 ], [ %560, %554 ]
  %567 = icmp slt i32 %564, %8
  br i1 %567, label %568, label %581

568:                                              ; preds = %563
  %569 = tail call i32 @llvm.smax.i32(i32 %564, i32 0)
  %570 = ptrtoint ptr %565 to i64
  %571 = ptrtoint ptr %45 to i64
  %572 = sub i64 %570, %571
  %573 = and i64 %572, 4
  %574 = icmp eq i64 %573, 0
  br i1 %574, label %577, label %575

575:                                              ; preds = %568
  %576 = getelementptr inbounds i32, ptr %565, i64 1
  store i32 0, ptr %565, align 4, !tbaa !5
  br label %577

577:                                              ; preds = %568, %575
  %578 = phi ptr [ %576, %575 ], [ %565, %568 ]
  %579 = sub nsw i32 %8, %569
  %580 = getelementptr inbounds i32, ptr %578, i64 1
  store i32 %579, ptr %578, align 4, !tbaa !5
  br label %706

581:                                              ; preds = %563
  br i1 %566, label %582, label %706

582:                                              ; preds = %581
  %583 = getelementptr inbounds i32, ptr %565, i64 1
  store i32 %8, ptr %565, align 4, !tbaa !5
  %584 = getelementptr inbounds i32, ptr %565, i64 2
  store i32 0, ptr %583, align 4, !tbaa !5
  br label %706

585:                                              ; preds = %364, %360, %353, %452, %421, %394, %107
  %586 = phi i32 [ %87, %452 ], [ %87, %421 ], [ %87, %394 ], [ %354, %353 ], [ %87, %107 ], [ %354, %360 ], [ %354, %364 ]
  %587 = phi i32 [ %86, %452 ], [ %86, %421 ], [ %86, %394 ], [ %355, %353 ], [ %86, %107 ], [ %355, %360 ], [ %355, %364 ]
  %588 = phi i32 [ 0, %452 ], [ 0, %421 ], [ 0, %394 ], [ 0, %353 ], [ %114, %107 ], [ 0, %360 ], [ 0, %364 ]
  %589 = phi ptr [ %79, %452 ], [ %79, %421 ], [ %79, %394 ], [ %356, %353 ], [ %79, %107 ], [ %356, %360 ], [ %356, %364 ]
  %590 = phi i32 [ %461, %452 ], [ %430, %421 ], [ %395, %394 ], [ %357, %353 ], [ %112, %107 ], [ %357, %360 ], [ %357, %364 ]
  %591 = phi ptr [ %460, %452 ], [ %429, %421 ], [ %399, %394 ], [ %358, %353 ], [ %55, %107 ], [ %358, %360 ], [ %358, %364 ]
  %592 = phi i32 [ %464, %452 ], [ %433, %421 ], [ %402, %394 ], [ %54, %353 ], [ %117, %107 ], [ %54, %360 ], [ %371, %364 ]
  %593 = phi ptr [ %462, %452 ], [ %431, %421 ], [ %400, %394 ], [ %53, %353 ], [ %115, %107 ], [ %53, %360 ], [ %372, %364 ]
  %594 = sub i32 0, %590
  %595 = icmp slt i32 %590, %8
  br i1 %595, label %51, label %596, !llvm.loop !73

596:                                              ; preds = %585, %38
  %597 = phi i32 [ %44, %38 ], [ %586, %585 ]
  %598 = phi i32 [ %43, %38 ], [ %587, %585 ]
  %599 = phi i32 [ 0, %38 ], [ %588, %585 ]
  %600 = phi ptr [ %42, %38 ], [ %589, %585 ]
  %601 = phi i32 [ 0, %38 ], [ %590, %585 ]
  %602 = phi ptr [ %45, %38 ], [ %591, %585 ]
  %603 = icmp eq i32 %599, 0
  br i1 %603, label %637, label %604

604:                                              ; preds = %596
  %605 = add nsw i32 %601, %599
  %606 = icmp slt i32 %605, %8
  br i1 %606, label %607, label %632

607:                                              ; preds = %604
  %608 = icmp slt i32 %598, 1
  br i1 %608, label %609, label %623

609:                                              ; preds = %607
  %610 = icmp ult ptr %600, %22
  br i1 %610, label %613, label %611

611:                                              ; preds = %609
  %612 = icmp eq i32 %598, 0
  br i1 %612, label %529, label %623

613:                                              ; preds = %609
  %614 = getelementptr inbounds i8, ptr %600, i64 1
  %615 = load i8, ptr %600, align 1, !tbaa !9
  %616 = zext i8 %615 to i64
  %617 = getelementptr inbounds i8, ptr %10, i64 %616
  %618 = load i8, ptr %617, align 1, !tbaa !9
  %619 = zext i8 %618 to i32
  %620 = shl nuw nsw i32 %619, %598
  %621 = or i32 %620, %597
  %622 = add nsw i32 %598, 8
  br label %623

623:                                              ; preds = %611, %613, %607
  %624 = phi i32 [ %621, %613 ], [ %597, %607 ], [ %597, %611 ]
  %625 = phi i32 [ %622, %613 ], [ %598, %607 ], [ 1, %611 ]
  %626 = phi ptr [ %614, %613 ], [ %600, %607 ], [ %600, %611 ]
  %627 = and i32 %624, 1
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %499, label %629

629:                                              ; preds = %623
  %630 = add nsw i32 %625, -1
  %631 = lshr i32 %624, 1
  br label %632

632:                                              ; preds = %604, %629
  %633 = phi i32 [ %631, %629 ], [ %597, %604 ]
  %634 = phi i32 [ %630, %629 ], [ %598, %604 ]
  %635 = phi ptr [ %626, %629 ], [ %600, %604 ]
  %636 = getelementptr inbounds i32, ptr %602, i64 1
  store i32 %599, ptr %602, align 4, !tbaa !5
  br label %637

637:                                              ; preds = %489, %495, %465, %499, %509, %519, %632, %596
  %638 = phi i32 [ %503, %499 ], [ %87, %465 ], [ %510, %509 ], [ %520, %519 ], [ %633, %632 ], [ %597, %596 ], [ %490, %495 ], [ %490, %489 ]
  %639 = phi i32 [ %504, %499 ], [ %86, %465 ], [ %511, %509 ], [ %521, %519 ], [ %634, %632 ], [ %598, %596 ], [ %491, %495 ], [ %491, %489 ]
  %640 = phi i32 [ %500, %499 ], [ %58, %465 ], [ %512, %509 ], [ %522, %519 ], [ 0, %632 ], [ 0, %596 ], [ %58, %495 ], [ %58, %489 ]
  %641 = phi ptr [ %505, %499 ], [ %79, %465 ], [ %513, %509 ], [ %523, %519 ], [ %635, %632 ], [ %600, %596 ], [ %492, %495 ], [ %492, %489 ]
  %642 = phi i32 [ %501, %499 ], [ %56, %465 ], [ %514, %509 ], [ %524, %519 ], [ %601, %632 ], [ %601, %596 ], [ %56, %495 ], [ %56, %489 ]
  %643 = phi ptr [ %502, %499 ], [ %467, %465 ], [ %515, %509 ], [ %525, %519 ], [ %636, %632 ], [ %602, %596 ], [ %473, %495 ], [ %473, %489 ]
  %644 = phi i32 [ %40, %499 ], [ %40, %465 ], [ %40, %509 ], [ %40, %519 ], [ %40, %632 ], [ %40, %596 ], [ 1, %495 ], [ 1, %489 ]
  %645 = icmp eq i32 %640, 0
  br i1 %645, label %648, label %646

646:                                              ; preds = %637
  %647 = getelementptr inbounds i32, ptr %643, i64 1
  store i32 %640, ptr %643, align 4, !tbaa !5
  br label %648

648:                                              ; preds = %646, %637
  %649 = phi ptr [ %647, %646 ], [ %643, %637 ]
  %650 = icmp eq i32 %642, %8
  br i1 %650, label %691, label %651

651:                                              ; preds = %648
  %652 = load ptr, ptr %0, align 8, !tbaa !24
  %653 = icmp ult i32 %642, %8
  %654 = select i1 %653, ptr @.str.37, ptr @.str.38
  %655 = load i32, ptr %33, align 8, !tbaa !71
  %656 = zext i32 %642 to i64
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax4Decode.module, ptr noundef nonnull @.str.36, ptr noundef %652, ptr noundef nonnull %654, i32 noundef %655, i64 noundef %656, i64 noundef %34) #9
  %657 = icmp sgt i32 %642, %8
  %658 = icmp ugt ptr %649, %45
  %659 = select i1 %657, i1 %658, i1 false
  br i1 %659, label %660, label %669

660:                                              ; preds = %651, %660
  %661 = phi ptr [ %663, %660 ], [ %649, %651 ]
  %662 = phi i32 [ %665, %660 ], [ %642, %651 ]
  %663 = getelementptr inbounds i32, ptr %661, i64 -1
  %664 = load i32, ptr %663, align 4, !tbaa !5
  %665 = sub i32 %662, %664
  %666 = icmp sgt i32 %665, %8
  %667 = icmp ugt ptr %663, %45
  %668 = select i1 %666, i1 %667, i1 false
  br i1 %668, label %660, label %669, !llvm.loop !74

669:                                              ; preds = %660, %651
  %670 = phi i32 [ %642, %651 ], [ %665, %660 ]
  %671 = phi ptr [ %649, %651 ], [ %663, %660 ]
  %672 = phi i1 [ %657, %651 ], [ %666, %660 ]
  %673 = icmp slt i32 %670, %8
  br i1 %673, label %674, label %687

674:                                              ; preds = %669
  %675 = tail call i32 @llvm.smax.i32(i32 %670, i32 0)
  %676 = ptrtoint ptr %671 to i64
  %677 = ptrtoint ptr %45 to i64
  %678 = sub i64 %676, %677
  %679 = and i64 %678, 4
  %680 = icmp eq i64 %679, 0
  br i1 %680, label %683, label %681

681:                                              ; preds = %674
  %682 = getelementptr inbounds i32, ptr %671, i64 1
  store i32 0, ptr %671, align 4, !tbaa !5
  br label %683

683:                                              ; preds = %674, %681
  %684 = phi ptr [ %682, %681 ], [ %671, %674 ]
  %685 = sub nsw i32 %8, %675
  %686 = getelementptr inbounds i32, ptr %684, i64 1
  store i32 %685, ptr %684, align 4, !tbaa !5
  br label %691

687:                                              ; preds = %669
  br i1 %672, label %688, label %691

688:                                              ; preds = %687
  %689 = getelementptr inbounds i32, ptr %671, i64 1
  store i32 %8, ptr %671, align 4, !tbaa !5
  %690 = getelementptr inbounds i32, ptr %671, i64 2
  store i32 0, ptr %689, align 4, !tbaa !5
  br label %691

691:                                              ; preds = %683, %688, %687, %648
  %692 = phi ptr [ %686, %683 ], [ %690, %688 ], [ %671, %687 ], [ %649, %648 ]
  %693 = load ptr, ptr %35, align 8, !tbaa !75
  tail call void %693(ptr noundef %39, ptr noundef %45, ptr noundef %692, i32 noundef %8) #9
  store i32 0, ptr %692, align 4, !tbaa !5
  %694 = load ptr, ptr %25, align 8, !tbaa !56
  %695 = load ptr, ptr %26, align 8, !tbaa !57
  store ptr %695, ptr %25, align 8, !tbaa !56
  store ptr %694, ptr %26, align 8, !tbaa !57
  %696 = load i32, ptr %36, align 4, !tbaa !76
  %697 = zext i32 %696 to i64
  %698 = getelementptr inbounds i8, ptr %39, i64 %697
  %699 = sub i32 %41, %696
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %704, label %701

701:                                              ; preds = %691
  %702 = load i32, ptr %37, align 8, !tbaa !71
  %703 = add i32 %702, 1
  store i32 %703, ptr %37, align 8, !tbaa !71
  br label %704

704:                                              ; preds = %701, %691
  %705 = icmp sgt i32 %699, 0
  br i1 %705, label %38, label %710, !llvm.loop !77

706:                                              ; preds = %542, %581, %582, %577
  %707 = phi ptr [ %580, %577 ], [ %584, %582 ], [ %565, %581 ], [ %543, %542 ]
  %708 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 5
  %709 = load ptr, ptr %708, align 8, !tbaa !75
  tail call void %709(ptr noundef %39, ptr noundef %45, ptr noundef %707, i32 noundef %8) #9
  br label %710

710:                                              ; preds = %704, %4, %706
  %711 = phi i32 [ 0, %706 ], [ %14, %4 ], [ %639, %704 ]
  %712 = phi i32 [ %530, %706 ], [ %12, %4 ], [ %638, %704 ]
  %713 = phi i32 [ %40, %706 ], [ %16, %4 ], [ %644, %704 ]
  %714 = phi ptr [ %532, %706 ], [ %18, %4 ], [ %641, %704 ]
  %715 = phi i32 [ -1, %706 ], [ 1, %4 ], [ 1, %704 ]
  store i32 %711, ptr %13, align 4, !tbaa !52
  store i32 %712, ptr %11, align 8, !tbaa !51
  store i32 %713, ptr %15, align 8, !tbaa !53
  %716 = load ptr, ptr %17, align 8, !tbaa !54
  %717 = ptrtoint ptr %714 to i64
  %718 = ptrtoint ptr %716 to i64
  %719 = sub i64 %718, %717
  %720 = load i32, ptr %19, align 8, !tbaa !55
  %721 = trunc i64 %719 to i32
  %722 = add i32 %720, %721
  store i32 %722, ptr %19, align 8, !tbaa !55
  store ptr %714, ptr %17, align 8, !tbaa !54
  ret i32 %715
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @Fax4Encode(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 zeroext %3) #0 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %8 = load ptr, ptr %7, align 8, !tbaa !23
  %9 = getelementptr inbounds %struct.Fax3EncodeState, ptr %8, i64 0, i32 4
  %10 = getelementptr inbounds %struct.Fax3BaseState, ptr %8, i64 0, i32 2
  %11 = getelementptr inbounds %struct.Fax3BaseState, ptr %8, i64 0, i32 1
  %12 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  br label %13

13:                                               ; preds = %6, %28
  %14 = phi ptr [ %1, %6 ], [ %22, %28 ]
  %15 = phi i32 [ %2, %6 ], [ %23, %28 ]
  %16 = load ptr, ptr %9, align 8, !tbaa !34
  %17 = load i32, ptr %10, align 8, !tbaa !78
  tail call fastcc void @Fax3Encode2DRow(ptr noundef %0, ptr noundef %14, ptr noundef %16, i32 noundef %17)
  %18 = load ptr, ptr %9, align 8, !tbaa !34
  %19 = load i32, ptr %11, align 4, !tbaa !79
  tail call void @_TIFFmemcpy(ptr noundef %18, ptr noundef %14, i32 noundef %19) #9
  %20 = load i32, ptr %11, align 4, !tbaa !79
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %14, i64 %21
  %23 = sub i32 %15, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %13
  %26 = load i32, ptr %12, align 8, !tbaa !71
  %27 = add i32 %26, 1
  store i32 %27, ptr %12, align 8, !tbaa !71
  br label %28

28:                                               ; preds = %25, %13
  %29 = icmp sgt i32 %23, 0
  br i1 %29, label %13, label %30, !llvm.loop !80

30:                                               ; preds = %28, %4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @Fax4PostEncode(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %3 = load ptr, ptr %2, align 8, !tbaa !23
  tail call fastcc void @Fax3PutBits(ptr noundef %0, i32 noundef 1, i32 noundef 12)
  tail call fastcc void @Fax3PutBits(ptr noundef %0, i32 noundef 1, i32 noundef 12)
  %4 = getelementptr inbounds %struct.Fax3EncodeState, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !81
  %6 = icmp eq i32 %5, 8
  br i1 %6, label %24, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %9 = load i32, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  %11 = load i32, ptr %10, align 8, !tbaa !82
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = tail call i32 @TIFFFlushData1(ptr noundef %0) #9
  br label %15

15:                                               ; preds = %13, %7
  %16 = getelementptr inbounds %struct.Fax3EncodeState, ptr %3, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !83
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %21, ptr %19, align 8, !tbaa !54
  store i8 %18, ptr %20, align 1, !tbaa !9
  %22 = load i32, ptr %8, align 8, !tbaa !55
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %8, align 8, !tbaa !55
  store i32 0, ptr %16, align 8, !tbaa !83
  store i32 8, ptr %4, align 4, !tbaa !81
  br label %24

24:                                               ; preds = %15, %1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @TIFFInitCCITTRLE(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @InitCCITTFax3(ptr noundef %0), !range !14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 26
  store ptr @Fax3DecodeRLE, ptr %6, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 28
  store ptr @Fax3DecodeRLE, ptr %7, align 8, !tbaa !39
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 30
  store ptr @Fax3DecodeRLE, ptr %8, align 8, !tbaa !40
  %9 = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef 65536, i32 noundef 7) #9
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi i32 [ %9, %5 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @Fax3DecodeRLE(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i16 zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  %7 = getelementptr inbounds %struct.Fax3BaseState, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !49
  %9 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !52
  %15 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %20 = load i32, ptr %19, align 8, !tbaa !55
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %18, i64 %21
  %23 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !56
  %25 = icmp sgt i32 %2, 0
  br i1 %25, label %26, label %326

26:                                               ; preds = %4
  %27 = load i32, ptr %6, align 8, !tbaa !84
  %28 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %29 = zext i32 %8 to i64
  %30 = ptrtoint ptr %24 to i64
  %31 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 5
  %32 = and i32 %27, 4
  %33 = icmp eq i32 %32, 0
  %34 = and i32 %27, 8
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct.Fax3BaseState, ptr %6, i64 0, i32 1
  %37 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %38 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  br label %39

39:                                               ; preds = %26, %320
  %40 = phi ptr [ %1, %26 ], [ %314, %320 ]
  %41 = phi i32 [ %2, %26 ], [ %315, %320 ]
  %42 = phi i32 [ %16, %26 ], [ %242, %320 ]
  %43 = phi i32 [ %12, %26 ], [ %311, %320 ]
  %44 = phi i32 [ %14, %26 ], [ %310, %320 ]
  %45 = phi ptr [ %18, %26 ], [ %309, %320 ]
  br label %46

46:                                               ; preds = %39, %158
  %47 = phi ptr [ %146, %158 ], [ %45, %39 ]
  %48 = phi i32 [ %155, %158 ], [ %44, %39 ]
  %49 = phi ptr [ %162, %158 ], [ %24, %39 ]
  %50 = phi i32 [ %156, %158 ], [ %43, %39 ]
  %51 = phi i32 [ %163, %158 ], [ 0, %39 ]
  br label %52

52:                                               ; preds = %106, %46
  %53 = phi i32 [ 0, %46 ], [ %110, %106 ]
  %54 = phi ptr [ %47, %46 ], [ %87, %106 ]
  %55 = phi i32 [ %48, %46 ], [ %96, %106 ]
  %56 = phi i32 [ %50, %46 ], [ %97, %106 ]
  %57 = phi i32 [ %51, %46 ], [ %109, %106 ]
  %58 = icmp slt i32 %55, 12
  br i1 %58, label %59, label %86

59:                                               ; preds = %52
  %60 = icmp ult ptr %54, %22
  br i1 %60, label %63, label %61

61:                                               ; preds = %59
  %62 = icmp eq i32 %55, 0
  br i1 %62, label %170, label %86

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %54, i64 1
  %65 = load i8, ptr %54, align 1, !tbaa !9
  %66 = zext i8 %65 to i64
  %67 = getelementptr inbounds i8, ptr %10, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !9
  %69 = zext i8 %68 to i32
  %70 = shl nuw nsw i32 %69, %55
  %71 = or i32 %70, %56
  %72 = add nsw i32 %55, 8
  %73 = icmp slt i32 %55, 4
  br i1 %73, label %74, label %86

74:                                               ; preds = %63
  %75 = icmp ult ptr %64, %22
  br i1 %75, label %76, label %86

76:                                               ; preds = %74
  %77 = getelementptr inbounds i8, ptr %54, i64 2
  %78 = load i8, ptr %64, align 1, !tbaa !9
  %79 = zext i8 %78 to i64
  %80 = getelementptr inbounds i8, ptr %10, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !9
  %82 = zext i8 %81 to i32
  %83 = shl nuw nsw i32 %82, %72
  %84 = or i32 %83, %71
  %85 = add nsw i32 %55, 16
  br label %86

86:                                               ; preds = %74, %61, %76, %63, %52
  %87 = phi ptr [ %77, %76 ], [ %64, %63 ], [ %54, %52 ], [ %54, %61 ], [ %64, %74 ]
  %88 = phi i32 [ %85, %76 ], [ %72, %63 ], [ %55, %52 ], [ 12, %61 ], [ 12, %74 ]
  %89 = phi i32 [ %84, %76 ], [ %71, %63 ], [ %56, %52 ], [ %56, %61 ], [ %71, %74 ]
  %90 = and i32 %89, 4095
  %91 = zext nneg i32 %90 to i64
  %92 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %91
  %93 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %91, i32 1
  %94 = load i8, ptr %93, align 1, !tbaa !58
  %95 = zext i8 %94 to i32
  %96 = sub nsw i32 %88, %95
  %97 = lshr i32 %89, %95
  %98 = load i8, ptr %92, align 4, !tbaa !60
  switch i8 %98, label %226 [
    i8 12, label %236
    i8 7, label %99
    i8 9, label %106
    i8 11, label %106
  ]

99:                                               ; preds = %86
  %100 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %91, i32 2
  %101 = load i32, ptr %100, align 4, !tbaa !62
  %102 = add i32 %101, %53
  %103 = getelementptr inbounds i32, ptr %49, i64 1
  store i32 %102, ptr %49, align 4, !tbaa !5
  %104 = add i32 %101, %57
  %105 = icmp slt i32 %104, %8
  br i1 %105, label %111, label %236

106:                                              ; preds = %86, %86
  %107 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %91, i32 2
  %108 = load i32, ptr %107, align 4, !tbaa !62
  %109 = add i32 %108, %57
  %110 = add i32 %108, %53
  br label %52, !llvm.loop !85

111:                                              ; preds = %99, %165
  %112 = phi i32 [ %169, %165 ], [ 0, %99 ]
  %113 = phi ptr [ %146, %165 ], [ %87, %99 ]
  %114 = phi i32 [ %155, %165 ], [ %96, %99 ]
  %115 = phi i32 [ %156, %165 ], [ %97, %99 ]
  %116 = phi i32 [ %168, %165 ], [ %104, %99 ]
  %117 = icmp slt i32 %114, 13
  br i1 %117, label %118, label %145

118:                                              ; preds = %111
  %119 = icmp ult ptr %113, %22
  br i1 %119, label %122, label %120

120:                                              ; preds = %118
  %121 = icmp eq i32 %114, 0
  br i1 %121, label %170, label %145

122:                                              ; preds = %118
  %123 = getelementptr inbounds i8, ptr %113, i64 1
  %124 = load i8, ptr %113, align 1, !tbaa !9
  %125 = zext i8 %124 to i64
  %126 = getelementptr inbounds i8, ptr %10, i64 %125
  %127 = load i8, ptr %126, align 1, !tbaa !9
  %128 = zext i8 %127 to i32
  %129 = shl nuw nsw i32 %128, %114
  %130 = or i32 %129, %115
  %131 = add nsw i32 %114, 8
  %132 = icmp slt i32 %114, 5
  br i1 %132, label %133, label %145

133:                                              ; preds = %122
  %134 = icmp ult ptr %123, %22
  br i1 %134, label %135, label %145

135:                                              ; preds = %133
  %136 = getelementptr inbounds i8, ptr %113, i64 2
  %137 = load i8, ptr %123, align 1, !tbaa !9
  %138 = zext i8 %137 to i64
  %139 = getelementptr inbounds i8, ptr %10, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !9
  %141 = zext i8 %140 to i32
  %142 = shl nuw nsw i32 %141, %131
  %143 = or i32 %142, %130
  %144 = add nsw i32 %114, 16
  br label %145

145:                                              ; preds = %133, %120, %135, %122, %111
  %146 = phi ptr [ %136, %135 ], [ %123, %122 ], [ %113, %111 ], [ %113, %120 ], [ %123, %133 ]
  %147 = phi i32 [ %144, %135 ], [ %131, %122 ], [ %114, %111 ], [ 13, %120 ], [ 13, %133 ]
  %148 = phi i32 [ %143, %135 ], [ %130, %122 ], [ %115, %111 ], [ %115, %120 ], [ %130, %133 ]
  %149 = and i32 %148, 8191
  %150 = zext nneg i32 %149 to i64
  %151 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %150
  %152 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %150, i32 1
  %153 = load i8, ptr %152, align 1, !tbaa !58
  %154 = zext i8 %153 to i32
  %155 = sub nsw i32 %147, %154
  %156 = lshr i32 %148, %154
  %157 = load i8, ptr %151, align 4, !tbaa !60
  switch i8 %157, label %226 [
    i8 12, label %236
    i8 8, label %158
    i8 10, label %165
    i8 11, label %165
  ]

158:                                              ; preds = %145
  %159 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %150, i32 2
  %160 = load i32, ptr %159, align 4, !tbaa !62
  %161 = add i32 %160, %112
  %162 = getelementptr inbounds i32, ptr %49, i64 2
  store i32 %161, ptr %103, align 4, !tbaa !5
  %163 = add i32 %160, %116
  %164 = icmp slt i32 %163, %8
  br i1 %164, label %46, label %236, !llvm.loop !86

165:                                              ; preds = %145, %145
  %166 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %150, i32 2
  %167 = load i32, ptr %166, align 4, !tbaa !62
  %168 = add i32 %167, %116
  %169 = add i32 %167, %112
  br label %111, !llvm.loop !87

170:                                              ; preds = %61, %120
  %171 = phi i32 [ %112, %120 ], [ %53, %61 ]
  %172 = phi ptr [ %113, %120 ], [ %54, %61 ]
  %173 = phi ptr [ %103, %120 ], [ %49, %61 ]
  %174 = phi i32 [ %115, %120 ], [ %56, %61 ]
  %175 = phi i32 [ %116, %120 ], [ %57, %61 ]
  %176 = load ptr, ptr %0, align 8, !tbaa !24
  %177 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %178 = load i32, ptr %177, align 8, !tbaa !71
  %179 = zext i32 %175 to i64
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3DecodeRLE.module, ptr noundef nonnull @.str.35, ptr noundef %176, i32 noundef %178, i64 noundef %179) #9
  %180 = icmp eq i32 %171, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %170
  %182 = getelementptr inbounds i32, ptr %173, i64 1
  store i32 %171, ptr %173, align 4, !tbaa !5
  br label %183

183:                                              ; preds = %181, %170
  %184 = phi ptr [ %182, %181 ], [ %173, %170 ]
  %185 = icmp eq i32 %175, %8
  br i1 %185, label %322, label %186

186:                                              ; preds = %183
  %187 = load ptr, ptr %0, align 8, !tbaa !24
  %188 = icmp ult i32 %175, %8
  %189 = select i1 %188, ptr @.str.37, ptr @.str.38
  %190 = load i32, ptr %177, align 8, !tbaa !71
  %191 = zext i32 %8 to i64
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3DecodeRLE.module, ptr noundef nonnull @.str.36, ptr noundef %187, ptr noundef nonnull %189, i32 noundef %190, i64 noundef %179, i64 noundef %191) #9
  %192 = icmp sgt i32 %175, %8
  %193 = icmp ugt ptr %184, %24
  %194 = select i1 %192, i1 %193, i1 false
  br i1 %194, label %195, label %204

195:                                              ; preds = %186, %195
  %196 = phi i32 [ %200, %195 ], [ %175, %186 ]
  %197 = phi ptr [ %198, %195 ], [ %184, %186 ]
  %198 = getelementptr inbounds i32, ptr %197, i64 -1
  %199 = load i32, ptr %198, align 4, !tbaa !5
  %200 = sub i32 %196, %199
  %201 = icmp sgt i32 %200, %8
  %202 = icmp ugt ptr %198, %24
  %203 = select i1 %201, i1 %202, i1 false
  br i1 %203, label %195, label %204, !llvm.loop !88

204:                                              ; preds = %195, %186
  %205 = phi ptr [ %184, %186 ], [ %198, %195 ]
  %206 = phi i32 [ %175, %186 ], [ %200, %195 ]
  %207 = phi i1 [ %192, %186 ], [ %201, %195 ]
  %208 = icmp slt i32 %206, %8
  br i1 %208, label %209, label %222

209:                                              ; preds = %204
  %210 = tail call i32 @llvm.smax.i32(i32 %206, i32 0)
  %211 = ptrtoint ptr %205 to i64
  %212 = ptrtoint ptr %24 to i64
  %213 = sub i64 %211, %212
  %214 = and i64 %213, 4
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %218, label %216

216:                                              ; preds = %209
  %217 = getelementptr inbounds i32, ptr %205, i64 1
  store i32 0, ptr %205, align 4, !tbaa !5
  br label %218

218:                                              ; preds = %209, %216
  %219 = phi ptr [ %217, %216 ], [ %205, %209 ]
  %220 = sub nsw i32 %8, %210
  %221 = getelementptr inbounds i32, ptr %219, i64 1
  store i32 %220, ptr %219, align 4, !tbaa !5
  br label %322

222:                                              ; preds = %204
  br i1 %207, label %223, label %322

223:                                              ; preds = %222
  %224 = getelementptr inbounds i32, ptr %205, i64 1
  store i32 %8, ptr %205, align 4, !tbaa !5
  %225 = getelementptr inbounds i32, ptr %205, i64 2
  store i32 0, ptr %224, align 4, !tbaa !5
  br label %322

226:                                              ; preds = %86, %145
  %227 = phi i32 [ %116, %145 ], [ %57, %86 ]
  %228 = phi i32 [ %112, %145 ], [ %53, %86 ]
  %229 = phi ptr [ %146, %145 ], [ %87, %86 ]
  %230 = phi i32 [ %155, %145 ], [ %96, %86 ]
  %231 = phi ptr [ %103, %145 ], [ %49, %86 ]
  %232 = phi i32 [ %156, %145 ], [ %97, %86 ]
  %233 = load ptr, ptr %0, align 8, !tbaa !24
  %234 = load i32, ptr %38, align 8, !tbaa !71
  %235 = zext i32 %227 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax3DecodeRLE.module, ptr noundef nonnull @.str.34, ptr noundef %233, i32 noundef %234, i64 noundef %235) #9
  br label %236

236:                                              ; preds = %99, %158, %86, %145, %226
  %237 = phi i32 [ %228, %226 ], [ %112, %145 ], [ %53, %86 ], [ 0, %158 ], [ 0, %99 ]
  %238 = phi ptr [ %229, %226 ], [ %146, %145 ], [ %87, %86 ], [ %87, %99 ], [ %146, %158 ]
  %239 = phi i32 [ %230, %226 ], [ %155, %145 ], [ %96, %86 ], [ %96, %99 ], [ %155, %158 ]
  %240 = phi ptr [ %231, %226 ], [ %103, %145 ], [ %49, %86 ], [ %103, %99 ], [ %162, %158 ]
  %241 = phi i32 [ %232, %226 ], [ %156, %145 ], [ %97, %86 ], [ %97, %99 ], [ %156, %158 ]
  %242 = phi i32 [ %42, %226 ], [ 1, %145 ], [ 1, %86 ], [ %42, %158 ], [ %42, %99 ]
  %243 = phi i32 [ %227, %226 ], [ %116, %145 ], [ %57, %86 ], [ %104, %99 ], [ %163, %158 ]
  %244 = icmp eq i32 %237, 0
  br i1 %244, label %247, label %245

245:                                              ; preds = %236
  %246 = getelementptr inbounds i32, ptr %240, i64 1
  store i32 %237, ptr %240, align 4, !tbaa !5
  br label %247

247:                                              ; preds = %245, %236
  %248 = phi ptr [ %246, %245 ], [ %240, %236 ]
  %249 = icmp eq i32 %243, %8
  br i1 %249, label %289, label %250

250:                                              ; preds = %247
  %251 = load ptr, ptr %0, align 8, !tbaa !24
  %252 = icmp ult i32 %243, %8
  %253 = select i1 %252, ptr @.str.37, ptr @.str.38
  %254 = load i32, ptr %28, align 8, !tbaa !71
  %255 = zext i32 %243 to i64
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3DecodeRLE.module, ptr noundef nonnull @.str.36, ptr noundef %251, ptr noundef nonnull %253, i32 noundef %254, i64 noundef %255, i64 noundef %29) #9
  %256 = icmp sgt i32 %243, %8
  %257 = icmp ugt ptr %248, %24
  %258 = select i1 %256, i1 %257, i1 false
  br i1 %258, label %259, label %268

259:                                              ; preds = %250, %259
  %260 = phi i32 [ %264, %259 ], [ %243, %250 ]
  %261 = phi ptr [ %262, %259 ], [ %248, %250 ]
  %262 = getelementptr inbounds i32, ptr %261, i64 -1
  %263 = load i32, ptr %262, align 4, !tbaa !5
  %264 = sub i32 %260, %263
  %265 = icmp sgt i32 %264, %8
  %266 = icmp ugt ptr %262, %24
  %267 = select i1 %265, i1 %266, i1 false
  br i1 %267, label %259, label %268, !llvm.loop !89

268:                                              ; preds = %259, %250
  %269 = phi ptr [ %248, %250 ], [ %262, %259 ]
  %270 = phi i32 [ %243, %250 ], [ %264, %259 ]
  %271 = phi i1 [ %256, %250 ], [ %265, %259 ]
  %272 = icmp slt i32 %270, %8
  br i1 %272, label %273, label %285

273:                                              ; preds = %268
  %274 = tail call i32 @llvm.smax.i32(i32 %270, i32 0)
  %275 = ptrtoint ptr %269 to i64
  %276 = sub i64 %275, %30
  %277 = and i64 %276, 4
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %281, label %279

279:                                              ; preds = %273
  %280 = getelementptr inbounds i32, ptr %269, i64 1
  store i32 0, ptr %269, align 4, !tbaa !5
  br label %281

281:                                              ; preds = %273, %279
  %282 = phi ptr [ %280, %279 ], [ %269, %273 ]
  %283 = sub nsw i32 %8, %274
  %284 = getelementptr inbounds i32, ptr %282, i64 1
  store i32 %283, ptr %282, align 4, !tbaa !5
  br label %289

285:                                              ; preds = %268
  br i1 %271, label %286, label %289

286:                                              ; preds = %285
  %287 = getelementptr inbounds i32, ptr %269, i64 1
  store i32 %8, ptr %269, align 4, !tbaa !5
  %288 = getelementptr inbounds i32, ptr %269, i64 2
  store i32 0, ptr %287, align 4, !tbaa !5
  br label %289

289:                                              ; preds = %281, %286, %285, %247
  %290 = phi ptr [ %284, %281 ], [ %288, %286 ], [ %269, %285 ], [ %248, %247 ]
  %291 = load ptr, ptr %31, align 8, !tbaa !75
  tail call void %291(ptr noundef %40, ptr noundef %24, ptr noundef %290, i32 noundef %8) #9
  br i1 %33, label %296, label %292

292:                                              ; preds = %289
  %293 = and i32 %239, -8
  %294 = and i32 %239, 7
  %295 = lshr i32 %241, %294
  br label %308

296:                                              ; preds = %289
  br i1 %35, label %308, label %297

297:                                              ; preds = %296
  %298 = and i32 %239, -16
  %299 = and i32 %239, 15
  %300 = lshr i32 %241, %299
  %301 = icmp eq i32 %298, 0
  %302 = ptrtoint ptr %238 to i64
  %303 = and i64 %302, 1
  %304 = icmp ne i64 %303, 0
  %305 = select i1 %301, i1 %304, i1 false
  %306 = zext i1 %305 to i64
  %307 = getelementptr inbounds i8, ptr %238, i64 %306
  br label %308

308:                                              ; preds = %296, %297, %292
  %309 = phi ptr [ %238, %292 ], [ %307, %297 ], [ %238, %296 ]
  %310 = phi i32 [ %293, %292 ], [ %298, %297 ], [ %239, %296 ]
  %311 = phi i32 [ %295, %292 ], [ %300, %297 ], [ %241, %296 ]
  %312 = load i32, ptr %36, align 4, !tbaa !76
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds i8, ptr %40, i64 %313
  %315 = sub i32 %41, %312
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %320, label %317

317:                                              ; preds = %308
  %318 = load i32, ptr %37, align 8, !tbaa !71
  %319 = add i32 %318, 1
  store i32 %319, ptr %37, align 8, !tbaa !71
  br label %320

320:                                              ; preds = %317, %308
  %321 = icmp sgt i32 %315, 0
  br i1 %321, label %39, label %326, !llvm.loop !90

322:                                              ; preds = %183, %222, %223, %218
  %323 = phi ptr [ %221, %218 ], [ %225, %223 ], [ %205, %222 ], [ %184, %183 ]
  %324 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 5
  %325 = load ptr, ptr %324, align 8, !tbaa !75
  tail call void %325(ptr noundef %40, ptr noundef %24, ptr noundef %323, i32 noundef %8) #9
  br label %326

326:                                              ; preds = %320, %4, %322
  %327 = phi i32 [ 0, %322 ], [ %14, %4 ], [ %310, %320 ]
  %328 = phi i32 [ %174, %322 ], [ %12, %4 ], [ %311, %320 ]
  %329 = phi i32 [ %42, %322 ], [ %16, %4 ], [ %242, %320 ]
  %330 = phi ptr [ %172, %322 ], [ %18, %4 ], [ %309, %320 ]
  %331 = phi i32 [ -1, %322 ], [ 1, %4 ], [ 1, %320 ]
  store i32 %327, ptr %13, align 4, !tbaa !52
  store i32 %328, ptr %11, align 8, !tbaa !51
  store i32 %329, ptr %15, align 8, !tbaa !53
  %332 = load ptr, ptr %17, align 8, !tbaa !54
  %333 = ptrtoint ptr %330 to i64
  %334 = ptrtoint ptr %332 to i64
  %335 = sub i64 %334, %333
  %336 = load i32, ptr %19, align 8, !tbaa !55
  %337 = trunc i64 %335 to i32
  %338 = add i32 %336, %337
  store i32 %338, ptr %19, align 8, !tbaa !55
  store ptr %330, ptr %17, align 8, !tbaa !54
  ret i32 %331
}

; Function Attrs: nounwind uwtable
define dso_local i32 @TIFFInitCCITTRLEW(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @InitCCITTFax3(ptr noundef %0), !range !14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 26
  store ptr @Fax3DecodeRLE, ptr %6, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 28
  store ptr @Fax3DecodeRLE, ptr %7, align 8, !tbaa !39
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 30
  store ptr @Fax3DecodeRLE, ptr %8, align 8, !tbaa !40
  %9 = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef 65536, i32 noundef 11) #9
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi i32 [ %9, %5 ], [ 0, %2 ]
  ret i32 %11
}

declare ptr @_TIFFmalloc(i32 noundef) local_unnamed_addr #2

declare void @TIFFError(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @Fax3VGetField(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  switch i32 %1, label %171 [
    i32 65536, label %6
    i32 65540, label %23
    i32 292, label %45
    i32 293, label %45
    i32 326, label %63
    i32 327, label %81
    i32 328, label %99
    i32 34908, label %117
    i32 34909, label %135
    i32 34910, label %153
  ]

6:                                                ; preds = %3
  %7 = load i32, ptr %5, align 8, !tbaa !91
  %8 = load i32, ptr %2, align 8
  %9 = icmp ult i32 %8, 41
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = zext nneg i32 %8 to i64
  %14 = getelementptr i8, ptr %12, i64 %13
  %15 = add nuw nsw i32 %8, 8
  store i32 %15, ptr %2, align 8
  br label %20

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %18, i64 8
  store ptr %19, ptr %17, align 8
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi ptr [ %14, %10 ], [ %18, %16 ]
  %22 = load ptr, ptr %21, align 8
  store i32 %7, ptr %22, align 4, !tbaa !5
  br label %175

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %175

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Fax3DecodeState, ptr %5, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !75
  %30 = load i32, ptr %2, align 8
  %31 = icmp ult i32 %30, 41
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8
  %35 = zext nneg i32 %30 to i64
  %36 = getelementptr i8, ptr %34, i64 %35
  %37 = add nuw nsw i32 %30, 8
  store i32 %37, ptr %2, align 8
  br label %42

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr i8, ptr %40, i64 8
  store ptr %41, ptr %39, align 8
  br label %42

42:                                               ; preds = %38, %32
  %43 = phi ptr [ %36, %32 ], [ %40, %38 ]
  %44 = load ptr, ptr %43, align 8
  store ptr %29, ptr %44, align 8, !tbaa !92
  br label %175

45:                                               ; preds = %3, %3
  %46 = getelementptr inbounds %struct.Fax3BaseState, ptr %5, i64 0, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !93
  %48 = load i32, ptr %2, align 8
  %49 = icmp ult i32 %48, 41
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8
  %53 = zext nneg i32 %48 to i64
  %54 = getelementptr i8, ptr %52, i64 %53
  %55 = add nuw nsw i32 %48, 8
  store i32 %55, ptr %2, align 8
  br label %60

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr i8, ptr %58, i64 8
  store ptr %59, ptr %57, align 8
  br label %60

60:                                               ; preds = %56, %50
  %61 = phi ptr [ %54, %50 ], [ %58, %56 ]
  %62 = load ptr, ptr %61, align 8
  store i32 %47, ptr %62, align 4, !tbaa !5
  br label %175

63:                                               ; preds = %3
  %64 = getelementptr inbounds %struct.Fax3BaseState, ptr %5, i64 0, i32 5
  %65 = load i32, ptr %64, align 4, !tbaa !94
  %66 = load i32, ptr %2, align 8
  %67 = icmp ult i32 %66, 41
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8
  %71 = zext nneg i32 %66 to i64
  %72 = getelementptr i8, ptr %70, i64 %71
  %73 = add nuw nsw i32 %66, 8
  store i32 %73, ptr %2, align 8
  br label %78

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr i8, ptr %76, i64 8
  store ptr %77, ptr %75, align 8
  br label %78

78:                                               ; preds = %74, %68
  %79 = phi ptr [ %72, %68 ], [ %76, %74 ]
  %80 = load ptr, ptr %79, align 8
  store i32 %65, ptr %80, align 4, !tbaa !5
  br label %175

81:                                               ; preds = %3
  %82 = getelementptr inbounds %struct.Fax3BaseState, ptr %5, i64 0, i32 3
  %83 = load i16, ptr %82, align 4, !tbaa !95
  %84 = load i32, ptr %2, align 8
  %85 = icmp ult i32 %84, 41
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8
  %89 = zext nneg i32 %84 to i64
  %90 = getelementptr i8, ptr %88, i64 %89
  %91 = add nuw nsw i32 %84, 8
  store i32 %91, ptr %2, align 8
  br label %96

92:                                               ; preds = %81
  %93 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8
  %95 = getelementptr i8, ptr %94, i64 8
  store ptr %95, ptr %93, align 8
  br label %96

96:                                               ; preds = %92, %86
  %97 = phi ptr [ %90, %86 ], [ %94, %92 ]
  %98 = load ptr, ptr %97, align 8
  store i16 %83, ptr %98, align 2, !tbaa !96
  br label %175

99:                                               ; preds = %3
  %100 = getelementptr inbounds %struct.Fax3BaseState, ptr %5, i64 0, i32 4
  %101 = load i32, ptr %100, align 8, !tbaa !97
  %102 = load i32, ptr %2, align 8
  %103 = icmp ult i32 %102, 41
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8
  %107 = zext nneg i32 %102 to i64
  %108 = getelementptr i8, ptr %106, i64 %107
  %109 = add nuw nsw i32 %102, 8
  store i32 %109, ptr %2, align 8
  br label %114

110:                                              ; preds = %99
  %111 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8
  %113 = getelementptr i8, ptr %112, i64 8
  store ptr %113, ptr %111, align 8
  br label %114

114:                                              ; preds = %110, %104
  %115 = phi ptr [ %108, %104 ], [ %112, %110 ]
  %116 = load ptr, ptr %115, align 8
  store i32 %101, ptr %116, align 4, !tbaa !5
  br label %175

117:                                              ; preds = %3
  %118 = getelementptr inbounds %struct.Fax3BaseState, ptr %5, i64 0, i32 7
  %119 = load i32, ptr %118, align 4, !tbaa !98
  %120 = load i32, ptr %2, align 8
  %121 = icmp ult i32 %120, 41
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8
  %125 = zext nneg i32 %120 to i64
  %126 = getelementptr i8, ptr %124, i64 %125
  %127 = add nuw nsw i32 %120, 8
  store i32 %127, ptr %2, align 8
  br label %132

128:                                              ; preds = %117
  %129 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8
  %131 = getelementptr i8, ptr %130, i64 8
  store ptr %131, ptr %129, align 8
  br label %132

132:                                              ; preds = %128, %122
  %133 = phi ptr [ %126, %122 ], [ %130, %128 ]
  %134 = load ptr, ptr %133, align 8
  store i32 %119, ptr %134, align 4, !tbaa !5
  br label %175

135:                                              ; preds = %3
  %136 = getelementptr inbounds %struct.Fax3BaseState, ptr %5, i64 0, i32 8
  %137 = load ptr, ptr %136, align 8, !tbaa !99
  %138 = load i32, ptr %2, align 8
  %139 = icmp ult i32 %138, 41
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8
  %143 = zext nneg i32 %138 to i64
  %144 = getelementptr i8, ptr %142, i64 %143
  %145 = add nuw nsw i32 %138, 8
  store i32 %145, ptr %2, align 8
  br label %150

146:                                              ; preds = %135
  %147 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8
  %149 = getelementptr i8, ptr %148, i64 8
  store ptr %149, ptr %147, align 8
  br label %150

150:                                              ; preds = %146, %140
  %151 = phi ptr [ %144, %140 ], [ %148, %146 ]
  %152 = load ptr, ptr %151, align 8
  store ptr %137, ptr %152, align 8, !tbaa !92
  br label %175

153:                                              ; preds = %3
  %154 = getelementptr inbounds %struct.Fax3BaseState, ptr %5, i64 0, i32 9
  %155 = load i32, ptr %154, align 8, !tbaa !100
  %156 = load i32, ptr %2, align 8
  %157 = icmp ult i32 %156, 41
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8
  %161 = zext nneg i32 %156 to i64
  %162 = getelementptr i8, ptr %160, i64 %161
  %163 = add nuw nsw i32 %156, 8
  store i32 %163, ptr %2, align 8
  br label %168

164:                                              ; preds = %153
  %165 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %166 = load ptr, ptr %165, align 8
  %167 = getelementptr i8, ptr %166, i64 8
  store ptr %167, ptr %165, align 8
  br label %168

168:                                              ; preds = %164, %158
  %169 = phi ptr [ %162, %158 ], [ %166, %164 ]
  %170 = load ptr, ptr %169, align 8
  store i32 %155, ptr %170, align 4, !tbaa !5
  br label %175

171:                                              ; preds = %3
  %172 = getelementptr inbounds %struct.Fax3BaseState, ptr %5, i64 0, i32 10
  %173 = load ptr, ptr %172, align 8, !tbaa !26
  %174 = tail call i32 %173(ptr noundef %0, i32 noundef %1, ptr noundef %2) #9
  br label %175

175:                                              ; preds = %20, %60, %78, %96, %114, %132, %150, %168, %42, %23, %171
  %176 = phi i32 [ %174, %171 ], [ 1, %23 ], [ 1, %42 ], [ 1, %168 ], [ 1, %150 ], [ 1, %132 ], [ 1, %114 ], [ 1, %96 ], [ 1, %78 ], [ 1, %60 ], [ 1, %20 ]
  ret i32 %176
}

; Function Attrs: nounwind uwtable
define internal i32 @Fax3VSetField(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  switch i32 %1, label %164 [
    i32 65536, label %6
    i32 65540, label %22
    i32 292, label %44
    i32 293, label %44
    i32 326, label %61
    i32 327, label %78
    i32 328, label %96
    i32 34908, label %113
    i32 34909, label %130
    i32 34910, label %147
  ]

6:                                                ; preds = %3
  %7 = load i32, ptr %2, align 8
  %8 = icmp ult i32 %7, 41
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = zext nneg i32 %7 to i64
  %13 = getelementptr i8, ptr %11, i64 %12
  %14 = add nuw nsw i32 %7, 8
  store i32 %14, ptr %2, align 8
  br label %19

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr i8, ptr %17, i64 8
  store ptr %18, ptr %16, align 8
  br label %19

19:                                               ; preds = %15, %9
  %20 = phi ptr [ %13, %9 ], [ %17, %15 ]
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %5, align 8, !tbaa !91
  br label %187

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %187

26:                                               ; preds = %22
  %27 = load i32, ptr %2, align 8
  %28 = icmp ult i32 %27, 41
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8
  %32 = zext nneg i32 %27 to i64
  %33 = getelementptr i8, ptr %31, i64 %32
  %34 = add nuw nsw i32 %27, 8
  store i32 %34, ptr %2, align 8
  br label %39

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr i8, ptr %37, i64 8
  store ptr %38, ptr %36, align 8
  br label %39

39:                                               ; preds = %35, %29
  %40 = phi ptr [ %33, %29 ], [ %37, %35 ]
  %41 = load ptr, ptr %40, align 8
  %42 = load ptr, ptr %4, align 8, !tbaa !23
  %43 = getelementptr inbounds %struct.Fax3DecodeState, ptr %42, i64 0, i32 5
  store ptr %41, ptr %43, align 8, !tbaa !75
  br label %187

44:                                               ; preds = %3, %3
  %45 = load i32, ptr %2, align 8
  %46 = icmp ult i32 %45, 41
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8
  %50 = zext nneg i32 %45 to i64
  %51 = getelementptr i8, ptr %49, i64 %50
  %52 = add nuw nsw i32 %45, 8
  store i32 %52, ptr %2, align 8
  br label %57

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr i8, ptr %55, i64 8
  store ptr %56, ptr %54, align 8
  br label %57

57:                                               ; preds = %53, %47
  %58 = phi ptr [ %51, %47 ], [ %55, %53 ]
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.Fax3BaseState, ptr %5, i64 0, i32 6
  store i32 %59, ptr %60, align 8, !tbaa !93
  br label %168

61:                                               ; preds = %3
  %62 = load i32, ptr %2, align 8
  %63 = icmp ult i32 %62, 41
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8
  %67 = zext nneg i32 %62 to i64
  %68 = getelementptr i8, ptr %66, i64 %67
  %69 = add nuw nsw i32 %62, 8
  store i32 %69, ptr %2, align 8
  br label %74

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr i8, ptr %72, i64 8
  store ptr %73, ptr %71, align 8
  br label %74

74:                                               ; preds = %70, %64
  %75 = phi ptr [ %68, %64 ], [ %72, %70 ]
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.Fax3BaseState, ptr %5, i64 0, i32 5
  store i32 %76, ptr %77, align 4, !tbaa !94
  br label %168

78:                                               ; preds = %3
  %79 = load i32, ptr %2, align 8
  %80 = icmp ult i32 %79, 41
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8
  %84 = zext nneg i32 %79 to i64
  %85 = getelementptr i8, ptr %83, i64 %84
  %86 = add nuw nsw i32 %79, 8
  store i32 %86, ptr %2, align 8
  br label %91

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr i8, ptr %89, i64 8
  store ptr %90, ptr %88, align 8
  br label %91

91:                                               ; preds = %87, %81
  %92 = phi ptr [ %85, %81 ], [ %89, %87 ]
  %93 = load i32, ptr %92, align 4
  %94 = trunc i32 %93 to i16
  %95 = getelementptr inbounds %struct.Fax3BaseState, ptr %5, i64 0, i32 3
  store i16 %94, ptr %95, align 4, !tbaa !95
  br label %168

96:                                               ; preds = %3
  %97 = load i32, ptr %2, align 8
  %98 = icmp ult i32 %97, 41
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8
  %102 = zext nneg i32 %97 to i64
  %103 = getelementptr i8, ptr %101, i64 %102
  %104 = add nuw nsw i32 %97, 8
  store i32 %104, ptr %2, align 8
  br label %109

105:                                              ; preds = %96
  %106 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8
  %108 = getelementptr i8, ptr %107, i64 8
  store ptr %108, ptr %106, align 8
  br label %109

109:                                              ; preds = %105, %99
  %110 = phi ptr [ %103, %99 ], [ %107, %105 ]
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr inbounds %struct.Fax3BaseState, ptr %5, i64 0, i32 4
  store i32 %111, ptr %112, align 8, !tbaa !97
  br label %168

113:                                              ; preds = %3
  %114 = load i32, ptr %2, align 8
  %115 = icmp ult i32 %114, 41
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8
  %119 = zext nneg i32 %114 to i64
  %120 = getelementptr i8, ptr %118, i64 %119
  %121 = add nuw nsw i32 %114, 8
  store i32 %121, ptr %2, align 8
  br label %126

122:                                              ; preds = %113
  %123 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr i8, ptr %124, i64 8
  store ptr %125, ptr %123, align 8
  br label %126

126:                                              ; preds = %122, %116
  %127 = phi ptr [ %120, %116 ], [ %124, %122 ]
  %128 = load i32, ptr %127, align 4
  %129 = getelementptr inbounds %struct.Fax3BaseState, ptr %5, i64 0, i32 7
  store i32 %128, ptr %129, align 4, !tbaa !98
  br label %168

130:                                              ; preds = %3
  %131 = getelementptr inbounds %struct.Fax3BaseState, ptr %5, i64 0, i32 8
  %132 = load i32, ptr %2, align 8
  %133 = icmp ult i32 %132, 41
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8
  %137 = zext nneg i32 %132 to i64
  %138 = getelementptr i8, ptr %136, i64 %137
  %139 = add nuw nsw i32 %132, 8
  store i32 %139, ptr %2, align 8
  br label %144

140:                                              ; preds = %130
  %141 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8
  %143 = getelementptr i8, ptr %142, i64 8
  store ptr %143, ptr %141, align 8
  br label %144

144:                                              ; preds = %140, %134
  %145 = phi ptr [ %138, %134 ], [ %142, %140 ]
  %146 = load ptr, ptr %145, align 8
  tail call void @_TIFFsetString(ptr noundef nonnull %131, ptr noundef %146) #9
  br label %168

147:                                              ; preds = %3
  %148 = load i32, ptr %2, align 8
  %149 = icmp ult i32 %148, 41
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %152 = load ptr, ptr %151, align 8
  %153 = zext nneg i32 %148 to i64
  %154 = getelementptr i8, ptr %152, i64 %153
  %155 = add nuw nsw i32 %148, 8
  store i32 %155, ptr %2, align 8
  br label %160

156:                                              ; preds = %147
  %157 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8
  %159 = getelementptr i8, ptr %158, i64 8
  store ptr %159, ptr %157, align 8
  br label %160

160:                                              ; preds = %156, %150
  %161 = phi ptr [ %154, %150 ], [ %158, %156 ]
  %162 = load i32, ptr %161, align 4
  %163 = getelementptr inbounds %struct.Fax3BaseState, ptr %5, i64 0, i32 9
  store i32 %162, ptr %163, align 8, !tbaa !100
  br label %168

164:                                              ; preds = %3
  %165 = getelementptr inbounds %struct.Fax3BaseState, ptr %5, i64 0, i32 11
  %166 = load ptr, ptr %165, align 8, !tbaa !29
  %167 = tail call i32 %166(ptr noundef %0, i32 noundef %1, ptr noundef %2) #9
  br label %187

168:                                              ; preds = %160, %144, %126, %109, %91, %74, %57
  %169 = tail call ptr @_TIFFFieldWithTag(ptr noundef %0, i32 noundef %1) #9
  %170 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %169, i64 0, i32 4
  %171 = load i16, ptr %170, align 4, !tbaa !101
  %172 = and i16 %171, 31
  %173 = zext nneg i16 %172 to i64
  %174 = shl nuw nsw i64 1, %173
  %175 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6
  %176 = tail call ptr @_TIFFFieldWithTag(ptr noundef %0, i32 noundef %1) #9
  %177 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %176, i64 0, i32 4
  %178 = load i16, ptr %177, align 4, !tbaa !101
  %179 = lshr i16 %178, 5
  %180 = zext nneg i16 %179 to i64
  %181 = getelementptr inbounds [3 x i64], ptr %175, i64 0, i64 %180
  %182 = load i64, ptr %181, align 8, !tbaa !10
  %183 = or i64 %182, %174
  store i64 %183, ptr %181, align 8, !tbaa !10
  %184 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %185 = load i32, ptr %184, align 8, !tbaa !31
  %186 = or i32 %185, 8
  store i32 %186, ptr %184, align 8, !tbaa !31
  br label %187

187:                                              ; preds = %22, %39, %168, %164, %19
  %188 = phi i32 [ %167, %164 ], [ 1, %168 ], [ 1, %19 ], [ 1, %39 ], [ 1, %22 ]
  ret i32 %188
}

; Function Attrs: nofree nounwind uwtable
define internal void @Fax3PrintDir(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i64 %2) #3 {
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 0, i64 2
  %7 = load i64, ptr %6, align 8, !tbaa !10
  %8 = and i64 %7, 16
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %47, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 10
  %12 = load i16, ptr %11, align 8, !tbaa !103
  %13 = icmp eq i16 %12, 4
  %14 = getelementptr inbounds %struct.Fax3BaseState, ptr %5, i64 0, i32 6
  br i1 %13, label %15, label %20

15:                                               ; preds = %10
  %16 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 18, i64 1, ptr %1)
  %17 = load i32, ptr %14, align 8, !tbaa !93
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %42, label %39

20:                                               ; preds = %10
  %21 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 18, i64 1, ptr %1)
  %22 = load i32, ptr %14, align 8, !tbaa !93
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.12)
  br label %27

27:                                               ; preds = %25, %20
  %28 = phi ptr [ @.str.17, %25 ], [ @.str.12, %20 ]
  %29 = load i32, ptr %14, align 8, !tbaa !93
  %30 = and i32 %29, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull %28)
  br label %34

34:                                               ; preds = %32, %27
  %35 = phi ptr [ @.str.17, %32 ], [ %28, %27 ]
  %36 = load i32, ptr %14, align 8, !tbaa !93
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34, %15
  %40 = phi ptr [ @.str.12, %15 ], [ %35, %34 ]
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %40)
  br label %42

42:                                               ; preds = %39, %34, %15
  %43 = getelementptr inbounds %struct.Fax3BaseState, ptr %5, i64 0, i32 6
  %44 = load i32, ptr %43, align 8, !tbaa !93
  %45 = zext i32 %44 to i64
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.19, i64 noundef %45, i64 noundef %45)
  br label %47

47:                                               ; preds = %42, %3
  %48 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 0, i64 1
  %49 = load i64, ptr %48, align 8, !tbaa !10
  %50 = and i64 %49, 2147483648
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %47
  %53 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 11, i64 1, ptr %1)
  %54 = getelementptr inbounds %struct.Fax3BaseState, ptr %5, i64 0, i32 3
  %55 = load i16, ptr %54, align 4, !tbaa !95
  switch i16 %55, label %62 [
    i16 0, label %56
    i16 1, label %58
    i16 2, label %60
  ]

56:                                               ; preds = %52
  %57 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 6, i64 1, ptr %1)
  br label %62

58:                                               ; preds = %52
  %59 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 21, i64 1, ptr %1)
  br label %62

60:                                               ; preds = %52
  %61 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 19, i64 1, ptr %1)
  br label %62

62:                                               ; preds = %52, %60, %58, %56
  %63 = load i16, ptr %54, align 4, !tbaa !95
  %64 = zext i16 %63 to i32
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef %64, i32 noundef %64)
  br label %66

66:                                               ; preds = %62, %47
  %67 = load i64, ptr %48, align 8, !tbaa !10
  %68 = and i64 %67, 1073741824
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.Fax3BaseState, ptr %5, i64 0, i32 5
  %72 = load i32, ptr %71, align 4, !tbaa !94
  %73 = zext i32 %72 to i64
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.25, i64 noundef %73)
  br label %75

75:                                               ; preds = %70, %66
  %76 = load i64, ptr %6, align 8, !tbaa !10
  %77 = and i64 %76, 1
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.Fax3BaseState, ptr %5, i64 0, i32 4
  %81 = load i32, ptr %80, align 8, !tbaa !97
  %82 = zext i32 %81 to i64
  %83 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.26, i64 noundef %82)
  br label %84

84:                                               ; preds = %79, %75
  %85 = load i64, ptr %6, align 8, !tbaa !10
  %86 = and i64 %85, 2
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.Fax3BaseState, ptr %5, i64 0, i32 7
  %90 = load i32, ptr %89, align 4, !tbaa !98
  %91 = zext i32 %90 to i64
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.27, i64 noundef %91)
  br label %93

93:                                               ; preds = %88, %84
  %94 = load i64, ptr %6, align 8, !tbaa !10
  %95 = and i64 %94, 4
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.Fax3BaseState, ptr %5, i64 0, i32 8
  %99 = load ptr, ptr %98, align 8, !tbaa !99
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef %99)
  br label %101

101:                                              ; preds = %97, %93
  %102 = load i64, ptr %6, align 8, !tbaa !10
  %103 = and i64 %102, 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.Fax3BaseState, ptr %5, i64 0, i32 9
  %107 = load i32, ptr %106, align 8, !tbaa !100
  %108 = zext i32 %107 to i64
  %109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.29, i64 noundef %108)
  br label %110

110:                                              ; preds = %105, %101
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @Fax3SetupState(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %3 = load ptr, ptr %2, align 8, !tbaa !23
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %5 = load i16, ptr %4, align 4, !tbaa !104
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !24
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %8, ptr noundef nonnull @.str.30) #9
  br label %77

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !31
  %12 = and i32 %11, 1024
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @TIFFTileRowSize(ptr noundef %0) #9
  %16 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 4
  br label %20

17:                                               ; preds = %9
  %18 = tail call i32 @TIFFScanlineSize(ptr noundef %0) #9
  %19 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 1
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi ptr [ %16, %14 ], [ %19, %17 ]
  %22 = phi i32 [ %15, %14 ], [ %18, %17 ]
  %23 = load i32, ptr %21, align 4, !tbaa !5
  %24 = getelementptr inbounds %struct.Fax3BaseState, ptr %3, i64 0, i32 1
  store i32 %22, ptr %24, align 4, !tbaa !105
  %25 = getelementptr inbounds %struct.Fax3BaseState, ptr %3, i64 0, i32 2
  store i32 %23, ptr %25, align 8, !tbaa !106
  %26 = getelementptr inbounds %struct.Fax3BaseState, ptr %3, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !93
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 10
  %32 = load i16, ptr %31, align 8, !tbaa !107
  %33 = icmp eq i16 %32, 4
  br label %34

34:                                               ; preds = %30, %20
  %35 = phi i1 [ true, %20 ], [ %33, %30 ]
  %36 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !15
  %38 = icmp eq i32 %37, 0
  %39 = load ptr, ptr %2, align 8, !tbaa !23
  br i1 %38, label %40, label %67

40:                                               ; preds = %34
  %41 = shl i32 %23, 1
  %42 = add i32 %41, 62
  %43 = and i32 %42, -64
  %44 = select i1 %35, i32 %43, i32 %23
  %45 = shl i32 %44, 2
  %46 = tail call ptr @_TIFFmalloc(i32 noundef %45) #9
  %47 = getelementptr inbounds %struct.Fax3DecodeState, ptr %39, i64 0, i32 6
  store ptr %46, ptr %47, align 8, !tbaa !32
  %48 = icmp eq ptr %46, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load ptr, ptr %0, align 8, !tbaa !24
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef %50) #9
  br label %66

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.Fax3DecodeState, ptr %39, i64 0, i32 8
  store ptr %46, ptr %52, align 8, !tbaa !56
  %53 = lshr i32 %44, 1
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %46, i64 %54
  %56 = select i1 %35, ptr %55, ptr null
  %57 = getelementptr inbounds %struct.Fax3DecodeState, ptr %39, i64 0, i32 7
  store ptr %56, ptr %57, align 8, !tbaa !57
  %58 = getelementptr inbounds %struct.Fax3BaseState, ptr %39, i64 0, i32 6
  %59 = load i32, ptr %58, align 8, !tbaa !108
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 26
  store ptr @Fax3Decode2D, ptr %63, align 8, !tbaa !38
  %64 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 28
  store ptr @Fax3Decode2D, ptr %64, align 8, !tbaa !39
  %65 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 30
  store ptr @Fax3Decode2D, ptr %65, align 8, !tbaa !40
  br label %66

66:                                               ; preds = %51, %62, %49
  br i1 %48, label %77, label %76

67:                                               ; preds = %34
  br i1 %35, label %68, label %74

68:                                               ; preds = %67
  %69 = tail call ptr @_TIFFmalloc(i32 noundef %22) #9
  %70 = getelementptr inbounds %struct.Fax3EncodeState, ptr %39, i64 0, i32 4
  store ptr %69, ptr %70, align 8, !tbaa !34
  %71 = icmp eq ptr %69, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load ptr, ptr %0, align 8, !tbaa !24
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.33, ptr noundef %73) #9
  br label %77

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.Fax3EncodeState, ptr %39, i64 0, i32 4
  store ptr null, ptr %75, align 8, !tbaa !34
  br label %76

76:                                               ; preds = %68, %74, %66
  br label %77

77:                                               ; preds = %72, %66, %76, %7
  %78 = phi i32 [ 0, %7 ], [ 1, %76 ], [ 0, %66 ], [ 0, %72 ]
  ret i32 %78
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @Fax3PreDecode(ptr nocapture noundef readonly %0, i16 zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %4 = load ptr, ptr %3, align 8, !tbaa !23
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.1, i32 noundef 160, ptr noundef nonnull @__PRETTY_FUNCTION__.Fax3PreDecode) #8
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Fax3DecodeState, ptr %4, i64 0, i32 3
  store i32 0, ptr %8, align 4, !tbaa !52
  %9 = getelementptr inbounds %struct.Fax3DecodeState, ptr %4, i64 0, i32 2
  store i32 0, ptr %9, align 8, !tbaa !51
  %10 = getelementptr inbounds %struct.Fax3DecodeState, ptr %4, i64 0, i32 4
  store i32 0, ptr %10, align 8, !tbaa !53
  %11 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 13
  %12 = load i16, ptr %11, align 2, !tbaa !109
  %13 = icmp ne i16 %12, 2
  %14 = zext i1 %13 to i32
  %15 = tail call ptr @TIFFGetBitRevTable(i32 noundef %14) #9
  %16 = getelementptr inbounds %struct.Fax3DecodeState, ptr %4, i64 0, i32 1
  store ptr %15, ptr %16, align 8, !tbaa !50
  %17 = getelementptr inbounds %struct.Fax3DecodeState, ptr %4, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.Fax3BaseState, ptr %4, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !49
  %23 = and i32 %22, 65535
  store i32 %23, ptr %18, align 4, !tbaa !5
  %24 = getelementptr inbounds i32, ptr %18, i64 1
  store i32 0, ptr %24, align 4, !tbaa !5
  br label %25

25:                                               ; preds = %20, %7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @Fax3Decode1D(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i16 zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  %7 = getelementptr inbounds %struct.Fax3BaseState, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !49
  %9 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !52
  %15 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %20 = load i32, ptr %19, align 8, !tbaa !55
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %18, i64 %21
  %23 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !56
  %25 = icmp sgt i32 %2, 0
  br i1 %25, label %26, label %410

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %28 = zext i32 %8 to i64
  %29 = ptrtoint ptr %24 to i64
  %30 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 5
  %31 = getelementptr inbounds %struct.Fax3BaseState, ptr %6, i64 0, i32 1
  %32 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %33 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  br label %34

34:                                               ; preds = %26, %384
  %35 = phi i32 [ %16, %26 ], [ %327, %384 ]
  %36 = phi ptr [ %1, %26 ], [ %378, %384 ]
  %37 = phi i32 [ %2, %26 ], [ %379, %384 ]
  %38 = phi ptr [ %18, %26 ], [ %325, %384 ]
  %39 = phi i32 [ %14, %26 ], [ %323, %384 ]
  %40 = phi i32 [ %12, %26 ], [ %322, %384 ]
  %41 = icmp eq i32 %35, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %78, %34
  %43 = phi i32 [ %40, %34 ], [ %79, %78 ]
  %44 = phi i32 [ %39, %34 ], [ %80, %78 ]
  %45 = phi ptr [ %38, %34 ], [ %81, %78 ]
  br label %87

46:                                               ; preds = %34, %84
  %47 = phi i32 [ %86, %84 ], [ %40, %34 ]
  %48 = phi i32 [ %85, %84 ], [ %39, %34 ]
  %49 = phi ptr [ %81, %84 ], [ %38, %34 ]
  %50 = icmp slt i32 %48, 11
  br i1 %50, label %51, label %78

51:                                               ; preds = %46
  %52 = icmp ult ptr %49, %22
  br i1 %52, label %55, label %53

53:                                               ; preds = %51
  %54 = icmp eq i32 %48, 0
  br i1 %54, label %386, label %78

55:                                               ; preds = %51
  %56 = getelementptr inbounds i8, ptr %49, i64 1
  %57 = load i8, ptr %49, align 1, !tbaa !9
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds i8, ptr %10, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !9
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, %48
  %63 = or i32 %62, %47
  %64 = add nsw i32 %48, 8
  %65 = icmp slt i32 %48, 3
  br i1 %65, label %66, label %78

66:                                               ; preds = %55
  %67 = icmp ult ptr %56, %22
  br i1 %67, label %68, label %78

68:                                               ; preds = %66
  %69 = getelementptr inbounds i8, ptr %49, i64 2
  %70 = load i8, ptr %56, align 1, !tbaa !9
  %71 = zext i8 %70 to i64
  %72 = getelementptr inbounds i8, ptr %10, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !9
  %74 = zext i8 %73 to i32
  %75 = shl nuw nsw i32 %74, %64
  %76 = or i32 %75, %63
  %77 = add nsw i32 %48, 16
  br label %78

78:                                               ; preds = %66, %53, %68, %55, %46
  %79 = phi i32 [ %76, %68 ], [ %63, %55 ], [ %47, %46 ], [ %47, %53 ], [ %63, %66 ]
  %80 = phi i32 [ %77, %68 ], [ %64, %55 ], [ %48, %46 ], [ 11, %53 ], [ 11, %66 ]
  %81 = phi ptr [ %69, %68 ], [ %56, %55 ], [ %49, %46 ], [ %49, %53 ], [ %56, %66 ]
  %82 = and i32 %79, 2047
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %42, label %84

84:                                               ; preds = %78
  %85 = add nsw i32 %80, -1
  %86 = lshr i32 %79, 1
  br label %46, !llvm.loop !110

87:                                               ; preds = %42, %115
  %88 = phi i32 [ %117, %115 ], [ %43, %42 ]
  %89 = phi i32 [ %116, %115 ], [ %44, %42 ]
  %90 = phi ptr [ %109, %115 ], [ %45, %42 ]
  %91 = icmp slt i32 %89, 8
  br i1 %91, label %92, label %106

92:                                               ; preds = %87
  %93 = icmp ult ptr %90, %22
  br i1 %93, label %96, label %94

94:                                               ; preds = %92
  %95 = icmp eq i32 %89, 0
  br i1 %95, label %386, label %106

96:                                               ; preds = %92
  %97 = getelementptr inbounds i8, ptr %90, i64 1
  %98 = load i8, ptr %90, align 1, !tbaa !9
  %99 = zext i8 %98 to i64
  %100 = getelementptr inbounds i8, ptr %10, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !9
  %102 = zext i8 %101 to i32
  %103 = shl nuw nsw i32 %102, %89
  %104 = or i32 %103, %88
  %105 = add nsw i32 %89, 8
  br label %106

106:                                              ; preds = %94, %96, %87
  %107 = phi i32 [ %104, %96 ], [ %88, %87 ], [ %88, %94 ]
  %108 = phi i32 [ %105, %96 ], [ %89, %87 ], [ 8, %94 ]
  %109 = phi ptr [ %97, %96 ], [ %90, %87 ], [ %90, %94 ]
  %110 = and i32 %107, 255
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %106
  %113 = and i32 %107, 1
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %118, label %125

115:                                              ; preds = %106
  %116 = add nsw i32 %108, -8
  %117 = lshr exact i32 %107, 8
  br label %87, !llvm.loop !111

118:                                              ; preds = %112, %118
  %119 = phi i32 [ %121, %118 ], [ %108, %112 ]
  %120 = phi i32 [ %122, %118 ], [ %107, %112 ]
  %121 = add nsw i32 %119, -1
  %122 = lshr exact i32 %120, 1
  %123 = and i32 %120, 2
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %118, label %125, !llvm.loop !112

125:                                              ; preds = %118, %112
  %126 = phi i32 [ %107, %112 ], [ %122, %118 ]
  %127 = phi i32 [ %108, %112 ], [ %121, %118 ]
  %128 = add nsw i32 %127, -1
  %129 = lshr i32 %126, 1
  br label %130

130:                                              ; preds = %242, %125
  %131 = phi i32 [ 0, %125 ], [ %247, %242 ]
  %132 = phi i32 [ %129, %125 ], [ %240, %242 ]
  %133 = phi i32 [ %128, %125 ], [ %239, %242 ]
  %134 = phi ptr [ %109, %125 ], [ %232, %242 ]
  %135 = phi ptr [ %24, %125 ], [ %246, %242 ]
  br label %136

136:                                              ; preds = %190, %130
  %137 = phi i32 [ %131, %130 ], [ %193, %190 ]
  %138 = phi i32 [ %132, %130 ], [ %181, %190 ]
  %139 = phi i32 [ %133, %130 ], [ %180, %190 ]
  %140 = phi i32 [ 0, %130 ], [ %194, %190 ]
  %141 = phi ptr [ %134, %130 ], [ %173, %190 ]
  %142 = icmp slt i32 %139, 12
  br i1 %142, label %143, label %170

143:                                              ; preds = %136
  %144 = icmp ult ptr %141, %22
  br i1 %144, label %147, label %145

145:                                              ; preds = %143
  %146 = icmp eq i32 %139, 0
  br i1 %146, label %254, label %170

147:                                              ; preds = %143
  %148 = getelementptr inbounds i8, ptr %141, i64 1
  %149 = load i8, ptr %141, align 1, !tbaa !9
  %150 = zext i8 %149 to i64
  %151 = getelementptr inbounds i8, ptr %10, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !9
  %153 = zext i8 %152 to i32
  %154 = shl nuw nsw i32 %153, %139
  %155 = or i32 %154, %138
  %156 = add nsw i32 %139, 8
  %157 = icmp slt i32 %139, 4
  br i1 %157, label %158, label %170

158:                                              ; preds = %147
  %159 = icmp ult ptr %148, %22
  br i1 %159, label %160, label %170

160:                                              ; preds = %158
  %161 = getelementptr inbounds i8, ptr %141, i64 2
  %162 = load i8, ptr %148, align 1, !tbaa !9
  %163 = zext i8 %162 to i64
  %164 = getelementptr inbounds i8, ptr %10, i64 %163
  %165 = load i8, ptr %164, align 1, !tbaa !9
  %166 = zext i8 %165 to i32
  %167 = shl nuw nsw i32 %166, %156
  %168 = or i32 %167, %155
  %169 = add nsw i32 %139, 16
  br label %170

170:                                              ; preds = %158, %145, %160, %147, %136
  %171 = phi i32 [ %168, %160 ], [ %155, %147 ], [ %138, %136 ], [ %138, %145 ], [ %155, %158 ]
  %172 = phi i32 [ %169, %160 ], [ %156, %147 ], [ %139, %136 ], [ 12, %145 ], [ 12, %158 ]
  %173 = phi ptr [ %161, %160 ], [ %148, %147 ], [ %141, %136 ], [ %141, %145 ], [ %148, %158 ]
  %174 = and i32 %171, 4095
  %175 = zext nneg i32 %174 to i64
  %176 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %175
  %177 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %175, i32 1
  %178 = load i8, ptr %177, align 1, !tbaa !58
  %179 = zext i8 %178 to i32
  %180 = sub nsw i32 %172, %179
  %181 = lshr i32 %171, %179
  %182 = load i8, ptr %176, align 4, !tbaa !60
  switch i8 %182, label %310 [
    i8 12, label %320
    i8 7, label %183
    i8 9, label %190
    i8 11, label %190
  ]

183:                                              ; preds = %170
  %184 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %175, i32 2
  %185 = load i32, ptr %184, align 4, !tbaa !62
  %186 = add i32 %185, %140
  %187 = getelementptr inbounds i32, ptr %135, i64 1
  store i32 %186, ptr %135, align 4, !tbaa !5
  %188 = add i32 %185, %137
  %189 = icmp slt i32 %188, %8
  br i1 %189, label %195, label %320

190:                                              ; preds = %170, %170
  %191 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %175, i32 2
  %192 = load i32, ptr %191, align 4, !tbaa !62
  %193 = add i32 %192, %137
  %194 = add i32 %192, %140
  br label %136, !llvm.loop !113

195:                                              ; preds = %183, %249
  %196 = phi i32 [ %252, %249 ], [ %188, %183 ]
  %197 = phi i32 [ %240, %249 ], [ %181, %183 ]
  %198 = phi i32 [ %239, %249 ], [ %180, %183 ]
  %199 = phi i32 [ %253, %249 ], [ 0, %183 ]
  %200 = phi ptr [ %232, %249 ], [ %173, %183 ]
  %201 = icmp slt i32 %198, 13
  br i1 %201, label %202, label %229

202:                                              ; preds = %195
  %203 = icmp ult ptr %200, %22
  br i1 %203, label %206, label %204

204:                                              ; preds = %202
  %205 = icmp eq i32 %198, 0
  br i1 %205, label %254, label %229

206:                                              ; preds = %202
  %207 = getelementptr inbounds i8, ptr %200, i64 1
  %208 = load i8, ptr %200, align 1, !tbaa !9
  %209 = zext i8 %208 to i64
  %210 = getelementptr inbounds i8, ptr %10, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !9
  %212 = zext i8 %211 to i32
  %213 = shl nuw nsw i32 %212, %198
  %214 = or i32 %213, %197
  %215 = add nsw i32 %198, 8
  %216 = icmp slt i32 %198, 5
  br i1 %216, label %217, label %229

217:                                              ; preds = %206
  %218 = icmp ult ptr %207, %22
  br i1 %218, label %219, label %229

219:                                              ; preds = %217
  %220 = getelementptr inbounds i8, ptr %200, i64 2
  %221 = load i8, ptr %207, align 1, !tbaa !9
  %222 = zext i8 %221 to i64
  %223 = getelementptr inbounds i8, ptr %10, i64 %222
  %224 = load i8, ptr %223, align 1, !tbaa !9
  %225 = zext i8 %224 to i32
  %226 = shl nuw nsw i32 %225, %215
  %227 = or i32 %226, %214
  %228 = add nsw i32 %198, 16
  br label %229

229:                                              ; preds = %217, %204, %219, %206, %195
  %230 = phi i32 [ %227, %219 ], [ %214, %206 ], [ %197, %195 ], [ %197, %204 ], [ %214, %217 ]
  %231 = phi i32 [ %228, %219 ], [ %215, %206 ], [ %198, %195 ], [ 13, %204 ], [ 13, %217 ]
  %232 = phi ptr [ %220, %219 ], [ %207, %206 ], [ %200, %195 ], [ %200, %204 ], [ %207, %217 ]
  %233 = and i32 %230, 8191
  %234 = zext nneg i32 %233 to i64
  %235 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %234
  %236 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %234, i32 1
  %237 = load i8, ptr %236, align 1, !tbaa !58
  %238 = zext i8 %237 to i32
  %239 = sub nsw i32 %231, %238
  %240 = lshr i32 %230, %238
  %241 = load i8, ptr %235, align 4, !tbaa !60
  switch i8 %241, label %310 [
    i8 12, label %320
    i8 8, label %242
    i8 10, label %249
    i8 11, label %249
  ]

242:                                              ; preds = %229
  %243 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %234, i32 2
  %244 = load i32, ptr %243, align 4, !tbaa !62
  %245 = add i32 %244, %199
  %246 = getelementptr inbounds i32, ptr %135, i64 2
  store i32 %245, ptr %187, align 4, !tbaa !5
  %247 = add i32 %244, %196
  %248 = icmp slt i32 %247, %8
  br i1 %248, label %130, label %320, !llvm.loop !114

249:                                              ; preds = %229, %229
  %250 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %234, i32 2
  %251 = load i32, ptr %250, align 4, !tbaa !62
  %252 = add i32 %251, %196
  %253 = add i32 %251, %199
  br label %195, !llvm.loop !115

254:                                              ; preds = %145, %204
  %255 = phi i32 [ %196, %204 ], [ %137, %145 ]
  %256 = phi i32 [ %197, %204 ], [ %138, %145 ]
  %257 = phi i32 [ %199, %204 ], [ %140, %145 ]
  %258 = phi ptr [ %200, %204 ], [ %141, %145 ]
  %259 = phi ptr [ %187, %204 ], [ %135, %145 ]
  %260 = load ptr, ptr %0, align 8, !tbaa !24
  %261 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %262 = load i32, ptr %261, align 8, !tbaa !71
  %263 = zext i32 %255 to i64
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3Decode1D.module, ptr noundef nonnull @.str.35, ptr noundef %260, i32 noundef %262, i64 noundef %263) #9
  %264 = icmp eq i32 %257, 0
  br i1 %264, label %267, label %265

265:                                              ; preds = %254
  %266 = getelementptr inbounds i32, ptr %259, i64 1
  store i32 %257, ptr %259, align 4, !tbaa !5
  br label %267

267:                                              ; preds = %265, %254
  %268 = phi ptr [ %266, %265 ], [ %259, %254 ]
  %269 = icmp eq i32 %255, %8
  br i1 %269, label %403, label %270

270:                                              ; preds = %267
  %271 = load ptr, ptr %0, align 8, !tbaa !24
  %272 = icmp ult i32 %255, %8
  %273 = select i1 %272, ptr @.str.37, ptr @.str.38
  %274 = load i32, ptr %261, align 8, !tbaa !71
  %275 = zext i32 %8 to i64
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3Decode1D.module, ptr noundef nonnull @.str.36, ptr noundef %271, ptr noundef nonnull %273, i32 noundef %274, i64 noundef %263, i64 noundef %275) #9
  %276 = icmp sgt i32 %255, %8
  %277 = icmp ugt ptr %268, %24
  %278 = select i1 %276, i1 %277, i1 false
  br i1 %278, label %279, label %288

279:                                              ; preds = %270, %279
  %280 = phi ptr [ %282, %279 ], [ %268, %270 ]
  %281 = phi i32 [ %284, %279 ], [ %255, %270 ]
  %282 = getelementptr inbounds i32, ptr %280, i64 -1
  %283 = load i32, ptr %282, align 4, !tbaa !5
  %284 = sub i32 %281, %283
  %285 = icmp sgt i32 %284, %8
  %286 = icmp ugt ptr %282, %24
  %287 = select i1 %285, i1 %286, i1 false
  br i1 %287, label %279, label %288, !llvm.loop !116

288:                                              ; preds = %279, %270
  %289 = phi i32 [ %255, %270 ], [ %284, %279 ]
  %290 = phi ptr [ %268, %270 ], [ %282, %279 ]
  %291 = phi i1 [ %276, %270 ], [ %285, %279 ]
  %292 = icmp slt i32 %289, %8
  br i1 %292, label %293, label %306

293:                                              ; preds = %288
  %294 = tail call i32 @llvm.smax.i32(i32 %289, i32 0)
  %295 = ptrtoint ptr %290 to i64
  %296 = ptrtoint ptr %24 to i64
  %297 = sub i64 %295, %296
  %298 = and i64 %297, 4
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %302, label %300

300:                                              ; preds = %293
  %301 = getelementptr inbounds i32, ptr %290, i64 1
  store i32 0, ptr %290, align 4, !tbaa !5
  br label %302

302:                                              ; preds = %293, %300
  %303 = phi ptr [ %301, %300 ], [ %290, %293 ]
  %304 = sub nsw i32 %8, %294
  %305 = getelementptr inbounds i32, ptr %303, i64 1
  store i32 %304, ptr %303, align 4, !tbaa !5
  br label %403

306:                                              ; preds = %288
  br i1 %291, label %307, label %403

307:                                              ; preds = %306
  %308 = getelementptr inbounds i32, ptr %290, i64 1
  store i32 %8, ptr %290, align 4, !tbaa !5
  %309 = getelementptr inbounds i32, ptr %290, i64 2
  store i32 0, ptr %308, align 4, !tbaa !5
  br label %403

310:                                              ; preds = %170, %229
  %311 = phi i32 [ %196, %229 ], [ %137, %170 ]
  %312 = phi i32 [ %240, %229 ], [ %181, %170 ]
  %313 = phi i32 [ %239, %229 ], [ %180, %170 ]
  %314 = phi i32 [ %199, %229 ], [ %140, %170 ]
  %315 = phi ptr [ %232, %229 ], [ %173, %170 ]
  %316 = phi ptr [ %187, %229 ], [ %135, %170 ]
  %317 = load ptr, ptr %0, align 8, !tbaa !24
  %318 = load i32, ptr %33, align 8, !tbaa !71
  %319 = zext i32 %311 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax3Decode1D.module, ptr noundef nonnull @.str.34, ptr noundef %317, i32 noundef %318, i64 noundef %319) #9
  br label %320

320:                                              ; preds = %183, %242, %170, %229, %310
  %321 = phi i32 [ %311, %310 ], [ %196, %229 ], [ %137, %170 ], [ %188, %183 ], [ %247, %242 ]
  %322 = phi i32 [ %312, %310 ], [ %240, %229 ], [ %181, %170 ], [ %181, %183 ], [ %240, %242 ]
  %323 = phi i32 [ %313, %310 ], [ %239, %229 ], [ %180, %170 ], [ %180, %183 ], [ %239, %242 ]
  %324 = phi i32 [ %314, %310 ], [ %199, %229 ], [ %140, %170 ], [ 0, %242 ], [ 0, %183 ]
  %325 = phi ptr [ %315, %310 ], [ %232, %229 ], [ %173, %170 ], [ %173, %183 ], [ %232, %242 ]
  %326 = phi ptr [ %316, %310 ], [ %187, %229 ], [ %135, %170 ], [ %187, %183 ], [ %246, %242 ]
  %327 = phi i32 [ 0, %310 ], [ 1, %229 ], [ 1, %170 ], [ 0, %242 ], [ 0, %183 ]
  %328 = icmp eq i32 %324, 0
  br i1 %328, label %331, label %329

329:                                              ; preds = %320
  %330 = getelementptr inbounds i32, ptr %326, i64 1
  store i32 %324, ptr %326, align 4, !tbaa !5
  br label %331

331:                                              ; preds = %329, %320
  %332 = phi ptr [ %330, %329 ], [ %326, %320 ]
  %333 = icmp eq i32 %321, %8
  br i1 %333, label %373, label %334

334:                                              ; preds = %331
  %335 = load ptr, ptr %0, align 8, !tbaa !24
  %336 = icmp ult i32 %321, %8
  %337 = select i1 %336, ptr @.str.37, ptr @.str.38
  %338 = load i32, ptr %27, align 8, !tbaa !71
  %339 = zext i32 %321 to i64
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3Decode1D.module, ptr noundef nonnull @.str.36, ptr noundef %335, ptr noundef nonnull %337, i32 noundef %338, i64 noundef %339, i64 noundef %28) #9
  %340 = icmp sgt i32 %321, %8
  %341 = icmp ugt ptr %332, %24
  %342 = select i1 %340, i1 %341, i1 false
  br i1 %342, label %343, label %352

343:                                              ; preds = %334, %343
  %344 = phi ptr [ %346, %343 ], [ %332, %334 ]
  %345 = phi i32 [ %348, %343 ], [ %321, %334 ]
  %346 = getelementptr inbounds i32, ptr %344, i64 -1
  %347 = load i32, ptr %346, align 4, !tbaa !5
  %348 = sub i32 %345, %347
  %349 = icmp sgt i32 %348, %8
  %350 = icmp ugt ptr %346, %24
  %351 = select i1 %349, i1 %350, i1 false
  br i1 %351, label %343, label %352, !llvm.loop !117

352:                                              ; preds = %343, %334
  %353 = phi i32 [ %321, %334 ], [ %348, %343 ]
  %354 = phi ptr [ %332, %334 ], [ %346, %343 ]
  %355 = phi i1 [ %340, %334 ], [ %349, %343 ]
  %356 = icmp slt i32 %353, %8
  br i1 %356, label %357, label %369

357:                                              ; preds = %352
  %358 = tail call i32 @llvm.smax.i32(i32 %353, i32 0)
  %359 = ptrtoint ptr %354 to i64
  %360 = sub i64 %359, %29
  %361 = and i64 %360, 4
  %362 = icmp eq i64 %361, 0
  br i1 %362, label %365, label %363

363:                                              ; preds = %357
  %364 = getelementptr inbounds i32, ptr %354, i64 1
  store i32 0, ptr %354, align 4, !tbaa !5
  br label %365

365:                                              ; preds = %357, %363
  %366 = phi ptr [ %364, %363 ], [ %354, %357 ]
  %367 = sub nsw i32 %8, %358
  %368 = getelementptr inbounds i32, ptr %366, i64 1
  store i32 %367, ptr %366, align 4, !tbaa !5
  br label %373

369:                                              ; preds = %352
  br i1 %355, label %370, label %373

370:                                              ; preds = %369
  %371 = getelementptr inbounds i32, ptr %354, i64 1
  store i32 %8, ptr %354, align 4, !tbaa !5
  %372 = getelementptr inbounds i32, ptr %354, i64 2
  store i32 0, ptr %371, align 4, !tbaa !5
  br label %373

373:                                              ; preds = %365, %370, %369, %331
  %374 = phi ptr [ %368, %365 ], [ %372, %370 ], [ %354, %369 ], [ %332, %331 ]
  %375 = load ptr, ptr %30, align 8, !tbaa !75
  tail call void %375(ptr noundef %36, ptr noundef %24, ptr noundef %374, i32 noundef %8) #9
  %376 = load i32, ptr %31, align 4, !tbaa !76
  %377 = zext i32 %376 to i64
  %378 = getelementptr inbounds i8, ptr %36, i64 %377
  %379 = sub i32 %37, %376
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %384, label %381

381:                                              ; preds = %373
  %382 = load i32, ptr %32, align 8, !tbaa !71
  %383 = add i32 %382, 1
  store i32 %383, ptr %32, align 8, !tbaa !71
  br label %384

384:                                              ; preds = %381, %373
  %385 = icmp sgt i32 %379, 0
  br i1 %385, label %34, label %410, !llvm.loop !118

386:                                              ; preds = %53, %94
  %387 = phi i32 [ %88, %94 ], [ %47, %53 ]
  %388 = phi ptr [ %90, %94 ], [ %49, %53 ]
  %389 = icmp eq i32 %8, 0
  br i1 %389, label %403, label %390

390:                                              ; preds = %386
  %391 = load ptr, ptr %0, align 8, !tbaa !24
  %392 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %393 = load i32, ptr %392, align 8, !tbaa !71
  %394 = zext i32 %8 to i64
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3Decode1D.module, ptr noundef nonnull @.str.36, ptr noundef %391, ptr noundef nonnull @.str.37, i32 noundef %393, i64 noundef 0, i64 noundef %394) #9
  %395 = icmp sgt i32 %8, 0
  br i1 %395, label %396, label %398

396:                                              ; preds = %390
  %397 = getelementptr inbounds i32, ptr %24, i64 1
  store i32 %8, ptr %24, align 4, !tbaa !5
  br label %403

398:                                              ; preds = %390
  %399 = icmp slt i32 %8, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %398
  %401 = getelementptr inbounds i32, ptr %24, i64 1
  store i32 %8, ptr %24, align 4, !tbaa !5
  %402 = getelementptr inbounds i32, ptr %24, i64 2
  store i32 0, ptr %401, align 4, !tbaa !5
  br label %403

403:                                              ; preds = %386, %398, %400, %396, %267, %306, %307, %302
  %404 = phi i32 [ %387, %396 ], [ %387, %400 ], [ %387, %398 ], [ %387, %386 ], [ %256, %302 ], [ %256, %307 ], [ %256, %306 ], [ %256, %267 ]
  %405 = phi ptr [ %388, %396 ], [ %388, %400 ], [ %388, %398 ], [ %388, %386 ], [ %258, %302 ], [ %258, %307 ], [ %258, %306 ], [ %258, %267 ]
  %406 = phi ptr [ %397, %396 ], [ %402, %400 ], [ %24, %398 ], [ %24, %386 ], [ %305, %302 ], [ %309, %307 ], [ %290, %306 ], [ %268, %267 ]
  %407 = phi i32 [ %35, %396 ], [ %35, %400 ], [ %35, %398 ], [ %35, %386 ], [ 0, %302 ], [ 0, %307 ], [ 0, %306 ], [ 0, %267 ]
  %408 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 5
  %409 = load ptr, ptr %408, align 8, !tbaa !75
  tail call void %409(ptr noundef %36, ptr noundef %24, ptr noundef %406, i32 noundef %8) #9
  br label %410

410:                                              ; preds = %384, %4, %403
  %411 = phi i32 [ 0, %403 ], [ %14, %4 ], [ %323, %384 ]
  %412 = phi i32 [ %404, %403 ], [ %12, %4 ], [ %322, %384 ]
  %413 = phi i32 [ %407, %403 ], [ %16, %4 ], [ %327, %384 ]
  %414 = phi ptr [ %405, %403 ], [ %18, %4 ], [ %325, %384 ]
  %415 = phi i32 [ -1, %403 ], [ 1, %4 ], [ 1, %384 ]
  store i32 %411, ptr %13, align 4, !tbaa !52
  store i32 %412, ptr %11, align 8, !tbaa !51
  store i32 %413, ptr %15, align 8, !tbaa !53
  %416 = load ptr, ptr %17, align 8, !tbaa !54
  %417 = ptrtoint ptr %414 to i64
  %418 = ptrtoint ptr %416 to i64
  %419 = sub i64 %418, %417
  %420 = load i32, ptr %19, align 8, !tbaa !55
  %421 = trunc i64 %419 to i32
  %422 = add i32 %420, %421
  store i32 %422, ptr %19, align 8, !tbaa !55
  store ptr %414, ptr %17, align 8, !tbaa !54
  ret i32 %415
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @Fax3PreEncode(ptr nocapture noundef readonly %0, i16 zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %4 = load ptr, ptr %3, align 8, !tbaa !23
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.1, i32 noundef 699, ptr noundef nonnull @__PRETTY_FUNCTION__.Fax3PreEncode) #8
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Fax3EncodeState, ptr %4, i64 0, i32 2
  store i32 8, ptr %8, align 4, !tbaa !81
  %9 = getelementptr inbounds %struct.Fax3EncodeState, ptr %4, i64 0, i32 1
  store i32 0, ptr %9, align 8, !tbaa !83
  %10 = getelementptr inbounds %struct.Fax3EncodeState, ptr %4, i64 0, i32 3
  store i32 0, ptr %10, align 8, !tbaa !119
  %11 = getelementptr inbounds %struct.Fax3EncodeState, ptr %4, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.Fax3BaseState, ptr %4, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !79
  tail call void @_TIFFmemset(ptr noundef nonnull %12, i32 noundef 0, i32 noundef %16) #9
  br label %17

17:                                               ; preds = %14, %7
  %18 = getelementptr inbounds %struct.Fax3BaseState, ptr %4, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !120
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 22
  %24 = load float, ptr %23, align 4, !tbaa !121
  %25 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 23
  %26 = load i16, ptr %25, align 8, !tbaa !122
  %27 = icmp eq i16 %26, 3
  %28 = fmul float %24, 0x400451EB80000000
  %29 = select i1 %27, float %28, float %24
  %30 = fcmp ogt float %29, 1.500000e+02
  %31 = select i1 %30, i32 4, i32 2
  %32 = getelementptr inbounds %struct.Fax3EncodeState, ptr %4, i64 0, i32 6
  store i32 %31, ptr %32, align 4, !tbaa !123
  %33 = add nsw i32 %31, -1
  br label %36

34:                                               ; preds = %17
  %35 = getelementptr inbounds %struct.Fax3EncodeState, ptr %4, i64 0, i32 6
  store i32 0, ptr %35, align 4, !tbaa !123
  br label %36

36:                                               ; preds = %34, %22
  %37 = phi i32 [ 0, %34 ], [ %33, %22 ]
  %38 = getelementptr inbounds %struct.Fax3EncodeState, ptr %4, i64 0, i32 5
  store i32 %37, ptr %38, align 8, !tbaa !124
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @Fax3PostEncode(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %3 = load ptr, ptr %2, align 8, !tbaa !23
  %4 = getelementptr inbounds %struct.Fax3EncodeState, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !81
  %6 = icmp eq i32 %5, 8
  br i1 %6, label %24, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %9 = load i32, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  %11 = load i32, ptr %10, align 8, !tbaa !82
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = tail call i32 @TIFFFlushData1(ptr noundef %0) #9
  br label %15

15:                                               ; preds = %13, %7
  %16 = getelementptr inbounds %struct.Fax3EncodeState, ptr %3, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !83
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %21, ptr %19, align 8, !tbaa !54
  store i8 %18, ptr %20, align 1, !tbaa !9
  %22 = load i32, ptr %8, align 8, !tbaa !55
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %8, align 8, !tbaa !55
  store i32 0, ptr %16, align 8, !tbaa !83
  store i32 8, ptr %4, align 4, !tbaa !81
  br label %24

24:                                               ; preds = %15, %1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @Fax3Encode(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %8, label %191

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %10 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  %11 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %12 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %13 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  %14 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %15 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %16 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  %17 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %18 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %19 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  %20 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %21 = getelementptr inbounds %struct.Fax3BaseState, ptr %6, i64 0, i32 6
  %22 = getelementptr inbounds %struct.Fax3EncodeState, ptr %6, i64 0, i32 3
  %23 = getelementptr inbounds %struct.Fax3EncodeState, ptr %6, i64 0, i32 4
  %24 = getelementptr inbounds %struct.Fax3BaseState, ptr %6, i64 0, i32 2
  %25 = getelementptr inbounds %struct.Fax3EncodeState, ptr %6, i64 0, i32 5
  %26 = getelementptr inbounds %struct.Fax3BaseState, ptr %6, i64 0, i32 2
  %27 = getelementptr inbounds %struct.Fax3EncodeState, ptr %6, i64 0, i32 5
  %28 = getelementptr inbounds %struct.Fax3EncodeState, ptr %6, i64 0, i32 4
  %29 = getelementptr inbounds %struct.Fax3BaseState, ptr %6, i64 0, i32 1
  %30 = getelementptr inbounds %struct.Fax3EncodeState, ptr %6, i64 0, i32 6
  %31 = getelementptr inbounds %struct.Fax3BaseState, ptr %6, i64 0, i32 2
  %32 = getelementptr inbounds %struct.Fax3BaseState, ptr %6, i64 0, i32 1
  %33 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  br label %34

34:                                               ; preds = %8, %189
  %35 = phi ptr [ %1, %8 ], [ %183, %189 ]
  %36 = phi i32 [ %2, %8 ], [ %184, %189 ]
  %37 = load i32, ptr %6, align 8, !tbaa !125
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %155

40:                                               ; preds = %34
  %41 = load ptr, ptr %5, align 8, !tbaa !23
  %42 = getelementptr inbounds %struct.Fax3EncodeState, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !81
  %44 = getelementptr inbounds %struct.Fax3EncodeState, ptr %41, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !83
  %46 = getelementptr inbounds %struct.Fax3BaseState, ptr %41, i64 0, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !120
  %48 = and i32 %47, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %93, label %50

50:                                               ; preds = %40
  %51 = icmp eq i32 %43, 4
  br i1 %51, label %93, label %52

52:                                               ; preds = %50
  %53 = icmp slt i32 %43, 4
  %54 = select i1 %53, i32 4, i32 -4
  %55 = add nsw i32 %54, %43
  %56 = icmp ugt i32 %55, %43
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = trunc i32 %45 to i8
  br label %59

59:                                               ; preds = %69, %57
  %60 = phi i32 [ %55, %57 ], [ %63, %69 ]
  %61 = phi i8 [ %58, %57 ], [ 0, %69 ]
  %62 = phi i32 [ %43, %57 ], [ 8, %69 ]
  %63 = sub i32 %60, %62
  %64 = load i32, ptr %9, align 8, !tbaa !55
  %65 = load i32, ptr %10, align 8, !tbaa !82
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %69, label %67

67:                                               ; preds = %59
  %68 = tail call i32 @TIFFFlushData1(ptr noundef %0) #9
  br label %69

69:                                               ; preds = %67, %59
  %70 = load ptr, ptr %11, align 8, !tbaa !54
  %71 = getelementptr inbounds i8, ptr %70, i64 1
  store ptr %71, ptr %11, align 8, !tbaa !54
  store i8 %61, ptr %70, align 1, !tbaa !9
  %72 = load i32, ptr %9, align 8, !tbaa !55
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %9, align 8, !tbaa !55
  %74 = icmp ugt i32 %63, 8
  br i1 %74, label %59, label %75, !llvm.loop !126

75:                                               ; preds = %69, %52
  %76 = phi i32 [ %43, %52 ], [ 8, %69 ]
  %77 = phi i32 [ %45, %52 ], [ 0, %69 ]
  %78 = phi i32 [ %55, %52 ], [ %63, %69 ]
  %79 = sub i32 %76, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %75
  %82 = load i32, ptr %12, align 8, !tbaa !55
  %83 = load i32, ptr %13, align 8, !tbaa !82
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = tail call i32 @TIFFFlushData1(ptr noundef %0) #9
  br label %87

87:                                               ; preds = %85, %81
  %88 = trunc i32 %77 to i8
  %89 = load ptr, ptr %14, align 8, !tbaa !54
  %90 = getelementptr inbounds i8, ptr %89, i64 1
  store ptr %90, ptr %14, align 8, !tbaa !54
  store i8 %88, ptr %89, align 1, !tbaa !9
  %91 = load i32, ptr %12, align 8, !tbaa !55
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr %12, align 8, !tbaa !55
  br label %93

93:                                               ; preds = %87, %75, %50, %40
  %94 = phi i32 [ %43, %40 ], [ 8, %87 ], [ %79, %75 ], [ 4, %50 ]
  %95 = phi i32 [ %45, %40 ], [ 0, %87 ], [ %77, %75 ], [ %45, %50 ]
  %96 = load i32, ptr %46, align 8, !tbaa !120
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.Fax3EncodeState, ptr %41, i64 0, i32 3
  %101 = load i32, ptr %100, align 8, !tbaa !119
  %102 = icmp eq i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = or disjoint i32 %103, 2
  br label %105

105:                                              ; preds = %99, %93
  %106 = phi i32 [ %104, %99 ], [ 1, %93 ]
  %107 = phi i32 [ 13, %99 ], [ 12, %93 ]
  %108 = icmp ugt i32 %107, %94
  br i1 %108, label %109, label %128

109:                                              ; preds = %105, %121
  %110 = phi i32 [ %113, %121 ], [ %107, %105 ]
  %111 = phi i32 [ 0, %121 ], [ %95, %105 ]
  %112 = phi i32 [ 8, %121 ], [ %94, %105 ]
  %113 = sub i32 %110, %112
  %114 = lshr i32 %106, %113
  %115 = or i32 %114, %111
  %116 = load i32, ptr %15, align 8, !tbaa !55
  %117 = load i32, ptr %16, align 8, !tbaa !82
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %121, label %119

119:                                              ; preds = %109
  %120 = tail call i32 @TIFFFlushData1(ptr noundef %0) #9
  br label %121

121:                                              ; preds = %119, %109
  %122 = trunc i32 %115 to i8
  %123 = load ptr, ptr %17, align 8, !tbaa !54
  %124 = getelementptr inbounds i8, ptr %123, i64 1
  store ptr %124, ptr %17, align 8, !tbaa !54
  store i8 %122, ptr %123, align 1, !tbaa !9
  %125 = load i32, ptr %15, align 8, !tbaa !55
  %126 = add nsw i32 %125, 1
  store i32 %126, ptr %15, align 8, !tbaa !55
  %127 = icmp ugt i32 %113, 8
  br i1 %127, label %109, label %128, !llvm.loop !127

128:                                              ; preds = %121, %105
  %129 = phi i32 [ %94, %105 ], [ 8, %121 ]
  %130 = phi i32 [ %95, %105 ], [ 0, %121 ]
  %131 = phi i32 [ %107, %105 ], [ %113, %121 ]
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds [9 x i32], ptr @_msbmask, i64 0, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !5
  %135 = and i32 %134, %106
  %136 = sub i32 %129, %131
  %137 = shl i32 %135, %136
  %138 = or i32 %137, %130
  %139 = icmp eq i32 %136, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %128
  %141 = load i32, ptr %18, align 8, !tbaa !55
  %142 = load i32, ptr %19, align 8, !tbaa !82
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %146, label %144

144:                                              ; preds = %140
  %145 = tail call i32 @TIFFFlushData1(ptr noundef %0) #9
  br label %146

146:                                              ; preds = %144, %140
  %147 = trunc i32 %138 to i8
  %148 = load ptr, ptr %20, align 8, !tbaa !54
  %149 = getelementptr inbounds i8, ptr %148, i64 1
  store ptr %149, ptr %20, align 8, !tbaa !54
  store i8 %147, ptr %148, align 1, !tbaa !9
  %150 = load i32, ptr %18, align 8, !tbaa !55
  %151 = add nsw i32 %150, 1
  store i32 %151, ptr %18, align 8, !tbaa !55
  br label %152

152:                                              ; preds = %128, %146
  %153 = phi i32 [ 8, %146 ], [ %136, %128 ]
  %154 = phi i32 [ 0, %146 ], [ %138, %128 ]
  store i32 %154, ptr %44, align 8, !tbaa !83
  store i32 %153, ptr %42, align 4, !tbaa !81
  br label %155

155:                                              ; preds = %152, %34
  %156 = load i32, ptr %21, align 8, !tbaa !120
  %157 = and i32 %156, 1
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %178, label %159

159:                                              ; preds = %155
  %160 = load i32, ptr %22, align 8, !tbaa !119
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = load i32, ptr %26, align 8, !tbaa !78
  tail call fastcc void @Fax3Encode1DRow(ptr noundef %0, ptr noundef %35, i32 noundef %163)
  store i32 1, ptr %22, align 8, !tbaa !119
  br label %169

164:                                              ; preds = %159
  %165 = load ptr, ptr %23, align 8, !tbaa !34
  %166 = load i32, ptr %24, align 8, !tbaa !78
  tail call fastcc void @Fax3Encode2DRow(ptr noundef %0, ptr noundef %35, ptr noundef %165, i32 noundef %166)
  %167 = load i32, ptr %25, align 8, !tbaa !124
  %168 = add nsw i32 %167, -1
  store i32 %168, ptr %25, align 8, !tbaa !124
  br label %169

169:                                              ; preds = %164, %162
  %170 = load i32, ptr %27, align 8, !tbaa !124
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  store i32 0, ptr %22, align 8, !tbaa !119
  %173 = load i32, ptr %30, align 4, !tbaa !123
  %174 = add nsw i32 %173, -1
  store i32 %174, ptr %27, align 8, !tbaa !124
  br label %180

175:                                              ; preds = %169
  %176 = load ptr, ptr %28, align 8, !tbaa !34
  %177 = load i32, ptr %29, align 4, !tbaa !79
  tail call void @_TIFFmemcpy(ptr noundef %176, ptr noundef %35, i32 noundef %177) #9
  br label %180

178:                                              ; preds = %155
  %179 = load i32, ptr %31, align 8, !tbaa !78
  tail call fastcc void @Fax3Encode1DRow(ptr noundef %0, ptr noundef %35, i32 noundef %179)
  br label %180

180:                                              ; preds = %178, %172, %175
  %181 = load i32, ptr %32, align 4, !tbaa !79
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i8, ptr %35, i64 %182
  %184 = sub i32 %36, %181
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %180
  %187 = load i32, ptr %33, align 8, !tbaa !71
  %188 = add i32 %187, 1
  store i32 %188, ptr %33, align 8, !tbaa !71
  br label %189

189:                                              ; preds = %186, %180
  %190 = icmp sgt i32 %184, 0
  br i1 %190, label %34, label %191, !llvm.loop !128

191:                                              ; preds = %189, %4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @Fax3Close(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %3 = load ptr, ptr %2, align 8, !tbaa !23
  %4 = load i32, ptr %3, align 8, !tbaa !91
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %43

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Fax3BaseState, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !120
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Fax3EncodeState, ptr %3, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !119
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = or disjoint i32 %16, 2
  br label %18

18:                                               ; preds = %12, %7
  %19 = phi i32 [ %17, %12 ], [ 1, %7 ]
  %20 = phi i32 [ 13, %12 ], [ 12, %7 ]
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i32 [ 0, %18 ], [ %23, %21 ]
  tail call fastcc void @Fax3PutBits(ptr noundef %0, i32 noundef %19, i32 noundef %20)
  %23 = add nuw nsw i32 %22, 1
  %24 = icmp eq i32 %23, 6
  br i1 %24, label %25, label %21, !llvm.loop !129

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %27 = load i32, ptr %26, align 8, !tbaa !55
  %28 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  %29 = load i32, ptr %28, align 8, !tbaa !82
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = tail call i32 @TIFFFlushData1(ptr noundef %0) #9
  br label %33

33:                                               ; preds = %31, %25
  %34 = getelementptr inbounds %struct.Fax3EncodeState, ptr %3, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !83
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %38 = load ptr, ptr %37, align 8, !tbaa !54
  %39 = getelementptr inbounds i8, ptr %38, i64 1
  store ptr %39, ptr %37, align 8, !tbaa !54
  store i8 %36, ptr %38, align 1, !tbaa !9
  %40 = load i32, ptr %26, align 8, !tbaa !55
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %26, align 8, !tbaa !55
  store i32 0, ptr %34, align 8, !tbaa !83
  %42 = getelementptr inbounds %struct.Fax3EncodeState, ptr %3, i64 0, i32 2
  store i32 8, ptr %42, align 4, !tbaa !81
  br label %43

43:                                               ; preds = %33, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Fax3Cleanup(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %3 = load ptr, ptr %2, align 8, !tbaa !23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Fax3DecodeState, ptr %3, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !32
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %17

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.Fax3EncodeState, ptr %3, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13, %9
  %18 = phi ptr [ %11, %9 ], [ %15, %13 ]
  tail call void @_TIFFfree(ptr noundef nonnull %18) #9
  br label %19

19:                                               ; preds = %17, %13, %9
  %20 = load ptr, ptr %2, align 8, !tbaa !23
  %21 = getelementptr inbounds %struct.Fax3BaseState, ptr %20, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !99
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void @_TIFFfree(ptr noundef nonnull %22) #9
  br label %25

25:                                               ; preds = %24, %19
  %26 = load ptr, ptr %2, align 8, !tbaa !23
  tail call void @_TIFFfree(ptr noundef %26) #9
  store ptr null, ptr %2, align 8, !tbaa !23
  br label %27

27:                                               ; preds = %25, %1
  ret void
}

declare void @_TIFFsetString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_TIFFFieldWithTag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare i32 @TIFFTileRowSize(ptr noundef) local_unnamed_addr #2

declare i32 @TIFFScanlineSize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @Fax3Decode2D(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i16 zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  %7 = getelementptr inbounds %struct.Fax3BaseState, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !49
  %9 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !52
  %15 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %20 = load i32, ptr %19, align 8, !tbaa !55
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %18, i64 %21
  %23 = icmp sgt i32 %2, 0
  br i1 %23, label %24, label %1095

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 8
  %26 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 7
  %27 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %28 = zext i32 %8 to i64
  %29 = icmp sgt i32 %8, 0
  %30 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %31 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %32 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %33 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %34 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %35 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %36 = zext i32 %8 to i64
  %37 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 5
  %38 = getelementptr inbounds %struct.Fax3BaseState, ptr %6, i64 0, i32 1
  %39 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %40 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  br label %41

41:                                               ; preds = %24, %1068
  %42 = phi ptr [ %1, %24 ], [ %1062, %1068 ]
  %43 = phi i32 [ %2, %24 ], [ %1063, %1068 ]
  %44 = phi i32 [ %16, %24 ], [ %1056, %1068 ]
  %45 = phi i32 [ %12, %24 ], [ %1054, %1068 ]
  %46 = phi ptr [ %18, %24 ], [ %1053, %1068 ]
  %47 = phi i32 [ %14, %24 ], [ %1052, %1068 ]
  %48 = load ptr, ptr %25, align 8, !tbaa !56
  %49 = icmp eq i32 %44, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %86, %41
  %51 = phi i32 [ %47, %41 ], [ %87, %86 ]
  %52 = phi ptr [ %46, %41 ], [ %88, %86 ]
  %53 = phi i32 [ %45, %41 ], [ %89, %86 ]
  br label %95

54:                                               ; preds = %41, %92
  %55 = phi i32 [ %93, %92 ], [ %47, %41 ]
  %56 = phi ptr [ %88, %92 ], [ %46, %41 ]
  %57 = phi i32 [ %94, %92 ], [ %45, %41 ]
  %58 = icmp slt i32 %55, 11
  br i1 %58, label %59, label %86

59:                                               ; preds = %54
  %60 = icmp ult ptr %56, %22
  br i1 %60, label %63, label %61

61:                                               ; preds = %59
  %62 = icmp eq i32 %55, 0
  br i1 %62, label %1070, label %86

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %56, i64 1
  %65 = load i8, ptr %56, align 1, !tbaa !9
  %66 = zext i8 %65 to i64
  %67 = getelementptr inbounds i8, ptr %10, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !9
  %69 = zext i8 %68 to i32
  %70 = shl nuw nsw i32 %69, %55
  %71 = or i32 %70, %57
  %72 = add nsw i32 %55, 8
  %73 = icmp slt i32 %55, 3
  br i1 %73, label %74, label %86

74:                                               ; preds = %63
  %75 = icmp ult ptr %64, %22
  br i1 %75, label %76, label %86

76:                                               ; preds = %74
  %77 = getelementptr inbounds i8, ptr %56, i64 2
  %78 = load i8, ptr %64, align 1, !tbaa !9
  %79 = zext i8 %78 to i64
  %80 = getelementptr inbounds i8, ptr %10, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !9
  %82 = zext i8 %81 to i32
  %83 = shl nuw nsw i32 %82, %72
  %84 = or i32 %83, %71
  %85 = add nsw i32 %55, 16
  br label %86

86:                                               ; preds = %74, %61, %76, %63, %54
  %87 = phi i32 [ %85, %76 ], [ %72, %63 ], [ %55, %54 ], [ 11, %61 ], [ 11, %74 ]
  %88 = phi ptr [ %77, %76 ], [ %64, %63 ], [ %56, %54 ], [ %56, %61 ], [ %64, %74 ]
  %89 = phi i32 [ %84, %76 ], [ %71, %63 ], [ %57, %54 ], [ %57, %61 ], [ %71, %74 ]
  %90 = and i32 %89, 2047
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %50, label %92

92:                                               ; preds = %86
  %93 = add nsw i32 %87, -1
  %94 = lshr i32 %89, 1
  br label %54, !llvm.loop !130

95:                                               ; preds = %50, %123
  %96 = phi i32 [ %124, %123 ], [ %51, %50 ]
  %97 = phi ptr [ %116, %123 ], [ %52, %50 ]
  %98 = phi i32 [ %125, %123 ], [ %53, %50 ]
  %99 = icmp slt i32 %96, 8
  br i1 %99, label %100, label %114

100:                                              ; preds = %95
  %101 = icmp ult ptr %97, %22
  br i1 %101, label %104, label %102

102:                                              ; preds = %100
  %103 = icmp eq i32 %96, 0
  br i1 %103, label %1070, label %114

104:                                              ; preds = %100
  %105 = getelementptr inbounds i8, ptr %97, i64 1
  %106 = load i8, ptr %97, align 1, !tbaa !9
  %107 = zext i8 %106 to i64
  %108 = getelementptr inbounds i8, ptr %10, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !9
  %110 = zext i8 %109 to i32
  %111 = shl nuw nsw i32 %110, %96
  %112 = or i32 %111, %98
  %113 = add nsw i32 %96, 8
  br label %114

114:                                              ; preds = %102, %104, %95
  %115 = phi i32 [ %113, %104 ], [ %96, %95 ], [ 8, %102 ]
  %116 = phi ptr [ %105, %104 ], [ %97, %95 ], [ %97, %102 ]
  %117 = phi i32 [ %112, %104 ], [ %98, %95 ], [ %98, %102 ]
  %118 = and i32 %117, 255
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %114
  %121 = and i32 %117, 1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %126, label %133

123:                                              ; preds = %114
  %124 = add nsw i32 %115, -8
  %125 = lshr exact i32 %117, 8
  br label %95, !llvm.loop !131

126:                                              ; preds = %120, %126
  %127 = phi i32 [ %130, %126 ], [ %117, %120 ]
  %128 = phi i32 [ %129, %126 ], [ %115, %120 ]
  %129 = add nsw i32 %128, -1
  %130 = lshr exact i32 %127, 1
  %131 = and i32 %127, 2
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %126, label %133, !llvm.loop !132

133:                                              ; preds = %126, %120
  %134 = phi i32 [ %115, %120 ], [ %129, %126 ]
  %135 = phi i32 [ %117, %120 ], [ %130, %126 ]
  %136 = add nsw i32 %134, -1
  %137 = lshr i32 %135, 1
  %138 = icmp slt i32 %134, 2
  br i1 %138, label %139, label %153

139:                                              ; preds = %133
  %140 = icmp ult ptr %116, %22
  br i1 %140, label %143, label %141

141:                                              ; preds = %139
  %142 = icmp eq i32 %136, 0
  br i1 %142, label %1070, label %153

143:                                              ; preds = %139
  %144 = getelementptr inbounds i8, ptr %116, i64 1
  %145 = load i8, ptr %116, align 1, !tbaa !9
  %146 = zext i8 %145 to i64
  %147 = getelementptr inbounds i8, ptr %10, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !9
  %149 = zext i8 %148 to i32
  %150 = shl nuw nsw i32 %149, %136
  %151 = or i32 %150, %137
  %152 = add nsw i32 %134, 7
  br label %153

153:                                              ; preds = %141, %143, %133
  %154 = phi i32 [ %152, %143 ], [ %136, %133 ], [ 1, %141 ]
  %155 = phi ptr [ %144, %143 ], [ %116, %133 ], [ %116, %141 ]
  %156 = phi i32 [ %151, %143 ], [ %137, %133 ], [ %137, %141 ]
  %157 = and i32 %156, 1
  %158 = add nsw i32 %154, -1
  %159 = lshr i32 %156, 1
  %160 = load ptr, ptr %26, align 8, !tbaa !57
  %161 = getelementptr inbounds i32, ptr %160, i64 1
  %162 = load i32, ptr %160, align 4, !tbaa !5
  %163 = icmp eq i32 %157, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %153
  br i1 %29, label %165, label %956

165:                                              ; preds = %164
  %166 = ptrtoint ptr %48 to i64
  br label %411

167:                                              ; preds = %153, %279
  %168 = phi i32 [ %276, %279 ], [ %158, %153 ]
  %169 = phi ptr [ %268, %279 ], [ %155, %153 ]
  %170 = phi i32 [ %277, %279 ], [ %159, %153 ]
  %171 = phi ptr [ %283, %279 ], [ %48, %153 ]
  %172 = phi i32 [ %284, %279 ], [ 0, %153 ]
  br label %173

173:                                              ; preds = %227, %167
  %174 = phi i32 [ %168, %167 ], [ %217, %227 ]
  %175 = phi i32 [ 0, %167 ], [ %231, %227 ]
  %176 = phi ptr [ %169, %167 ], [ %209, %227 ]
  %177 = phi i32 [ %170, %167 ], [ %218, %227 ]
  %178 = phi i32 [ %172, %167 ], [ %230, %227 ]
  %179 = icmp slt i32 %174, 12
  br i1 %179, label %180, label %207

180:                                              ; preds = %173
  %181 = icmp ult ptr %176, %22
  br i1 %181, label %184, label %182

182:                                              ; preds = %180
  %183 = icmp eq i32 %174, 0
  br i1 %183, label %291, label %207

184:                                              ; preds = %180
  %185 = getelementptr inbounds i8, ptr %176, i64 1
  %186 = load i8, ptr %176, align 1, !tbaa !9
  %187 = zext i8 %186 to i64
  %188 = getelementptr inbounds i8, ptr %10, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !9
  %190 = zext i8 %189 to i32
  %191 = shl nuw nsw i32 %190, %174
  %192 = or i32 %191, %177
  %193 = add nsw i32 %174, 8
  %194 = icmp slt i32 %174, 4
  br i1 %194, label %195, label %207

195:                                              ; preds = %184
  %196 = icmp ult ptr %185, %22
  br i1 %196, label %197, label %207

197:                                              ; preds = %195
  %198 = getelementptr inbounds i8, ptr %176, i64 2
  %199 = load i8, ptr %185, align 1, !tbaa !9
  %200 = zext i8 %199 to i64
  %201 = getelementptr inbounds i8, ptr %10, i64 %200
  %202 = load i8, ptr %201, align 1, !tbaa !9
  %203 = zext i8 %202 to i32
  %204 = shl nuw nsw i32 %203, %193
  %205 = or i32 %204, %192
  %206 = add nsw i32 %174, 16
  br label %207

207:                                              ; preds = %195, %182, %197, %184, %173
  %208 = phi i32 [ %206, %197 ], [ %193, %184 ], [ %174, %173 ], [ 12, %182 ], [ 12, %195 ]
  %209 = phi ptr [ %198, %197 ], [ %185, %184 ], [ %176, %173 ], [ %176, %182 ], [ %185, %195 ]
  %210 = phi i32 [ %205, %197 ], [ %192, %184 ], [ %177, %173 ], [ %177, %182 ], [ %192, %195 ]
  %211 = and i32 %210, 4095
  %212 = zext nneg i32 %211 to i64
  %213 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %212
  %214 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %212, i32 1
  %215 = load i8, ptr %214, align 1, !tbaa !58
  %216 = zext i8 %215 to i32
  %217 = sub nsw i32 %208, %216
  %218 = lshr i32 %210, %216
  %219 = load i8, ptr %213, align 4, !tbaa !60
  switch i8 %219, label %347 [
    i8 12, label %357
    i8 7, label %220
    i8 9, label %227
    i8 11, label %227
  ]

220:                                              ; preds = %207
  %221 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %212, i32 2
  %222 = load i32, ptr %221, align 4, !tbaa !62
  %223 = add i32 %222, %175
  %224 = getelementptr inbounds i32, ptr %171, i64 1
  store i32 %223, ptr %171, align 4, !tbaa !5
  %225 = add i32 %222, %178
  %226 = icmp slt i32 %225, %8
  br i1 %226, label %232, label %357

227:                                              ; preds = %207, %207
  %228 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %212, i32 2
  %229 = load i32, ptr %228, align 4, !tbaa !62
  %230 = add i32 %229, %178
  %231 = add i32 %229, %175
  br label %173, !llvm.loop !133

232:                                              ; preds = %220, %286
  %233 = phi i32 [ %276, %286 ], [ %217, %220 ]
  %234 = phi i32 [ %290, %286 ], [ 0, %220 ]
  %235 = phi ptr [ %268, %286 ], [ %209, %220 ]
  %236 = phi i32 [ %277, %286 ], [ %218, %220 ]
  %237 = phi i32 [ %289, %286 ], [ %225, %220 ]
  %238 = icmp slt i32 %233, 13
  br i1 %238, label %239, label %266

239:                                              ; preds = %232
  %240 = icmp ult ptr %235, %22
  br i1 %240, label %243, label %241

241:                                              ; preds = %239
  %242 = icmp eq i32 %233, 0
  br i1 %242, label %291, label %266

243:                                              ; preds = %239
  %244 = getelementptr inbounds i8, ptr %235, i64 1
  %245 = load i8, ptr %235, align 1, !tbaa !9
  %246 = zext i8 %245 to i64
  %247 = getelementptr inbounds i8, ptr %10, i64 %246
  %248 = load i8, ptr %247, align 1, !tbaa !9
  %249 = zext i8 %248 to i32
  %250 = shl nuw nsw i32 %249, %233
  %251 = or i32 %250, %236
  %252 = add nsw i32 %233, 8
  %253 = icmp slt i32 %233, 5
  br i1 %253, label %254, label %266

254:                                              ; preds = %243
  %255 = icmp ult ptr %244, %22
  br i1 %255, label %256, label %266

256:                                              ; preds = %254
  %257 = getelementptr inbounds i8, ptr %235, i64 2
  %258 = load i8, ptr %244, align 1, !tbaa !9
  %259 = zext i8 %258 to i64
  %260 = getelementptr inbounds i8, ptr %10, i64 %259
  %261 = load i8, ptr %260, align 1, !tbaa !9
  %262 = zext i8 %261 to i32
  %263 = shl nuw nsw i32 %262, %252
  %264 = or i32 %263, %251
  %265 = add nsw i32 %233, 16
  br label %266

266:                                              ; preds = %254, %241, %256, %243, %232
  %267 = phi i32 [ %265, %256 ], [ %252, %243 ], [ %233, %232 ], [ 13, %241 ], [ 13, %254 ]
  %268 = phi ptr [ %257, %256 ], [ %244, %243 ], [ %235, %232 ], [ %235, %241 ], [ %244, %254 ]
  %269 = phi i32 [ %264, %256 ], [ %251, %243 ], [ %236, %232 ], [ %236, %241 ], [ %251, %254 ]
  %270 = and i32 %269, 8191
  %271 = zext nneg i32 %270 to i64
  %272 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %271
  %273 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %271, i32 1
  %274 = load i8, ptr %273, align 1, !tbaa !58
  %275 = zext i8 %274 to i32
  %276 = sub nsw i32 %267, %275
  %277 = lshr i32 %269, %275
  %278 = load i8, ptr %272, align 4, !tbaa !60
  switch i8 %278, label %347 [
    i8 12, label %357
    i8 8, label %279
    i8 10, label %286
    i8 11, label %286
  ]

279:                                              ; preds = %266
  %280 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %271, i32 2
  %281 = load i32, ptr %280, align 4, !tbaa !62
  %282 = add i32 %281, %234
  %283 = getelementptr inbounds i32, ptr %171, i64 2
  store i32 %282, ptr %224, align 4, !tbaa !5
  %284 = add i32 %281, %237
  %285 = icmp slt i32 %284, %8
  br i1 %285, label %167, label %357, !llvm.loop !134

286:                                              ; preds = %266, %266
  %287 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %271, i32 2
  %288 = load i32, ptr %287, align 4, !tbaa !62
  %289 = add i32 %288, %237
  %290 = add i32 %288, %234
  br label %232, !llvm.loop !135

291:                                              ; preds = %182, %241
  %292 = phi i32 [ %234, %241 ], [ %175, %182 ]
  %293 = phi ptr [ %235, %241 ], [ %176, %182 ]
  %294 = phi i32 [ %236, %241 ], [ %177, %182 ]
  %295 = phi ptr [ %224, %241 ], [ %171, %182 ]
  %296 = phi i32 [ %237, %241 ], [ %178, %182 ]
  %297 = load ptr, ptr %0, align 8, !tbaa !24
  %298 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %299 = load i32, ptr %298, align 8, !tbaa !71
  %300 = zext i32 %296 to i64
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef nonnull @.str.35, ptr noundef %297, i32 noundef %299, i64 noundef %300) #9
  %301 = icmp eq i32 %292, 0
  br i1 %301, label %304, label %302

302:                                              ; preds = %291
  %303 = getelementptr inbounds i32, ptr %295, i64 1
  store i32 %292, ptr %295, align 4, !tbaa !5
  br label %304

304:                                              ; preds = %302, %291
  %305 = phi ptr [ %303, %302 ], [ %295, %291 ]
  %306 = icmp eq i32 %296, %8
  br i1 %306, label %1088, label %307

307:                                              ; preds = %304
  %308 = load ptr, ptr %0, align 8, !tbaa !24
  %309 = icmp ult i32 %296, %8
  %310 = select i1 %309, ptr @.str.37, ptr @.str.38
  %311 = load i32, ptr %298, align 8, !tbaa !71
  %312 = zext i32 %8 to i64
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef nonnull @.str.36, ptr noundef %308, ptr noundef nonnull %310, i32 noundef %311, i64 noundef %300, i64 noundef %312) #9
  %313 = icmp sgt i32 %296, %8
  %314 = icmp ugt ptr %305, %48
  %315 = select i1 %313, i1 %314, i1 false
  br i1 %315, label %316, label %325

316:                                              ; preds = %307, %316
  %317 = phi i32 [ %321, %316 ], [ %296, %307 ]
  %318 = phi ptr [ %319, %316 ], [ %305, %307 ]
  %319 = getelementptr inbounds i32, ptr %318, i64 -1
  %320 = load i32, ptr %319, align 4, !tbaa !5
  %321 = sub i32 %317, %320
  %322 = icmp sgt i32 %321, %8
  %323 = icmp ugt ptr %319, %48
  %324 = select i1 %322, i1 %323, i1 false
  br i1 %324, label %316, label %325, !llvm.loop !136

325:                                              ; preds = %316, %307
  %326 = phi ptr [ %305, %307 ], [ %319, %316 ]
  %327 = phi i32 [ %296, %307 ], [ %321, %316 ]
  %328 = phi i1 [ %313, %307 ], [ %322, %316 ]
  %329 = icmp slt i32 %327, %8
  br i1 %329, label %330, label %343

330:                                              ; preds = %325
  %331 = tail call i32 @llvm.smax.i32(i32 %327, i32 0)
  %332 = ptrtoint ptr %326 to i64
  %333 = ptrtoint ptr %48 to i64
  %334 = sub i64 %332, %333
  %335 = and i64 %334, 4
  %336 = icmp eq i64 %335, 0
  br i1 %336, label %339, label %337

337:                                              ; preds = %330
  %338 = getelementptr inbounds i32, ptr %326, i64 1
  store i32 0, ptr %326, align 4, !tbaa !5
  br label %339

339:                                              ; preds = %330, %337
  %340 = phi ptr [ %338, %337 ], [ %326, %330 ]
  %341 = sub nsw i32 %8, %331
  %342 = getelementptr inbounds i32, ptr %340, i64 1
  store i32 %341, ptr %340, align 4, !tbaa !5
  br label %1088

343:                                              ; preds = %325
  br i1 %328, label %344, label %1088

344:                                              ; preds = %343
  %345 = getelementptr inbounds i32, ptr %326, i64 1
  store i32 %8, ptr %326, align 4, !tbaa !5
  %346 = getelementptr inbounds i32, ptr %326, i64 2
  store i32 0, ptr %345, align 4, !tbaa !5
  br label %1088

347:                                              ; preds = %207, %266
  %348 = phi i32 [ %237, %266 ], [ %178, %207 ]
  %349 = phi i32 [ %276, %266 ], [ %217, %207 ]
  %350 = phi i32 [ %234, %266 ], [ %175, %207 ]
  %351 = phi ptr [ %268, %266 ], [ %209, %207 ]
  %352 = phi i32 [ %277, %266 ], [ %218, %207 ]
  %353 = phi ptr [ %224, %266 ], [ %171, %207 ]
  %354 = load ptr, ptr %0, align 8, !tbaa !24
  %355 = load i32, ptr %40, align 8, !tbaa !71
  %356 = zext i32 %348 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef nonnull @.str.34, ptr noundef %354, i32 noundef %355, i64 noundef %356) #9
  br label %357

357:                                              ; preds = %220, %279, %207, %266, %347
  %358 = phi i32 [ %349, %347 ], [ %276, %266 ], [ %217, %207 ], [ %217, %220 ], [ %276, %279 ]
  %359 = phi i32 [ %350, %347 ], [ %234, %266 ], [ %175, %207 ], [ 0, %279 ], [ 0, %220 ]
  %360 = phi ptr [ %351, %347 ], [ %268, %266 ], [ %209, %207 ], [ %209, %220 ], [ %268, %279 ]
  %361 = phi i32 [ %352, %347 ], [ %277, %266 ], [ %218, %207 ], [ %218, %220 ], [ %277, %279 ]
  %362 = phi ptr [ %353, %347 ], [ %224, %266 ], [ %171, %207 ], [ %224, %220 ], [ %283, %279 ]
  %363 = phi i32 [ %348, %347 ], [ %237, %266 ], [ %178, %207 ], [ %225, %220 ], [ %284, %279 ]
  %364 = phi i32 [ 0, %347 ], [ 1, %266 ], [ 1, %207 ], [ 0, %279 ], [ 0, %220 ]
  %365 = icmp eq i32 %359, 0
  br i1 %365, label %368, label %366

366:                                              ; preds = %357
  %367 = getelementptr inbounds i32, ptr %362, i64 1
  store i32 %359, ptr %362, align 4, !tbaa !5
  br label %368

368:                                              ; preds = %366, %357
  %369 = phi ptr [ %367, %366 ], [ %362, %357 ]
  %370 = icmp eq i32 %363, %8
  br i1 %370, label %1051, label %371

371:                                              ; preds = %368
  %372 = load ptr, ptr %0, align 8, !tbaa !24
  %373 = icmp ult i32 %363, %8
  %374 = select i1 %373, ptr @.str.37, ptr @.str.38
  %375 = load i32, ptr %27, align 8, !tbaa !71
  %376 = zext i32 %363 to i64
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef nonnull @.str.36, ptr noundef %372, ptr noundef nonnull %374, i32 noundef %375, i64 noundef %376, i64 noundef %28) #9
  %377 = icmp sgt i32 %363, %8
  %378 = icmp ugt ptr %369, %48
  %379 = select i1 %377, i1 %378, i1 false
  br i1 %379, label %380, label %389

380:                                              ; preds = %371, %380
  %381 = phi i32 [ %385, %380 ], [ %363, %371 ]
  %382 = phi ptr [ %383, %380 ], [ %369, %371 ]
  %383 = getelementptr inbounds i32, ptr %382, i64 -1
  %384 = load i32, ptr %383, align 4, !tbaa !5
  %385 = sub i32 %381, %384
  %386 = icmp sgt i32 %385, %8
  %387 = icmp ugt ptr %383, %48
  %388 = select i1 %386, i1 %387, i1 false
  br i1 %388, label %380, label %389, !llvm.loop !137

389:                                              ; preds = %380, %371
  %390 = phi ptr [ %369, %371 ], [ %383, %380 ]
  %391 = phi i32 [ %363, %371 ], [ %385, %380 ]
  %392 = phi i1 [ %377, %371 ], [ %386, %380 ]
  %393 = icmp slt i32 %391, %8
  br i1 %393, label %394, label %407

394:                                              ; preds = %389
  %395 = tail call i32 @llvm.smax.i32(i32 %391, i32 0)
  %396 = ptrtoint ptr %390 to i64
  %397 = ptrtoint ptr %48 to i64
  %398 = sub i64 %396, %397
  %399 = and i64 %398, 4
  %400 = icmp eq i64 %399, 0
  br i1 %400, label %403, label %401

401:                                              ; preds = %394
  %402 = getelementptr inbounds i32, ptr %390, i64 1
  store i32 0, ptr %390, align 4, !tbaa !5
  br label %403

403:                                              ; preds = %394, %401
  %404 = phi ptr [ %402, %401 ], [ %390, %394 ]
  %405 = sub nsw i32 %8, %395
  %406 = getelementptr inbounds i32, ptr %404, i64 1
  store i32 %405, ptr %404, align 4, !tbaa !5
  br label %1051

407:                                              ; preds = %389
  br i1 %392, label %408, label %1051

408:                                              ; preds = %407
  %409 = getelementptr inbounds i32, ptr %390, i64 1
  store i32 %8, ptr %390, align 4, !tbaa !5
  %410 = getelementptr inbounds i32, ptr %390, i64 2
  store i32 0, ptr %409, align 4, !tbaa !5
  br label %1051

411:                                              ; preds = %165, %945
  %412 = phi i32 [ 0, %165 ], [ %954, %945 ]
  %413 = phi ptr [ %161, %165 ], [ %953, %945 ]
  %414 = phi i32 [ %162, %165 ], [ %952, %945 ]
  %415 = phi i32 [ 0, %165 ], [ %951, %945 ]
  %416 = phi ptr [ %48, %165 ], [ %950, %945 ]
  %417 = phi i32 [ %159, %165 ], [ %949, %945 ]
  %418 = phi ptr [ %155, %165 ], [ %948, %945 ]
  %419 = phi i32 [ 0, %165 ], [ %947, %945 ]
  %420 = phi i32 [ %158, %165 ], [ %946, %945 ]
  %421 = icmp slt i32 %420, 7
  br i1 %421, label %422, label %436

422:                                              ; preds = %411
  %423 = icmp ult ptr %418, %22
  br i1 %423, label %426, label %424

424:                                              ; preds = %422
  %425 = icmp eq i32 %420, 0
  br i1 %425, label %889, label %436

426:                                              ; preds = %422
  %427 = getelementptr inbounds i8, ptr %418, i64 1
  %428 = load i8, ptr %418, align 1, !tbaa !9
  %429 = zext i8 %428 to i64
  %430 = getelementptr inbounds i8, ptr %10, i64 %429
  %431 = load i8, ptr %430, align 1, !tbaa !9
  %432 = zext i8 %431 to i32
  %433 = shl nuw nsw i32 %432, %420
  %434 = or i32 %433, %417
  %435 = add nsw i32 %420, 8
  br label %436

436:                                              ; preds = %424, %426, %411
  %437 = phi i32 [ %435, %426 ], [ %420, %411 ], [ 7, %424 ]
  %438 = phi ptr [ %427, %426 ], [ %418, %411 ], [ %418, %424 ]
  %439 = phi i32 [ %434, %426 ], [ %417, %411 ], [ %417, %424 ]
  %440 = and i32 %439, 127
  %441 = zext nneg i32 %440 to i64
  %442 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxMainTable, i64 %441
  %443 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxMainTable, i64 %441, i32 1
  %444 = load i8, ptr %443, align 1, !tbaa !58
  %445 = zext i8 %444 to i32
  %446 = sub nsw i32 %437, %445
  %447 = lshr i32 %439, %445
  %448 = load i8, ptr %442, align 4, !tbaa !60
  switch i8 %448, label %859 [
    i8 1, label %449
    i8 2, label %478
    i8 3, label %736
    i8 4, label %763
    i8 5, label %794
    i8 6, label %825
    i8 12, label %831
  ]

449:                                              ; preds = %436
  %450 = icmp eq ptr %416, %48
  br i1 %450, label %467, label %451

451:                                              ; preds = %449
  %452 = icmp sle i32 %414, %415
  %453 = icmp slt i32 %414, %8
  %454 = select i1 %452, i1 %453, i1 false
  br i1 %454, label %455, label %467

455:                                              ; preds = %451, %455
  %456 = phi ptr [ %463, %455 ], [ %413, %451 ]
  %457 = phi i32 [ %462, %455 ], [ %414, %451 ]
  %458 = load i32, ptr %456, align 4, !tbaa !5
  %459 = getelementptr inbounds i32, ptr %456, i64 1
  %460 = load i32, ptr %459, align 4, !tbaa !5
  %461 = add i32 %458, %457
  %462 = add i32 %461, %460
  %463 = getelementptr inbounds i32, ptr %456, i64 2
  %464 = icmp sle i32 %462, %415
  %465 = icmp slt i32 %462, %8
  %466 = select i1 %464, i1 %465, i1 false
  br i1 %466, label %455, label %467, !llvm.loop !138

467:                                              ; preds = %455, %451, %449
  %468 = phi i32 [ %414, %449 ], [ %414, %451 ], [ %462, %455 ]
  %469 = phi ptr [ %413, %449 ], [ %413, %451 ], [ %463, %455 ]
  %470 = getelementptr inbounds i32, ptr %469, i64 1
  %471 = load i32, ptr %469, align 4, !tbaa !5
  %472 = add i32 %471, %468
  %473 = add i32 %412, %419
  %474 = add i32 %473, %472
  %475 = getelementptr inbounds i32, ptr %469, i64 2
  %476 = load i32, ptr %470, align 4, !tbaa !5
  %477 = add i32 %472, %476
  br label %945

478:                                              ; preds = %436
  %479 = ptrtoint ptr %416 to i64
  %480 = sub i64 %479, %166
  %481 = and i64 %480, 4
  %482 = icmp eq i64 %481, 0
  br i1 %482, label %598, label %483

483:                                              ; preds = %478, %536
  %484 = phi i32 [ %527, %536 ], [ %446, %478 ]
  %485 = phi i32 [ %540, %536 ], [ %419, %478 ]
  %486 = phi ptr [ %519, %536 ], [ %438, %478 ]
  %487 = phi i32 [ %528, %536 ], [ %447, %478 ]
  %488 = phi i32 [ %539, %536 ], [ %415, %478 ]
  %489 = icmp slt i32 %484, 13
  br i1 %489, label %490, label %517

490:                                              ; preds = %483
  %491 = icmp ult ptr %486, %22
  br i1 %491, label %494, label %492

492:                                              ; preds = %490
  %493 = icmp eq i32 %484, 0
  br i1 %493, label %889, label %517

494:                                              ; preds = %490
  %495 = getelementptr inbounds i8, ptr %486, i64 1
  %496 = load i8, ptr %486, align 1, !tbaa !9
  %497 = zext i8 %496 to i64
  %498 = getelementptr inbounds i8, ptr %10, i64 %497
  %499 = load i8, ptr %498, align 1, !tbaa !9
  %500 = zext i8 %499 to i32
  %501 = shl nuw nsw i32 %500, %484
  %502 = or i32 %501, %487
  %503 = add nsw i32 %484, 8
  %504 = icmp slt i32 %484, 5
  br i1 %504, label %505, label %517

505:                                              ; preds = %494
  %506 = icmp ult ptr %495, %22
  br i1 %506, label %507, label %517

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %486, i64 2
  %509 = load i8, ptr %495, align 1, !tbaa !9
  %510 = zext i8 %509 to i64
  %511 = getelementptr inbounds i8, ptr %10, i64 %510
  %512 = load i8, ptr %511, align 1, !tbaa !9
  %513 = zext i8 %512 to i32
  %514 = shl nuw nsw i32 %513, %503
  %515 = or i32 %514, %502
  %516 = add nsw i32 %484, 16
  br label %517

517:                                              ; preds = %505, %492, %507, %494, %483
  %518 = phi i32 [ %516, %507 ], [ %503, %494 ], [ %484, %483 ], [ 13, %492 ], [ 13, %505 ]
  %519 = phi ptr [ %508, %507 ], [ %495, %494 ], [ %486, %483 ], [ %486, %492 ], [ %495, %505 ]
  %520 = phi i32 [ %515, %507 ], [ %502, %494 ], [ %487, %483 ], [ %487, %492 ], [ %502, %505 ]
  %521 = and i32 %520, 8191
  %522 = zext nneg i32 %521 to i64
  %523 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %522
  %524 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %522, i32 1
  %525 = load i8, ptr %524, align 1, !tbaa !58
  %526 = zext i8 %525 to i32
  %527 = sub nsw i32 %518, %526
  %528 = lshr i32 %520, %526
  %529 = load i8, ptr %523, align 4, !tbaa !60
  switch i8 %529, label %869 [
    i8 8, label %530
    i8 10, label %536
    i8 11, label %536
  ]

530:                                              ; preds = %517
  %531 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %522, i32 2
  %532 = load i32, ptr %531, align 4, !tbaa !62
  %533 = add i32 %532, %485
  %534 = getelementptr inbounds i32, ptr %416, i64 1
  store i32 %533, ptr %416, align 4, !tbaa !5
  %535 = add i32 %532, %488
  br label %541

536:                                              ; preds = %517, %517
  %537 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %522, i32 2
  %538 = load i32, ptr %537, align 4, !tbaa !62
  %539 = add i32 %538, %488
  %540 = add i32 %538, %485
  br label %483, !llvm.loop !139

541:                                              ; preds = %593, %530
  %542 = phi i32 [ %527, %530 ], [ %585, %593 ]
  %543 = phi i32 [ 0, %530 ], [ %597, %593 ]
  %544 = phi ptr [ %519, %530 ], [ %577, %593 ]
  %545 = phi i32 [ %528, %530 ], [ %586, %593 ]
  %546 = phi i32 [ %535, %530 ], [ %596, %593 ]
  %547 = icmp slt i32 %542, 12
  br i1 %547, label %548, label %575

548:                                              ; preds = %541
  %549 = icmp ult ptr %544, %22
  br i1 %549, label %552, label %550

550:                                              ; preds = %548
  %551 = icmp eq i32 %542, 0
  br i1 %551, label %889, label %575

552:                                              ; preds = %548
  %553 = getelementptr inbounds i8, ptr %544, i64 1
  %554 = load i8, ptr %544, align 1, !tbaa !9
  %555 = zext i8 %554 to i64
  %556 = getelementptr inbounds i8, ptr %10, i64 %555
  %557 = load i8, ptr %556, align 1, !tbaa !9
  %558 = zext i8 %557 to i32
  %559 = shl nuw nsw i32 %558, %542
  %560 = or i32 %559, %545
  %561 = add nsw i32 %542, 8
  %562 = icmp slt i32 %542, 4
  br i1 %562, label %563, label %575

563:                                              ; preds = %552
  %564 = icmp ult ptr %553, %22
  br i1 %564, label %565, label %575

565:                                              ; preds = %563
  %566 = getelementptr inbounds i8, ptr %544, i64 2
  %567 = load i8, ptr %553, align 1, !tbaa !9
  %568 = zext i8 %567 to i64
  %569 = getelementptr inbounds i8, ptr %10, i64 %568
  %570 = load i8, ptr %569, align 1, !tbaa !9
  %571 = zext i8 %570 to i32
  %572 = shl nuw nsw i32 %571, %561
  %573 = or i32 %572, %560
  %574 = add nsw i32 %542, 16
  br label %575

575:                                              ; preds = %563, %550, %565, %552, %541
  %576 = phi i32 [ %574, %565 ], [ %561, %552 ], [ %542, %541 ], [ 12, %550 ], [ 12, %563 ]
  %577 = phi ptr [ %566, %565 ], [ %553, %552 ], [ %544, %541 ], [ %544, %550 ], [ %553, %563 ]
  %578 = phi i32 [ %573, %565 ], [ %560, %552 ], [ %545, %541 ], [ %545, %550 ], [ %560, %563 ]
  %579 = and i32 %578, 4095
  %580 = zext nneg i32 %579 to i64
  %581 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %580
  %582 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %580, i32 1
  %583 = load i8, ptr %582, align 1, !tbaa !58
  %584 = zext i8 %583 to i32
  %585 = sub nsw i32 %576, %584
  %586 = lshr i32 %578, %584
  %587 = load i8, ptr %581, align 4, !tbaa !60
  switch i8 %587, label %879 [
    i8 7, label %588
    i8 9, label %593
    i8 11, label %593
  ]

588:                                              ; preds = %575
  %589 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %580, i32 2
  %590 = load i32, ptr %589, align 4, !tbaa !62
  %591 = add i32 %590, %543
  store i32 %591, ptr %534, align 4, !tbaa !5
  %592 = add i32 %590, %546
  br label %713

593:                                              ; preds = %575, %575
  %594 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %580, i32 2
  %595 = load i32, ptr %594, align 4, !tbaa !62
  %596 = add i32 %595, %546
  %597 = add i32 %595, %543
  br label %541, !llvm.loop !140

598:                                              ; preds = %478, %651
  %599 = phi i32 [ %642, %651 ], [ %446, %478 ]
  %600 = phi i32 [ %655, %651 ], [ %419, %478 ]
  %601 = phi ptr [ %634, %651 ], [ %438, %478 ]
  %602 = phi i32 [ %643, %651 ], [ %447, %478 ]
  %603 = phi i32 [ %654, %651 ], [ %415, %478 ]
  %604 = icmp slt i32 %599, 12
  br i1 %604, label %605, label %632

605:                                              ; preds = %598
  %606 = icmp ult ptr %601, %22
  br i1 %606, label %609, label %607

607:                                              ; preds = %605
  %608 = icmp eq i32 %599, 0
  br i1 %608, label %889, label %632

609:                                              ; preds = %605
  %610 = getelementptr inbounds i8, ptr %601, i64 1
  %611 = load i8, ptr %601, align 1, !tbaa !9
  %612 = zext i8 %611 to i64
  %613 = getelementptr inbounds i8, ptr %10, i64 %612
  %614 = load i8, ptr %613, align 1, !tbaa !9
  %615 = zext i8 %614 to i32
  %616 = shl nuw nsw i32 %615, %599
  %617 = or i32 %616, %602
  %618 = add nsw i32 %599, 8
  %619 = icmp slt i32 %599, 4
  br i1 %619, label %620, label %632

620:                                              ; preds = %609
  %621 = icmp ult ptr %610, %22
  br i1 %621, label %622, label %632

622:                                              ; preds = %620
  %623 = getelementptr inbounds i8, ptr %601, i64 2
  %624 = load i8, ptr %610, align 1, !tbaa !9
  %625 = zext i8 %624 to i64
  %626 = getelementptr inbounds i8, ptr %10, i64 %625
  %627 = load i8, ptr %626, align 1, !tbaa !9
  %628 = zext i8 %627 to i32
  %629 = shl nuw nsw i32 %628, %618
  %630 = or i32 %629, %617
  %631 = add nsw i32 %599, 16
  br label %632

632:                                              ; preds = %620, %607, %622, %609, %598
  %633 = phi i32 [ %631, %622 ], [ %618, %609 ], [ %599, %598 ], [ 12, %607 ], [ 12, %620 ]
  %634 = phi ptr [ %623, %622 ], [ %610, %609 ], [ %601, %598 ], [ %601, %607 ], [ %610, %620 ]
  %635 = phi i32 [ %630, %622 ], [ %617, %609 ], [ %602, %598 ], [ %602, %607 ], [ %617, %620 ]
  %636 = and i32 %635, 4095
  %637 = zext nneg i32 %636 to i64
  %638 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %637
  %639 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %637, i32 1
  %640 = load i8, ptr %639, align 1, !tbaa !58
  %641 = zext i8 %640 to i32
  %642 = sub nsw i32 %633, %641
  %643 = lshr i32 %635, %641
  %644 = load i8, ptr %638, align 4, !tbaa !60
  switch i8 %644, label %879 [
    i8 7, label %645
    i8 9, label %651
    i8 11, label %651
  ]

645:                                              ; preds = %632
  %646 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %637, i32 2
  %647 = load i32, ptr %646, align 4, !tbaa !62
  %648 = add i32 %647, %600
  %649 = getelementptr inbounds i32, ptr %416, i64 1
  store i32 %648, ptr %416, align 4, !tbaa !5
  %650 = add i32 %647, %603
  br label %656

651:                                              ; preds = %632, %632
  %652 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %637, i32 2
  %653 = load i32, ptr %652, align 4, !tbaa !62
  %654 = add i32 %653, %603
  %655 = add i32 %653, %600
  br label %598, !llvm.loop !141

656:                                              ; preds = %708, %645
  %657 = phi i32 [ %642, %645 ], [ %700, %708 ]
  %658 = phi i32 [ 0, %645 ], [ %712, %708 ]
  %659 = phi ptr [ %634, %645 ], [ %692, %708 ]
  %660 = phi i32 [ %643, %645 ], [ %701, %708 ]
  %661 = phi i32 [ %650, %645 ], [ %711, %708 ]
  %662 = icmp slt i32 %657, 13
  br i1 %662, label %663, label %690

663:                                              ; preds = %656
  %664 = icmp ult ptr %659, %22
  br i1 %664, label %667, label %665

665:                                              ; preds = %663
  %666 = icmp eq i32 %657, 0
  br i1 %666, label %889, label %690

667:                                              ; preds = %663
  %668 = getelementptr inbounds i8, ptr %659, i64 1
  %669 = load i8, ptr %659, align 1, !tbaa !9
  %670 = zext i8 %669 to i64
  %671 = getelementptr inbounds i8, ptr %10, i64 %670
  %672 = load i8, ptr %671, align 1, !tbaa !9
  %673 = zext i8 %672 to i32
  %674 = shl nuw nsw i32 %673, %657
  %675 = or i32 %674, %660
  %676 = add nsw i32 %657, 8
  %677 = icmp slt i32 %657, 5
  br i1 %677, label %678, label %690

678:                                              ; preds = %667
  %679 = icmp ult ptr %668, %22
  br i1 %679, label %680, label %690

680:                                              ; preds = %678
  %681 = getelementptr inbounds i8, ptr %659, i64 2
  %682 = load i8, ptr %668, align 1, !tbaa !9
  %683 = zext i8 %682 to i64
  %684 = getelementptr inbounds i8, ptr %10, i64 %683
  %685 = load i8, ptr %684, align 1, !tbaa !9
  %686 = zext i8 %685 to i32
  %687 = shl nuw nsw i32 %686, %676
  %688 = or i32 %687, %675
  %689 = add nsw i32 %657, 16
  br label %690

690:                                              ; preds = %678, %665, %680, %667, %656
  %691 = phi i32 [ %689, %680 ], [ %676, %667 ], [ %657, %656 ], [ 13, %665 ], [ 13, %678 ]
  %692 = phi ptr [ %681, %680 ], [ %668, %667 ], [ %659, %656 ], [ %659, %665 ], [ %668, %678 ]
  %693 = phi i32 [ %688, %680 ], [ %675, %667 ], [ %660, %656 ], [ %660, %665 ], [ %675, %678 ]
  %694 = and i32 %693, 8191
  %695 = zext nneg i32 %694 to i64
  %696 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %695
  %697 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %695, i32 1
  %698 = load i8, ptr %697, align 1, !tbaa !58
  %699 = zext i8 %698 to i32
  %700 = sub nsw i32 %691, %699
  %701 = lshr i32 %693, %699
  %702 = load i8, ptr %696, align 4, !tbaa !60
  switch i8 %702, label %869 [
    i8 8, label %703
    i8 10, label %708
    i8 11, label %708
  ]

703:                                              ; preds = %690
  %704 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %695, i32 2
  %705 = load i32, ptr %704, align 4, !tbaa !62
  %706 = add i32 %705, %658
  store i32 %706, ptr %649, align 4, !tbaa !5
  %707 = add i32 %705, %661
  br label %713

708:                                              ; preds = %690, %690
  %709 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %695, i32 2
  %710 = load i32, ptr %709, align 4, !tbaa !62
  %711 = add i32 %710, %661
  %712 = add i32 %710, %658
  br label %656, !llvm.loop !142

713:                                              ; preds = %588, %703
  %714 = phi i32 [ %585, %588 ], [ %700, %703 ]
  %715 = phi ptr [ %577, %588 ], [ %692, %703 ]
  %716 = phi i32 [ %586, %588 ], [ %701, %703 ]
  %717 = phi i32 [ %592, %588 ], [ %707, %703 ]
  %718 = getelementptr inbounds i32, ptr %416, i64 2
  %719 = icmp eq ptr %718, %48
  br i1 %719, label %945, label %720

720:                                              ; preds = %713
  %721 = icmp sle i32 %414, %717
  %722 = icmp slt i32 %414, %8
  %723 = select i1 %721, i1 %722, i1 false
  br i1 %723, label %724, label %945

724:                                              ; preds = %720, %724
  %725 = phi ptr [ %732, %724 ], [ %413, %720 ]
  %726 = phi i32 [ %731, %724 ], [ %414, %720 ]
  %727 = load i32, ptr %725, align 4, !tbaa !5
  %728 = getelementptr inbounds i32, ptr %725, i64 1
  %729 = load i32, ptr %728, align 4, !tbaa !5
  %730 = add i32 %727, %726
  %731 = add i32 %730, %729
  %732 = getelementptr inbounds i32, ptr %725, i64 2
  %733 = icmp sle i32 %731, %717
  %734 = icmp slt i32 %731, %8
  %735 = select i1 %733, i1 %734, i1 false
  br i1 %735, label %724, label %945, !llvm.loop !143

736:                                              ; preds = %436
  %737 = icmp eq ptr %416, %48
  br i1 %737, label %754, label %738

738:                                              ; preds = %736
  %739 = icmp sle i32 %414, %415
  %740 = icmp slt i32 %414, %8
  %741 = select i1 %739, i1 %740, i1 false
  br i1 %741, label %742, label %754

742:                                              ; preds = %738, %742
  %743 = phi ptr [ %750, %742 ], [ %413, %738 ]
  %744 = phi i32 [ %749, %742 ], [ %414, %738 ]
  %745 = load i32, ptr %743, align 4, !tbaa !5
  %746 = getelementptr inbounds i32, ptr %743, i64 1
  %747 = load i32, ptr %746, align 4, !tbaa !5
  %748 = add i32 %745, %744
  %749 = add i32 %748, %747
  %750 = getelementptr inbounds i32, ptr %743, i64 2
  %751 = icmp sle i32 %749, %415
  %752 = icmp slt i32 %749, %8
  %753 = select i1 %751, i1 %752, i1 false
  br i1 %753, label %742, label %754, !llvm.loop !144

754:                                              ; preds = %742, %738, %736
  %755 = phi i32 [ %414, %736 ], [ %414, %738 ], [ %749, %742 ]
  %756 = phi ptr [ %413, %736 ], [ %413, %738 ], [ %750, %742 ]
  %757 = add i32 %412, %419
  %758 = add i32 %757, %755
  %759 = getelementptr inbounds i32, ptr %416, i64 1
  store i32 %758, ptr %416, align 4, !tbaa !5
  %760 = getelementptr inbounds i32, ptr %756, i64 1
  %761 = load i32, ptr %756, align 4, !tbaa !5
  %762 = add i32 %761, %755
  br label %945

763:                                              ; preds = %436
  %764 = icmp eq ptr %416, %48
  br i1 %764, label %781, label %765

765:                                              ; preds = %763
  %766 = icmp sle i32 %414, %415
  %767 = icmp slt i32 %414, %8
  %768 = select i1 %766, i1 %767, i1 false
  br i1 %768, label %769, label %781

769:                                              ; preds = %765, %769
  %770 = phi ptr [ %777, %769 ], [ %413, %765 ]
  %771 = phi i32 [ %776, %769 ], [ %414, %765 ]
  %772 = load i32, ptr %770, align 4, !tbaa !5
  %773 = getelementptr inbounds i32, ptr %770, i64 1
  %774 = load i32, ptr %773, align 4, !tbaa !5
  %775 = add i32 %772, %771
  %776 = add i32 %775, %774
  %777 = getelementptr inbounds i32, ptr %770, i64 2
  %778 = icmp sle i32 %776, %415
  %779 = icmp slt i32 %776, %8
  %780 = select i1 %778, i1 %779, i1 false
  br i1 %780, label %769, label %781, !llvm.loop !145

781:                                              ; preds = %769, %765, %763
  %782 = phi i32 [ %414, %763 ], [ %414, %765 ], [ %776, %769 ]
  %783 = phi ptr [ %413, %763 ], [ %413, %765 ], [ %777, %769 ]
  %784 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxMainTable, i64 %441, i32 2
  %785 = load i32, ptr %784, align 4, !tbaa !62
  %786 = add i32 %412, %419
  %787 = add i32 %786, %782
  %788 = add i32 %787, %785
  %789 = getelementptr inbounds i32, ptr %416, i64 1
  store i32 %788, ptr %416, align 4, !tbaa !5
  %790 = add i32 %785, %782
  %791 = getelementptr inbounds i32, ptr %783, i64 1
  %792 = load i32, ptr %783, align 4, !tbaa !5
  %793 = add i32 %792, %782
  br label %945

794:                                              ; preds = %436
  %795 = icmp eq ptr %416, %48
  br i1 %795, label %812, label %796

796:                                              ; preds = %794
  %797 = icmp sle i32 %414, %415
  %798 = icmp slt i32 %414, %8
  %799 = select i1 %797, i1 %798, i1 false
  br i1 %799, label %800, label %812

800:                                              ; preds = %796, %800
  %801 = phi ptr [ %808, %800 ], [ %413, %796 ]
  %802 = phi i32 [ %807, %800 ], [ %414, %796 ]
  %803 = load i32, ptr %801, align 4, !tbaa !5
  %804 = getelementptr inbounds i32, ptr %801, i64 1
  %805 = load i32, ptr %804, align 4, !tbaa !5
  %806 = add i32 %803, %802
  %807 = add i32 %806, %805
  %808 = getelementptr inbounds i32, ptr %801, i64 2
  %809 = icmp sle i32 %807, %415
  %810 = icmp slt i32 %807, %8
  %811 = select i1 %809, i1 %810, i1 false
  br i1 %811, label %800, label %812, !llvm.loop !146

812:                                              ; preds = %800, %796, %794
  %813 = phi i32 [ %414, %794 ], [ %414, %796 ], [ %807, %800 ]
  %814 = phi ptr [ %413, %794 ], [ %413, %796 ], [ %808, %800 ]
  %815 = getelementptr inbounds %struct.TIFFFaxTabEnt, ptr @TIFFFaxMainTable, i64 %441, i32 2
  %816 = load i32, ptr %815, align 4, !tbaa !62
  %817 = add i32 %813, %412
  %818 = sub i32 %817, %816
  %819 = add i32 %818, %419
  %820 = getelementptr inbounds i32, ptr %416, i64 1
  store i32 %819, ptr %416, align 4, !tbaa !5
  %821 = add i32 %818, %415
  %822 = getelementptr inbounds i32, ptr %814, i64 -1
  %823 = load i32, ptr %822, align 4, !tbaa !5
  %824 = sub i32 %813, %823
  br label %945

825:                                              ; preds = %436
  %826 = sub nsw i32 %8, %415
  %827 = getelementptr inbounds i32, ptr %416, i64 1
  store i32 %826, ptr %416, align 4, !tbaa !5
  %828 = load ptr, ptr %0, align 8, !tbaa !24
  %829 = load i32, ptr %31, align 8, !tbaa !71
  %830 = zext i32 %415 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef nonnull @.str.39, ptr noundef %828, i32 noundef %829, i64 noundef %830) #9
  br label %997

831:                                              ; preds = %436
  %832 = sub nsw i32 %8, %415
  %833 = getelementptr inbounds i32, ptr %416, i64 1
  store i32 %832, ptr %416, align 4, !tbaa !5
  %834 = icmp slt i32 %446, 5
  br i1 %834, label %835, label %849

835:                                              ; preds = %831
  %836 = icmp ult ptr %438, %22
  br i1 %836, label %839, label %837

837:                                              ; preds = %835
  %838 = icmp eq i32 %446, 0
  br i1 %838, label %889, label %849

839:                                              ; preds = %835
  %840 = getelementptr inbounds i8, ptr %438, i64 1
  %841 = load i8, ptr %438, align 1, !tbaa !9
  %842 = zext i8 %841 to i64
  %843 = getelementptr inbounds i8, ptr %10, i64 %842
  %844 = load i8, ptr %843, align 1, !tbaa !9
  %845 = zext i8 %844 to i32
  %846 = shl nuw nsw i32 %845, %446
  %847 = or i32 %846, %447
  %848 = add nsw i32 %446, 8
  br label %849

849:                                              ; preds = %837, %839, %831
  %850 = phi i32 [ %848, %839 ], [ %446, %831 ], [ 5, %837 ]
  %851 = phi ptr [ %840, %839 ], [ %438, %831 ], [ %438, %837 ]
  %852 = phi i32 [ %847, %839 ], [ %447, %831 ], [ %447, %837 ]
  %853 = and i32 %852, 31
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %997, label %855

855:                                              ; preds = %849
  %856 = load ptr, ptr %0, align 8, !tbaa !24
  %857 = load i32, ptr %30, align 8, !tbaa !71
  %858 = zext i32 %415 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef nonnull @.str.34, ptr noundef %856, i32 noundef %857, i64 noundef %858) #9
  br label %997

859:                                              ; preds = %436, %983
  %860 = phi i32 [ %958, %983 ], [ %419, %436 ]
  %861 = phi ptr [ %961, %983 ], [ %416, %436 ]
  %862 = phi i32 [ %962, %983 ], [ %415, %436 ]
  %863 = phi i32 [ %984, %983 ], [ %446, %436 ]
  %864 = phi ptr [ %985, %983 ], [ %438, %436 ]
  %865 = phi i32 [ %986, %983 ], [ %447, %436 ]
  %866 = load ptr, ptr %0, align 8, !tbaa !24
  %867 = load i32, ptr %34, align 8, !tbaa !71
  %868 = zext i32 %862 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef nonnull @.str.34, ptr noundef %866, i32 noundef %867, i64 noundef %868) #9
  br label %997

869:                                              ; preds = %517, %690
  %870 = phi i32 [ %700, %690 ], [ %527, %517 ]
  %871 = phi i32 [ %658, %690 ], [ %485, %517 ]
  %872 = phi ptr [ %692, %690 ], [ %519, %517 ]
  %873 = phi i32 [ %701, %690 ], [ %528, %517 ]
  %874 = phi ptr [ %649, %690 ], [ %416, %517 ]
  %875 = phi i32 [ %661, %690 ], [ %488, %517 ]
  %876 = load ptr, ptr %0, align 8, !tbaa !24
  %877 = load i32, ptr %32, align 8, !tbaa !71
  %878 = zext i32 %875 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef nonnull @.str.34, ptr noundef %876, i32 noundef %877, i64 noundef %878) #9
  br label %997

879:                                              ; preds = %575, %632
  %880 = phi i32 [ %642, %632 ], [ %585, %575 ]
  %881 = phi i32 [ %600, %632 ], [ %543, %575 ]
  %882 = phi ptr [ %634, %632 ], [ %577, %575 ]
  %883 = phi i32 [ %643, %632 ], [ %586, %575 ]
  %884 = phi ptr [ %416, %632 ], [ %534, %575 ]
  %885 = phi i32 [ %603, %632 ], [ %546, %575 ]
  %886 = load ptr, ptr %0, align 8, !tbaa !24
  %887 = load i32, ptr %33, align 8, !tbaa !71
  %888 = zext i32 %885 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef nonnull @.str.34, ptr noundef %886, i32 noundef %887, i64 noundef %888) #9
  br label %997

889:                                              ; preds = %971, %837, %424, %492, %550, %607, %665
  %890 = phi i32 [ %658, %665 ], [ %600, %607 ], [ %543, %550 ], [ %485, %492 ], [ %419, %424 ], [ %419, %837 ], [ %958, %971 ]
  %891 = phi ptr [ %659, %665 ], [ %601, %607 ], [ %544, %550 ], [ %486, %492 ], [ %418, %424 ], [ %438, %837 ], [ %959, %971 ]
  %892 = phi i32 [ %660, %665 ], [ %602, %607 ], [ %545, %550 ], [ %487, %492 ], [ %417, %424 ], [ %447, %837 ], [ %960, %971 ]
  %893 = phi ptr [ %649, %665 ], [ %416, %607 ], [ %534, %550 ], [ %416, %492 ], [ %416, %424 ], [ %833, %837 ], [ %961, %971 ]
  %894 = phi i32 [ %661, %665 ], [ %603, %607 ], [ %546, %550 ], [ %488, %492 ], [ %415, %424 ], [ %415, %837 ], [ %962, %971 ]
  %895 = load ptr, ptr %0, align 8, !tbaa !24
  %896 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %897 = load i32, ptr %896, align 8, !tbaa !71
  %898 = zext i32 %894 to i64
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef nonnull @.str.35, ptr noundef %895, i32 noundef %897, i64 noundef %898) #9
  %899 = icmp eq i32 %890, 0
  br i1 %899, label %902, label %900

900:                                              ; preds = %889
  %901 = getelementptr inbounds i32, ptr %893, i64 1
  store i32 %890, ptr %893, align 4, !tbaa !5
  br label %902

902:                                              ; preds = %900, %889
  %903 = phi ptr [ %901, %900 ], [ %893, %889 ]
  %904 = icmp eq i32 %894, %8
  br i1 %904, label %1088, label %905

905:                                              ; preds = %902
  %906 = load ptr, ptr %0, align 8, !tbaa !24
  %907 = icmp ult i32 %894, %8
  %908 = select i1 %907, ptr @.str.37, ptr @.str.38
  %909 = load i32, ptr %896, align 8, !tbaa !71
  %910 = zext i32 %8 to i64
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef nonnull @.str.36, ptr noundef %906, ptr noundef nonnull %908, i32 noundef %909, i64 noundef %898, i64 noundef %910) #9
  %911 = icmp sgt i32 %894, %8
  %912 = icmp ugt ptr %903, %48
  %913 = select i1 %911, i1 %912, i1 false
  br i1 %913, label %914, label %923

914:                                              ; preds = %905, %914
  %915 = phi i32 [ %919, %914 ], [ %894, %905 ]
  %916 = phi ptr [ %917, %914 ], [ %903, %905 ]
  %917 = getelementptr inbounds i32, ptr %916, i64 -1
  %918 = load i32, ptr %917, align 4, !tbaa !5
  %919 = sub i32 %915, %918
  %920 = icmp sgt i32 %919, %8
  %921 = icmp ugt ptr %917, %48
  %922 = select i1 %920, i1 %921, i1 false
  br i1 %922, label %914, label %923, !llvm.loop !147

923:                                              ; preds = %914, %905
  %924 = phi ptr [ %903, %905 ], [ %917, %914 ]
  %925 = phi i32 [ %894, %905 ], [ %919, %914 ]
  %926 = phi i1 [ %911, %905 ], [ %920, %914 ]
  %927 = icmp slt i32 %925, %8
  br i1 %927, label %928, label %941

928:                                              ; preds = %923
  %929 = tail call i32 @llvm.smax.i32(i32 %925, i32 0)
  %930 = ptrtoint ptr %924 to i64
  %931 = ptrtoint ptr %48 to i64
  %932 = sub i64 %930, %931
  %933 = and i64 %932, 4
  %934 = icmp eq i64 %933, 0
  br i1 %934, label %937, label %935

935:                                              ; preds = %928
  %936 = getelementptr inbounds i32, ptr %924, i64 1
  store i32 0, ptr %924, align 4, !tbaa !5
  br label %937

937:                                              ; preds = %928, %935
  %938 = phi ptr [ %936, %935 ], [ %924, %928 ]
  %939 = sub nsw i32 %8, %929
  %940 = getelementptr inbounds i32, ptr %938, i64 1
  store i32 %939, ptr %938, align 4, !tbaa !5
  br label %1088

941:                                              ; preds = %923
  br i1 %926, label %942, label %1088

942:                                              ; preds = %941
  %943 = getelementptr inbounds i32, ptr %924, i64 1
  store i32 %8, ptr %924, align 4, !tbaa !5
  %944 = getelementptr inbounds i32, ptr %924, i64 2
  store i32 0, ptr %943, align 4, !tbaa !5
  br label %1088

945:                                              ; preds = %724, %720, %713, %812, %781, %754, %467
  %946 = phi i32 [ %446, %812 ], [ %446, %781 ], [ %446, %754 ], [ %714, %713 ], [ %446, %467 ], [ %714, %720 ], [ %714, %724 ]
  %947 = phi i32 [ 0, %812 ], [ 0, %781 ], [ 0, %754 ], [ 0, %713 ], [ %474, %467 ], [ 0, %720 ], [ 0, %724 ]
  %948 = phi ptr [ %438, %812 ], [ %438, %781 ], [ %438, %754 ], [ %715, %713 ], [ %438, %467 ], [ %715, %720 ], [ %715, %724 ]
  %949 = phi i32 [ %447, %812 ], [ %447, %781 ], [ %447, %754 ], [ %716, %713 ], [ %447, %467 ], [ %716, %720 ], [ %716, %724 ]
  %950 = phi ptr [ %820, %812 ], [ %789, %781 ], [ %759, %754 ], [ %718, %713 ], [ %416, %467 ], [ %718, %720 ], [ %718, %724 ]
  %951 = phi i32 [ %821, %812 ], [ %790, %781 ], [ %755, %754 ], [ %717, %713 ], [ %472, %467 ], [ %717, %720 ], [ %717, %724 ]
  %952 = phi i32 [ %824, %812 ], [ %793, %781 ], [ %762, %754 ], [ %414, %713 ], [ %477, %467 ], [ %414, %720 ], [ %731, %724 ]
  %953 = phi ptr [ %822, %812 ], [ %791, %781 ], [ %760, %754 ], [ %413, %713 ], [ %475, %467 ], [ %413, %720 ], [ %732, %724 ]
  %954 = sub i32 0, %951
  %955 = icmp slt i32 %951, %8
  br i1 %955, label %411, label %956, !llvm.loop !148

956:                                              ; preds = %945, %164
  %957 = phi i32 [ %158, %164 ], [ %946, %945 ]
  %958 = phi i32 [ 0, %164 ], [ %947, %945 ]
  %959 = phi ptr [ %155, %164 ], [ %948, %945 ]
  %960 = phi i32 [ %159, %164 ], [ %949, %945 ]
  %961 = phi ptr [ %48, %164 ], [ %950, %945 ]
  %962 = phi i32 [ 0, %164 ], [ %951, %945 ]
  %963 = icmp eq i32 %958, 0
  br i1 %963, label %997, label %964

964:                                              ; preds = %956
  %965 = add nsw i32 %962, %958
  %966 = icmp slt i32 %965, %8
  br i1 %966, label %967, label %992

967:                                              ; preds = %964
  %968 = icmp slt i32 %957, 1
  br i1 %968, label %969, label %983

969:                                              ; preds = %967
  %970 = icmp ult ptr %959, %22
  br i1 %970, label %973, label %971

971:                                              ; preds = %969
  %972 = icmp eq i32 %957, 0
  br i1 %972, label %889, label %983

973:                                              ; preds = %969
  %974 = getelementptr inbounds i8, ptr %959, i64 1
  %975 = load i8, ptr %959, align 1, !tbaa !9
  %976 = zext i8 %975 to i64
  %977 = getelementptr inbounds i8, ptr %10, i64 %976
  %978 = load i8, ptr %977, align 1, !tbaa !9
  %979 = zext i8 %978 to i32
  %980 = shl nuw nsw i32 %979, %957
  %981 = or i32 %980, %960
  %982 = add nsw i32 %957, 8
  br label %983

983:                                              ; preds = %971, %973, %967
  %984 = phi i32 [ %982, %973 ], [ %957, %967 ], [ 1, %971 ]
  %985 = phi ptr [ %974, %973 ], [ %959, %967 ], [ %959, %971 ]
  %986 = phi i32 [ %981, %973 ], [ %960, %967 ], [ %960, %971 ]
  %987 = and i32 %986, 1
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %859, label %989

989:                                              ; preds = %983
  %990 = add nsw i32 %984, -1
  %991 = lshr i32 %986, 1
  br label %992

992:                                              ; preds = %964, %989
  %993 = phi i32 [ %990, %989 ], [ %957, %964 ]
  %994 = phi ptr [ %985, %989 ], [ %959, %964 ]
  %995 = phi i32 [ %991, %989 ], [ %960, %964 ]
  %996 = getelementptr inbounds i32, ptr %961, i64 1
  store i32 %958, ptr %961, align 4, !tbaa !5
  br label %997

997:                                              ; preds = %849, %855, %825, %859, %869, %879, %992, %956
  %998 = phi i32 [ %863, %859 ], [ %446, %825 ], [ %870, %869 ], [ %880, %879 ], [ %993, %992 ], [ %957, %956 ], [ %850, %855 ], [ %850, %849 ]
  %999 = phi i32 [ %860, %859 ], [ %419, %825 ], [ %871, %869 ], [ %881, %879 ], [ 0, %992 ], [ 0, %956 ], [ %419, %855 ], [ %419, %849 ]
  %1000 = phi ptr [ %864, %859 ], [ %438, %825 ], [ %872, %869 ], [ %882, %879 ], [ %994, %992 ], [ %959, %956 ], [ %851, %855 ], [ %851, %849 ]
  %1001 = phi i32 [ %865, %859 ], [ %447, %825 ], [ %873, %869 ], [ %883, %879 ], [ %995, %992 ], [ %960, %956 ], [ %852, %855 ], [ %852, %849 ]
  %1002 = phi ptr [ %861, %859 ], [ %827, %825 ], [ %874, %869 ], [ %884, %879 ], [ %996, %992 ], [ %961, %956 ], [ %833, %855 ], [ %833, %849 ]
  %1003 = phi i32 [ %862, %859 ], [ %415, %825 ], [ %875, %869 ], [ %885, %879 ], [ %962, %992 ], [ %962, %956 ], [ %415, %855 ], [ %415, %849 ]
  %1004 = phi i32 [ 0, %859 ], [ 0, %825 ], [ 0, %869 ], [ 0, %879 ], [ 0, %992 ], [ 0, %956 ], [ 1, %855 ], [ 1, %849 ]
  %1005 = icmp eq i32 %999, 0
  br i1 %1005, label %1008, label %1006

1006:                                             ; preds = %997
  %1007 = getelementptr inbounds i32, ptr %1002, i64 1
  store i32 %999, ptr %1002, align 4, !tbaa !5
  br label %1008

1008:                                             ; preds = %1006, %997
  %1009 = phi ptr [ %1007, %1006 ], [ %1002, %997 ]
  %1010 = icmp eq i32 %1003, %8
  br i1 %1010, label %1051, label %1011

1011:                                             ; preds = %1008
  %1012 = load ptr, ptr %0, align 8, !tbaa !24
  %1013 = icmp ult i32 %1003, %8
  %1014 = select i1 %1013, ptr @.str.37, ptr @.str.38
  %1015 = load i32, ptr %35, align 8, !tbaa !71
  %1016 = zext i32 %1003 to i64
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef nonnull @.str.36, ptr noundef %1012, ptr noundef nonnull %1014, i32 noundef %1015, i64 noundef %1016, i64 noundef %36) #9
  %1017 = icmp sgt i32 %1003, %8
  %1018 = icmp ugt ptr %1009, %48
  %1019 = select i1 %1017, i1 %1018, i1 false
  br i1 %1019, label %1020, label %1029

1020:                                             ; preds = %1011, %1020
  %1021 = phi i32 [ %1025, %1020 ], [ %1003, %1011 ]
  %1022 = phi ptr [ %1023, %1020 ], [ %1009, %1011 ]
  %1023 = getelementptr inbounds i32, ptr %1022, i64 -1
  %1024 = load i32, ptr %1023, align 4, !tbaa !5
  %1025 = sub i32 %1021, %1024
  %1026 = icmp sgt i32 %1025, %8
  %1027 = icmp ugt ptr %1023, %48
  %1028 = select i1 %1026, i1 %1027, i1 false
  br i1 %1028, label %1020, label %1029, !llvm.loop !149

1029:                                             ; preds = %1020, %1011
  %1030 = phi ptr [ %1009, %1011 ], [ %1023, %1020 ]
  %1031 = phi i32 [ %1003, %1011 ], [ %1025, %1020 ]
  %1032 = phi i1 [ %1017, %1011 ], [ %1026, %1020 ]
  %1033 = icmp slt i32 %1031, %8
  br i1 %1033, label %1034, label %1047

1034:                                             ; preds = %1029
  %1035 = tail call i32 @llvm.smax.i32(i32 %1031, i32 0)
  %1036 = ptrtoint ptr %1030 to i64
  %1037 = ptrtoint ptr %48 to i64
  %1038 = sub i64 %1036, %1037
  %1039 = and i64 %1038, 4
  %1040 = icmp eq i64 %1039, 0
  br i1 %1040, label %1043, label %1041

1041:                                             ; preds = %1034
  %1042 = getelementptr inbounds i32, ptr %1030, i64 1
  store i32 0, ptr %1030, align 4, !tbaa !5
  br label %1043

1043:                                             ; preds = %1034, %1041
  %1044 = phi ptr [ %1042, %1041 ], [ %1030, %1034 ]
  %1045 = sub nsw i32 %8, %1035
  %1046 = getelementptr inbounds i32, ptr %1044, i64 1
  store i32 %1045, ptr %1044, align 4, !tbaa !5
  br label %1051

1047:                                             ; preds = %1029
  br i1 %1032, label %1048, label %1051

1048:                                             ; preds = %1047
  %1049 = getelementptr inbounds i32, ptr %1030, i64 1
  store i32 %8, ptr %1030, align 4, !tbaa !5
  %1050 = getelementptr inbounds i32, ptr %1030, i64 2
  store i32 0, ptr %1049, align 4, !tbaa !5
  br label %1051

1051:                                             ; preds = %1008, %1047, %1048, %1043, %368, %407, %408, %403
  %1052 = phi i32 [ %358, %403 ], [ %358, %408 ], [ %358, %407 ], [ %358, %368 ], [ %998, %1043 ], [ %998, %1048 ], [ %998, %1047 ], [ %998, %1008 ]
  %1053 = phi ptr [ %360, %403 ], [ %360, %408 ], [ %360, %407 ], [ %360, %368 ], [ %1000, %1043 ], [ %1000, %1048 ], [ %1000, %1047 ], [ %1000, %1008 ]
  %1054 = phi i32 [ %361, %403 ], [ %361, %408 ], [ %361, %407 ], [ %361, %368 ], [ %1001, %1043 ], [ %1001, %1048 ], [ %1001, %1047 ], [ %1001, %1008 ]
  %1055 = phi ptr [ %406, %403 ], [ %410, %408 ], [ %390, %407 ], [ %369, %368 ], [ %1046, %1043 ], [ %1050, %1048 ], [ %1030, %1047 ], [ %1009, %1008 ]
  %1056 = phi i32 [ %364, %403 ], [ %364, %408 ], [ %364, %407 ], [ %364, %368 ], [ %1004, %1043 ], [ %1004, %1048 ], [ %1004, %1047 ], [ %1004, %1008 ]
  %1057 = load ptr, ptr %37, align 8, !tbaa !75
  tail call void %1057(ptr noundef %42, ptr noundef %48, ptr noundef %1055, i32 noundef %8) #9
  store i32 0, ptr %1055, align 4, !tbaa !5
  %1058 = load ptr, ptr %25, align 8, !tbaa !56
  %1059 = load ptr, ptr %26, align 8, !tbaa !57
  store ptr %1059, ptr %25, align 8, !tbaa !56
  store ptr %1058, ptr %26, align 8, !tbaa !57
  %1060 = load i32, ptr %38, align 4, !tbaa !76
  %1061 = zext i32 %1060 to i64
  %1062 = getelementptr inbounds i8, ptr %42, i64 %1061
  %1063 = sub i32 %43, %1060
  %1064 = icmp eq i32 %1063, 0
  br i1 %1064, label %1068, label %1065

1065:                                             ; preds = %1051
  %1066 = load i32, ptr %39, align 8, !tbaa !71
  %1067 = add i32 %1066, 1
  store i32 %1067, ptr %39, align 8, !tbaa !71
  br label %1068

1068:                                             ; preds = %1065, %1051
  %1069 = icmp sgt i32 %1063, 0
  br i1 %1069, label %41, label %1095, !llvm.loop !150

1070:                                             ; preds = %141, %61, %102
  %1071 = phi ptr [ %97, %102 ], [ %56, %61 ], [ %116, %141 ]
  %1072 = phi i32 [ %98, %102 ], [ %57, %61 ], [ %137, %141 ]
  %1073 = phi i32 [ %44, %102 ], [ %44, %61 ], [ 0, %141 ]
  %1074 = icmp eq i32 %8, 0
  br i1 %1074, label %1088, label %1075

1075:                                             ; preds = %1070
  %1076 = load ptr, ptr %0, align 8, !tbaa !24
  %1077 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %1078 = load i32, ptr %1077, align 8, !tbaa !71
  %1079 = zext i32 %8 to i64
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef nonnull @Fax3Decode2D.module, ptr noundef nonnull @.str.36, ptr noundef %1076, ptr noundef nonnull @.str.37, i32 noundef %1078, i64 noundef 0, i64 noundef %1079) #9
  %1080 = icmp sgt i32 %8, 0
  br i1 %1080, label %1081, label %1083

1081:                                             ; preds = %1075
  %1082 = getelementptr inbounds i32, ptr %48, i64 1
  store i32 %8, ptr %48, align 4, !tbaa !5
  br label %1088

1083:                                             ; preds = %1075
  %1084 = icmp slt i32 %8, 0
  br i1 %1084, label %1085, label %1088

1085:                                             ; preds = %1083
  %1086 = getelementptr inbounds i32, ptr %48, i64 1
  store i32 %8, ptr %48, align 4, !tbaa !5
  %1087 = getelementptr inbounds i32, ptr %48, i64 2
  store i32 0, ptr %1086, align 4, !tbaa !5
  br label %1088

1088:                                             ; preds = %1070, %1083, %1085, %1081, %902, %941, %942, %937, %304, %343, %344, %339
  %1089 = phi ptr [ %1071, %1081 ], [ %1071, %1085 ], [ %1071, %1083 ], [ %1071, %1070 ], [ %293, %339 ], [ %293, %344 ], [ %293, %343 ], [ %293, %304 ], [ %891, %937 ], [ %891, %942 ], [ %891, %941 ], [ %891, %902 ]
  %1090 = phi i32 [ %1072, %1081 ], [ %1072, %1085 ], [ %1072, %1083 ], [ %1072, %1070 ], [ %294, %339 ], [ %294, %344 ], [ %294, %343 ], [ %294, %304 ], [ %892, %937 ], [ %892, %942 ], [ %892, %941 ], [ %892, %902 ]
  %1091 = phi ptr [ %1082, %1081 ], [ %1087, %1085 ], [ %48, %1083 ], [ %48, %1070 ], [ %342, %339 ], [ %346, %344 ], [ %326, %343 ], [ %305, %304 ], [ %940, %937 ], [ %944, %942 ], [ %924, %941 ], [ %903, %902 ]
  %1092 = phi i32 [ %1073, %1081 ], [ %1073, %1085 ], [ %1073, %1083 ], [ %1073, %1070 ], [ 0, %339 ], [ 0, %344 ], [ 0, %343 ], [ 0, %304 ], [ 0, %937 ], [ 0, %942 ], [ 0, %941 ], [ 0, %902 ]
  %1093 = getelementptr inbounds %struct.Fax3DecodeState, ptr %6, i64 0, i32 5
  %1094 = load ptr, ptr %1093, align 8, !tbaa !75
  tail call void %1094(ptr noundef %42, ptr noundef %48, ptr noundef %1091, i32 noundef %8) #9
  br label %1095

1095:                                             ; preds = %1068, %4, %1088
  %1096 = phi i32 [ 0, %1088 ], [ %14, %4 ], [ %1052, %1068 ]
  %1097 = phi i32 [ %1090, %1088 ], [ %12, %4 ], [ %1054, %1068 ]
  %1098 = phi i32 [ %1092, %1088 ], [ %16, %4 ], [ %1056, %1068 ]
  %1099 = phi ptr [ %1089, %1088 ], [ %18, %4 ], [ %1053, %1068 ]
  %1100 = phi i32 [ -1, %1088 ], [ 1, %4 ], [ 1, %1068 ]
  store i32 %1096, ptr %13, align 4, !tbaa !52
  store i32 %1097, ptr %11, align 8, !tbaa !51
  store i32 %1098, ptr %15, align 8, !tbaa !53
  %1101 = load ptr, ptr %17, align 8, !tbaa !54
  %1102 = ptrtoint ptr %1099 to i64
  %1103 = ptrtoint ptr %1101 to i64
  %1104 = sub i64 %1103, %1102
  %1105 = load i32, ptr %19, align 8, !tbaa !55
  %1106 = trunc i64 %1104 to i32
  %1107 = add i32 %1105, %1106
  store i32 %1107, ptr %19, align 8, !tbaa !55
  store ptr %1099, ptr %17, align 8, !tbaa !54
  ret i32 %1100
}

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @TIFFGetBitRevTable(i32 noundef) local_unnamed_addr #2

declare void @_TIFFmemset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @TIFFFlushData1(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @Fax3Encode1DRow(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  br label %6

6:                                                ; preds = %251, %3
  %7 = phi i32 [ 0, %3 ], [ %253, %251 ]
  %8 = sub nsw i32 %2, %7
  %9 = ashr i32 %7, 3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %1, i64 %10
  %12 = icmp sgt i32 %8, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %6
  %14 = and i32 %7, 7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %13
  %17 = load i8, ptr %11, align 1, !tbaa !9
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, %14
  %20 = and i32 %19, 254
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %21
  %23 = load i8, ptr %22, align 2, !tbaa !9
  %24 = zext i8 %23 to i32
  %25 = sub nuw nsw i32 8, %14
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 %24)
  %27 = tail call i32 @llvm.smin.i32(i32 %26, i32 %8)
  %28 = add nuw nsw i32 %27, %14
  %29 = icmp slt i32 %28, 8
  br i1 %29, label %127, label %30

30:                                               ; preds = %16
  %31 = sub nsw i32 %8, %27
  %32 = getelementptr inbounds i8, ptr %11, i64 1
  br label %33

33:                                               ; preds = %30, %13, %6
  %34 = phi ptr [ %32, %30 ], [ %11, %13 ], [ %11, %6 ]
  %35 = phi i32 [ %31, %30 ], [ %8, %13 ], [ %8, %6 ]
  %36 = phi i32 [ %27, %30 ], [ 0, %13 ], [ 0, %6 ]
  %37 = icmp ugt i32 %35, 127
  br i1 %37, label %38, label %92

38:                                               ; preds = %33
  %39 = ptrtoint ptr %34 to i64
  %40 = and i64 %39, 7
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i8, ptr %34, align 1, !tbaa !9
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %65, label %54

45:                                               ; preds = %65, %38
  %46 = phi ptr [ %34, %38 ], [ %71, %65 ]
  %47 = phi i32 [ %35, %38 ], [ %70, %65 ]
  %48 = phi i32 [ %36, %38 ], [ %69, %65 ]
  %49 = phi i1 [ %41, %38 ], [ %74, %65 ]
  %50 = icmp ugt i32 %47, 63
  br i1 %50, label %75, label %86

51:                                               ; preds = %65
  %52 = load i8, ptr %71, align 1, !tbaa !9
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %65, label %54, !llvm.loop !151

54:                                               ; preds = %51, %42
  %55 = phi i1 [ %41, %42 ], [ %74, %51 ]
  %56 = phi i32 [ %36, %42 ], [ %69, %51 ]
  %57 = phi i32 [ %35, %42 ], [ %70, %51 ]
  %58 = phi ptr [ %34, %42 ], [ %71, %51 ]
  %59 = phi i8 [ %43, %42 ], [ %52, %51 ]
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !9
  %63 = zext i8 %62 to i32
  %64 = add nsw i32 %56, %63
  br label %86

65:                                               ; preds = %42, %51
  %66 = phi ptr [ %71, %51 ], [ %34, %42 ]
  %67 = phi i32 [ %70, %51 ], [ %35, %42 ]
  %68 = phi i32 [ %69, %51 ], [ %36, %42 ]
  %69 = add nsw i32 %68, 8
  %70 = add nsw i32 %67, -8
  %71 = getelementptr inbounds i8, ptr %66, i64 1
  %72 = ptrtoint ptr %71 to i64
  %73 = and i64 %72, 7
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %45, label %51, !llvm.loop !151

75:                                               ; preds = %45, %81
  %76 = phi ptr [ %84, %81 ], [ %46, %45 ]
  %77 = phi i32 [ %82, %81 ], [ %48, %45 ]
  %78 = phi i32 [ %83, %81 ], [ %47, %45 ]
  %79 = load i64, ptr %76, align 8, !tbaa !10
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = add i32 %77, 64
  %83 = add i32 %78, -64
  %84 = getelementptr inbounds i64, ptr %76, i64 1
  %85 = icmp ugt i32 %83, 63
  br i1 %85, label %75, label %86, !llvm.loop !152

86:                                               ; preds = %81, %75, %54, %45
  %87 = phi i1 [ %55, %54 ], [ %49, %45 ], [ %49, %75 ], [ %49, %81 ]
  %88 = phi ptr [ %58, %54 ], [ %46, %45 ], [ %84, %81 ], [ %76, %75 ]
  %89 = phi i32 [ %64, %54 ], [ undef, %45 ], [ undef, %75 ], [ undef, %81 ]
  %90 = phi i32 [ %57, %54 ], [ %47, %45 ], [ %83, %81 ], [ %78, %75 ]
  %91 = phi i32 [ %56, %54 ], [ %48, %45 ], [ %82, %81 ], [ %77, %75 ]
  br i1 %87, label %92, label %127

92:                                               ; preds = %86, %33
  %93 = phi ptr [ %88, %86 ], [ %34, %33 ]
  %94 = phi i32 [ %90, %86 ], [ %35, %33 ]
  %95 = phi i32 [ %91, %86 ], [ %36, %33 ]
  %96 = icmp sgt i32 %94, 7
  br i1 %96, label %97, label %114

97:                                               ; preds = %92, %109
  %98 = phi i32 [ %110, %109 ], [ %95, %92 ]
  %99 = phi i32 [ %111, %109 ], [ %94, %92 ]
  %100 = phi ptr [ %112, %109 ], [ %93, %92 ]
  %101 = load i8, ptr %100, align 1, !tbaa !9
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %97
  %104 = zext i8 %101 to i64
  %105 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !9
  %107 = zext i8 %106 to i32
  %108 = add nsw i32 %98, %107
  br label %127

109:                                              ; preds = %97
  %110 = add nsw i32 %98, 8
  %111 = add nsw i32 %99, -8
  %112 = getelementptr inbounds i8, ptr %100, i64 1
  %113 = icmp sgt i32 %99, 15
  br i1 %113, label %97, label %114, !llvm.loop !153

114:                                              ; preds = %109, %92
  %115 = phi ptr [ %93, %92 ], [ %112, %109 ]
  %116 = phi i32 [ %94, %92 ], [ %111, %109 ]
  %117 = phi i32 [ %95, %92 ], [ %110, %109 ]
  %118 = icmp sgt i32 %116, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = load i8, ptr %115, align 1, !tbaa !9
  %121 = zext i8 %120 to i64
  %122 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !9
  %124 = zext i8 %123 to i32
  %125 = tail call i32 @llvm.smin.i32(i32 %116, i32 %124)
  %126 = add nsw i32 %125, %117
  br label %127

127:                                              ; preds = %16, %86, %103, %114, %119
  %128 = phi i32 [ %108, %103 ], [ %89, %86 ], [ %27, %16 ], [ %126, %119 ], [ %117, %114 ]
  tail call fastcc void @putspan(ptr noundef %0, i32 noundef %128, ptr noundef nonnull @TIFFFaxWhiteCodes)
  %129 = add i32 %128, %7
  %130 = icmp ult i32 %129, %2
  br i1 %130, label %131, label %255

131:                                              ; preds = %127
  %132 = sub nsw i32 %2, %129
  %133 = ashr i32 %129, 3
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, ptr %1, i64 %134
  %136 = icmp sgt i32 %132, 0
  br i1 %136, label %137, label %157

137:                                              ; preds = %131
  %138 = and i32 %129, 7
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %157, label %140

140:                                              ; preds = %137
  %141 = load i8, ptr %135, align 1, !tbaa !9
  %142 = zext i8 %141 to i32
  %143 = shl nuw nsw i32 %142, %138
  %144 = and i32 %143, 254
  %145 = zext nneg i32 %144 to i64
  %146 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %145
  %147 = load i8, ptr %146, align 2, !tbaa !9
  %148 = zext i8 %147 to i32
  %149 = sub nuw nsw i32 8, %138
  %150 = tail call i32 @llvm.umin.i32(i32 %149, i32 %148)
  %151 = tail call i32 @llvm.smin.i32(i32 %150, i32 %132)
  %152 = add nuw nsw i32 %151, %138
  %153 = icmp slt i32 %152, 8
  br i1 %153, label %251, label %154

154:                                              ; preds = %140
  %155 = sub nsw i32 %132, %151
  %156 = getelementptr inbounds i8, ptr %135, i64 1
  br label %157

157:                                              ; preds = %154, %137, %131
  %158 = phi ptr [ %156, %154 ], [ %135, %137 ], [ %135, %131 ]
  %159 = phi i32 [ %155, %154 ], [ %132, %137 ], [ %132, %131 ]
  %160 = phi i32 [ %151, %154 ], [ 0, %137 ], [ 0, %131 ]
  %161 = icmp ugt i32 %159, 127
  br i1 %161, label %162, label %216

162:                                              ; preds = %157
  %163 = ptrtoint ptr %158 to i64
  %164 = and i64 %163, 7
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %162
  %167 = load i8, ptr %158, align 1, !tbaa !9
  %168 = icmp eq i8 %167, -1
  br i1 %168, label %189, label %178

169:                                              ; preds = %189, %162
  %170 = phi ptr [ %158, %162 ], [ %195, %189 ]
  %171 = phi i32 [ %159, %162 ], [ %194, %189 ]
  %172 = phi i32 [ %160, %162 ], [ %193, %189 ]
  %173 = phi i1 [ %165, %162 ], [ %198, %189 ]
  %174 = icmp ugt i32 %171, 63
  br i1 %174, label %199, label %210

175:                                              ; preds = %189
  %176 = load i8, ptr %195, align 1, !tbaa !9
  %177 = icmp eq i8 %176, -1
  br i1 %177, label %189, label %178, !llvm.loop !154

178:                                              ; preds = %175, %166
  %179 = phi i1 [ %165, %166 ], [ %198, %175 ]
  %180 = phi i32 [ %160, %166 ], [ %193, %175 ]
  %181 = phi i32 [ %159, %166 ], [ %194, %175 ]
  %182 = phi ptr [ %158, %166 ], [ %195, %175 ]
  %183 = phi i8 [ %167, %166 ], [ %176, %175 ]
  %184 = zext i8 %183 to i64
  %185 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %184
  %186 = load i8, ptr %185, align 1, !tbaa !9
  %187 = zext i8 %186 to i32
  %188 = add nsw i32 %180, %187
  br label %210

189:                                              ; preds = %166, %175
  %190 = phi ptr [ %195, %175 ], [ %158, %166 ]
  %191 = phi i32 [ %194, %175 ], [ %159, %166 ]
  %192 = phi i32 [ %193, %175 ], [ %160, %166 ]
  %193 = add nsw i32 %192, 8
  %194 = add nsw i32 %191, -8
  %195 = getelementptr inbounds i8, ptr %190, i64 1
  %196 = ptrtoint ptr %195 to i64
  %197 = and i64 %196, 7
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %169, label %175, !llvm.loop !154

199:                                              ; preds = %169, %205
  %200 = phi ptr [ %208, %205 ], [ %170, %169 ]
  %201 = phi i32 [ %206, %205 ], [ %172, %169 ]
  %202 = phi i32 [ %207, %205 ], [ %171, %169 ]
  %203 = load i64, ptr %200, align 8, !tbaa !10
  %204 = icmp eq i64 %203, -1
  br i1 %204, label %205, label %210

205:                                              ; preds = %199
  %206 = add i32 %201, 64
  %207 = add i32 %202, -64
  %208 = getelementptr inbounds i64, ptr %200, i64 1
  %209 = icmp ugt i32 %207, 63
  br i1 %209, label %199, label %210, !llvm.loop !155

210:                                              ; preds = %205, %199, %178, %169
  %211 = phi i1 [ %179, %178 ], [ %173, %169 ], [ %173, %199 ], [ %173, %205 ]
  %212 = phi ptr [ %182, %178 ], [ %170, %169 ], [ %208, %205 ], [ %200, %199 ]
  %213 = phi i32 [ %188, %178 ], [ undef, %169 ], [ undef, %199 ], [ undef, %205 ]
  %214 = phi i32 [ %181, %178 ], [ %171, %169 ], [ %207, %205 ], [ %202, %199 ]
  %215 = phi i32 [ %180, %178 ], [ %172, %169 ], [ %206, %205 ], [ %201, %199 ]
  br i1 %211, label %216, label %251

216:                                              ; preds = %210, %157
  %217 = phi ptr [ %212, %210 ], [ %158, %157 ]
  %218 = phi i32 [ %214, %210 ], [ %159, %157 ]
  %219 = phi i32 [ %215, %210 ], [ %160, %157 ]
  %220 = icmp sgt i32 %218, 7
  br i1 %220, label %221, label %238

221:                                              ; preds = %216, %233
  %222 = phi i32 [ %234, %233 ], [ %219, %216 ]
  %223 = phi i32 [ %235, %233 ], [ %218, %216 ]
  %224 = phi ptr [ %236, %233 ], [ %217, %216 ]
  %225 = load i8, ptr %224, align 1, !tbaa !9
  %226 = icmp eq i8 %225, -1
  br i1 %226, label %233, label %227

227:                                              ; preds = %221
  %228 = zext i8 %225 to i64
  %229 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %228
  %230 = load i8, ptr %229, align 1, !tbaa !9
  %231 = zext i8 %230 to i32
  %232 = add nsw i32 %222, %231
  br label %251

233:                                              ; preds = %221
  %234 = add nsw i32 %222, 8
  %235 = add nsw i32 %223, -8
  %236 = getelementptr inbounds i8, ptr %224, i64 1
  %237 = icmp sgt i32 %223, 15
  br i1 %237, label %221, label %238, !llvm.loop !156

238:                                              ; preds = %233, %216
  %239 = phi ptr [ %217, %216 ], [ %236, %233 ]
  %240 = phi i32 [ %218, %216 ], [ %235, %233 ]
  %241 = phi i32 [ %219, %216 ], [ %234, %233 ]
  %242 = icmp sgt i32 %240, 0
  br i1 %242, label %243, label %251

243:                                              ; preds = %238
  %244 = load i8, ptr %239, align 1, !tbaa !9
  %245 = zext i8 %244 to i64
  %246 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %245
  %247 = load i8, ptr %246, align 1, !tbaa !9
  %248 = zext i8 %247 to i32
  %249 = tail call i32 @llvm.smin.i32(i32 %240, i32 %248)
  %250 = add nsw i32 %249, %241
  br label %251

251:                                              ; preds = %140, %210, %227, %238, %243
  %252 = phi i32 [ %232, %227 ], [ %213, %210 ], [ %151, %140 ], [ %250, %243 ], [ %241, %238 ]
  tail call fastcc void @putspan(ptr noundef %0, i32 noundef %252, ptr noundef nonnull @TIFFFaxBlackCodes)
  %253 = add i32 %252, %129
  %254 = icmp ult i32 %253, %2
  br i1 %254, label %6, label %255, !llvm.loop !157

255:                                              ; preds = %251, %127
  %256 = load i32, ptr %5, align 8, !tbaa !125
  %257 = and i32 %256, 12
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %306, label %259

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.Fax3EncodeState, ptr %5, i64 0, i32 2
  %261 = load i32, ptr %260, align 4, !tbaa !81
  %262 = icmp eq i32 %261, 8
  br i1 %262, label %280, label %263

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %265 = load i32, ptr %264, align 8, !tbaa !55
  %266 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  %267 = load i32, ptr %266, align 8, !tbaa !82
  %268 = icmp slt i32 %265, %267
  br i1 %268, label %271, label %269

269:                                              ; preds = %263
  %270 = tail call i32 @TIFFFlushData1(ptr noundef %0) #9
  br label %271

271:                                              ; preds = %269, %263
  %272 = getelementptr inbounds %struct.Fax3EncodeState, ptr %5, i64 0, i32 1
  %273 = load i32, ptr %272, align 8, !tbaa !83
  %274 = trunc i32 %273 to i8
  %275 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %276 = load ptr, ptr %275, align 8, !tbaa !54
  %277 = getelementptr inbounds i8, ptr %276, i64 1
  store ptr %277, ptr %275, align 8, !tbaa !54
  store i8 %274, ptr %276, align 1, !tbaa !9
  %278 = load i32, ptr %264, align 8, !tbaa !55
  %279 = add nsw i32 %278, 1
  store i32 %279, ptr %264, align 8, !tbaa !55
  store i32 0, ptr %272, align 8, !tbaa !83
  store i32 8, ptr %260, align 4, !tbaa !81
  br label %280

280:                                              ; preds = %271, %259
  %281 = load i32, ptr %5, align 8, !tbaa !125
  %282 = and i32 %281, 8
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %306, label %284

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %286 = load ptr, ptr %285, align 8, !tbaa !54
  %287 = ptrtoint ptr %286 to i64
  %288 = and i64 %287, 1
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %306, label %290

290:                                              ; preds = %284
  %291 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %292 = load i32, ptr %291, align 8, !tbaa !55
  %293 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  %294 = load i32, ptr %293, align 8, !tbaa !82
  %295 = icmp slt i32 %292, %294
  br i1 %295, label %298, label %296

296:                                              ; preds = %290
  %297 = tail call i32 @TIFFFlushData1(ptr noundef %0) #9
  br label %298

298:                                              ; preds = %296, %290
  %299 = getelementptr inbounds %struct.Fax3EncodeState, ptr %5, i64 0, i32 1
  %300 = load i32, ptr %299, align 8, !tbaa !83
  %301 = trunc i32 %300 to i8
  %302 = load ptr, ptr %285, align 8, !tbaa !54
  %303 = getelementptr inbounds i8, ptr %302, i64 1
  store ptr %303, ptr %285, align 8, !tbaa !54
  store i8 %301, ptr %302, align 1, !tbaa !9
  %304 = load i32, ptr %291, align 8, !tbaa !55
  %305 = add nsw i32 %304, 1
  store i32 %305, ptr %291, align 8, !tbaa !55
  store i32 0, ptr %299, align 8, !tbaa !83
  store i32 8, ptr %260, align 4, !tbaa !81
  br label %306

306:                                              ; preds = %280, %284, %298, %255
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @Fax3Encode2DRow(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load i8, ptr %1, align 1, !tbaa !9
  %6 = icmp sgt i8 %5, -1
  br i1 %6, label %7, label %98

7:                                                ; preds = %4
  %8 = icmp ugt i32 %3, 127
  br i1 %8, label %9, label %63

9:                                                ; preds = %7
  %10 = ptrtoint ptr %1 to i64
  %11 = and i64 %10, 7
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load i8, ptr %1, align 1, !tbaa !9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %36, label %25

16:                                               ; preds = %36, %9
  %17 = phi ptr [ %1, %9 ], [ %42, %36 ]
  %18 = phi i32 [ %3, %9 ], [ %41, %36 ]
  %19 = phi i32 [ 0, %9 ], [ %40, %36 ]
  %20 = phi i1 [ %12, %9 ], [ %45, %36 ]
  %21 = icmp ugt i32 %18, 63
  br i1 %21, label %46, label %57

22:                                               ; preds = %36
  %23 = load i8, ptr %42, align 1, !tbaa !9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %36, label %25, !llvm.loop !151

25:                                               ; preds = %22, %13
  %26 = phi i1 [ %12, %13 ], [ %45, %22 ]
  %27 = phi i32 [ 0, %13 ], [ %40, %22 ]
  %28 = phi i32 [ %3, %13 ], [ %41, %22 ]
  %29 = phi ptr [ %1, %13 ], [ %42, %22 ]
  %30 = phi i8 [ %14, %13 ], [ %23, %22 ]
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !9
  %34 = zext i8 %33 to i32
  %35 = add nuw nsw i32 %27, %34
  br label %57

36:                                               ; preds = %13, %22
  %37 = phi ptr [ %42, %22 ], [ %1, %13 ]
  %38 = phi i32 [ %41, %22 ], [ %3, %13 ]
  %39 = phi i32 [ %40, %22 ], [ 0, %13 ]
  %40 = add nuw nsw i32 %39, 8
  %41 = add nsw i32 %38, -8
  %42 = getelementptr inbounds i8, ptr %37, i64 1
  %43 = ptrtoint ptr %42 to i64
  %44 = and i64 %43, 7
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %16, label %22, !llvm.loop !151

46:                                               ; preds = %16, %52
  %47 = phi ptr [ %55, %52 ], [ %17, %16 ]
  %48 = phi i32 [ %53, %52 ], [ %19, %16 ]
  %49 = phi i32 [ %54, %52 ], [ %18, %16 ]
  %50 = load i64, ptr %47, align 8, !tbaa !10
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = add i32 %48, 64
  %54 = add i32 %49, -64
  %55 = getelementptr inbounds i64, ptr %47, i64 1
  %56 = icmp ugt i32 %54, 63
  br i1 %56, label %46, label %57, !llvm.loop !152

57:                                               ; preds = %52, %46, %25, %16
  %58 = phi i1 [ %26, %25 ], [ %20, %16 ], [ %20, %46 ], [ %20, %52 ]
  %59 = phi ptr [ %29, %25 ], [ %17, %16 ], [ %55, %52 ], [ %47, %46 ]
  %60 = phi i32 [ %35, %25 ], [ undef, %16 ], [ undef, %46 ], [ undef, %52 ]
  %61 = phi i32 [ %28, %25 ], [ %18, %16 ], [ %54, %52 ], [ %49, %46 ]
  %62 = phi i32 [ %27, %25 ], [ %19, %16 ], [ %53, %52 ], [ %48, %46 ]
  br i1 %58, label %63, label %98

63:                                               ; preds = %57, %7
  %64 = phi ptr [ %59, %57 ], [ %1, %7 ]
  %65 = phi i32 [ %61, %57 ], [ %3, %7 ]
  %66 = phi i32 [ %62, %57 ], [ 0, %7 ]
  %67 = icmp sgt i32 %65, 7
  br i1 %67, label %68, label %85

68:                                               ; preds = %63, %80
  %69 = phi i32 [ %81, %80 ], [ %66, %63 ]
  %70 = phi i32 [ %82, %80 ], [ %65, %63 ]
  %71 = phi ptr [ %83, %80 ], [ %64, %63 ]
  %72 = load i8, ptr %71, align 1, !tbaa !9
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = zext i8 %72 to i64
  %76 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !9
  %78 = zext i8 %77 to i32
  %79 = add nsw i32 %69, %78
  br label %98

80:                                               ; preds = %68
  %81 = add nsw i32 %69, 8
  %82 = add nsw i32 %70, -8
  %83 = getelementptr inbounds i8, ptr %71, i64 1
  %84 = icmp sgt i32 %70, 15
  br i1 %84, label %68, label %85, !llvm.loop !153

85:                                               ; preds = %80, %63
  %86 = phi ptr [ %64, %63 ], [ %83, %80 ]
  %87 = phi i32 [ %65, %63 ], [ %82, %80 ]
  %88 = phi i32 [ %66, %63 ], [ %81, %80 ]
  %89 = icmp sgt i32 %87, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load i8, ptr %86, align 1, !tbaa !9
  %92 = zext i8 %91 to i64
  %93 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !9
  %95 = zext i8 %94 to i32
  %96 = tail call i32 @llvm.smin.i32(i32 %87, i32 %95)
  %97 = add nsw i32 %96, %88
  br label %98

98:                                               ; preds = %90, %85, %74, %57, %4
  %99 = phi i32 [ 0, %4 ], [ %79, %74 ], [ %60, %57 ], [ %97, %90 ], [ %88, %85 ]
  %100 = load i8, ptr %2, align 1, !tbaa !9
  %101 = icmp sgt i8 %100, -1
  br i1 %101, label %102, label %193

102:                                              ; preds = %98
  %103 = icmp ugt i32 %3, 127
  br i1 %103, label %104, label %158

104:                                              ; preds = %102
  %105 = ptrtoint ptr %2 to i64
  %106 = and i64 %105, 7
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = load i8, ptr %2, align 1, !tbaa !9
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %131, label %120

111:                                              ; preds = %131, %104
  %112 = phi ptr [ %2, %104 ], [ %137, %131 ]
  %113 = phi i32 [ %3, %104 ], [ %136, %131 ]
  %114 = phi i32 [ 0, %104 ], [ %135, %131 ]
  %115 = phi i1 [ %107, %104 ], [ %140, %131 ]
  %116 = icmp ugt i32 %113, 63
  br i1 %116, label %141, label %152

117:                                              ; preds = %131
  %118 = load i8, ptr %137, align 1, !tbaa !9
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %131, label %120, !llvm.loop !151

120:                                              ; preds = %117, %108
  %121 = phi i1 [ %107, %108 ], [ %140, %117 ]
  %122 = phi i32 [ 0, %108 ], [ %135, %117 ]
  %123 = phi i32 [ %3, %108 ], [ %136, %117 ]
  %124 = phi ptr [ %2, %108 ], [ %137, %117 ]
  %125 = phi i8 [ %109, %108 ], [ %118, %117 ]
  %126 = zext i8 %125 to i64
  %127 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !9
  %129 = zext i8 %128 to i32
  %130 = add nuw nsw i32 %122, %129
  br label %152

131:                                              ; preds = %108, %117
  %132 = phi ptr [ %137, %117 ], [ %2, %108 ]
  %133 = phi i32 [ %136, %117 ], [ %3, %108 ]
  %134 = phi i32 [ %135, %117 ], [ 0, %108 ]
  %135 = add nuw nsw i32 %134, 8
  %136 = add nsw i32 %133, -8
  %137 = getelementptr inbounds i8, ptr %132, i64 1
  %138 = ptrtoint ptr %137 to i64
  %139 = and i64 %138, 7
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %111, label %117, !llvm.loop !151

141:                                              ; preds = %111, %147
  %142 = phi ptr [ %150, %147 ], [ %112, %111 ]
  %143 = phi i32 [ %148, %147 ], [ %114, %111 ]
  %144 = phi i32 [ %149, %147 ], [ %113, %111 ]
  %145 = load i64, ptr %142, align 8, !tbaa !10
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %141
  %148 = add i32 %143, 64
  %149 = add i32 %144, -64
  %150 = getelementptr inbounds i64, ptr %142, i64 1
  %151 = icmp ugt i32 %149, 63
  br i1 %151, label %141, label %152, !llvm.loop !152

152:                                              ; preds = %147, %141, %120, %111
  %153 = phi i1 [ %121, %120 ], [ %115, %111 ], [ %115, %141 ], [ %115, %147 ]
  %154 = phi ptr [ %124, %120 ], [ %112, %111 ], [ %150, %147 ], [ %142, %141 ]
  %155 = phi i32 [ %130, %120 ], [ undef, %111 ], [ undef, %141 ], [ undef, %147 ]
  %156 = phi i32 [ %123, %120 ], [ %113, %111 ], [ %149, %147 ], [ %144, %141 ]
  %157 = phi i32 [ %122, %120 ], [ %114, %111 ], [ %148, %147 ], [ %143, %141 ]
  br i1 %153, label %158, label %193

158:                                              ; preds = %152, %102
  %159 = phi ptr [ %154, %152 ], [ %2, %102 ]
  %160 = phi i32 [ %156, %152 ], [ %3, %102 ]
  %161 = phi i32 [ %157, %152 ], [ 0, %102 ]
  %162 = icmp sgt i32 %160, 7
  br i1 %162, label %163, label %180

163:                                              ; preds = %158, %175
  %164 = phi i32 [ %176, %175 ], [ %161, %158 ]
  %165 = phi i32 [ %177, %175 ], [ %160, %158 ]
  %166 = phi ptr [ %178, %175 ], [ %159, %158 ]
  %167 = load i8, ptr %166, align 1, !tbaa !9
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %175, label %169

169:                                              ; preds = %163
  %170 = zext i8 %167 to i64
  %171 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !9
  %173 = zext i8 %172 to i32
  %174 = add nsw i32 %164, %173
  br label %193

175:                                              ; preds = %163
  %176 = add nsw i32 %164, 8
  %177 = add nsw i32 %165, -8
  %178 = getelementptr inbounds i8, ptr %166, i64 1
  %179 = icmp sgt i32 %165, 15
  br i1 %179, label %163, label %180, !llvm.loop !153

180:                                              ; preds = %175, %158
  %181 = phi ptr [ %159, %158 ], [ %178, %175 ]
  %182 = phi i32 [ %160, %158 ], [ %177, %175 ]
  %183 = phi i32 [ %161, %158 ], [ %176, %175 ]
  %184 = icmp sgt i32 %182, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %180
  %186 = load i8, ptr %181, align 1, !tbaa !9
  %187 = zext i8 %186 to i64
  %188 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !9
  %190 = zext i8 %189 to i32
  %191 = tail call i32 @llvm.smin.i32(i32 %182, i32 %190)
  %192 = add nsw i32 %191, %183
  br label %193

193:                                              ; preds = %185, %180, %169, %152, %98
  %194 = phi i32 [ %183, %180 ], [ %192, %185 ], [ %155, %152 ], [ %174, %169 ], [ 0, %98 ]
  br label %195

195:                                              ; preds = %193, %1446
  %196 = phi i32 [ %1448, %1446 ], [ %194, %193 ]
  %197 = phi i32 [ %976, %1446 ], [ %99, %193 ]
  %198 = phi i32 [ %730, %1446 ], [ 0, %193 ]
  %199 = icmp ult i32 %196, %3
  br i1 %199, label %200, label %445

200:                                              ; preds = %195
  %201 = lshr i32 %196, 3
  %202 = zext nneg i32 %201 to i64
  %203 = getelementptr inbounds i8, ptr %2, i64 %202
  %204 = load i8, ptr %203, align 1, !tbaa !9
  %205 = zext i8 %204 to i32
  %206 = and i32 %196, 7
  %207 = xor i32 %206, 7
  %208 = shl nuw nsw i32 1, %207
  %209 = and i32 %208, %205
  %210 = icmp eq i32 %209, 0
  %211 = sub nsw i32 %3, %196
  %212 = ashr i32 %196, 3
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, ptr %2, i64 %213
  %215 = icmp slt i32 %211, 1
  %216 = icmp eq i32 %206, 0
  %217 = or i1 %215, %216
  br i1 %210, label %330, label %218

218:                                              ; preds = %200
  br i1 %217, label %236, label %219

219:                                              ; preds = %218
  %220 = load i8, ptr %214, align 1, !tbaa !9
  %221 = zext i8 %220 to i32
  %222 = shl nuw nsw i32 %221, %206
  %223 = and i32 %222, 254
  %224 = zext nneg i32 %223 to i64
  %225 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %224
  %226 = load i8, ptr %225, align 2, !tbaa !9
  %227 = zext i8 %226 to i32
  %228 = sub nuw nsw i32 8, %206
  %229 = tail call i32 @llvm.umin.i32(i32 %228, i32 %227)
  %230 = tail call i32 @llvm.smin.i32(i32 %229, i32 %211)
  %231 = add nuw nsw i32 %230, %206
  %232 = icmp slt i32 %231, 8
  br i1 %232, label %442, label %233

233:                                              ; preds = %219
  %234 = sub nsw i32 %211, %230
  %235 = getelementptr inbounds i8, ptr %214, i64 1
  br label %236

236:                                              ; preds = %233, %218
  %237 = phi ptr [ %235, %233 ], [ %214, %218 ]
  %238 = phi i32 [ %234, %233 ], [ %211, %218 ]
  %239 = phi i32 [ %230, %233 ], [ 0, %218 ]
  %240 = icmp ugt i32 %238, 127
  br i1 %240, label %241, label %295

241:                                              ; preds = %236
  %242 = ptrtoint ptr %237 to i64
  %243 = and i64 %242, 7
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %248, label %245

245:                                              ; preds = %241
  %246 = load i8, ptr %237, align 1, !tbaa !9
  %247 = icmp eq i8 %246, -1
  br i1 %247, label %268, label %257

248:                                              ; preds = %268, %241
  %249 = phi ptr [ %237, %241 ], [ %274, %268 ]
  %250 = phi i32 [ %238, %241 ], [ %273, %268 ]
  %251 = phi i32 [ %239, %241 ], [ %272, %268 ]
  %252 = phi i1 [ %244, %241 ], [ %277, %268 ]
  %253 = icmp ugt i32 %250, 63
  br i1 %253, label %278, label %289

254:                                              ; preds = %268
  %255 = load i8, ptr %274, align 1, !tbaa !9
  %256 = icmp eq i8 %255, -1
  br i1 %256, label %268, label %257, !llvm.loop !154

257:                                              ; preds = %254, %245
  %258 = phi i1 [ %244, %245 ], [ %277, %254 ]
  %259 = phi i32 [ %239, %245 ], [ %272, %254 ]
  %260 = phi i32 [ %238, %245 ], [ %273, %254 ]
  %261 = phi ptr [ %237, %245 ], [ %274, %254 ]
  %262 = phi i8 [ %246, %245 ], [ %255, %254 ]
  %263 = zext i8 %262 to i64
  %264 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %263
  %265 = load i8, ptr %264, align 1, !tbaa !9
  %266 = zext i8 %265 to i32
  %267 = add nsw i32 %259, %266
  br label %289

268:                                              ; preds = %245, %254
  %269 = phi ptr [ %274, %254 ], [ %237, %245 ]
  %270 = phi i32 [ %273, %254 ], [ %238, %245 ]
  %271 = phi i32 [ %272, %254 ], [ %239, %245 ]
  %272 = add nsw i32 %271, 8
  %273 = add nsw i32 %270, -8
  %274 = getelementptr inbounds i8, ptr %269, i64 1
  %275 = ptrtoint ptr %274 to i64
  %276 = and i64 %275, 7
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %248, label %254, !llvm.loop !154

278:                                              ; preds = %248, %284
  %279 = phi ptr [ %287, %284 ], [ %249, %248 ]
  %280 = phi i32 [ %285, %284 ], [ %251, %248 ]
  %281 = phi i32 [ %286, %284 ], [ %250, %248 ]
  %282 = load i64, ptr %279, align 8, !tbaa !10
  %283 = icmp eq i64 %282, -1
  br i1 %283, label %284, label %289

284:                                              ; preds = %278
  %285 = add i32 %280, 64
  %286 = add i32 %281, -64
  %287 = getelementptr inbounds i64, ptr %279, i64 1
  %288 = icmp ugt i32 %286, 63
  br i1 %288, label %278, label %289, !llvm.loop !155

289:                                              ; preds = %284, %278, %257, %248
  %290 = phi i1 [ %258, %257 ], [ %252, %248 ], [ %252, %278 ], [ %252, %284 ]
  %291 = phi ptr [ %261, %257 ], [ %249, %248 ], [ %287, %284 ], [ %279, %278 ]
  %292 = phi i32 [ %267, %257 ], [ undef, %248 ], [ undef, %278 ], [ undef, %284 ]
  %293 = phi i32 [ %260, %257 ], [ %250, %248 ], [ %286, %284 ], [ %281, %278 ]
  %294 = phi i32 [ %259, %257 ], [ %251, %248 ], [ %285, %284 ], [ %280, %278 ]
  br i1 %290, label %295, label %442

295:                                              ; preds = %289, %236
  %296 = phi ptr [ %291, %289 ], [ %237, %236 ]
  %297 = phi i32 [ %293, %289 ], [ %238, %236 ]
  %298 = phi i32 [ %294, %289 ], [ %239, %236 ]
  %299 = icmp sgt i32 %297, 7
  br i1 %299, label %300, label %317

300:                                              ; preds = %295, %312
  %301 = phi i32 [ %313, %312 ], [ %298, %295 ]
  %302 = phi i32 [ %314, %312 ], [ %297, %295 ]
  %303 = phi ptr [ %315, %312 ], [ %296, %295 ]
  %304 = load i8, ptr %303, align 1, !tbaa !9
  %305 = icmp eq i8 %304, -1
  br i1 %305, label %312, label %306

306:                                              ; preds = %300
  %307 = zext i8 %304 to i64
  %308 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %307
  %309 = load i8, ptr %308, align 1, !tbaa !9
  %310 = zext i8 %309 to i32
  %311 = add nsw i32 %301, %310
  br label %442

312:                                              ; preds = %300
  %313 = add nsw i32 %301, 8
  %314 = add nsw i32 %302, -8
  %315 = getelementptr inbounds i8, ptr %303, i64 1
  %316 = icmp sgt i32 %302, 15
  br i1 %316, label %300, label %317, !llvm.loop !156

317:                                              ; preds = %312, %295
  %318 = phi ptr [ %296, %295 ], [ %315, %312 ]
  %319 = phi i32 [ %297, %295 ], [ %314, %312 ]
  %320 = phi i32 [ %298, %295 ], [ %313, %312 ]
  %321 = icmp sgt i32 %319, 0
  br i1 %321, label %322, label %442

322:                                              ; preds = %317
  %323 = load i8, ptr %318, align 1, !tbaa !9
  %324 = zext i8 %323 to i64
  %325 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %324
  %326 = load i8, ptr %325, align 1, !tbaa !9
  %327 = zext i8 %326 to i32
  %328 = tail call i32 @llvm.smin.i32(i32 %319, i32 %327)
  %329 = add nsw i32 %328, %320
  br label %442

330:                                              ; preds = %200
  br i1 %217, label %348, label %331

331:                                              ; preds = %330
  %332 = load i8, ptr %214, align 1, !tbaa !9
  %333 = zext i8 %332 to i32
  %334 = shl nuw nsw i32 %333, %206
  %335 = and i32 %334, 254
  %336 = zext nneg i32 %335 to i64
  %337 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %336
  %338 = load i8, ptr %337, align 2, !tbaa !9
  %339 = zext i8 %338 to i32
  %340 = sub nuw nsw i32 8, %206
  %341 = tail call i32 @llvm.umin.i32(i32 %340, i32 %339)
  %342 = tail call i32 @llvm.smin.i32(i32 %341, i32 %211)
  %343 = add nuw nsw i32 %342, %206
  %344 = icmp slt i32 %343, 8
  br i1 %344, label %442, label %345

345:                                              ; preds = %331
  %346 = sub nsw i32 %211, %342
  %347 = getelementptr inbounds i8, ptr %214, i64 1
  br label %348

348:                                              ; preds = %345, %330
  %349 = phi ptr [ %347, %345 ], [ %214, %330 ]
  %350 = phi i32 [ %346, %345 ], [ %211, %330 ]
  %351 = phi i32 [ %342, %345 ], [ 0, %330 ]
  %352 = icmp ugt i32 %350, 127
  br i1 %352, label %353, label %407

353:                                              ; preds = %348
  %354 = ptrtoint ptr %349 to i64
  %355 = and i64 %354, 7
  %356 = icmp eq i64 %355, 0
  br i1 %356, label %360, label %357

357:                                              ; preds = %353
  %358 = load i8, ptr %349, align 1, !tbaa !9
  %359 = icmp eq i8 %358, 0
  br i1 %359, label %380, label %369

360:                                              ; preds = %380, %353
  %361 = phi ptr [ %349, %353 ], [ %386, %380 ]
  %362 = phi i32 [ %350, %353 ], [ %385, %380 ]
  %363 = phi i32 [ %351, %353 ], [ %384, %380 ]
  %364 = phi i1 [ %356, %353 ], [ %389, %380 ]
  %365 = icmp ugt i32 %362, 63
  br i1 %365, label %390, label %401

366:                                              ; preds = %380
  %367 = load i8, ptr %386, align 1, !tbaa !9
  %368 = icmp eq i8 %367, 0
  br i1 %368, label %380, label %369, !llvm.loop !151

369:                                              ; preds = %366, %357
  %370 = phi i1 [ %356, %357 ], [ %389, %366 ]
  %371 = phi i32 [ %351, %357 ], [ %384, %366 ]
  %372 = phi i32 [ %350, %357 ], [ %385, %366 ]
  %373 = phi ptr [ %349, %357 ], [ %386, %366 ]
  %374 = phi i8 [ %358, %357 ], [ %367, %366 ]
  %375 = zext i8 %374 to i64
  %376 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %375
  %377 = load i8, ptr %376, align 1, !tbaa !9
  %378 = zext i8 %377 to i32
  %379 = add nsw i32 %371, %378
  br label %401

380:                                              ; preds = %357, %366
  %381 = phi ptr [ %386, %366 ], [ %349, %357 ]
  %382 = phi i32 [ %385, %366 ], [ %350, %357 ]
  %383 = phi i32 [ %384, %366 ], [ %351, %357 ]
  %384 = add nsw i32 %383, 8
  %385 = add nsw i32 %382, -8
  %386 = getelementptr inbounds i8, ptr %381, i64 1
  %387 = ptrtoint ptr %386 to i64
  %388 = and i64 %387, 7
  %389 = icmp eq i64 %388, 0
  br i1 %389, label %360, label %366, !llvm.loop !151

390:                                              ; preds = %360, %396
  %391 = phi ptr [ %399, %396 ], [ %361, %360 ]
  %392 = phi i32 [ %397, %396 ], [ %363, %360 ]
  %393 = phi i32 [ %398, %396 ], [ %362, %360 ]
  %394 = load i64, ptr %391, align 8, !tbaa !10
  %395 = icmp eq i64 %394, 0
  br i1 %395, label %396, label %401

396:                                              ; preds = %390
  %397 = add i32 %392, 64
  %398 = add i32 %393, -64
  %399 = getelementptr inbounds i64, ptr %391, i64 1
  %400 = icmp ugt i32 %398, 63
  br i1 %400, label %390, label %401, !llvm.loop !152

401:                                              ; preds = %396, %390, %369, %360
  %402 = phi i1 [ %370, %369 ], [ %364, %360 ], [ %364, %390 ], [ %364, %396 ]
  %403 = phi ptr [ %373, %369 ], [ %361, %360 ], [ %399, %396 ], [ %391, %390 ]
  %404 = phi i32 [ %379, %369 ], [ undef, %360 ], [ undef, %390 ], [ undef, %396 ]
  %405 = phi i32 [ %372, %369 ], [ %362, %360 ], [ %398, %396 ], [ %393, %390 ]
  %406 = phi i32 [ %371, %369 ], [ %363, %360 ], [ %397, %396 ], [ %392, %390 ]
  br i1 %402, label %407, label %442

407:                                              ; preds = %401, %348
  %408 = phi ptr [ %403, %401 ], [ %349, %348 ]
  %409 = phi i32 [ %405, %401 ], [ %350, %348 ]
  %410 = phi i32 [ %406, %401 ], [ %351, %348 ]
  %411 = icmp sgt i32 %409, 7
  br i1 %411, label %412, label %429

412:                                              ; preds = %407, %424
  %413 = phi i32 [ %425, %424 ], [ %410, %407 ]
  %414 = phi i32 [ %426, %424 ], [ %409, %407 ]
  %415 = phi ptr [ %427, %424 ], [ %408, %407 ]
  %416 = load i8, ptr %415, align 1, !tbaa !9
  %417 = icmp eq i8 %416, 0
  br i1 %417, label %424, label %418

418:                                              ; preds = %412
  %419 = zext i8 %416 to i64
  %420 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %419
  %421 = load i8, ptr %420, align 1, !tbaa !9
  %422 = zext i8 %421 to i32
  %423 = add nsw i32 %413, %422
  br label %442

424:                                              ; preds = %412
  %425 = add nsw i32 %413, 8
  %426 = add nsw i32 %414, -8
  %427 = getelementptr inbounds i8, ptr %415, i64 1
  %428 = icmp sgt i32 %414, 15
  br i1 %428, label %412, label %429, !llvm.loop !153

429:                                              ; preds = %424, %407
  %430 = phi ptr [ %408, %407 ], [ %427, %424 ]
  %431 = phi i32 [ %409, %407 ], [ %426, %424 ]
  %432 = phi i32 [ %410, %407 ], [ %425, %424 ]
  %433 = icmp sgt i32 %431, 0
  br i1 %433, label %434, label %442

434:                                              ; preds = %429
  %435 = load i8, ptr %430, align 1, !tbaa !9
  %436 = zext i8 %435 to i64
  %437 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %436
  %438 = load i8, ptr %437, align 1, !tbaa !9
  %439 = zext i8 %438 to i32
  %440 = tail call i32 @llvm.smin.i32(i32 %431, i32 %439)
  %441 = add nsw i32 %440, %432
  br label %442

442:                                              ; preds = %434, %429, %418, %401, %331, %322, %317, %306, %289, %219
  %443 = phi i32 [ %311, %306 ], [ %292, %289 ], [ %230, %219 ], [ %329, %322 ], [ %320, %317 ], [ %423, %418 ], [ %404, %401 ], [ %342, %331 ], [ %441, %434 ], [ %432, %429 ]
  %444 = add i32 %443, %196
  br label %445

445:                                              ; preds = %195, %442
  %446 = phi i32 [ %444, %442 ], [ %3, %195 ]
  %447 = icmp ult i32 %446, %197
  br i1 %447, label %728, label %448

448:                                              ; preds = %445
  %449 = sub i32 %196, %197
  %450 = add i32 %449, 3
  %451 = icmp ult i32 %450, 7
  br i1 %451, label %720, label %452

452:                                              ; preds = %448
  %453 = icmp ult i32 %197, %3
  br i1 %453, label %454, label %699

454:                                              ; preds = %452
  %455 = lshr i32 %197, 3
  %456 = zext nneg i32 %455 to i64
  %457 = getelementptr inbounds i8, ptr %1, i64 %456
  %458 = load i8, ptr %457, align 1, !tbaa !9
  %459 = zext i8 %458 to i32
  %460 = and i32 %197, 7
  %461 = xor i32 %460, 7
  %462 = shl nuw nsw i32 1, %461
  %463 = and i32 %462, %459
  %464 = icmp eq i32 %463, 0
  %465 = sub nsw i32 %3, %197
  %466 = ashr i32 %197, 3
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i8, ptr %1, i64 %467
  %469 = icmp slt i32 %465, 1
  %470 = icmp eq i32 %460, 0
  %471 = or i1 %469, %470
  br i1 %464, label %584, label %472

472:                                              ; preds = %454
  br i1 %471, label %490, label %473

473:                                              ; preds = %472
  %474 = load i8, ptr %468, align 1, !tbaa !9
  %475 = zext i8 %474 to i32
  %476 = shl nuw nsw i32 %475, %460
  %477 = and i32 %476, 254
  %478 = zext nneg i32 %477 to i64
  %479 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %478
  %480 = load i8, ptr %479, align 2, !tbaa !9
  %481 = zext i8 %480 to i32
  %482 = sub nuw nsw i32 8, %460
  %483 = tail call i32 @llvm.umin.i32(i32 %482, i32 %481)
  %484 = tail call i32 @llvm.smin.i32(i32 %483, i32 %465)
  %485 = add nuw nsw i32 %484, %460
  %486 = icmp slt i32 %485, 8
  br i1 %486, label %696, label %487

487:                                              ; preds = %473
  %488 = sub nsw i32 %465, %484
  %489 = getelementptr inbounds i8, ptr %468, i64 1
  br label %490

490:                                              ; preds = %487, %472
  %491 = phi ptr [ %489, %487 ], [ %468, %472 ]
  %492 = phi i32 [ %488, %487 ], [ %465, %472 ]
  %493 = phi i32 [ %484, %487 ], [ 0, %472 ]
  %494 = icmp ugt i32 %492, 127
  br i1 %494, label %495, label %549

495:                                              ; preds = %490
  %496 = ptrtoint ptr %491 to i64
  %497 = and i64 %496, 7
  %498 = icmp eq i64 %497, 0
  br i1 %498, label %502, label %499

499:                                              ; preds = %495
  %500 = load i8, ptr %491, align 1, !tbaa !9
  %501 = icmp eq i8 %500, -1
  br i1 %501, label %522, label %511

502:                                              ; preds = %522, %495
  %503 = phi ptr [ %491, %495 ], [ %528, %522 ]
  %504 = phi i32 [ %492, %495 ], [ %527, %522 ]
  %505 = phi i32 [ %493, %495 ], [ %526, %522 ]
  %506 = phi i1 [ %498, %495 ], [ %531, %522 ]
  %507 = icmp ugt i32 %504, 63
  br i1 %507, label %532, label %543

508:                                              ; preds = %522
  %509 = load i8, ptr %528, align 1, !tbaa !9
  %510 = icmp eq i8 %509, -1
  br i1 %510, label %522, label %511, !llvm.loop !154

511:                                              ; preds = %508, %499
  %512 = phi i1 [ %498, %499 ], [ %531, %508 ]
  %513 = phi i32 [ %493, %499 ], [ %526, %508 ]
  %514 = phi i32 [ %492, %499 ], [ %527, %508 ]
  %515 = phi ptr [ %491, %499 ], [ %528, %508 ]
  %516 = phi i8 [ %500, %499 ], [ %509, %508 ]
  %517 = zext i8 %516 to i64
  %518 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %517
  %519 = load i8, ptr %518, align 1, !tbaa !9
  %520 = zext i8 %519 to i32
  %521 = add nsw i32 %513, %520
  br label %543

522:                                              ; preds = %499, %508
  %523 = phi ptr [ %528, %508 ], [ %491, %499 ]
  %524 = phi i32 [ %527, %508 ], [ %492, %499 ]
  %525 = phi i32 [ %526, %508 ], [ %493, %499 ]
  %526 = add nsw i32 %525, 8
  %527 = add nsw i32 %524, -8
  %528 = getelementptr inbounds i8, ptr %523, i64 1
  %529 = ptrtoint ptr %528 to i64
  %530 = and i64 %529, 7
  %531 = icmp eq i64 %530, 0
  br i1 %531, label %502, label %508, !llvm.loop !154

532:                                              ; preds = %502, %538
  %533 = phi ptr [ %541, %538 ], [ %503, %502 ]
  %534 = phi i32 [ %539, %538 ], [ %505, %502 ]
  %535 = phi i32 [ %540, %538 ], [ %504, %502 ]
  %536 = load i64, ptr %533, align 8, !tbaa !10
  %537 = icmp eq i64 %536, -1
  br i1 %537, label %538, label %543

538:                                              ; preds = %532
  %539 = add i32 %534, 64
  %540 = add i32 %535, -64
  %541 = getelementptr inbounds i64, ptr %533, i64 1
  %542 = icmp ugt i32 %540, 63
  br i1 %542, label %532, label %543, !llvm.loop !155

543:                                              ; preds = %538, %532, %511, %502
  %544 = phi i1 [ %512, %511 ], [ %506, %502 ], [ %506, %532 ], [ %506, %538 ]
  %545 = phi ptr [ %515, %511 ], [ %503, %502 ], [ %541, %538 ], [ %533, %532 ]
  %546 = phi i32 [ %521, %511 ], [ undef, %502 ], [ undef, %532 ], [ undef, %538 ]
  %547 = phi i32 [ %514, %511 ], [ %504, %502 ], [ %540, %538 ], [ %535, %532 ]
  %548 = phi i32 [ %513, %511 ], [ %505, %502 ], [ %539, %538 ], [ %534, %532 ]
  br i1 %544, label %549, label %696

549:                                              ; preds = %543, %490
  %550 = phi ptr [ %545, %543 ], [ %491, %490 ]
  %551 = phi i32 [ %547, %543 ], [ %492, %490 ]
  %552 = phi i32 [ %548, %543 ], [ %493, %490 ]
  %553 = icmp sgt i32 %551, 7
  br i1 %553, label %554, label %571

554:                                              ; preds = %549, %566
  %555 = phi i32 [ %567, %566 ], [ %552, %549 ]
  %556 = phi i32 [ %568, %566 ], [ %551, %549 ]
  %557 = phi ptr [ %569, %566 ], [ %550, %549 ]
  %558 = load i8, ptr %557, align 1, !tbaa !9
  %559 = icmp eq i8 %558, -1
  br i1 %559, label %566, label %560

560:                                              ; preds = %554
  %561 = zext i8 %558 to i64
  %562 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %561
  %563 = load i8, ptr %562, align 1, !tbaa !9
  %564 = zext i8 %563 to i32
  %565 = add nsw i32 %555, %564
  br label %696

566:                                              ; preds = %554
  %567 = add nsw i32 %555, 8
  %568 = add nsw i32 %556, -8
  %569 = getelementptr inbounds i8, ptr %557, i64 1
  %570 = icmp sgt i32 %556, 15
  br i1 %570, label %554, label %571, !llvm.loop !156

571:                                              ; preds = %566, %549
  %572 = phi ptr [ %550, %549 ], [ %569, %566 ]
  %573 = phi i32 [ %551, %549 ], [ %568, %566 ]
  %574 = phi i32 [ %552, %549 ], [ %567, %566 ]
  %575 = icmp sgt i32 %573, 0
  br i1 %575, label %576, label %696

576:                                              ; preds = %571
  %577 = load i8, ptr %572, align 1, !tbaa !9
  %578 = zext i8 %577 to i64
  %579 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %578
  %580 = load i8, ptr %579, align 1, !tbaa !9
  %581 = zext i8 %580 to i32
  %582 = tail call i32 @llvm.smin.i32(i32 %573, i32 %581)
  %583 = add nsw i32 %582, %574
  br label %696

584:                                              ; preds = %454
  br i1 %471, label %602, label %585

585:                                              ; preds = %584
  %586 = load i8, ptr %468, align 1, !tbaa !9
  %587 = zext i8 %586 to i32
  %588 = shl nuw nsw i32 %587, %460
  %589 = and i32 %588, 254
  %590 = zext nneg i32 %589 to i64
  %591 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %590
  %592 = load i8, ptr %591, align 2, !tbaa !9
  %593 = zext i8 %592 to i32
  %594 = sub nuw nsw i32 8, %460
  %595 = tail call i32 @llvm.umin.i32(i32 %594, i32 %593)
  %596 = tail call i32 @llvm.smin.i32(i32 %595, i32 %465)
  %597 = add nuw nsw i32 %596, %460
  %598 = icmp slt i32 %597, 8
  br i1 %598, label %696, label %599

599:                                              ; preds = %585
  %600 = sub nsw i32 %465, %596
  %601 = getelementptr inbounds i8, ptr %468, i64 1
  br label %602

602:                                              ; preds = %599, %584
  %603 = phi ptr [ %601, %599 ], [ %468, %584 ]
  %604 = phi i32 [ %600, %599 ], [ %465, %584 ]
  %605 = phi i32 [ %596, %599 ], [ 0, %584 ]
  %606 = icmp ugt i32 %604, 127
  br i1 %606, label %607, label %661

607:                                              ; preds = %602
  %608 = ptrtoint ptr %603 to i64
  %609 = and i64 %608, 7
  %610 = icmp eq i64 %609, 0
  br i1 %610, label %614, label %611

611:                                              ; preds = %607
  %612 = load i8, ptr %603, align 1, !tbaa !9
  %613 = icmp eq i8 %612, 0
  br i1 %613, label %634, label %623

614:                                              ; preds = %634, %607
  %615 = phi ptr [ %603, %607 ], [ %640, %634 ]
  %616 = phi i32 [ %604, %607 ], [ %639, %634 ]
  %617 = phi i32 [ %605, %607 ], [ %638, %634 ]
  %618 = phi i1 [ %610, %607 ], [ %643, %634 ]
  %619 = icmp ugt i32 %616, 63
  br i1 %619, label %644, label %655

620:                                              ; preds = %634
  %621 = load i8, ptr %640, align 1, !tbaa !9
  %622 = icmp eq i8 %621, 0
  br i1 %622, label %634, label %623, !llvm.loop !151

623:                                              ; preds = %620, %611
  %624 = phi i1 [ %610, %611 ], [ %643, %620 ]
  %625 = phi i32 [ %605, %611 ], [ %638, %620 ]
  %626 = phi i32 [ %604, %611 ], [ %639, %620 ]
  %627 = phi ptr [ %603, %611 ], [ %640, %620 ]
  %628 = phi i8 [ %612, %611 ], [ %621, %620 ]
  %629 = zext i8 %628 to i64
  %630 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %629
  %631 = load i8, ptr %630, align 1, !tbaa !9
  %632 = zext i8 %631 to i32
  %633 = add nsw i32 %625, %632
  br label %655

634:                                              ; preds = %611, %620
  %635 = phi ptr [ %640, %620 ], [ %603, %611 ]
  %636 = phi i32 [ %639, %620 ], [ %604, %611 ]
  %637 = phi i32 [ %638, %620 ], [ %605, %611 ]
  %638 = add nsw i32 %637, 8
  %639 = add nsw i32 %636, -8
  %640 = getelementptr inbounds i8, ptr %635, i64 1
  %641 = ptrtoint ptr %640 to i64
  %642 = and i64 %641, 7
  %643 = icmp eq i64 %642, 0
  br i1 %643, label %614, label %620, !llvm.loop !151

644:                                              ; preds = %614, %650
  %645 = phi ptr [ %653, %650 ], [ %615, %614 ]
  %646 = phi i32 [ %651, %650 ], [ %617, %614 ]
  %647 = phi i32 [ %652, %650 ], [ %616, %614 ]
  %648 = load i64, ptr %645, align 8, !tbaa !10
  %649 = icmp eq i64 %648, 0
  br i1 %649, label %650, label %655

650:                                              ; preds = %644
  %651 = add i32 %646, 64
  %652 = add i32 %647, -64
  %653 = getelementptr inbounds i64, ptr %645, i64 1
  %654 = icmp ugt i32 %652, 63
  br i1 %654, label %644, label %655, !llvm.loop !152

655:                                              ; preds = %650, %644, %623, %614
  %656 = phi i1 [ %624, %623 ], [ %618, %614 ], [ %618, %644 ], [ %618, %650 ]
  %657 = phi ptr [ %627, %623 ], [ %615, %614 ], [ %653, %650 ], [ %645, %644 ]
  %658 = phi i32 [ %633, %623 ], [ undef, %614 ], [ undef, %644 ], [ undef, %650 ]
  %659 = phi i32 [ %626, %623 ], [ %616, %614 ], [ %652, %650 ], [ %647, %644 ]
  %660 = phi i32 [ %625, %623 ], [ %617, %614 ], [ %651, %650 ], [ %646, %644 ]
  br i1 %656, label %661, label %696

661:                                              ; preds = %655, %602
  %662 = phi ptr [ %657, %655 ], [ %603, %602 ]
  %663 = phi i32 [ %659, %655 ], [ %604, %602 ]
  %664 = phi i32 [ %660, %655 ], [ %605, %602 ]
  %665 = icmp sgt i32 %663, 7
  br i1 %665, label %666, label %683

666:                                              ; preds = %661, %678
  %667 = phi i32 [ %679, %678 ], [ %664, %661 ]
  %668 = phi i32 [ %680, %678 ], [ %663, %661 ]
  %669 = phi ptr [ %681, %678 ], [ %662, %661 ]
  %670 = load i8, ptr %669, align 1, !tbaa !9
  %671 = icmp eq i8 %670, 0
  br i1 %671, label %678, label %672

672:                                              ; preds = %666
  %673 = zext i8 %670 to i64
  %674 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %673
  %675 = load i8, ptr %674, align 1, !tbaa !9
  %676 = zext i8 %675 to i32
  %677 = add nsw i32 %667, %676
  br label %696

678:                                              ; preds = %666
  %679 = add nsw i32 %667, 8
  %680 = add nsw i32 %668, -8
  %681 = getelementptr inbounds i8, ptr %669, i64 1
  %682 = icmp sgt i32 %668, 15
  br i1 %682, label %666, label %683, !llvm.loop !153

683:                                              ; preds = %678, %661
  %684 = phi ptr [ %662, %661 ], [ %681, %678 ]
  %685 = phi i32 [ %663, %661 ], [ %680, %678 ]
  %686 = phi i32 [ %664, %661 ], [ %679, %678 ]
  %687 = icmp sgt i32 %685, 0
  br i1 %687, label %688, label %696

688:                                              ; preds = %683
  %689 = load i8, ptr %684, align 1, !tbaa !9
  %690 = zext i8 %689 to i64
  %691 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %690
  %692 = load i8, ptr %691, align 1, !tbaa !9
  %693 = zext i8 %692 to i32
  %694 = tail call i32 @llvm.smin.i32(i32 %685, i32 %693)
  %695 = add nsw i32 %694, %686
  br label %696

696:                                              ; preds = %688, %683, %672, %655, %585, %576, %571, %560, %543, %473
  %697 = phi i32 [ %565, %560 ], [ %546, %543 ], [ %484, %473 ], [ %583, %576 ], [ %574, %571 ], [ %677, %672 ], [ %658, %655 ], [ %596, %585 ], [ %695, %688 ], [ %686, %683 ]
  %698 = add i32 %697, %197
  br label %699

699:                                              ; preds = %452, %696
  %700 = phi i32 [ %698, %696 ], [ %3, %452 ]
  tail call fastcc void @Fax3PutBits(ptr noundef %0, i32 noundef 1, i32 noundef 3)
  %701 = sub i32 0, %197
  %702 = icmp eq i32 %198, %701
  br i1 %702, label %714, label %703

703:                                              ; preds = %699
  %704 = lshr i32 %198, 3
  %705 = zext nneg i32 %704 to i64
  %706 = getelementptr inbounds i8, ptr %1, i64 %705
  %707 = load i8, ptr %706, align 1, !tbaa !9
  %708 = zext i8 %707 to i32
  %709 = and i32 %198, 7
  %710 = xor i32 %709, 7
  %711 = shl nuw nsw i32 1, %710
  %712 = and i32 %711, %708
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %714, label %717

714:                                              ; preds = %703, %699
  %715 = sub i32 %197, %198
  tail call fastcc void @putspan(ptr noundef %0, i32 noundef %715, ptr noundef nonnull @TIFFFaxWhiteCodes)
  %716 = sub i32 %700, %197
  tail call fastcc void @putspan(ptr noundef %0, i32 noundef %716, ptr noundef nonnull @TIFFFaxBlackCodes)
  br label %729

717:                                              ; preds = %703
  %718 = sub i32 %197, %198
  tail call fastcc void @putspan(ptr noundef %0, i32 noundef %718, ptr noundef nonnull @TIFFFaxBlackCodes)
  %719 = sub i32 %700, %197
  tail call fastcc void @putspan(ptr noundef %0, i32 noundef %719, ptr noundef nonnull @TIFFFaxWhiteCodes)
  br label %729

720:                                              ; preds = %448
  %721 = zext nneg i32 %450 to i64
  %722 = getelementptr inbounds [7 x %struct.tableentry], ptr @vcodes, i64 0, i64 %721
  %723 = getelementptr inbounds [7 x %struct.tableentry], ptr @vcodes, i64 0, i64 %721, i32 1
  %724 = load i16, ptr %723, align 2, !tbaa !158
  %725 = zext i16 %724 to i32
  %726 = load i16, ptr %722, align 2, !tbaa !160
  %727 = zext i16 %726 to i32
  tail call fastcc void @Fax3PutBits(ptr noundef %0, i32 noundef %725, i32 noundef %727)
  br label %729

728:                                              ; preds = %445
  tail call fastcc void @Fax3PutBits(ptr noundef %0, i32 noundef 1, i32 noundef 4)
  br label %729

729:                                              ; preds = %720, %717, %714, %728
  %730 = phi i32 [ %446, %728 ], [ %197, %720 ], [ %700, %717 ], [ %700, %714 ]
  %731 = icmp ult i32 %730, %3
  br i1 %731, label %732, label %1449

732:                                              ; preds = %729
  %733 = lshr i32 %730, 3
  %734 = zext nneg i32 %733 to i64
  %735 = getelementptr inbounds i8, ptr %1, i64 %734
  %736 = load i8, ptr %735, align 1, !tbaa !9
  %737 = zext i8 %736 to i32
  %738 = and i32 %730, 7
  %739 = xor i32 %738, 7
  %740 = shl nuw nsw i32 1, %739
  %741 = and i32 %740, %737
  %742 = icmp eq i32 %741, 0
  %743 = sub nsw i32 %3, %730
  %744 = ashr i32 %730, 3
  %745 = sext i32 %744 to i64
  %746 = getelementptr inbounds i8, ptr %1, i64 %745
  %747 = icmp slt i32 %743, 1
  %748 = icmp eq i32 %738, 0
  %749 = or i1 %747, %748
  br i1 %742, label %862, label %750

750:                                              ; preds = %732
  br i1 %749, label %768, label %751

751:                                              ; preds = %750
  %752 = load i8, ptr %746, align 1, !tbaa !9
  %753 = zext i8 %752 to i32
  %754 = shl nuw nsw i32 %753, %738
  %755 = and i32 %754, 254
  %756 = zext nneg i32 %755 to i64
  %757 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %756
  %758 = load i8, ptr %757, align 2, !tbaa !9
  %759 = zext i8 %758 to i32
  %760 = sub nuw nsw i32 8, %738
  %761 = tail call i32 @llvm.umin.i32(i32 %760, i32 %759)
  %762 = tail call i32 @llvm.smin.i32(i32 %761, i32 %743)
  %763 = add nuw nsw i32 %762, %738
  %764 = icmp slt i32 %763, 8
  br i1 %764, label %974, label %765

765:                                              ; preds = %751
  %766 = sub nsw i32 %743, %762
  %767 = getelementptr inbounds i8, ptr %746, i64 1
  br label %768

768:                                              ; preds = %765, %750
  %769 = phi ptr [ %767, %765 ], [ %746, %750 ]
  %770 = phi i32 [ %766, %765 ], [ %743, %750 ]
  %771 = phi i32 [ %762, %765 ], [ 0, %750 ]
  %772 = icmp ugt i32 %770, 127
  br i1 %772, label %773, label %827

773:                                              ; preds = %768
  %774 = ptrtoint ptr %769 to i64
  %775 = and i64 %774, 7
  %776 = icmp eq i64 %775, 0
  br i1 %776, label %780, label %777

777:                                              ; preds = %773
  %778 = load i8, ptr %769, align 1, !tbaa !9
  %779 = icmp eq i8 %778, -1
  br i1 %779, label %800, label %789

780:                                              ; preds = %800, %773
  %781 = phi ptr [ %769, %773 ], [ %806, %800 ]
  %782 = phi i32 [ %770, %773 ], [ %805, %800 ]
  %783 = phi i32 [ %771, %773 ], [ %804, %800 ]
  %784 = phi i1 [ %776, %773 ], [ %809, %800 ]
  %785 = icmp ugt i32 %782, 63
  br i1 %785, label %810, label %821

786:                                              ; preds = %800
  %787 = load i8, ptr %806, align 1, !tbaa !9
  %788 = icmp eq i8 %787, -1
  br i1 %788, label %800, label %789, !llvm.loop !154

789:                                              ; preds = %786, %777
  %790 = phi i1 [ %776, %777 ], [ %809, %786 ]
  %791 = phi i32 [ %771, %777 ], [ %804, %786 ]
  %792 = phi i32 [ %770, %777 ], [ %805, %786 ]
  %793 = phi ptr [ %769, %777 ], [ %806, %786 ]
  %794 = phi i8 [ %778, %777 ], [ %787, %786 ]
  %795 = zext i8 %794 to i64
  %796 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %795
  %797 = load i8, ptr %796, align 1, !tbaa !9
  %798 = zext i8 %797 to i32
  %799 = add nsw i32 %791, %798
  br label %821

800:                                              ; preds = %777, %786
  %801 = phi ptr [ %806, %786 ], [ %769, %777 ]
  %802 = phi i32 [ %805, %786 ], [ %770, %777 ]
  %803 = phi i32 [ %804, %786 ], [ %771, %777 ]
  %804 = add nsw i32 %803, 8
  %805 = add nsw i32 %802, -8
  %806 = getelementptr inbounds i8, ptr %801, i64 1
  %807 = ptrtoint ptr %806 to i64
  %808 = and i64 %807, 7
  %809 = icmp eq i64 %808, 0
  br i1 %809, label %780, label %786, !llvm.loop !154

810:                                              ; preds = %780, %816
  %811 = phi ptr [ %819, %816 ], [ %781, %780 ]
  %812 = phi i32 [ %817, %816 ], [ %783, %780 ]
  %813 = phi i32 [ %818, %816 ], [ %782, %780 ]
  %814 = load i64, ptr %811, align 8, !tbaa !10
  %815 = icmp eq i64 %814, -1
  br i1 %815, label %816, label %821

816:                                              ; preds = %810
  %817 = add i32 %812, 64
  %818 = add i32 %813, -64
  %819 = getelementptr inbounds i64, ptr %811, i64 1
  %820 = icmp ugt i32 %818, 63
  br i1 %820, label %810, label %821, !llvm.loop !155

821:                                              ; preds = %816, %810, %789, %780
  %822 = phi i1 [ %790, %789 ], [ %784, %780 ], [ %784, %810 ], [ %784, %816 ]
  %823 = phi ptr [ %793, %789 ], [ %781, %780 ], [ %819, %816 ], [ %811, %810 ]
  %824 = phi i32 [ %799, %789 ], [ undef, %780 ], [ undef, %810 ], [ undef, %816 ]
  %825 = phi i32 [ %792, %789 ], [ %782, %780 ], [ %818, %816 ], [ %813, %810 ]
  %826 = phi i32 [ %791, %789 ], [ %783, %780 ], [ %817, %816 ], [ %812, %810 ]
  br i1 %822, label %827, label %974

827:                                              ; preds = %821, %768
  %828 = phi ptr [ %823, %821 ], [ %769, %768 ]
  %829 = phi i32 [ %825, %821 ], [ %770, %768 ]
  %830 = phi i32 [ %826, %821 ], [ %771, %768 ]
  %831 = icmp sgt i32 %829, 7
  br i1 %831, label %832, label %849

832:                                              ; preds = %827, %844
  %833 = phi i32 [ %845, %844 ], [ %830, %827 ]
  %834 = phi i32 [ %846, %844 ], [ %829, %827 ]
  %835 = phi ptr [ %847, %844 ], [ %828, %827 ]
  %836 = load i8, ptr %835, align 1, !tbaa !9
  %837 = icmp eq i8 %836, -1
  br i1 %837, label %844, label %838

838:                                              ; preds = %832
  %839 = zext i8 %836 to i64
  %840 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %839
  %841 = load i8, ptr %840, align 1, !tbaa !9
  %842 = zext i8 %841 to i32
  %843 = add nsw i32 %833, %842
  br label %974

844:                                              ; preds = %832
  %845 = add nsw i32 %833, 8
  %846 = add nsw i32 %834, -8
  %847 = getelementptr inbounds i8, ptr %835, i64 1
  %848 = icmp sgt i32 %834, 15
  br i1 %848, label %832, label %849, !llvm.loop !156

849:                                              ; preds = %844, %827
  %850 = phi ptr [ %828, %827 ], [ %847, %844 ]
  %851 = phi i32 [ %829, %827 ], [ %846, %844 ]
  %852 = phi i32 [ %830, %827 ], [ %845, %844 ]
  %853 = icmp sgt i32 %851, 0
  br i1 %853, label %854, label %974

854:                                              ; preds = %849
  %855 = load i8, ptr %850, align 1, !tbaa !9
  %856 = zext i8 %855 to i64
  %857 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %856
  %858 = load i8, ptr %857, align 1, !tbaa !9
  %859 = zext i8 %858 to i32
  %860 = tail call i32 @llvm.smin.i32(i32 %851, i32 %859)
  %861 = add nsw i32 %860, %852
  br label %974

862:                                              ; preds = %732
  br i1 %749, label %880, label %863

863:                                              ; preds = %862
  %864 = load i8, ptr %746, align 1, !tbaa !9
  %865 = zext i8 %864 to i32
  %866 = shl nuw nsw i32 %865, %738
  %867 = and i32 %866, 254
  %868 = zext nneg i32 %867 to i64
  %869 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %868
  %870 = load i8, ptr %869, align 2, !tbaa !9
  %871 = zext i8 %870 to i32
  %872 = sub nuw nsw i32 8, %738
  %873 = tail call i32 @llvm.umin.i32(i32 %872, i32 %871)
  %874 = tail call i32 @llvm.smin.i32(i32 %873, i32 %743)
  %875 = add nuw nsw i32 %874, %738
  %876 = icmp slt i32 %875, 8
  br i1 %876, label %974, label %877

877:                                              ; preds = %863
  %878 = sub nsw i32 %743, %874
  %879 = getelementptr inbounds i8, ptr %746, i64 1
  br label %880

880:                                              ; preds = %877, %862
  %881 = phi ptr [ %879, %877 ], [ %746, %862 ]
  %882 = phi i32 [ %878, %877 ], [ %743, %862 ]
  %883 = phi i32 [ %874, %877 ], [ 0, %862 ]
  %884 = icmp ugt i32 %882, 127
  br i1 %884, label %885, label %939

885:                                              ; preds = %880
  %886 = ptrtoint ptr %881 to i64
  %887 = and i64 %886, 7
  %888 = icmp eq i64 %887, 0
  br i1 %888, label %892, label %889

889:                                              ; preds = %885
  %890 = load i8, ptr %881, align 1, !tbaa !9
  %891 = icmp eq i8 %890, 0
  br i1 %891, label %912, label %901

892:                                              ; preds = %912, %885
  %893 = phi ptr [ %881, %885 ], [ %918, %912 ]
  %894 = phi i32 [ %882, %885 ], [ %917, %912 ]
  %895 = phi i32 [ %883, %885 ], [ %916, %912 ]
  %896 = phi i1 [ %888, %885 ], [ %921, %912 ]
  %897 = icmp ugt i32 %894, 63
  br i1 %897, label %922, label %933

898:                                              ; preds = %912
  %899 = load i8, ptr %918, align 1, !tbaa !9
  %900 = icmp eq i8 %899, 0
  br i1 %900, label %912, label %901, !llvm.loop !151

901:                                              ; preds = %898, %889
  %902 = phi i1 [ %888, %889 ], [ %921, %898 ]
  %903 = phi i32 [ %883, %889 ], [ %916, %898 ]
  %904 = phi i32 [ %882, %889 ], [ %917, %898 ]
  %905 = phi ptr [ %881, %889 ], [ %918, %898 ]
  %906 = phi i8 [ %890, %889 ], [ %899, %898 ]
  %907 = zext i8 %906 to i64
  %908 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %907
  %909 = load i8, ptr %908, align 1, !tbaa !9
  %910 = zext i8 %909 to i32
  %911 = add nsw i32 %903, %910
  br label %933

912:                                              ; preds = %889, %898
  %913 = phi ptr [ %918, %898 ], [ %881, %889 ]
  %914 = phi i32 [ %917, %898 ], [ %882, %889 ]
  %915 = phi i32 [ %916, %898 ], [ %883, %889 ]
  %916 = add nsw i32 %915, 8
  %917 = add nsw i32 %914, -8
  %918 = getelementptr inbounds i8, ptr %913, i64 1
  %919 = ptrtoint ptr %918 to i64
  %920 = and i64 %919, 7
  %921 = icmp eq i64 %920, 0
  br i1 %921, label %892, label %898, !llvm.loop !151

922:                                              ; preds = %892, %928
  %923 = phi ptr [ %931, %928 ], [ %893, %892 ]
  %924 = phi i32 [ %929, %928 ], [ %895, %892 ]
  %925 = phi i32 [ %930, %928 ], [ %894, %892 ]
  %926 = load i64, ptr %923, align 8, !tbaa !10
  %927 = icmp eq i64 %926, 0
  br i1 %927, label %928, label %933

928:                                              ; preds = %922
  %929 = add i32 %924, 64
  %930 = add i32 %925, -64
  %931 = getelementptr inbounds i64, ptr %923, i64 1
  %932 = icmp ugt i32 %930, 63
  br i1 %932, label %922, label %933, !llvm.loop !152

933:                                              ; preds = %928, %922, %901, %892
  %934 = phi i1 [ %902, %901 ], [ %896, %892 ], [ %896, %922 ], [ %896, %928 ]
  %935 = phi ptr [ %905, %901 ], [ %893, %892 ], [ %931, %928 ], [ %923, %922 ]
  %936 = phi i32 [ %911, %901 ], [ undef, %892 ], [ undef, %922 ], [ undef, %928 ]
  %937 = phi i32 [ %904, %901 ], [ %894, %892 ], [ %930, %928 ], [ %925, %922 ]
  %938 = phi i32 [ %903, %901 ], [ %895, %892 ], [ %929, %928 ], [ %924, %922 ]
  br i1 %934, label %939, label %974

939:                                              ; preds = %933, %880
  %940 = phi ptr [ %935, %933 ], [ %881, %880 ]
  %941 = phi i32 [ %937, %933 ], [ %882, %880 ]
  %942 = phi i32 [ %938, %933 ], [ %883, %880 ]
  %943 = icmp sgt i32 %941, 7
  br i1 %943, label %944, label %961

944:                                              ; preds = %939, %956
  %945 = phi i32 [ %957, %956 ], [ %942, %939 ]
  %946 = phi i32 [ %958, %956 ], [ %941, %939 ]
  %947 = phi ptr [ %959, %956 ], [ %940, %939 ]
  %948 = load i8, ptr %947, align 1, !tbaa !9
  %949 = icmp eq i8 %948, 0
  br i1 %949, label %956, label %950

950:                                              ; preds = %944
  %951 = zext i8 %948 to i64
  %952 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %951
  %953 = load i8, ptr %952, align 1, !tbaa !9
  %954 = zext i8 %953 to i32
  %955 = add nsw i32 %945, %954
  br label %974

956:                                              ; preds = %944
  %957 = add nsw i32 %945, 8
  %958 = add nsw i32 %946, -8
  %959 = getelementptr inbounds i8, ptr %947, i64 1
  %960 = icmp sgt i32 %946, 15
  br i1 %960, label %944, label %961, !llvm.loop !153

961:                                              ; preds = %956, %939
  %962 = phi ptr [ %940, %939 ], [ %959, %956 ]
  %963 = phi i32 [ %941, %939 ], [ %958, %956 ]
  %964 = phi i32 [ %942, %939 ], [ %957, %956 ]
  %965 = icmp sgt i32 %963, 0
  br i1 %965, label %966, label %974

966:                                              ; preds = %961
  %967 = load i8, ptr %962, align 1, !tbaa !9
  %968 = zext i8 %967 to i64
  %969 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %968
  %970 = load i8, ptr %969, align 1, !tbaa !9
  %971 = zext i8 %970 to i32
  %972 = tail call i32 @llvm.smin.i32(i32 %963, i32 %971)
  %973 = add nsw i32 %972, %964
  br label %974

974:                                              ; preds = %966, %961, %950, %933, %863, %854, %849, %838, %821, %751
  %975 = phi i32 [ %843, %838 ], [ %824, %821 ], [ %762, %751 ], [ %861, %854 ], [ %852, %849 ], [ %955, %950 ], [ %936, %933 ], [ %874, %863 ], [ %973, %966 ], [ %964, %961 ]
  %976 = add i32 %975, %730
  %977 = sub nsw i32 %3, %730
  %978 = ashr i32 %730, 3
  %979 = sext i32 %978 to i64
  %980 = getelementptr inbounds i8, ptr %2, i64 %979
  %981 = icmp slt i32 %977, 1
  %982 = icmp eq i32 %738, 0
  %983 = or i1 %981, %982
  br i1 %742, label %984, label %1096

984:                                              ; preds = %974
  br i1 %983, label %1002, label %985

985:                                              ; preds = %984
  %986 = load i8, ptr %980, align 1, !tbaa !9
  %987 = zext i8 %986 to i32
  %988 = shl nuw nsw i32 %987, %738
  %989 = and i32 %988, 254
  %990 = zext nneg i32 %989 to i64
  %991 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %990
  %992 = load i8, ptr %991, align 2, !tbaa !9
  %993 = zext i8 %992 to i32
  %994 = sub nuw nsw i32 8, %738
  %995 = tail call i32 @llvm.umin.i32(i32 %994, i32 %993)
  %996 = tail call i32 @llvm.smin.i32(i32 %995, i32 %977)
  %997 = add nuw nsw i32 %996, %738
  %998 = icmp slt i32 %997, 8
  br i1 %998, label %1208, label %999

999:                                              ; preds = %985
  %1000 = sub nsw i32 %977, %996
  %1001 = getelementptr inbounds i8, ptr %980, i64 1
  br label %1002

1002:                                             ; preds = %999, %984
  %1003 = phi ptr [ %1001, %999 ], [ %980, %984 ]
  %1004 = phi i32 [ %1000, %999 ], [ %977, %984 ]
  %1005 = phi i32 [ %996, %999 ], [ 0, %984 ]
  %1006 = icmp ugt i32 %1004, 127
  br i1 %1006, label %1007, label %1061

1007:                                             ; preds = %1002
  %1008 = ptrtoint ptr %1003 to i64
  %1009 = and i64 %1008, 7
  %1010 = icmp eq i64 %1009, 0
  br i1 %1010, label %1014, label %1011

1011:                                             ; preds = %1007
  %1012 = load i8, ptr %1003, align 1, !tbaa !9
  %1013 = icmp eq i8 %1012, -1
  br i1 %1013, label %1034, label %1023

1014:                                             ; preds = %1034, %1007
  %1015 = phi ptr [ %1003, %1007 ], [ %1040, %1034 ]
  %1016 = phi i32 [ %1004, %1007 ], [ %1039, %1034 ]
  %1017 = phi i32 [ %1005, %1007 ], [ %1038, %1034 ]
  %1018 = phi i1 [ %1010, %1007 ], [ %1043, %1034 ]
  %1019 = icmp ugt i32 %1016, 63
  br i1 %1019, label %1044, label %1055

1020:                                             ; preds = %1034
  %1021 = load i8, ptr %1040, align 1, !tbaa !9
  %1022 = icmp eq i8 %1021, -1
  br i1 %1022, label %1034, label %1023, !llvm.loop !154

1023:                                             ; preds = %1020, %1011
  %1024 = phi i1 [ %1010, %1011 ], [ %1043, %1020 ]
  %1025 = phi i32 [ %1005, %1011 ], [ %1038, %1020 ]
  %1026 = phi i32 [ %1004, %1011 ], [ %1039, %1020 ]
  %1027 = phi ptr [ %1003, %1011 ], [ %1040, %1020 ]
  %1028 = phi i8 [ %1012, %1011 ], [ %1021, %1020 ]
  %1029 = zext i8 %1028 to i64
  %1030 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %1029
  %1031 = load i8, ptr %1030, align 1, !tbaa !9
  %1032 = zext i8 %1031 to i32
  %1033 = add nsw i32 %1025, %1032
  br label %1055

1034:                                             ; preds = %1011, %1020
  %1035 = phi ptr [ %1040, %1020 ], [ %1003, %1011 ]
  %1036 = phi i32 [ %1039, %1020 ], [ %1004, %1011 ]
  %1037 = phi i32 [ %1038, %1020 ], [ %1005, %1011 ]
  %1038 = add nsw i32 %1037, 8
  %1039 = add nsw i32 %1036, -8
  %1040 = getelementptr inbounds i8, ptr %1035, i64 1
  %1041 = ptrtoint ptr %1040 to i64
  %1042 = and i64 %1041, 7
  %1043 = icmp eq i64 %1042, 0
  br i1 %1043, label %1014, label %1020, !llvm.loop !154

1044:                                             ; preds = %1014, %1050
  %1045 = phi ptr [ %1053, %1050 ], [ %1015, %1014 ]
  %1046 = phi i32 [ %1051, %1050 ], [ %1017, %1014 ]
  %1047 = phi i32 [ %1052, %1050 ], [ %1016, %1014 ]
  %1048 = load i64, ptr %1045, align 8, !tbaa !10
  %1049 = icmp eq i64 %1048, -1
  br i1 %1049, label %1050, label %1055

1050:                                             ; preds = %1044
  %1051 = add i32 %1046, 64
  %1052 = add i32 %1047, -64
  %1053 = getelementptr inbounds i64, ptr %1045, i64 1
  %1054 = icmp ugt i32 %1052, 63
  br i1 %1054, label %1044, label %1055, !llvm.loop !155

1055:                                             ; preds = %1050, %1044, %1023, %1014
  %1056 = phi i1 [ %1024, %1023 ], [ %1018, %1014 ], [ %1018, %1044 ], [ %1018, %1050 ]
  %1057 = phi ptr [ %1027, %1023 ], [ %1015, %1014 ], [ %1053, %1050 ], [ %1045, %1044 ]
  %1058 = phi i32 [ %1033, %1023 ], [ undef, %1014 ], [ undef, %1044 ], [ undef, %1050 ]
  %1059 = phi i32 [ %1026, %1023 ], [ %1016, %1014 ], [ %1052, %1050 ], [ %1047, %1044 ]
  %1060 = phi i32 [ %1025, %1023 ], [ %1017, %1014 ], [ %1051, %1050 ], [ %1046, %1044 ]
  br i1 %1056, label %1061, label %1208

1061:                                             ; preds = %1055, %1002
  %1062 = phi ptr [ %1057, %1055 ], [ %1003, %1002 ]
  %1063 = phi i32 [ %1059, %1055 ], [ %1004, %1002 ]
  %1064 = phi i32 [ %1060, %1055 ], [ %1005, %1002 ]
  %1065 = icmp sgt i32 %1063, 7
  br i1 %1065, label %1066, label %1083

1066:                                             ; preds = %1061, %1078
  %1067 = phi i32 [ %1079, %1078 ], [ %1064, %1061 ]
  %1068 = phi i32 [ %1080, %1078 ], [ %1063, %1061 ]
  %1069 = phi ptr [ %1081, %1078 ], [ %1062, %1061 ]
  %1070 = load i8, ptr %1069, align 1, !tbaa !9
  %1071 = icmp eq i8 %1070, -1
  br i1 %1071, label %1078, label %1072

1072:                                             ; preds = %1066
  %1073 = zext i8 %1070 to i64
  %1074 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %1073
  %1075 = load i8, ptr %1074, align 1, !tbaa !9
  %1076 = zext i8 %1075 to i32
  %1077 = add nsw i32 %1067, %1076
  br label %1208

1078:                                             ; preds = %1066
  %1079 = add nsw i32 %1067, 8
  %1080 = add nsw i32 %1068, -8
  %1081 = getelementptr inbounds i8, ptr %1069, i64 1
  %1082 = icmp sgt i32 %1068, 15
  br i1 %1082, label %1066, label %1083, !llvm.loop !156

1083:                                             ; preds = %1078, %1061
  %1084 = phi ptr [ %1062, %1061 ], [ %1081, %1078 ]
  %1085 = phi i32 [ %1063, %1061 ], [ %1080, %1078 ]
  %1086 = phi i32 [ %1064, %1061 ], [ %1079, %1078 ]
  %1087 = icmp sgt i32 %1085, 0
  br i1 %1087, label %1088, label %1208

1088:                                             ; preds = %1083
  %1089 = load i8, ptr %1084, align 1, !tbaa !9
  %1090 = zext i8 %1089 to i64
  %1091 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %1090
  %1092 = load i8, ptr %1091, align 1, !tbaa !9
  %1093 = zext i8 %1092 to i32
  %1094 = tail call i32 @llvm.smin.i32(i32 %1085, i32 %1093)
  %1095 = add nsw i32 %1094, %1086
  br label %1208

1096:                                             ; preds = %974
  br i1 %983, label %1114, label %1097

1097:                                             ; preds = %1096
  %1098 = load i8, ptr %980, align 1, !tbaa !9
  %1099 = zext i8 %1098 to i32
  %1100 = shl nuw nsw i32 %1099, %738
  %1101 = and i32 %1100, 254
  %1102 = zext nneg i32 %1101 to i64
  %1103 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %1102
  %1104 = load i8, ptr %1103, align 2, !tbaa !9
  %1105 = zext i8 %1104 to i32
  %1106 = sub nuw nsw i32 8, %738
  %1107 = tail call i32 @llvm.umin.i32(i32 %1106, i32 %1105)
  %1108 = tail call i32 @llvm.smin.i32(i32 %1107, i32 %977)
  %1109 = add nuw nsw i32 %1108, %738
  %1110 = icmp slt i32 %1109, 8
  br i1 %1110, label %1208, label %1111

1111:                                             ; preds = %1097
  %1112 = sub nsw i32 %977, %1108
  %1113 = getelementptr inbounds i8, ptr %980, i64 1
  br label %1114

1114:                                             ; preds = %1111, %1096
  %1115 = phi ptr [ %1113, %1111 ], [ %980, %1096 ]
  %1116 = phi i32 [ %1112, %1111 ], [ %977, %1096 ]
  %1117 = phi i32 [ %1108, %1111 ], [ 0, %1096 ]
  %1118 = icmp ugt i32 %1116, 127
  br i1 %1118, label %1119, label %1173

1119:                                             ; preds = %1114
  %1120 = ptrtoint ptr %1115 to i64
  %1121 = and i64 %1120, 7
  %1122 = icmp eq i64 %1121, 0
  br i1 %1122, label %1126, label %1123

1123:                                             ; preds = %1119
  %1124 = load i8, ptr %1115, align 1, !tbaa !9
  %1125 = icmp eq i8 %1124, 0
  br i1 %1125, label %1146, label %1135

1126:                                             ; preds = %1146, %1119
  %1127 = phi ptr [ %1115, %1119 ], [ %1152, %1146 ]
  %1128 = phi i32 [ %1116, %1119 ], [ %1151, %1146 ]
  %1129 = phi i32 [ %1117, %1119 ], [ %1150, %1146 ]
  %1130 = phi i1 [ %1122, %1119 ], [ %1155, %1146 ]
  %1131 = icmp ugt i32 %1128, 63
  br i1 %1131, label %1156, label %1167

1132:                                             ; preds = %1146
  %1133 = load i8, ptr %1152, align 1, !tbaa !9
  %1134 = icmp eq i8 %1133, 0
  br i1 %1134, label %1146, label %1135, !llvm.loop !151

1135:                                             ; preds = %1132, %1123
  %1136 = phi i1 [ %1122, %1123 ], [ %1155, %1132 ]
  %1137 = phi i32 [ %1117, %1123 ], [ %1150, %1132 ]
  %1138 = phi i32 [ %1116, %1123 ], [ %1151, %1132 ]
  %1139 = phi ptr [ %1115, %1123 ], [ %1152, %1132 ]
  %1140 = phi i8 [ %1124, %1123 ], [ %1133, %1132 ]
  %1141 = zext i8 %1140 to i64
  %1142 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %1141
  %1143 = load i8, ptr %1142, align 1, !tbaa !9
  %1144 = zext i8 %1143 to i32
  %1145 = add nsw i32 %1137, %1144
  br label %1167

1146:                                             ; preds = %1123, %1132
  %1147 = phi ptr [ %1152, %1132 ], [ %1115, %1123 ]
  %1148 = phi i32 [ %1151, %1132 ], [ %1116, %1123 ]
  %1149 = phi i32 [ %1150, %1132 ], [ %1117, %1123 ]
  %1150 = add nsw i32 %1149, 8
  %1151 = add nsw i32 %1148, -8
  %1152 = getelementptr inbounds i8, ptr %1147, i64 1
  %1153 = ptrtoint ptr %1152 to i64
  %1154 = and i64 %1153, 7
  %1155 = icmp eq i64 %1154, 0
  br i1 %1155, label %1126, label %1132, !llvm.loop !151

1156:                                             ; preds = %1126, %1162
  %1157 = phi ptr [ %1165, %1162 ], [ %1127, %1126 ]
  %1158 = phi i32 [ %1163, %1162 ], [ %1129, %1126 ]
  %1159 = phi i32 [ %1164, %1162 ], [ %1128, %1126 ]
  %1160 = load i64, ptr %1157, align 8, !tbaa !10
  %1161 = icmp eq i64 %1160, 0
  br i1 %1161, label %1162, label %1167

1162:                                             ; preds = %1156
  %1163 = add i32 %1158, 64
  %1164 = add i32 %1159, -64
  %1165 = getelementptr inbounds i64, ptr %1157, i64 1
  %1166 = icmp ugt i32 %1164, 63
  br i1 %1166, label %1156, label %1167, !llvm.loop !152

1167:                                             ; preds = %1162, %1156, %1135, %1126
  %1168 = phi i1 [ %1136, %1135 ], [ %1130, %1126 ], [ %1130, %1156 ], [ %1130, %1162 ]
  %1169 = phi ptr [ %1139, %1135 ], [ %1127, %1126 ], [ %1165, %1162 ], [ %1157, %1156 ]
  %1170 = phi i32 [ %1145, %1135 ], [ undef, %1126 ], [ undef, %1156 ], [ undef, %1162 ]
  %1171 = phi i32 [ %1138, %1135 ], [ %1128, %1126 ], [ %1164, %1162 ], [ %1159, %1156 ]
  %1172 = phi i32 [ %1137, %1135 ], [ %1129, %1126 ], [ %1163, %1162 ], [ %1158, %1156 ]
  br i1 %1168, label %1173, label %1208

1173:                                             ; preds = %1167, %1114
  %1174 = phi ptr [ %1169, %1167 ], [ %1115, %1114 ]
  %1175 = phi i32 [ %1171, %1167 ], [ %1116, %1114 ]
  %1176 = phi i32 [ %1172, %1167 ], [ %1117, %1114 ]
  %1177 = icmp sgt i32 %1175, 7
  br i1 %1177, label %1178, label %1195

1178:                                             ; preds = %1173, %1190
  %1179 = phi i32 [ %1191, %1190 ], [ %1176, %1173 ]
  %1180 = phi i32 [ %1192, %1190 ], [ %1175, %1173 ]
  %1181 = phi ptr [ %1193, %1190 ], [ %1174, %1173 ]
  %1182 = load i8, ptr %1181, align 1, !tbaa !9
  %1183 = icmp eq i8 %1182, 0
  br i1 %1183, label %1190, label %1184

1184:                                             ; preds = %1178
  %1185 = zext i8 %1182 to i64
  %1186 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %1185
  %1187 = load i8, ptr %1186, align 1, !tbaa !9
  %1188 = zext i8 %1187 to i32
  %1189 = add nsw i32 %1179, %1188
  br label %1208

1190:                                             ; preds = %1178
  %1191 = add nsw i32 %1179, 8
  %1192 = add nsw i32 %1180, -8
  %1193 = getelementptr inbounds i8, ptr %1181, i64 1
  %1194 = icmp sgt i32 %1180, 15
  br i1 %1194, label %1178, label %1195, !llvm.loop !153

1195:                                             ; preds = %1190, %1173
  %1196 = phi ptr [ %1174, %1173 ], [ %1193, %1190 ]
  %1197 = phi i32 [ %1175, %1173 ], [ %1192, %1190 ]
  %1198 = phi i32 [ %1176, %1173 ], [ %1191, %1190 ]
  %1199 = icmp sgt i32 %1197, 0
  br i1 %1199, label %1200, label %1208

1200:                                             ; preds = %1195
  %1201 = load i8, ptr %1196, align 1, !tbaa !9
  %1202 = zext i8 %1201 to i64
  %1203 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %1202
  %1204 = load i8, ptr %1203, align 1, !tbaa !9
  %1205 = zext i8 %1204 to i32
  %1206 = tail call i32 @llvm.smin.i32(i32 %1197, i32 %1205)
  %1207 = add nsw i32 %1206, %1198
  br label %1208

1208:                                             ; preds = %1200, %1195, %1184, %1167, %1097, %1088, %1083, %1072, %1055, %985
  %1209 = phi i32 [ %1077, %1072 ], [ %1058, %1055 ], [ %996, %985 ], [ %1095, %1088 ], [ %1086, %1083 ], [ %1189, %1184 ], [ %1170, %1167 ], [ %1108, %1097 ], [ %1207, %1200 ], [ %1198, %1195 ]
  %1210 = add i32 %1209, %730
  %1211 = sub nsw i32 %3, %1210
  %1212 = ashr i32 %1210, 3
  %1213 = sext i32 %1212 to i64
  %1214 = getelementptr inbounds i8, ptr %2, i64 %1213
  %1215 = icmp sgt i32 %1211, 0
  br i1 %742, label %1331, label %1216

1216:                                             ; preds = %1208
  br i1 %1215, label %1217, label %1237

1217:                                             ; preds = %1216
  %1218 = and i32 %1210, 7
  %1219 = icmp eq i32 %1218, 0
  br i1 %1219, label %1237, label %1220

1220:                                             ; preds = %1217
  %1221 = load i8, ptr %1214, align 1, !tbaa !9
  %1222 = zext i8 %1221 to i32
  %1223 = shl nuw nsw i32 %1222, %1218
  %1224 = and i32 %1223, 254
  %1225 = zext nneg i32 %1224 to i64
  %1226 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %1225
  %1227 = load i8, ptr %1226, align 2, !tbaa !9
  %1228 = zext i8 %1227 to i32
  %1229 = sub nuw nsw i32 8, %1218
  %1230 = tail call i32 @llvm.umin.i32(i32 %1229, i32 %1228)
  %1231 = tail call i32 @llvm.smin.i32(i32 %1230, i32 %1211)
  %1232 = add nuw nsw i32 %1231, %1218
  %1233 = icmp slt i32 %1232, 8
  br i1 %1233, label %1446, label %1234

1234:                                             ; preds = %1220
  %1235 = sub nsw i32 %1211, %1231
  %1236 = getelementptr inbounds i8, ptr %1214, i64 1
  br label %1237

1237:                                             ; preds = %1234, %1217, %1216
  %1238 = phi ptr [ %1236, %1234 ], [ %1214, %1217 ], [ %1214, %1216 ]
  %1239 = phi i32 [ %1235, %1234 ], [ %1211, %1217 ], [ %1211, %1216 ]
  %1240 = phi i32 [ %1231, %1234 ], [ 0, %1217 ], [ 0, %1216 ]
  %1241 = icmp ugt i32 %1239, 127
  br i1 %1241, label %1242, label %1296

1242:                                             ; preds = %1237
  %1243 = ptrtoint ptr %1238 to i64
  %1244 = and i64 %1243, 7
  %1245 = icmp eq i64 %1244, 0
  br i1 %1245, label %1249, label %1246

1246:                                             ; preds = %1242
  %1247 = load i8, ptr %1238, align 1, !tbaa !9
  %1248 = icmp eq i8 %1247, -1
  br i1 %1248, label %1269, label %1258

1249:                                             ; preds = %1269, %1242
  %1250 = phi ptr [ %1238, %1242 ], [ %1275, %1269 ]
  %1251 = phi i32 [ %1239, %1242 ], [ %1274, %1269 ]
  %1252 = phi i32 [ %1240, %1242 ], [ %1273, %1269 ]
  %1253 = phi i1 [ %1245, %1242 ], [ %1278, %1269 ]
  %1254 = icmp ugt i32 %1251, 63
  br i1 %1254, label %1279, label %1290

1255:                                             ; preds = %1269
  %1256 = load i8, ptr %1275, align 1, !tbaa !9
  %1257 = icmp eq i8 %1256, -1
  br i1 %1257, label %1269, label %1258, !llvm.loop !154

1258:                                             ; preds = %1255, %1246
  %1259 = phi i1 [ %1245, %1246 ], [ %1278, %1255 ]
  %1260 = phi i32 [ %1240, %1246 ], [ %1273, %1255 ]
  %1261 = phi i32 [ %1239, %1246 ], [ %1274, %1255 ]
  %1262 = phi ptr [ %1238, %1246 ], [ %1275, %1255 ]
  %1263 = phi i8 [ %1247, %1246 ], [ %1256, %1255 ]
  %1264 = zext i8 %1263 to i64
  %1265 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %1264
  %1266 = load i8, ptr %1265, align 1, !tbaa !9
  %1267 = zext i8 %1266 to i32
  %1268 = add nsw i32 %1260, %1267
  br label %1290

1269:                                             ; preds = %1246, %1255
  %1270 = phi ptr [ %1275, %1255 ], [ %1238, %1246 ]
  %1271 = phi i32 [ %1274, %1255 ], [ %1239, %1246 ]
  %1272 = phi i32 [ %1273, %1255 ], [ %1240, %1246 ]
  %1273 = add nsw i32 %1272, 8
  %1274 = add nsw i32 %1271, -8
  %1275 = getelementptr inbounds i8, ptr %1270, i64 1
  %1276 = ptrtoint ptr %1275 to i64
  %1277 = and i64 %1276, 7
  %1278 = icmp eq i64 %1277, 0
  br i1 %1278, label %1249, label %1255, !llvm.loop !154

1279:                                             ; preds = %1249, %1285
  %1280 = phi ptr [ %1288, %1285 ], [ %1250, %1249 ]
  %1281 = phi i32 [ %1286, %1285 ], [ %1252, %1249 ]
  %1282 = phi i32 [ %1287, %1285 ], [ %1251, %1249 ]
  %1283 = load i64, ptr %1280, align 8, !tbaa !10
  %1284 = icmp eq i64 %1283, -1
  br i1 %1284, label %1285, label %1290

1285:                                             ; preds = %1279
  %1286 = add i32 %1281, 64
  %1287 = add i32 %1282, -64
  %1288 = getelementptr inbounds i64, ptr %1280, i64 1
  %1289 = icmp ugt i32 %1287, 63
  br i1 %1289, label %1279, label %1290, !llvm.loop !155

1290:                                             ; preds = %1285, %1279, %1258, %1249
  %1291 = phi i1 [ %1259, %1258 ], [ %1253, %1249 ], [ %1253, %1279 ], [ %1253, %1285 ]
  %1292 = phi ptr [ %1262, %1258 ], [ %1250, %1249 ], [ %1288, %1285 ], [ %1280, %1279 ]
  %1293 = phi i32 [ %1268, %1258 ], [ undef, %1249 ], [ undef, %1279 ], [ undef, %1285 ]
  %1294 = phi i32 [ %1261, %1258 ], [ %1251, %1249 ], [ %1287, %1285 ], [ %1282, %1279 ]
  %1295 = phi i32 [ %1260, %1258 ], [ %1252, %1249 ], [ %1286, %1285 ], [ %1281, %1279 ]
  br i1 %1291, label %1296, label %1446

1296:                                             ; preds = %1290, %1237
  %1297 = phi ptr [ %1292, %1290 ], [ %1238, %1237 ]
  %1298 = phi i32 [ %1294, %1290 ], [ %1239, %1237 ]
  %1299 = phi i32 [ %1295, %1290 ], [ %1240, %1237 ]
  %1300 = icmp sgt i32 %1298, 7
  br i1 %1300, label %1301, label %1318

1301:                                             ; preds = %1296, %1313
  %1302 = phi i32 [ %1314, %1313 ], [ %1299, %1296 ]
  %1303 = phi i32 [ %1315, %1313 ], [ %1298, %1296 ]
  %1304 = phi ptr [ %1316, %1313 ], [ %1297, %1296 ]
  %1305 = load i8, ptr %1304, align 1, !tbaa !9
  %1306 = icmp eq i8 %1305, -1
  br i1 %1306, label %1313, label %1307

1307:                                             ; preds = %1301
  %1308 = zext i8 %1305 to i64
  %1309 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %1308
  %1310 = load i8, ptr %1309, align 1, !tbaa !9
  %1311 = zext i8 %1310 to i32
  %1312 = add nsw i32 %1302, %1311
  br label %1446

1313:                                             ; preds = %1301
  %1314 = add nsw i32 %1302, 8
  %1315 = add nsw i32 %1303, -8
  %1316 = getelementptr inbounds i8, ptr %1304, i64 1
  %1317 = icmp sgt i32 %1303, 15
  br i1 %1317, label %1301, label %1318, !llvm.loop !156

1318:                                             ; preds = %1313, %1296
  %1319 = phi ptr [ %1297, %1296 ], [ %1316, %1313 ]
  %1320 = phi i32 [ %1298, %1296 ], [ %1315, %1313 ]
  %1321 = phi i32 [ %1299, %1296 ], [ %1314, %1313 ]
  %1322 = icmp sgt i32 %1320, 0
  br i1 %1322, label %1323, label %1446

1323:                                             ; preds = %1318
  %1324 = load i8, ptr %1319, align 1, !tbaa !9
  %1325 = zext i8 %1324 to i64
  %1326 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %1325
  %1327 = load i8, ptr %1326, align 1, !tbaa !9
  %1328 = zext i8 %1327 to i32
  %1329 = tail call i32 @llvm.smin.i32(i32 %1320, i32 %1328)
  %1330 = add nsw i32 %1329, %1321
  br label %1446

1331:                                             ; preds = %1208
  br i1 %1215, label %1332, label %1352

1332:                                             ; preds = %1331
  %1333 = and i32 %1210, 7
  %1334 = icmp eq i32 %1333, 0
  br i1 %1334, label %1352, label %1335

1335:                                             ; preds = %1332
  %1336 = load i8, ptr %1214, align 1, !tbaa !9
  %1337 = zext i8 %1336 to i32
  %1338 = shl nuw nsw i32 %1337, %1333
  %1339 = and i32 %1338, 254
  %1340 = zext nneg i32 %1339 to i64
  %1341 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %1340
  %1342 = load i8, ptr %1341, align 2, !tbaa !9
  %1343 = zext i8 %1342 to i32
  %1344 = sub nuw nsw i32 8, %1333
  %1345 = tail call i32 @llvm.umin.i32(i32 %1344, i32 %1343)
  %1346 = tail call i32 @llvm.smin.i32(i32 %1345, i32 %1211)
  %1347 = add nuw nsw i32 %1346, %1333
  %1348 = icmp slt i32 %1347, 8
  br i1 %1348, label %1446, label %1349

1349:                                             ; preds = %1335
  %1350 = sub nsw i32 %1211, %1346
  %1351 = getelementptr inbounds i8, ptr %1214, i64 1
  br label %1352

1352:                                             ; preds = %1349, %1332, %1331
  %1353 = phi ptr [ %1351, %1349 ], [ %1214, %1332 ], [ %1214, %1331 ]
  %1354 = phi i32 [ %1350, %1349 ], [ %1211, %1332 ], [ %1211, %1331 ]
  %1355 = phi i32 [ %1346, %1349 ], [ 0, %1332 ], [ 0, %1331 ]
  %1356 = icmp ugt i32 %1354, 127
  br i1 %1356, label %1357, label %1411

1357:                                             ; preds = %1352
  %1358 = ptrtoint ptr %1353 to i64
  %1359 = and i64 %1358, 7
  %1360 = icmp eq i64 %1359, 0
  br i1 %1360, label %1364, label %1361

1361:                                             ; preds = %1357
  %1362 = load i8, ptr %1353, align 1, !tbaa !9
  %1363 = icmp eq i8 %1362, 0
  br i1 %1363, label %1384, label %1373

1364:                                             ; preds = %1384, %1357
  %1365 = phi ptr [ %1353, %1357 ], [ %1390, %1384 ]
  %1366 = phi i32 [ %1354, %1357 ], [ %1389, %1384 ]
  %1367 = phi i32 [ %1355, %1357 ], [ %1388, %1384 ]
  %1368 = phi i1 [ %1360, %1357 ], [ %1393, %1384 ]
  %1369 = icmp ugt i32 %1366, 63
  br i1 %1369, label %1394, label %1405

1370:                                             ; preds = %1384
  %1371 = load i8, ptr %1390, align 1, !tbaa !9
  %1372 = icmp eq i8 %1371, 0
  br i1 %1372, label %1384, label %1373, !llvm.loop !151

1373:                                             ; preds = %1370, %1361
  %1374 = phi i1 [ %1360, %1361 ], [ %1393, %1370 ]
  %1375 = phi i32 [ %1355, %1361 ], [ %1388, %1370 ]
  %1376 = phi i32 [ %1354, %1361 ], [ %1389, %1370 ]
  %1377 = phi ptr [ %1353, %1361 ], [ %1390, %1370 ]
  %1378 = phi i8 [ %1362, %1361 ], [ %1371, %1370 ]
  %1379 = zext i8 %1378 to i64
  %1380 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %1379
  %1381 = load i8, ptr %1380, align 1, !tbaa !9
  %1382 = zext i8 %1381 to i32
  %1383 = add nsw i32 %1375, %1382
  br label %1405

1384:                                             ; preds = %1361, %1370
  %1385 = phi ptr [ %1390, %1370 ], [ %1353, %1361 ]
  %1386 = phi i32 [ %1389, %1370 ], [ %1354, %1361 ]
  %1387 = phi i32 [ %1388, %1370 ], [ %1355, %1361 ]
  %1388 = add nsw i32 %1387, 8
  %1389 = add nsw i32 %1386, -8
  %1390 = getelementptr inbounds i8, ptr %1385, i64 1
  %1391 = ptrtoint ptr %1390 to i64
  %1392 = and i64 %1391, 7
  %1393 = icmp eq i64 %1392, 0
  br i1 %1393, label %1364, label %1370, !llvm.loop !151

1394:                                             ; preds = %1364, %1400
  %1395 = phi ptr [ %1403, %1400 ], [ %1365, %1364 ]
  %1396 = phi i32 [ %1401, %1400 ], [ %1367, %1364 ]
  %1397 = phi i32 [ %1402, %1400 ], [ %1366, %1364 ]
  %1398 = load i64, ptr %1395, align 8, !tbaa !10
  %1399 = icmp eq i64 %1398, 0
  br i1 %1399, label %1400, label %1405

1400:                                             ; preds = %1394
  %1401 = add i32 %1396, 64
  %1402 = add i32 %1397, -64
  %1403 = getelementptr inbounds i64, ptr %1395, i64 1
  %1404 = icmp ugt i32 %1402, 63
  br i1 %1404, label %1394, label %1405, !llvm.loop !152

1405:                                             ; preds = %1400, %1394, %1373, %1364
  %1406 = phi i1 [ %1374, %1373 ], [ %1368, %1364 ], [ %1368, %1394 ], [ %1368, %1400 ]
  %1407 = phi ptr [ %1377, %1373 ], [ %1365, %1364 ], [ %1403, %1400 ], [ %1395, %1394 ]
  %1408 = phi i32 [ %1383, %1373 ], [ undef, %1364 ], [ undef, %1394 ], [ undef, %1400 ]
  %1409 = phi i32 [ %1376, %1373 ], [ %1366, %1364 ], [ %1402, %1400 ], [ %1397, %1394 ]
  %1410 = phi i32 [ %1375, %1373 ], [ %1367, %1364 ], [ %1401, %1400 ], [ %1396, %1394 ]
  br i1 %1406, label %1411, label %1446

1411:                                             ; preds = %1405, %1352
  %1412 = phi ptr [ %1407, %1405 ], [ %1353, %1352 ]
  %1413 = phi i32 [ %1409, %1405 ], [ %1354, %1352 ]
  %1414 = phi i32 [ %1410, %1405 ], [ %1355, %1352 ]
  %1415 = icmp sgt i32 %1413, 7
  br i1 %1415, label %1416, label %1433

1416:                                             ; preds = %1411, %1428
  %1417 = phi i32 [ %1429, %1428 ], [ %1414, %1411 ]
  %1418 = phi i32 [ %1430, %1428 ], [ %1413, %1411 ]
  %1419 = phi ptr [ %1431, %1428 ], [ %1412, %1411 ]
  %1420 = load i8, ptr %1419, align 1, !tbaa !9
  %1421 = icmp eq i8 %1420, 0
  br i1 %1421, label %1428, label %1422

1422:                                             ; preds = %1416
  %1423 = zext i8 %1420 to i64
  %1424 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %1423
  %1425 = load i8, ptr %1424, align 1, !tbaa !9
  %1426 = zext i8 %1425 to i32
  %1427 = add nsw i32 %1417, %1426
  br label %1446

1428:                                             ; preds = %1416
  %1429 = add nsw i32 %1417, 8
  %1430 = add nsw i32 %1418, -8
  %1431 = getelementptr inbounds i8, ptr %1419, i64 1
  %1432 = icmp sgt i32 %1418, 15
  br i1 %1432, label %1416, label %1433, !llvm.loop !153

1433:                                             ; preds = %1428, %1411
  %1434 = phi ptr [ %1412, %1411 ], [ %1431, %1428 ]
  %1435 = phi i32 [ %1413, %1411 ], [ %1430, %1428 ]
  %1436 = phi i32 [ %1414, %1411 ], [ %1429, %1428 ]
  %1437 = icmp sgt i32 %1435, 0
  br i1 %1437, label %1438, label %1446

1438:                                             ; preds = %1433
  %1439 = load i8, ptr %1434, align 1, !tbaa !9
  %1440 = zext i8 %1439 to i64
  %1441 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %1440
  %1442 = load i8, ptr %1441, align 1, !tbaa !9
  %1443 = zext i8 %1442 to i32
  %1444 = tail call i32 @llvm.smin.i32(i32 %1435, i32 %1443)
  %1445 = add nsw i32 %1444, %1436
  br label %1446

1446:                                             ; preds = %1438, %1433, %1422, %1405, %1335, %1323, %1318, %1307, %1290, %1220
  %1447 = phi i32 [ %1312, %1307 ], [ %1293, %1290 ], [ %1231, %1220 ], [ %1330, %1323 ], [ %1321, %1318 ], [ %1427, %1422 ], [ %1408, %1405 ], [ %1346, %1335 ], [ %1445, %1438 ], [ %1436, %1433 ]
  %1448 = add i32 %1447, %1210
  br label %195, !llvm.loop !161

1449:                                             ; preds = %729
  ret void
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @putspan(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.Fax3EncodeState, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !81
  %8 = getelementptr inbounds %struct.Fax3EncodeState, ptr %5, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !83
  %10 = icmp sgt i32 %1, 2623
  br i1 %10, label %11, label %80

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tableentry, ptr %2, i64 103
  %13 = getelementptr inbounds %struct.tableentry, ptr %2, i64 103, i32 1
  %14 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %15 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  %16 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %17 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %18 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  %19 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %20 = getelementptr inbounds %struct.tableentry, ptr %2, i64 103, i32 2
  br label %21

21:                                               ; preds = %11, %73
  %22 = phi i32 [ %1, %11 ], [ %78, %73 ]
  %23 = phi i32 [ %7, %11 ], [ %75, %73 ]
  %24 = phi i32 [ %9, %11 ], [ %74, %73 ]
  %25 = load i16, ptr %13, align 2, !tbaa !158
  %26 = zext i16 %25 to i32
  %27 = load i16, ptr %12, align 2, !tbaa !160
  %28 = zext i16 %27 to i32
  %29 = icmp ult i32 %23, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %21, %42
  %31 = phi i32 [ 8, %42 ], [ %23, %21 ]
  %32 = phi i32 [ %34, %42 ], [ %28, %21 ]
  %33 = phi i32 [ 0, %42 ], [ %24, %21 ]
  %34 = sub i32 %32, %31
  %35 = lshr i32 %26, %34
  %36 = or i32 %35, %33
  %37 = load i32, ptr %14, align 8, !tbaa !55
  %38 = load i32, ptr %15, align 8, !tbaa !82
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %42, label %40

40:                                               ; preds = %30
  %41 = tail call i32 @TIFFFlushData1(ptr noundef %0) #9
  br label %42

42:                                               ; preds = %40, %30
  %43 = trunc i32 %36 to i8
  %44 = load ptr, ptr %16, align 8, !tbaa !54
  %45 = getelementptr inbounds i8, ptr %44, i64 1
  store ptr %45, ptr %16, align 8, !tbaa !54
  store i8 %43, ptr %44, align 1, !tbaa !9
  %46 = load i32, ptr %14, align 8, !tbaa !55
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %14, align 8, !tbaa !55
  %48 = icmp ugt i32 %34, 8
  br i1 %48, label %30, label %49, !llvm.loop !162

49:                                               ; preds = %42, %21
  %50 = phi i32 [ %24, %21 ], [ 0, %42 ]
  %51 = phi i32 [ %28, %21 ], [ %34, %42 ]
  %52 = phi i32 [ %23, %21 ], [ 8, %42 ]
  %53 = zext nneg i32 %51 to i64
  %54 = getelementptr inbounds [9 x i32], ptr @_msbmask, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !5
  %56 = and i32 %55, %26
  %57 = sub i32 %52, %51
  %58 = shl i32 %56, %57
  %59 = or i32 %58, %50
  %60 = icmp eq i32 %57, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %49
  %62 = load i32, ptr %17, align 8, !tbaa !55
  %63 = load i32, ptr %18, align 8, !tbaa !82
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = tail call i32 @TIFFFlushData1(ptr noundef %0) #9
  br label %67

67:                                               ; preds = %65, %61
  %68 = trunc i32 %59 to i8
  %69 = load ptr, ptr %19, align 8, !tbaa !54
  %70 = getelementptr inbounds i8, ptr %69, i64 1
  store ptr %70, ptr %19, align 8, !tbaa !54
  store i8 %68, ptr %69, align 1, !tbaa !9
  %71 = load i32, ptr %17, align 8, !tbaa !55
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %17, align 8, !tbaa !55
  br label %73

73:                                               ; preds = %67, %49
  %74 = phi i32 [ 0, %67 ], [ %59, %49 ]
  %75 = phi i32 [ 8, %67 ], [ %57, %49 ]
  %76 = load i16, ptr %20, align 2, !tbaa !163
  %77 = sext i16 %76 to i32
  %78 = sub nsw i32 %22, %77
  %79 = icmp sgt i32 %78, 2623
  br i1 %79, label %21, label %80, !llvm.loop !164

80:                                               ; preds = %73, %3
  %81 = phi i32 [ %9, %3 ], [ %74, %73 ]
  %82 = phi i32 [ %7, %3 ], [ %75, %73 ]
  %83 = phi i32 [ %1, %3 ], [ %78, %73 ]
  %84 = icmp sgt i32 %83, 63
  br i1 %84, label %85, label %159

85:                                               ; preds = %80
  %86 = lshr i32 %83, 6
  %87 = zext nneg i32 %86 to i64
  %88 = getelementptr %struct.tableentry, ptr %2, i64 %87
  %89 = getelementptr %struct.tableentry, ptr %88, i64 63, i32 2
  %90 = load i16, ptr %89, align 2, !tbaa !163
  %91 = sext i16 %90 to i32
  %92 = and i32 %83, 2147483584
  %93 = icmp eq i32 %92, %91
  br i1 %93, label %95, label %94

94:                                               ; preds = %85
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.1, i32 noundef 632, ptr noundef nonnull @__PRETTY_FUNCTION__.putspan) #8
  unreachable

95:                                               ; preds = %85
  %96 = getelementptr %struct.tableentry, ptr %88, i64 63
  %97 = getelementptr %struct.tableentry, ptr %88, i64 63, i32 1
  %98 = load i16, ptr %97, align 2, !tbaa !158
  %99 = zext i16 %98 to i32
  %100 = load i16, ptr %96, align 2, !tbaa !160
  %101 = zext i16 %100 to i32
  %102 = icmp ult i32 %82, %101
  br i1 %102, label %103, label %126

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %105 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  %106 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  br label %107

107:                                              ; preds = %103, %119
  %108 = phi i32 [ %82, %103 ], [ 8, %119 ]
  %109 = phi i32 [ %101, %103 ], [ %111, %119 ]
  %110 = phi i32 [ %81, %103 ], [ 0, %119 ]
  %111 = sub i32 %109, %108
  %112 = lshr i32 %99, %111
  %113 = or i32 %112, %110
  %114 = load i32, ptr %104, align 8, !tbaa !55
  %115 = load i32, ptr %105, align 8, !tbaa !82
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %119, label %117

117:                                              ; preds = %107
  %118 = tail call i32 @TIFFFlushData1(ptr noundef %0) #9
  br label %119

119:                                              ; preds = %117, %107
  %120 = trunc i32 %113 to i8
  %121 = load ptr, ptr %106, align 8, !tbaa !54
  %122 = getelementptr inbounds i8, ptr %121, i64 1
  store ptr %122, ptr %106, align 8, !tbaa !54
  store i8 %120, ptr %121, align 1, !tbaa !9
  %123 = load i32, ptr %104, align 8, !tbaa !55
  %124 = add nsw i32 %123, 1
  store i32 %124, ptr %104, align 8, !tbaa !55
  %125 = icmp ugt i32 %111, 8
  br i1 %125, label %107, label %126, !llvm.loop !165

126:                                              ; preds = %119, %95
  %127 = phi i32 [ %81, %95 ], [ 0, %119 ]
  %128 = phi i32 [ %101, %95 ], [ %111, %119 ]
  %129 = phi i32 [ %82, %95 ], [ 8, %119 ]
  %130 = zext nneg i32 %128 to i64
  %131 = getelementptr inbounds [9 x i32], ptr @_msbmask, i64 0, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !5
  %133 = and i32 %132, %99
  %134 = sub i32 %129, %128
  %135 = shl i32 %133, %134
  %136 = or i32 %135, %127
  %137 = icmp eq i32 %134, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %126
  %139 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %140 = load i32, ptr %139, align 8, !tbaa !55
  %141 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  %142 = load i32, ptr %141, align 8, !tbaa !82
  %143 = icmp slt i32 %140, %142
  br i1 %143, label %146, label %144

144:                                              ; preds = %138
  %145 = tail call i32 @TIFFFlushData1(ptr noundef %0) #9
  br label %146

146:                                              ; preds = %144, %138
  %147 = trunc i32 %136 to i8
  %148 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %149 = load ptr, ptr %148, align 8, !tbaa !54
  %150 = getelementptr inbounds i8, ptr %149, i64 1
  store ptr %150, ptr %148, align 8, !tbaa !54
  store i8 %147, ptr %149, align 1, !tbaa !9
  %151 = load i32, ptr %139, align 8, !tbaa !55
  %152 = add nsw i32 %151, 1
  store i32 %152, ptr %139, align 8, !tbaa !55
  br label %153

153:                                              ; preds = %146, %126
  %154 = phi i32 [ 0, %146 ], [ %136, %126 ]
  %155 = phi i32 [ 8, %146 ], [ %134, %126 ]
  %156 = load i16, ptr %89, align 2, !tbaa !163
  %157 = sext i16 %156 to i32
  %158 = sub nsw i32 %83, %157
  br label %159

159:                                              ; preds = %153, %80
  %160 = phi i32 [ %154, %153 ], [ %81, %80 ]
  %161 = phi i32 [ %155, %153 ], [ %82, %80 ]
  %162 = phi i32 [ %158, %153 ], [ %83, %80 ]
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.tableentry, ptr %2, i64 %163
  %165 = getelementptr inbounds %struct.tableentry, ptr %2, i64 %163, i32 1
  %166 = load i16, ptr %165, align 2, !tbaa !158
  %167 = zext i16 %166 to i32
  %168 = load i16, ptr %164, align 2, !tbaa !160
  %169 = zext i16 %168 to i32
  %170 = icmp ult i32 %161, %169
  br i1 %170, label %171, label %194

171:                                              ; preds = %159
  %172 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %173 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  %174 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  br label %175

175:                                              ; preds = %171, %187
  %176 = phi i32 [ %161, %171 ], [ 8, %187 ]
  %177 = phi i32 [ %169, %171 ], [ %179, %187 ]
  %178 = phi i32 [ %160, %171 ], [ 0, %187 ]
  %179 = sub i32 %177, %176
  %180 = lshr i32 %167, %179
  %181 = or i32 %180, %178
  %182 = load i32, ptr %172, align 8, !tbaa !55
  %183 = load i32, ptr %173, align 8, !tbaa !82
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %187, label %185

185:                                              ; preds = %175
  %186 = tail call i32 @TIFFFlushData1(ptr noundef %0) #9
  br label %187

187:                                              ; preds = %185, %175
  %188 = trunc i32 %181 to i8
  %189 = load ptr, ptr %174, align 8, !tbaa !54
  %190 = getelementptr inbounds i8, ptr %189, i64 1
  store ptr %190, ptr %174, align 8, !tbaa !54
  store i8 %188, ptr %189, align 1, !tbaa !9
  %191 = load i32, ptr %172, align 8, !tbaa !55
  %192 = add nsw i32 %191, 1
  store i32 %192, ptr %172, align 8, !tbaa !55
  %193 = icmp ugt i32 %179, 8
  br i1 %193, label %175, label %194, !llvm.loop !166

194:                                              ; preds = %187, %159
  %195 = phi i32 [ %160, %159 ], [ 0, %187 ]
  %196 = phi i32 [ %169, %159 ], [ %179, %187 ]
  %197 = phi i32 [ %161, %159 ], [ 8, %187 ]
  %198 = zext nneg i32 %196 to i64
  %199 = getelementptr inbounds [9 x i32], ptr @_msbmask, i64 0, i64 %198
  %200 = load i32, ptr %199, align 4, !tbaa !5
  %201 = and i32 %200, %167
  %202 = sub i32 %197, %196
  %203 = shl i32 %201, %202
  %204 = or i32 %203, %195
  %205 = icmp eq i32 %202, 0
  br i1 %205, label %206, label %221

206:                                              ; preds = %194
  %207 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %208 = load i32, ptr %207, align 8, !tbaa !55
  %209 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  %210 = load i32, ptr %209, align 8, !tbaa !82
  %211 = icmp slt i32 %208, %210
  br i1 %211, label %214, label %212

212:                                              ; preds = %206
  %213 = tail call i32 @TIFFFlushData1(ptr noundef %0) #9
  br label %214

214:                                              ; preds = %212, %206
  %215 = trunc i32 %204 to i8
  %216 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %217 = load ptr, ptr %216, align 8, !tbaa !54
  %218 = getelementptr inbounds i8, ptr %217, i64 1
  store ptr %218, ptr %216, align 8, !tbaa !54
  store i8 %215, ptr %217, align 1, !tbaa !9
  %219 = load i32, ptr %207, align 8, !tbaa !55
  %220 = add nsw i32 %219, 1
  store i32 %220, ptr %207, align 8, !tbaa !55
  br label %221

221:                                              ; preds = %214, %194
  %222 = phi i32 [ 0, %214 ], [ %204, %194 ]
  %223 = phi i32 [ 8, %214 ], [ %202, %194 ]
  store i32 %222, ptr %8, align 8, !tbaa !83
  store i32 %223, ptr %6, align 4, !tbaa !81
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @Fax3PutBits(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.Fax3EncodeState, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !81
  %8 = getelementptr inbounds %struct.Fax3EncodeState, ptr %5, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !83
  %10 = icmp ult i32 %7, %2
  br i1 %10, label %11, label %34

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %13 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  %14 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  br label %15

15:                                               ; preds = %11, %27
  %16 = phi i32 [ %9, %11 ], [ 0, %27 ]
  %17 = phi i32 [ %7, %11 ], [ 8, %27 ]
  %18 = phi i32 [ %2, %11 ], [ %19, %27 ]
  %19 = sub i32 %18, %17
  %20 = lshr i32 %1, %19
  %21 = or i32 %20, %16
  %22 = load i32, ptr %12, align 8, !tbaa !55
  %23 = load i32, ptr %13, align 8, !tbaa !82
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %27, label %25

25:                                               ; preds = %15
  %26 = tail call i32 @TIFFFlushData1(ptr noundef %0) #9
  br label %27

27:                                               ; preds = %25, %15
  %28 = trunc i32 %21 to i8
  %29 = load ptr, ptr %14, align 8, !tbaa !54
  %30 = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %30, ptr %14, align 8, !tbaa !54
  store i8 %28, ptr %29, align 1, !tbaa !9
  %31 = load i32, ptr %12, align 8, !tbaa !55
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %12, align 8, !tbaa !55
  %33 = icmp ugt i32 %19, 8
  br i1 %33, label %15, label %34, !llvm.loop !167

34:                                               ; preds = %27, %3
  %35 = phi i32 [ %2, %3 ], [ %19, %27 ]
  %36 = phi i32 [ %7, %3 ], [ 8, %27 ]
  %37 = phi i32 [ %9, %3 ], [ 0, %27 ]
  %38 = zext i32 %35 to i64
  %39 = getelementptr inbounds [9 x i32], ptr @_msbmask, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !5
  %41 = and i32 %40, %1
  %42 = sub i32 %36, %35
  %43 = shl i32 %41, %42
  %44 = or i32 %43, %37
  %45 = icmp eq i32 %42, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %48 = load i32, ptr %47, align 8, !tbaa !55
  %49 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  %50 = load i32, ptr %49, align 8, !tbaa !82
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = tail call i32 @TIFFFlushData1(ptr noundef %0) #9
  br label %54

54:                                               ; preds = %52, %46
  %55 = trunc i32 %44 to i8
  %56 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %57 = load ptr, ptr %56, align 8, !tbaa !54
  %58 = getelementptr inbounds i8, ptr %57, i64 1
  store ptr %58, ptr %56, align 8, !tbaa !54
  store i8 %55, ptr %57, align 1, !tbaa !9
  %59 = load i32, ptr %47, align 8, !tbaa !55
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %47, align 8, !tbaa !55
  br label %61

61:                                               ; preds = %54, %34
  %62 = phi i32 [ 8, %54 ], [ %42, %34 ]
  %63 = phi i32 [ 0, %54 ], [ %44, %34 ]
  store i32 %63, ptr %8, align 8, !tbaa !83
  store i32 %62, ptr %6, align 4, !tbaa !81
  ret void
}

declare void @_TIFFfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }

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
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{i32 0, i32 2}
!15 = !{!16, !6, i64 12}
!16 = !{!"tiff", !17, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !18, i64 32, !22, i64 504, !17, i64 512, !17, i64 520, !17, i64 528, !6, i64 536, !19, i64 540, !6, i64 544, !6, i64 548, !6, i64 552, !19, i64 556, !6, i64 560, !6, i64 564, !6, i64 568, !6, i64 572, !17, i64 576, !17, i64 584, !17, i64 592, !17, i64 600, !17, i64 608, !17, i64 616, !17, i64 624, !17, i64 632, !17, i64 640, !17, i64 648, !17, i64 656, !17, i64 664, !17, i64 672, !17, i64 680, !17, i64 688, !17, i64 696, !17, i64 704, !6, i64 712, !6, i64 716, !17, i64 720, !6, i64 728, !17, i64 736, !6, i64 744, !17, i64 752, !6, i64 760, !17, i64 768, !17, i64 776, !17, i64 784, !17, i64 792, !17, i64 800, !17, i64 808, !17, i64 816, !17, i64 824, !17, i64 832, !17, i64 840, !6, i64 848, !17, i64 856, !17, i64 864, !17, i64 872}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{!"", !7, i64 0, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !19, i64 52, !19, i64 54, !19, i64 56, !19, i64 58, !19, i64 60, !19, i64 62, !19, i64 64, !19, i64 66, !6, i64 68, !19, i64 72, !19, i64 74, !20, i64 80, !20, i64 88, !21, i64 96, !21, i64 100, !19, i64 104, !19, i64 106, !21, i64 108, !21, i64 112, !7, i64 116, !7, i64 120, !7, i64 144, !19, i64 148, !17, i64 152, !20, i64 160, !17, i64 168, !17, i64 176, !17, i64 184, !17, i64 192, !17, i64 200, !17, i64 208, !17, i64 216, !17, i64 224, !17, i64 232, !6, i64 240, !6, i64 244, !17, i64 248, !17, i64 256, !19, i64 264, !17, i64 272, !17, i64 280, !7, i64 288, !19, i64 292, !17, i64 296, !17, i64 304, !17, i64 312, !7, i64 320, !19, i64 344, !19, i64 346, !7, i64 348, !6, i64 352, !17, i64 360, !17, i64 368, !6, i64 376, !17, i64 384, !6, i64 392, !17, i64 400, !6, i64 408, !17, i64 416, !6, i64 424, !6, i64 428, !17, i64 432, !17, i64 440, !21, i64 448, !17, i64 456, !17, i64 464}
!19 = !{!"short", !7, i64 0}
!20 = !{!"double", !7, i64 0}
!21 = !{!"float", !7, i64 0}
!22 = !{!"", !19, i64 0, !19, i64 2, !6, i64 4}
!23 = !{!16, !17, i64 704}
!24 = !{!16, !17, i64 0}
!25 = !{!16, !17, i64 864}
!26 = !{!27, !17, i64 48}
!27 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !19, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !17, i64 32, !6, i64 40, !17, i64 48, !17, i64 56}
!28 = !{!16, !17, i64 856}
!29 = !{!27, !17, i64 56}
!30 = !{!16, !17, i64 872}
!31 = !{!16, !6, i64 16}
!32 = !{!33, !17, i64 96}
!33 = !{!"", !27, i64 0, !17, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112}
!34 = !{!35, !17, i64 80}
!35 = !{!"", !27, i64 0, !6, i64 64, !6, i64 68, !6, i64 72, !17, i64 80, !6, i64 88, !6, i64 92}
!36 = !{!16, !17, i64 576}
!37 = !{!16, !17, i64 584}
!38 = !{!16, !17, i64 616}
!39 = !{!16, !17, i64 632}
!40 = !{!16, !17, i64 648}
!41 = !{!16, !17, i64 592}
!42 = !{!16, !17, i64 600}
!43 = !{!16, !17, i64 608}
!44 = !{!16, !17, i64 624}
!45 = !{!16, !17, i64 640}
!46 = !{!16, !17, i64 656}
!47 = !{!16, !17, i64 664}
!48 = !{!16, !17, i64 680}
!49 = !{!33, !6, i64 8}
!50 = !{!33, !17, i64 64}
!51 = !{!33, !6, i64 72}
!52 = !{!33, !6, i64 76}
!53 = !{!33, !6, i64 80}
!54 = !{!16, !17, i64 736}
!55 = !{!16, !6, i64 744}
!56 = !{!33, !17, i64 112}
!57 = !{!33, !17, i64 104}
!58 = !{!59, !7, i64 1}
!59 = !{!"", !7, i64 0, !7, i64 1, !6, i64 4}
!60 = !{!59, !7, i64 0}
!61 = distinct !{!61, !13}
!62 = !{!59, !6, i64 4}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13}
!71 = !{!16, !6, i64 536}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !13}
!75 = !{!33, !17, i64 88}
!76 = !{!33, !6, i64 4}
!77 = distinct !{!77, !13}
!78 = !{!35, !6, i64 8}
!79 = !{!35, !6, i64 4}
!80 = distinct !{!80, !13}
!81 = !{!35, !6, i64 68}
!82 = !{!16, !6, i64 728}
!83 = !{!35, !6, i64 64}
!84 = !{!33, !6, i64 0}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !13}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !13}
!91 = !{!27, !6, i64 0}
!92 = !{!17, !17, i64 0}
!93 = !{!27, !6, i64 24}
!94 = !{!27, !6, i64 20}
!95 = !{!27, !19, i64 12}
!96 = !{!19, !19, i64 0}
!97 = !{!27, !6, i64 16}
!98 = !{!27, !6, i64 28}
!99 = !{!27, !17, i64 32}
!100 = !{!27, !6, i64 40}
!101 = !{!102, !19, i64 12}
!102 = !{!"", !6, i64 0, !19, i64 4, !19, i64 6, !6, i64 8, !19, i64 12, !7, i64 14, !7, i64 15, !17, i64 16}
!103 = !{!16, !19, i64 88}
!104 = !{!18, !19, i64 52}
!105 = !{!27, !6, i64 4}
!106 = !{!27, !6, i64 8}
!107 = !{!18, !19, i64 56}
!108 = !{!33, !6, i64 24}
!109 = !{!16, !19, i64 94}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !13}
!112 = distinct !{!112, !13}
!113 = distinct !{!113, !13}
!114 = distinct !{!114, !13}
!115 = distinct !{!115, !13}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !13}
!119 = !{!35, !6, i64 72}
!120 = !{!35, !6, i64 24}
!121 = !{!16, !21, i64 132}
!122 = !{!16, !19, i64 136}
!123 = !{!35, !6, i64 92}
!124 = !{!35, !6, i64 88}
!125 = !{!35, !6, i64 0}
!126 = distinct !{!126, !13}
!127 = distinct !{!127, !13}
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !13}
!130 = distinct !{!130, !13}
!131 = distinct !{!131, !13}
!132 = distinct !{!132, !13}
!133 = distinct !{!133, !13}
!134 = distinct !{!134, !13}
!135 = distinct !{!135, !13}
!136 = distinct !{!136, !13}
!137 = distinct !{!137, !13}
!138 = distinct !{!138, !13}
!139 = distinct !{!139, !13}
!140 = distinct !{!140, !13}
!141 = distinct !{!141, !13}
!142 = distinct !{!142, !13}
!143 = distinct !{!143, !13}
!144 = distinct !{!144, !13}
!145 = distinct !{!145, !13}
!146 = distinct !{!146, !13}
!147 = distinct !{!147, !13}
!148 = distinct !{!148, !13}
!149 = distinct !{!149, !13}
!150 = distinct !{!150, !13}
!151 = distinct !{!151, !13}
!152 = distinct !{!152, !13}
!153 = distinct !{!153, !13}
!154 = distinct !{!154, !13}
!155 = distinct !{!155, !13}
!156 = distinct !{!156, !13}
!157 = distinct !{!157, !13}
!158 = !{!159, !19, i64 2}
!159 = !{!"tableentry", !19, i64 0, !19, i64 2, !19, i64 4}
!160 = !{!159, !19, i64 0}
!161 = distinct !{!161, !13}
!162 = distinct !{!162, !13}
!163 = !{!159, !19, i64 4}
!164 = distinct !{!164, !13}
!165 = distinct !{!165, !13}
!166 = distinct !{!166, !13}
!167 = distinct !{!167, !13}
