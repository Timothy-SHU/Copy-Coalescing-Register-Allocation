; ModuleID = 'src/tif_luv.c'
source_filename = "src/tif_luv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TIFFFieldInfo = type { i32, i16, i16, i32, i16, i8, i8, ptr }
%struct.anon = type { float, i16, i16 }
%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }
%struct.logLuvState = type { i32, i32, ptr, i16, ptr, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@TIFFInitSGILog.module = internal constant [15 x i8] c"TIFFInitSGILog\00", align 1
@.str = private unnamed_addr constant [63 x i8] c"scheme == COMPRESSION_SGILOG24 || scheme == COMPRESSION_SGILOG\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"src/tif_luv.c\00", align 1
@__PRETTY_FUNCTION__.TIFFInitSGILog = private unnamed_addr constant [32 x i8] c"int TIFFInitSGILog(TIFF *, int)\00", align 1
@LogLuvFieldInfo = internal constant [1 x %struct.TIFFFieldInfo] [%struct.TIFFFieldInfo { i32 65560, i16 0, i16 0, i32 3, i16 0, i8 1, i8 0, ptr @.str.21 }], align 16
@.str.2 = private unnamed_addr constant [36 x i8] c"%s: No space for LogLuv state block\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"Inappropriate photometric interpretation %d for SGILog compression; %s\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"must be either LogLUV or LogL\00", align 1
@LogLuvInitState.module = internal constant [16 x i8] c"LogLuvInitState\00", align 16
@.str.5 = private unnamed_addr constant [11 x i8] c"sp != NULL\00", align 1
@__PRETTY_FUNCTION__.LogLuvInitState = private unnamed_addr constant [28 x i8] c"int LogLuvInitState(TIFF *)\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"td->td_photometric == PHOTOMETRIC_LOGLUV\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"SGILog compression cannot handle non-contiguous data\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"No support for converting user data format to LogLuv\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"%s: No space for SGILog translation buffer\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"s == 0\00", align 1
@__PRETTY_FUNCTION__.LogLuvDecode24 = private unnamed_addr constant [57 x i8] c"int LogLuvDecode24(TIFF *, tidata_t, tsize_t, tsample_t)\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"sp->tbuflen >= npixels\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"LogLuvDecode24: Not enough data at row %d (short %d pixels)\00", align 1
@uv_row = internal unnamed_addr constant [163 x %struct.anon] [%struct.anon { float 0x3FCFB36BE0000000, i16 4, i16 0 }, %struct.anon { float 0x3FCF342680000000, i16 6, i16 4 }, %struct.anon { float 0x3FCEEF8060000000, i16 7, i16 10 }, %struct.anon { float 0x3FCE72A7C0000000, i16 9, i16 17 }, %struct.anon { float 0x3FCE322B00000000, i16 10, i16 26 }, %struct.anon { float 0x3FCDB73080000000, i16 12, i16 36 }, %struct.anon { float 0x3FCD3AA360000000, i16 14, i16 48 }, %struct.anon { float 0x3FCCF60E00000000, i16 15, i16 62 }, %struct.anon { float 0x3FCC76A720000000, i16 17, i16 77 }, %struct.anon { float 0x3FCC366520000000, i16 18, i16 94 }, %struct.anon { float 0x3FCB7B9E00000000, i16 21, i16 112 }, %struct.anon { float 0x3FCB3A3660000000, i16 22, i16 133 }, %struct.anon { float 0x3FCAF8E7E0000000, i16 23, i16 155 }, %struct.anon { float 0x3FCA3CA760000000, i16 26, i16 178 }, %struct.anon { float 0x3FC9FB7200000000, i16 27, i16 204 }, %struct.anon { float 0x3FC980DC40000000, i16 29, i16 231 }, %struct.anon { float 0x3FC906F6A0000000, i16 31, i16 260 }, %struct.anon { float 0x3FC8C69300000000, i16 32, i16 291 }, %struct.anon { float 0x3FC84DEC20000000, i16 34, i16 323 }, %struct.anon { float 0x3FC7D5ED00000000, i16 36, i16 357 }, %struct.anon { float 0x3FC7D5ED00000000, i16 36, i16 393 }, %struct.anon { float 0x3FC75F2CC0000000, i16 38, i16 429 }, %struct.anon { float 0x3FC6E99200000000, i16 40, i16 467 }, %struct.anon { float 0x3FC675AB80000000, i16 42, i16 507 }, %struct.anon { float 0x3FC6042100000000, i16 44, i16 549 }, %struct.anon { float 0x3FC6042100000000, i16 44, i16 593 }, %struct.anon { float 0x3FC5951400000000, i16 46, i16 637 }, %struct.anon { float 0x3FC5951400000000, i16 46, i16 683 }, %struct.anon { float 0x3FC4F00680000000, i16 49, i16 729 }, %struct.anon { float 0x3FC44E6180000000, i16 52, i16 778 }, %struct.anon { float 0x3FC44E6180000000, i16 52, i16 830 }, %struct.anon { float 0x3FC44E6180000000, i16 52, i16 882 }, %struct.anon { float 0x3FC3B035C0000000, i16 55, i16 934 }, %struct.anon { float 0x3FC3B035C0000000, i16 55, i16 989 }, %struct.anon { float 0x3FC3159C40000000, i16 58, i16 1044 }, %struct.anon { float 0x3FC3159C40000000, i16 58, i16 1102 }, %struct.anon { float 0x3FC2458040000000, i16 62, i16 1160 }, %struct.anon { float 0x3FC2458040000000, i16 62, i16 1222 }, %struct.anon { float 0x3FC2458040000000, i16 62, i16 1284 }, %struct.anon { float 0x3FC1B2D4E0000000, i16 65, i16 1346 }, %struct.anon { float 0x3FC1B2D4E0000000, i16 65, i16 1411 }, %struct.anon { float 0x3FC1B2D4E0000000, i16 65, i16 1476 }, %struct.anon { float 0x3FC0EAD0C0000000, i16 69, i16 1541 }, %struct.anon { float 0x3FC0EAD0C0000000, i16 69, i16 1610 }, %struct.anon { float 0x3FC02773E0000000, i16 73, i16 1679 }, %struct.anon { float 0x3FC02773E0000000, i16 73, i16 1752 }, %struct.anon { float 0x3FC02773E0000000, i16 73, i16 1825 }, %struct.anon { float 0x3FBED14A00000000, i16 77, i16 1898 }, %struct.anon { float 0x3FBED14A00000000, i16 77, i16 1975 }, %struct.anon { float 0x3FBED14A00000000, i16 77, i16 2052 }, %struct.anon { float 0x3FBED14A00000000, i16 77, i16 2129 }, %struct.anon { float 0x3FBCEB13E0000000, i16 82, i16 2206 }, %struct.anon { float 0x3FBCEB13E0000000, i16 82, i16 2288 }, %struct.anon { float 0x3FBCEB13E0000000, i16 82, i16 2370 }, %struct.anon { float 0x3FBB81D7E0000000, i16 86, i16 2452 }, %struct.anon { float 0x3FBB81D7E0000000, i16 86, i16 2538 }, %struct.anon { float 0x3FBB81D7E0000000, i16 86, i16 2624 }, %struct.anon { float 0x3FBB81D7E0000000, i16 86, i16 2710 }, %struct.anon { float 0x3FB9B01420000000, i16 91, i16 2796 }, %struct.anon { float 0x3FB9B01420000000, i16 91, i16 2887 }, %struct.anon { float 0x3FB9B01420000000, i16 91, i16 2978 }, %struct.anon { float 0x3FB85A2D80000000, i16 95, i16 3069 }, %struct.anon { float 0x3FB85A2D80000000, i16 95, i16 3164 }, %struct.anon { float 0x3FB85A2D80000000, i16 95, i16 3259 }, %struct.anon { float 0x3FB85A2D80000000, i16 95, i16 3354 }, %struct.anon { float 0x3FB6994180000000, i16 100, i16 3449 }, %struct.anon { float 0x3FB6994180000000, i16 100, i16 3549 }, %struct.anon { float 0x3FB6994180000000, i16 100, i16 3649 }, %struct.anon { float 0x3FB6994180000000, i16 100, i16 3749 }, %struct.anon { float 0x3FB4DEB100000000, i16 105, i16 3849 }, %struct.anon { float 0x3FB4DEB100000000, i16 105, i16 3954 }, %struct.anon { float 0x3FB4DEB100000000, i16 105, i16 4059 }, %struct.anon { float 0x3FB4DEB100000000, i16 105, i16 4164 }, %struct.anon { float 0x3FB32A1720000000, i16 110, i16 4269 }, %struct.anon { float 0x3FB32A1720000000, i16 110, i16 4379 }, %struct.anon { float 0x3FB32A1720000000, i16 110, i16 4489 }, %struct.anon { float 0x3FB32A1720000000, i16 110, i16 4599 }, %struct.anon { float 0x3FB17B7420000000, i16 115, i16 4709 }, %struct.anon { float 0x3FB17B7420000000, i16 115, i16 4824 }, %struct.anon { float 0x3FB17B7420000000, i16 115, i16 4939 }, %struct.anon { float 0x3FB17B7420000000, i16 115, i16 5054 }, %struct.anon { float 0x3FB0465200000000, i16 119, i16 5169 }, %struct.anon { float 0x3FB0465200000000, i16 119, i16 5288 }, %struct.anon { float 0x3FB0465200000000, i16 119, i16 5407 }, %struct.anon { float 0x3FB0465200000000, i16 119, i16 5526 }, %struct.anon { float 0x3FAD4BCF00000000, i16 124, i16 5645 }, %struct.anon { float 0x3FAD4BCF00000000, i16 124, i16 5769 }, %struct.anon { float 0x3FAD4BCF00000000, i16 124, i16 5893 }, %struct.anon { float 0x3FAD4BCF00000000, i16 124, i16 6017 }, %struct.anon { float 0x3FAA1AB4C0000000, i16 129, i16 6141 }, %struct.anon { float 0x3FAA1AB4C0000000, i16 129, i16 6270 }, %struct.anon { float 0x3FAA1AB4C0000000, i16 129, i16 6399 }, %struct.anon { float 0x3FAA1AB4C0000000, i16 129, i16 6528 }, %struct.anon { float 0x3FAA1AB4C0000000, i16 129, i16 6657 }, %struct.anon { float 0x3FA6F7C240000000, i16 134, i16 6786 }, %struct.anon { float 0x3FA6F7C240000000, i16 134, i16 6920 }, %struct.anon { float 0x3FA6F7C240000000, i16 134, i16 7054 }, %struct.anon { float 0x3FA6F7C240000000, i16 134, i16 7188 }, %struct.anon { float 0x3FA4C5B8E0000000, i16 138, i16 7322 }, %struct.anon { float 0x3FA4C5B8E0000000, i16 138, i16 7460 }, %struct.anon { float 0x3FA4C5B8E0000000, i16 138, i16 7598 }, %struct.anon { float 0x3FA4C5B8E0000000, i16 138, i16 7736 }, %struct.anon { float 0x3FA29B0680000000, i16 142, i16 7874 }, %struct.anon { float 0x3FA29B0680000000, i16 142, i16 8016 }, %struct.anon { float 0x3FA29B0680000000, i16 142, i16 8158 }, %struct.anon { float 0x3FA29B0680000000, i16 142, i16 8300 }, %struct.anon { float 0x3FA07485E0000000, i16 146, i16 8442 }, %struct.anon { float 0x3FA07485E0000000, i16 146, i16 8588 }, %struct.anon { float 0x3FA07485E0000000, i16 146, i16 8734 }, %struct.anon { float 0x3FA07485E0000000, i16 146, i16 8880 }, %struct.anon { float 0x3F9C9E2360000000, i16 150, i16 9026 }, %struct.anon { float 0x3F9C9E2360000000, i16 150, i16 9176 }, %struct.anon { float 0x3F9C9E2360000000, i16 150, i16 9326 }, %struct.anon { float 0x3F984F0960000000, i16 154, i16 9476 }, %struct.anon { float 0x3F984F0960000000, i16 154, i16 9630 }, %struct.anon { float 0x3F984F0960000000, i16 154, i16 9784 }, %struct.anon { float 0x3F984F0960000000, i16 154, i16 9938 }, %struct.anon { float 0x3F93F8DB40000000, i16 158, i16 10092 }, %struct.anon { float 0x3F93F8DB40000000, i16 158, i16 10250 }, %struct.anon { float 0x3F93F8DB40000000, i16 158, i16 10408 }, %struct.anon { float 0x3F91622820000000, i16 161, i16 10566 }, %struct.anon { float 0x3F91622820000000, i16 161, i16 10727 }, %struct.anon { float 0x3F91622820000000, i16 161, i16 10888 }, %struct.anon { float 0x3F91622820000000, i16 161, i16 11049 }, %struct.anon { float 0x3F89E279E0000000, i16 165, i16 11210 }, %struct.anon { float 0x3F89E279E0000000, i16 165, i16 11375 }, %struct.anon { float 0x3F89E279E0000000, i16 165, i16 11540 }, %struct.anon { float 0x3F84762960000000, i16 168, i16 11705 }, %struct.anon { float 0x3F84762960000000, i16 168, i16 11873 }, %struct.anon { float 0x3F84762960000000, i16 168, i16 12041 }, %struct.anon { float 0x3F8276FB00000000, i16 170, i16 12209 }, %struct.anon { float 0x3F8276FB00000000, i16 170, i16 12379 }, %struct.anon { float 0x3F8276FB00000000, i16 170, i16 12549 }, %struct.anon { float 0x3F7976FF40000000, i16 173, i16 12719 }, %struct.anon { float 0x3F7976FF40000000, i16 173, i16 12892 }, %struct.anon { float 0x3F74E09780000000, i16 175, i16 13065 }, %struct.anon { float 0x3F74E09780000000, i16 175, i16 13240 }, %struct.anon { float 0x3F74E09780000000, i16 175, i16 13415 }, %struct.anon { float 0x3F7002E240000000, i16 177, i16 13590 }, %struct.anon { float 0x3F7002E240000000, i16 177, i16 13767 }, %struct.anon { float 0x3F632B55E0000000, i16 177, i16 13944 }, %struct.anon { float 0x3F639218A0000000, i16 170, i16 14121 }, %struct.anon { float 0x3F517F8440000000, i16 164, i16 14291 }, %struct.anon { float 0x3F5B152F40000000, i16 157, i16 14455 }, %struct.anon { float 0x3F477EA1C0000000, i16 150, i16 14612 }, %struct.anon { float 0x3F5A719B40000000, i16 143, i16 14762 }, %struct.anon { float 0x3F31B1D920000000, i16 136, i16 14905 }, %struct.anon { float 0x3F3FB82C20000000, i16 129, i16 15041 }, %struct.anon { float 0x3F52125140000000, i16 123, i16 15170 }, %struct.anon { float 0x3F54595360000000, i16 115, i16 15293 }, %struct.anon { float 0x3F5376D540000000, i16 109, i16 15408 }, %struct.anon { float 0x3F50907100000000, i16 103, i16 15517 }, %struct.anon { float 0x3F473B85E0000000, i16 97, i16 15620 }, %struct.anon { float 0x3F33B9F120000000, i16 89, i16 15717 }, %struct.anon { float 0x3F63CAB820000000, i16 82, i16 15806 }, %struct.anon { float 0x3F6AA1D760000000, i16 76, i16 15888 }, %struct.anon { float 0x3F6A975B00000000, i16 69, i16 15964 }, %struct.anon { float 0x3F70F62740000000, i16 62, i16 16033 }, %struct.anon { float 0x3F786CA8A0000000, i16 55, i16 16095 }, %struct.anon { float 0x3F821A2E80000000, i16 47, i16 16150 }, %struct.anon { float 0x3F857BC800000000, i16 40, i16 16197 }, %struct.anon { float 0x3F9166E000000000, i16 31, i16 16237 }, %struct.anon { float 0x3F983A10A0000000, i16 21, i16 16268 }], align 16
@__PRETTY_FUNCTION__.LogLuvDecode32 = private unnamed_addr constant [57 x i8] c"int LogLuvDecode32(TIFF *, tidata_t, tsize_t, tsample_t)\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"LogLuvDecode32: Not enough data at row %d (short %d pixels)\00", align 1
@LogL16InitState.module = internal constant [16 x i8] c"LogL16InitState\00", align 16
@__PRETTY_FUNCTION__.LogL16InitState = private unnamed_addr constant [28 x i8] c"int LogL16InitState(TIFF *)\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"td->td_photometric == PHOTOMETRIC_LOGL\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"No support for converting user data format to LogL\00", align 1
@__PRETTY_FUNCTION__.LogL16Decode = private unnamed_addr constant [55 x i8] c"int LogL16Decode(TIFF *, tidata_t, tsize_t, tsample_t)\00", align 1
@.str.16 = private unnamed_addr constant [58 x i8] c"LogL16Decode: Not enough data at row %d (short %d pixels)\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"cc%rowlen == 0\00", align 1
@__PRETTY_FUNCTION__.LogLuvDecodeStrip = private unnamed_addr constant [60 x i8] c"int LogLuvDecodeStrip(TIFF *, tidata_t, tsize_t, tsample_t)\00", align 1
@__PRETTY_FUNCTION__.LogLuvDecodeTile = private unnamed_addr constant [59 x i8] c"int LogLuvDecodeTile(TIFF *, tidata_t, tsize_t, tsample_t)\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"SGILog compression supported only for %s, or raw data\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"Y, L\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"XYZ, Luv\00", align 1
@__PRETTY_FUNCTION__.LogLuvEncode24 = private unnamed_addr constant [57 x i8] c"int LogLuvEncode24(TIFF *, tidata_t, tsize_t, tsample_t)\00", align 1
@__PRETTY_FUNCTION__.LogLuvEncode32 = private unnamed_addr constant [57 x i8] c"int LogLuvEncode32(TIFF *, tidata_t, tsize_t, tsample_t)\00", align 1
@__PRETTY_FUNCTION__.LogL16Encode = private unnamed_addr constant [55 x i8] c"int LogL16Encode(TIFF *, tidata_t, tsize_t, tsample_t)\00", align 1
@__PRETTY_FUNCTION__.LogLuvEncodeStrip = private unnamed_addr constant [60 x i8] c"int LogLuvEncodeStrip(TIFF *, tidata_t, tsize_t, tsample_t)\00", align 1
@__PRETTY_FUNCTION__.LogLuvEncodeTile = private unnamed_addr constant [59 x i8] c"int LogLuvEncodeTile(TIFF *, tidata_t, tsize_t, tsample_t)\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"SGILogDataFmt\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"Unknown data format %d for LogLuv compression\00", align 1
@switch.table.LogLuvVSetField = private unnamed_addr constant [4 x i32] [i32 32, i32 16, i32 32, i32 8], align 4
@switch.table.LogLuvVSetField.23 = private unnamed_addr constant [4 x i32] [i32 3, i32 2, i32 1, i32 1], align 4
@switch.table.LogLuvInitState = private unnamed_addr constant [4 x i32] [i32 12, i32 6, i32 4, i32 3], align 4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TIFFInitSGILog(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, -2
  %4 = icmp eq i32 %3, 34676
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1386, ptr noundef nonnull @__PRETTY_FUNCTION__.TIFFInitSGILog) #13
  unreachable

6:                                                ; preds = %2
  %7 = tail call ptr @_TIFFmalloc(i32 noundef 48) #14
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  store ptr %7, ptr %8, align 8, !tbaa !5
  %9 = icmp eq ptr %7, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  store i32 -1, ptr %7, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.logLuvState, ptr %7, i64 0, i32 4
  store ptr @_logLuvNop, ptr %11, align 8, !tbaa !18
  %12 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 21
  store ptr @LogLuvSetupDecode, ptr %12, align 8, !tbaa !19
  %13 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 28
  store ptr @LogLuvDecodeStrip, ptr %13, align 8, !tbaa !20
  %14 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 30
  store ptr @LogLuvDecodeTile, ptr %14, align 8, !tbaa !21
  %15 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 23
  store ptr @LogLuvSetupEncode, ptr %15, align 8, !tbaa !22
  %16 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 29
  store ptr @LogLuvEncodeStrip, ptr %16, align 8, !tbaa !23
  %17 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 31
  store ptr @LogLuvEncodeTile, ptr %17, align 8, !tbaa !24
  %18 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 32
  store ptr @LogLuvClose, ptr %18, align 8, !tbaa !25
  %19 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 34
  store ptr @LogLuvCleanup, ptr %19, align 8, !tbaa !26
  tail call void @_TIFFMergeFieldInfo(ptr noundef %0, ptr noundef nonnull @LogLuvFieldInfo, i32 noundef 1) #14
  %20 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 58
  %21 = load ptr, ptr %20, align 8, !tbaa !27
  %22 = getelementptr inbounds %struct.logLuvState, ptr %7, i64 0, i32 5
  store ptr %21, ptr %22, align 8, !tbaa !28
  store ptr @LogLuvVGetField, ptr %20, align 8, !tbaa !27
  %23 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 57
  %24 = load ptr, ptr %23, align 8, !tbaa !29
  %25 = getelementptr inbounds %struct.logLuvState, ptr %7, i64 0, i32 6
  store ptr %24, ptr %25, align 8, !tbaa !30
  store ptr @LogLuvVSetField, ptr %23, align 8, !tbaa !29
  br label %28

26:                                               ; preds = %6
  %27 = load ptr, ptr %0, align 8, !tbaa !31
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFInitSGILog.module, ptr noundef nonnull @.str.2, ptr noundef %27) #14
  br label %28

28:                                               ; preds = %26, %10
  %29 = phi i32 [ 0, %26 ], [ 1, %10 ]
  ret i32 %29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_TIFFmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_logLuvNop(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2) #5 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @LogLuvSetupDecode(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 54
  store ptr @_TIFFNoPostDecode, ptr %4, align 8, !tbaa !32
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 11
  %6 = load i16, ptr %5, align 2, !tbaa !33
  switch i16 %6, label %41 [
    i16 -32691, label %7
    i16 -32692, label %31
  ]

7:                                                ; preds = %1
  %8 = tail call fastcc i32 @LogLuvInitState(ptr noundef %0), !range !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %44, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 10
  %12 = load i16, ptr %11, align 8, !tbaa !35
  %13 = icmp eq i16 %12, -30859
  %14 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 26
  br i1 %13, label %15, label %23

15:                                               ; preds = %10
  store ptr @LogLuvDecode24, ptr %14, align 8, !tbaa !36
  %16 = load i32, ptr %3, align 8, !tbaa !16
  switch i32 %16, label %44 [
    i32 0, label %17
    i32 1, label %19
    i32 3, label %21
  ]

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 4
  store ptr @Luv24toXYZ, ptr %18, align 8, !tbaa !18
  br label %44

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 4
  store ptr @Luv24toLuv48, ptr %20, align 8, !tbaa !18
  br label %44

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 4
  store ptr @Luv24toRGB, ptr %22, align 8, !tbaa !18
  br label %44

23:                                               ; preds = %10
  store ptr @LogLuvDecode32, ptr %14, align 8, !tbaa !36
  %24 = load i32, ptr %3, align 8, !tbaa !16
  switch i32 %24, label %44 [
    i32 0, label %25
    i32 1, label %27
    i32 3, label %29
  ]

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 4
  store ptr @Luv32toXYZ, ptr %26, align 8, !tbaa !18
  br label %44

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 4
  store ptr @Luv32toLuv48, ptr %28, align 8, !tbaa !18
  br label %44

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 4
  store ptr @Luv32toRGB, ptr %30, align 8, !tbaa !18
  br label %44

31:                                               ; preds = %1
  %32 = tail call fastcc i32 @LogL16InitState(ptr noundef %0), !range !34
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 26
  store ptr @LogL16Decode, ptr %35, align 8, !tbaa !36
  %36 = load i32, ptr %3, align 8, !tbaa !16
  switch i32 %36, label %44 [
    i32 0, label %37
    i32 3, label %39
  ]

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 4
  store ptr @L16toY, ptr %38, align 8, !tbaa !18
  br label %44

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 4
  store ptr @L16toGry, ptr %40, align 8, !tbaa !18
  br label %44

41:                                               ; preds = %1
  %42 = zext i16 %6 to i32
  %43 = load ptr, ptr %0, align 8, !tbaa !31
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %43, ptr noundef nonnull @.str.3, i32 noundef %42, ptr noundef nonnull @.str.4) #14
  br label %44

44:                                               ; preds = %41, %7, %31, %37, %39, %34, %15, %21, %19, %17, %23, %29, %27, %25
  %45 = phi i32 [ 1, %25 ], [ 1, %27 ], [ 1, %29 ], [ 1, %23 ], [ 1, %17 ], [ 1, %19 ], [ 1, %21 ], [ 1, %15 ], [ 1, %34 ], [ 1, %39 ], [ 1, %37 ], [ 0, %31 ], [ 0, %7 ], [ 0, %41 ]
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @LogLuvDecodeStrip(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 {
  %5 = tail call i32 @TIFFScanlineSize(ptr noundef %0) #14
  %6 = srem i32 %2, %5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 26
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %8
  %12 = sext i32 %5 to i64
  %13 = load ptr, ptr %9, align 8, !tbaa !36
  %14 = tail call i32 %13(ptr noundef %0, ptr noundef %1, i32 noundef %5, i16 noundef zeroext %3) #14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %22

16:                                               ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 324, ptr noundef nonnull @__PRETTY_FUNCTION__.LogLuvDecodeStrip) #13
  unreachable

17:                                               ; preds = %22
  %18 = getelementptr inbounds i8, ptr %24, i64 %12
  %19 = load ptr, ptr %9, align 8, !tbaa !36
  %20 = tail call i32 %19(ptr noundef %0, ptr noundef nonnull %18, i32 noundef %5, i16 noundef zeroext %3) #14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22, !llvm.loop !37

22:                                               ; preds = %11, %17
  %23 = phi i32 [ %25, %17 ], [ %2, %11 ]
  %24 = phi ptr [ %18, %17 ], [ %1, %11 ]
  %25 = sub nsw i32 %23, %5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %17, !llvm.loop !37

27:                                               ; preds = %22, %17, %11, %8
  %28 = phi i1 [ %10, %8 ], [ %10, %11 ], [ %26, %17 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @LogLuvDecodeTile(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 {
  %5 = tail call i32 @TIFFTileRowSize(ptr noundef %0) #14
  %6 = srem i32 %2, %5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 26
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %8
  %12 = sext i32 %5 to i64
  %13 = load ptr, ptr %9, align 8, !tbaa !36
  %14 = tail call i32 %13(ptr noundef %0, ptr noundef %1, i32 noundef %5, i16 noundef zeroext %3) #14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %22

16:                                               ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 340, ptr noundef nonnull @__PRETTY_FUNCTION__.LogLuvDecodeTile) #13
  unreachable

17:                                               ; preds = %22
  %18 = getelementptr inbounds i8, ptr %24, i64 %12
  %19 = load ptr, ptr %9, align 8, !tbaa !36
  %20 = tail call i32 %19(ptr noundef %0, ptr noundef nonnull %18, i32 noundef %5, i16 noundef zeroext %3) #14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22, !llvm.loop !39

22:                                               ; preds = %11, %17
  %23 = phi i32 [ %25, %17 ], [ %2, %11 ]
  %24 = phi ptr [ %18, %17 ], [ %1, %11 ]
  %25 = sub nsw i32 %23, %5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %17, !llvm.loop !39

27:                                               ; preds = %22, %17, %11, %8
  %28 = phi i1 [ %10, %8 ], [ %10, %11 ], [ %26, %17 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @LogLuvSetupEncode(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 11
  %5 = load i16, ptr %4, align 2, !tbaa !33
  switch i16 %5, label %34 [
    i16 -32691, label %6
    i16 -32692, label %26
  ]

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @LogLuvInitState(ptr noundef %0), !range !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %42, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 10
  %11 = load i16, ptr %10, align 8, !tbaa !35
  %12 = icmp eq i16 %11, -30859
  %13 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 27
  br i1 %12, label %14, label %20

14:                                               ; preds = %9
  store ptr @LogLuvEncode24, ptr %13, align 8, !tbaa !40
  %15 = load i32, ptr %3, align 8, !tbaa !16
  switch i32 %15, label %37 [
    i32 0, label %16
    i32 1, label %18
    i32 2, label %42
  ]

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 4
  store ptr @Luv24fromXYZ, ptr %17, align 8, !tbaa !18
  br label %42

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 4
  store ptr @Luv24fromLuv48, ptr %19, align 8, !tbaa !18
  br label %42

20:                                               ; preds = %9
  store ptr @LogLuvEncode32, ptr %13, align 8, !tbaa !40
  %21 = load i32, ptr %3, align 8, !tbaa !16
  switch i32 %21, label %37 [
    i32 0, label %22
    i32 1, label %24
    i32 2, label %42
  ]

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 4
  store ptr @Luv32fromXYZ, ptr %23, align 8, !tbaa !18
  br label %42

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 4
  store ptr @Luv32fromLuv48, ptr %25, align 8, !tbaa !18
  br label %42

26:                                               ; preds = %1
  %27 = tail call fastcc i32 @LogL16InitState(ptr noundef %0), !range !34
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 27
  store ptr @LogL16Encode, ptr %30, align 8, !tbaa !40
  %31 = load i32, ptr %3, align 8, !tbaa !16
  switch i32 %31, label %37 [
    i32 0, label %32
    i32 1, label %42
  ]

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 4
  store ptr @L16fromY, ptr %33, align 8, !tbaa !18
  br label %42

34:                                               ; preds = %1
  %35 = zext i16 %5 to i32
  %36 = load ptr, ptr %0, align 8, !tbaa !31
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %36, ptr noundef nonnull @.str.3, i32 noundef %35, ptr noundef nonnull @.str.4) #14
  br label %42

37:                                               ; preds = %29, %20, %14
  %38 = load ptr, ptr %0, align 8, !tbaa !31
  %39 = load i16, ptr %4, align 2, !tbaa !33
  %40 = icmp eq i16 %39, -32692
  %41 = select i1 %40, ptr @.str.19, ptr @.str.20
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %38, ptr noundef nonnull @.str.18, ptr noundef nonnull %41) #14
  br label %42

42:                                               ; preds = %34, %6, %22, %24, %20, %16, %18, %14, %26, %29, %32, %37
  %43 = phi i32 [ 0, %37 ], [ 1, %32 ], [ %31, %29 ], [ 1, %26 ], [ 1, %14 ], [ 1, %18 ], [ 1, %16 ], [ 1, %20 ], [ 1, %24 ], [ 1, %22 ], [ 1, %6 ], [ 1, %34 ]
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @LogLuvEncodeStrip(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 {
  %5 = tail call i32 @TIFFScanlineSize(ptr noundef %0) #14
  %6 = srem i32 %2, %5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 27
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %8
  %12 = sext i32 %5 to i64
  %13 = load ptr, ptr %9, align 8, !tbaa !40
  %14 = tail call i32 %13(ptr noundef %0, ptr noundef %1, i32 noundef %5, i16 noundef zeroext %3) #14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %27

16:                                               ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 577, ptr noundef nonnull @__PRETTY_FUNCTION__.LogLuvEncodeStrip) #13
  unreachable

17:                                               ; preds = %22
  %18 = getelementptr inbounds i8, ptr %24, i64 %12
  %19 = load ptr, ptr %9, align 8, !tbaa !40
  %20 = tail call i32 %19(ptr noundef %0, ptr noundef nonnull %18, i32 noundef %5, i16 noundef zeroext %3) #14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27, !llvm.loop !41

22:                                               ; preds = %11, %17
  %23 = phi i32 [ %25, %17 ], [ %2, %11 ]
  %24 = phi ptr [ %18, %17 ], [ %1, %11 ]
  %25 = sub nsw i32 %23, %5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %17, !llvm.loop !41

27:                                               ; preds = %22, %17, %11, %8
  %28 = phi i1 [ %10, %8 ], [ %10, %11 ], [ %26, %17 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @LogLuvEncodeTile(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 {
  %5 = tail call i32 @TIFFTileRowSize(ptr noundef %0) #14
  %6 = srem i32 %2, %5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 27
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %8
  %12 = sext i32 %5 to i64
  %13 = load ptr, ptr %9, align 8, !tbaa !40
  %14 = tail call i32 %13(ptr noundef %0, ptr noundef %1, i32 noundef %5, i16 noundef zeroext %3) #14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %27

16:                                               ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 592, ptr noundef nonnull @__PRETTY_FUNCTION__.LogLuvEncodeTile) #13
  unreachable

17:                                               ; preds = %22
  %18 = getelementptr inbounds i8, ptr %24, i64 %12
  %19 = load ptr, ptr %9, align 8, !tbaa !40
  %20 = tail call i32 %19(ptr noundef %0, ptr noundef nonnull %18, i32 noundef %5, i16 noundef zeroext %3) #14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27, !llvm.loop !42

22:                                               ; preds = %11, %17
  %23 = phi i32 [ %25, %17 ], [ %2, %11 ]
  %24 = phi ptr [ %18, %17 ], [ %1, %11 ]
  %25 = sub nsw i32 %23, %5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %17, !llvm.loop !42

27:                                               ; preds = %22, %17, %11, %8
  %28 = phi i1 [ %10, %8 ], [ %10, %11 ], [ %26, %17 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @LogLuvClose(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 11
  %3 = load i16, ptr %2, align 2, !tbaa !33
  %4 = icmp eq i16 %3, -32692
  %5 = select i1 %4, i16 1, i16 3
  %6 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  store i16 %5, ptr %6, align 2, !tbaa !43
  %7 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  store i16 16, ptr %7, align 4, !tbaa !44
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 9
  store i16 2, ptr %8, align 2, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LogLuvCleanup(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_TIFFfree(ptr noundef nonnull %7) #14
  br label %10

10:                                               ; preds = %9, %5
  tail call void @_TIFFfree(ptr noundef nonnull %3) #14
  store ptr null, ptr %2, align 8, !tbaa !5
  br label %11

11:                                               ; preds = %10, %1
  ret void
}

declare void @_TIFFMergeFieldInfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @LogLuvVGetField(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %1, 65560
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = load i32, ptr %5, align 8, !tbaa !16
  %9 = load i32, ptr %2, align 8
  %10 = icmp ult i32 %9, 41
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = zext nneg i32 %9 to i64
  %15 = getelementptr i8, ptr %13, i64 %14
  %16 = add nuw nsw i32 %9, 8
  store i32 %16, ptr %2, align 8
  br label %21

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i64 8
  store ptr %20, ptr %18, align 8
  br label %21

21:                                               ; preds = %17, %11
  %22 = phi ptr [ %15, %11 ], [ %19, %17 ]
  %23 = load ptr, ptr %22, align 8
  store i32 %8, ptr %23, align 4, !tbaa !47
  br label %28

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.logLuvState, ptr %5, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !28
  %27 = tail call i32 %26(ptr noundef %0, i32 noundef %1, ptr noundef %2) #14
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i32 [ 1, %21 ], [ %27, %24 ]
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @LogLuvVSetField(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %1, 65560
  br i1 %6, label %7, label %39

7:                                                ; preds = %3
  %8 = load i32, ptr %2, align 8
  %9 = icmp ult i32 %8, 41
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = zext nneg i32 %8 to i64
  %14 = getelementptr i8, ptr %12, i64 %13
  %15 = add nuw nsw i32 %8, 8
  store i32 %15, ptr %2, align 8
  br label %20

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %18, i64 8
  store ptr %19, ptr %17, align 8
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi ptr [ %14, %10 ], [ %18, %16 ]
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %5, align 8, !tbaa !16
  %23 = icmp ult i32 %22, 4
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %0, align 8, !tbaa !31
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %25, ptr noundef nonnull @.str.22, i32 noundef %22) #14
  br label %43

26:                                               ; preds = %20
  %27 = zext nneg i32 %22 to i64
  %28 = getelementptr inbounds [4 x i32], ptr @switch.table.LogLuvVSetField, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = zext nneg i32 %22 to i64
  %31 = getelementptr inbounds [4 x i32], ptr @switch.table.LogLuvVSetField.23, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef 258, i32 noundef %29) #14
  %34 = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef 339, i32 noundef %32) #14
  %35 = tail call i32 @TIFFTileSize(ptr noundef %0) #14
  %36 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 20
  store i32 %35, ptr %36, align 4, !tbaa !48
  %37 = tail call i32 @TIFFScanlineSize(ptr noundef %0) #14
  %38 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 38
  store i32 %37, ptr %38, align 8, !tbaa !49
  br label %43

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.logLuvState, ptr %5, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !30
  %42 = tail call i32 %41(ptr noundef %0, i32 noundef %1, ptr noundef %2) #14
  br label %43

43:                                               ; preds = %39, %26, %24
  %44 = phi i32 [ 0, %24 ], [ 1, %26 ], [ %42, %39 ]
  ret i32 %44
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @_TIFFNoPostDecode(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @LogLuvInitState(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1115, ptr noundef nonnull @__PRETTY_FUNCTION__.LogLuvInitState) #13
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 11
  %8 = load i16, ptr %7, align 2, !tbaa !33
  %9 = icmp eq i16 %8, -32691
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 1116, ptr noundef nonnull @__PRETTY_FUNCTION__.LogLuvInitState) #13
  unreachable

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %13 = load i16, ptr %12, align 2, !tbaa !50
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @LogLuvInitState.module, ptr noundef nonnull @.str.7) #14
  br label %65

16:                                               ; preds = %11
  %17 = load i32, ptr %3, align 8, !tbaa !16
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %41

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %21 = load i16, ptr %20, align 4, !tbaa !44
  %22 = zext i16 %21 to i32
  %23 = shl nuw nsw i32 %22, 3
  %24 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 9
  %25 = load i16, ptr %24, align 2, !tbaa !45
  %26 = zext i16 %25 to i32
  %27 = or i32 %23, %26
  switch i32 %27, label %31 [
    i32 259, label %32
    i32 260, label %28
    i32 257, label %28
    i32 258, label %28
    i32 132, label %29
    i32 130, label %29
    i32 129, label %29
    i32 68, label %30
    i32 65, label %30
  ]

28:                                               ; preds = %19, %19, %19
  br label %32

29:                                               ; preds = %19, %19, %19
  br label %32

30:                                               ; preds = %19, %19
  br label %32

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %30, %29, %28, %19
  %33 = phi i32 [ -1, %31 ], [ 3, %30 ], [ 1, %29 ], [ -1, %28 ], [ 0, %19 ]
  %34 = phi i32 [ -1, %31 ], [ -1, %30 ], [ -1, %29 ], [ 2, %28 ], [ -1, %19 ]
  %35 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %36 = load i16, ptr %35, align 2, !tbaa !43
  switch i16 %36, label %38 [
    i16 1, label %39
    i16 3, label %37
  ]

37:                                               ; preds = %32
  br label %39

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %32, %37, %38
  %40 = phi i32 [ -1, %38 ], [ %33, %37 ], [ %34, %32 ]
  store i32 %40, ptr %3, align 8, !tbaa !16
  br label %41

41:                                               ; preds = %39, %16
  %42 = load i32, ptr %3, align 8, !tbaa !16
  %43 = icmp ult i32 %42, 4
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %0, align 8, !tbaa !31
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %45, ptr noundef nonnull @.str.8) #14
  br label %65

46:                                               ; preds = %41
  %47 = zext nneg i32 %42 to i64
  %48 = getelementptr inbounds [4 x i32], ptr @switch.table.LogLuvInitState, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 1
  store i32 %49, ptr %50, align 4, !tbaa !51
  %51 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !52
  %53 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  %54 = load i32, ptr %53, align 4, !tbaa !53
  %55 = mul i32 %54, %52
  %56 = trunc i32 %55 to i16
  %57 = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 3
  store i16 %56, ptr %57, align 8, !tbaa !54
  %58 = shl i32 %55, 16
  %59 = ashr exact i32 %58, 14
  %60 = tail call ptr @_TIFFmalloc(i32 noundef %59) #14
  %61 = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 2
  store ptr %60, ptr %61, align 8, !tbaa !46
  %62 = icmp eq ptr %60, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %46
  %64 = load ptr, ptr %0, align 8, !tbaa !31
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @LogLuvInitState.module, ptr noundef nonnull @.str.9, ptr noundef %64) #14
  br label %65

65:                                               ; preds = %46, %63, %44, %15
  %66 = phi i32 [ 0, %15 ], [ 0, %44 ], [ 0, %63 ], [ 1, %46 ]
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @LogLuvDecode24(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i16 %3, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 224, ptr noundef nonnull @__PRETTY_FUNCTION__.LogLuvDecode24) #13
  unreachable

9:                                                ; preds = %4
  %10 = icmp eq ptr %6, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 225, ptr noundef nonnull @__PRETTY_FUNCTION__.LogLuvDecode24) #13
  unreachable

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.logLuvState, ptr %6, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !51
  %15 = sdiv i32 %2, %14
  %16 = load i32, ptr %6, align 8, !tbaa !16
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %27, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.logLuvState, ptr %6, i64 0, i32 3
  %20 = load i16, ptr %19, align 8, !tbaa !54
  %21 = sext i16 %20 to i32
  %22 = icmp sgt i32 %15, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 232, ptr noundef nonnull @__PRETTY_FUNCTION__.LogLuvDecode24) #13
  unreachable

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.logLuvState, ptr %6, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  br label %27

27:                                               ; preds = %12, %24
  %28 = phi ptr [ %26, %24 ], [ %1, %12 ]
  %29 = shl i32 %15, 2
  tail call void @_TIFFmemset(ptr noundef %28, i32 noundef 0, i32 noundef %29) #14
  %30 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %31 = load ptr, ptr %30, align 8, !tbaa !55
  %32 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %33 = load i32, ptr %32, align 8, !tbaa !56
  %34 = icmp sgt i32 %15, 0
  %35 = icmp sgt i32 %33, 0
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %37, label %64

37:                                               ; preds = %27
  %38 = sext i32 %15 to i64
  br label %39

39:                                               ; preds = %37, %39
  %40 = phi i64 [ 0, %37 ], [ %58, %39 ]
  %41 = phi ptr [ %31, %37 ], [ %56, %39 ]
  %42 = phi i32 [ %33, %37 ], [ %57, %39 ]
  %43 = load i8, ptr %41, align 1, !tbaa !57
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 16
  %46 = getelementptr inbounds i8, ptr %41, i64 1
  %47 = load i8, ptr %46, align 1, !tbaa !57
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 8
  %50 = or disjoint i32 %49, %45
  %51 = getelementptr inbounds i8, ptr %41, i64 2
  %52 = load i8, ptr %51, align 1, !tbaa !57
  %53 = zext i8 %52 to i32
  %54 = or disjoint i32 %50, %53
  %55 = getelementptr inbounds i32, ptr %28, i64 %40
  store i32 %54, ptr %55, align 4, !tbaa !47
  %56 = getelementptr inbounds i8, ptr %41, i64 3
  %57 = add nsw i32 %42, -3
  %58 = add nuw nsw i64 %40, 1
  %59 = icmp slt i64 %58, %38
  %60 = icmp sgt i32 %42, 3
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %39, label %62, !llvm.loop !58

62:                                               ; preds = %39
  %63 = trunc i64 %58 to i32
  br label %64

64:                                               ; preds = %62, %27
  %65 = phi i32 [ %33, %27 ], [ %57, %62 ]
  %66 = phi i32 [ 0, %27 ], [ %63, %62 ]
  %67 = phi ptr [ %31, %27 ], [ %56, %62 ]
  store ptr %67, ptr %30, align 8, !tbaa !55
  store i32 %65, ptr %32, align 8, !tbaa !56
  %68 = icmp eq i32 %66, %15
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr %0, align 8, !tbaa !31
  %71 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %72 = load i32, ptr %71, align 8, !tbaa !59
  %73 = sub nsw i32 %15, %66
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %70, ptr noundef nonnull @.str.12, i32 noundef %72, i32 noundef %73) #14
  br label %77

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.logLuvState, ptr %6, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !18
  tail call void %76(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %15) #14
  br label %77

77:                                               ; preds = %74, %69
  %78 = phi i32 [ 0, %69 ], [ 1, %74 ]
  ret i32 %78
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal void @Luv24toXYZ(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #7 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.logLuvState, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %14, %8 ], [ %1, %5 ]
  %10 = phi ptr [ %15, %8 ], [ %7, %5 ]
  %11 = phi i32 [ %12, %8 ], [ %2, %5 ]
  %12 = add nsw i32 %11, -1
  %13 = load i32, ptr %10, align 4, !tbaa !47
  tail call fastcc void @pix24toXYZ(i32 noundef %13, ptr noundef %9)
  %14 = getelementptr inbounds float, ptr %9, i64 3
  %15 = getelementptr inbounds i32, ptr %10, i64 1
  %16 = icmp sgt i32 %11, 1
  br i1 %16, label %8, label %17, !llvm.loop !60

17:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @Luv24toLuv48(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #8 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %66

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.logLuvState, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  br label %8

8:                                                ; preds = %5, %55
  %9 = phi i32 [ %12, %55 ], [ %2, %5 ]
  %10 = phi ptr [ %63, %55 ], [ %1, %5 ]
  %11 = phi ptr [ %64, %55 ], [ %7, %5 ]
  %12 = add nsw i32 %9, -1
  %13 = load i32, ptr %11, align 4, !tbaa !47
  %14 = lshr i32 %13, 12
  %15 = trunc i32 %14 to i16
  %16 = and i16 %15, 4093
  %17 = add nuw nsw i16 %16, 13314
  %18 = getelementptr inbounds i16, ptr %10, i64 1
  store i16 %17, ptr %10, align 2, !tbaa !61
  %19 = and i32 %13, 16383
  %20 = icmp ugt i32 %19, 16288
  br i1 %20, label %55, label %21

21:                                               ; preds = %8, %34
  %22 = phi i32 [ %35, %34 ], [ 163, %8 ]
  %23 = phi i32 [ %36, %34 ], [ 0, %8 ]
  %24 = add nsw i32 %23, %22
  %25 = ashr i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [163 x %struct.anon], ptr @uv_row, i64 0, i64 %26, i32 2
  %28 = load i16, ptr %27, align 2, !tbaa !62
  %29 = sext i16 %28 to i32
  %30 = sub nsw i32 %19, %29
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  %33 = icmp slt i32 %30, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %32, %21
  %35 = phi i32 [ %22, %21 ], [ %25, %32 ]
  %36 = phi i32 [ %25, %21 ], [ %23, %32 ]
  %37 = sub nsw i32 %35, %36
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %21, label %39, !llvm.loop !64

39:                                               ; preds = %34, %32
  %40 = phi i32 [ %36, %34 ], [ %23, %32 ]
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [163 x %struct.anon], ptr @uv_row, i64 0, i64 %41
  %43 = getelementptr inbounds [163 x %struct.anon], ptr @uv_row, i64 0, i64 %41, i32 2
  %44 = load i16, ptr %43, align 2, !tbaa !62
  %45 = sext i16 %44 to i32
  %46 = sub nsw i32 %19, %45
  %47 = load float, ptr %42, align 8, !tbaa !65
  %48 = fpext float %47 to double
  %49 = sitofp i32 %46 to double
  %50 = fadd double %49, 5.000000e-01
  %51 = tail call double @llvm.fmuladd.f64(double %50, double 0x3F6CAC0840000000, double %48)
  %52 = sitofp i32 %40 to double
  %53 = fadd double %52, 5.000000e-01
  %54 = tail call double @llvm.fmuladd.f64(double %53, double 0x3F6CAC0840000000, double 0x3F9158B820000000)
  br label %55

55:                                               ; preds = %8, %39
  %56 = phi double [ 0x3FDE50D794B8199E, %8 ], [ %54, %39 ]
  %57 = phi double [ 0x3FCAF286BD156C1A, %8 ], [ %51, %39 ]
  %58 = fmul double %57, 3.276800e+04
  %59 = fptosi double %58 to i16
  %60 = getelementptr inbounds i16, ptr %10, i64 2
  store i16 %59, ptr %18, align 2, !tbaa !61
  %61 = fmul double %56, 3.276800e+04
  %62 = fptosi double %61 to i16
  %63 = getelementptr inbounds i16, ptr %10, i64 3
  store i16 %62, ptr %60, align 2, !tbaa !61
  %64 = getelementptr inbounds i32, ptr %11, i64 1
  %65 = icmp sgt i32 %9, 1
  br i1 %65, label %8, label %66, !llvm.loop !66

66:                                               ; preds = %55, %3
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal void @Luv24toRGB(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #7 {
  %4 = alloca [3 x float], align 4
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %67

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.logLuvState, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds float, ptr %4, i64 1
  %10 = getelementptr inbounds float, ptr %4, i64 2
  br label %11

11:                                               ; preds = %6, %62
  %12 = phi ptr [ %1, %6 ], [ %65, %62 ]
  %13 = phi ptr [ %8, %6 ], [ %16, %62 ]
  %14 = phi i32 [ %2, %6 ], [ %15, %62 ]
  %15 = add nsw i32 %14, -1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  %16 = getelementptr inbounds i32, ptr %13, i64 1
  %17 = load i32, ptr %13, align 4, !tbaa !47
  call fastcc void @pix24toXYZ(i32 noundef %17, ptr noundef nonnull %4)
  %18 = load float, ptr %4, align 4, !tbaa !67
  %19 = fpext float %18 to double
  %20 = load float, ptr %9, align 4, !tbaa !67
  %21 = fpext float %20 to double
  %22 = fmul double %21, -1.276000e+00
  %23 = tail call double @llvm.fmuladd.f64(double %19, double 2.690000e+00, double %22)
  %24 = load float, ptr %10, align 4, !tbaa !67
  %25 = fpext float %24 to double
  %26 = tail call double @llvm.fmuladd.f64(double %25, double -4.140000e-01, double %23)
  %27 = fmul double %21, 1.978000e+00
  %28 = tail call double @llvm.fmuladd.f64(double %19, double -1.022000e+00, double %27)
  %29 = tail call double @llvm.fmuladd.f64(double %25, double 4.400000e-02, double %28)
  %30 = fmul double %21, -2.240000e-01
  %31 = tail call double @llvm.fmuladd.f64(double %19, double 6.100000e-02, double %30)
  %32 = tail call double @llvm.fmuladd.f64(double %25, double 1.163000e+00, double %31)
  %33 = fcmp ugt double %26, 0.000000e+00
  br i1 %33, label %34, label %41

34:                                               ; preds = %11
  %35 = fcmp ult double %26, 1.000000e+00
  br i1 %35, label %36, label %41

36:                                               ; preds = %34
  %37 = tail call double @sqrt(double noundef %26) #14
  %38 = fmul double %37, 2.560000e+02
  %39 = fptosi double %38 to i32
  %40 = trunc i32 %39 to i8
  br label %41

41:                                               ; preds = %36, %34, %11
  %42 = phi i8 [ 0, %11 ], [ %40, %36 ], [ -1, %34 ]
  store i8 %42, ptr %12, align 1, !tbaa !57
  %43 = fcmp ugt double %29, 0.000000e+00
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = fcmp ult double %29, 1.000000e+00
  br i1 %45, label %46, label %51

46:                                               ; preds = %44
  %47 = tail call double @sqrt(double noundef %29) #14
  %48 = fmul double %47, 2.560000e+02
  %49 = fptosi double %48 to i32
  %50 = trunc i32 %49 to i8
  br label %51

51:                                               ; preds = %46, %44, %41
  %52 = phi i8 [ 0, %41 ], [ %50, %46 ], [ -1, %44 ]
  %53 = getelementptr inbounds i8, ptr %12, i64 1
  store i8 %52, ptr %53, align 1, !tbaa !57
  %54 = fcmp ugt double %32, 0.000000e+00
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = fcmp ult double %32, 1.000000e+00
  br i1 %56, label %57, label %62

57:                                               ; preds = %55
  %58 = tail call double @sqrt(double noundef %32) #14
  %59 = fmul double %58, 2.560000e+02
  %60 = fptosi double %59 to i32
  %61 = trunc i32 %60 to i8
  br label %62

62:                                               ; preds = %51, %55, %57
  %63 = phi i8 [ 0, %51 ], [ %61, %57 ], [ -1, %55 ]
  %64 = getelementptr inbounds i8, ptr %12, i64 2
  store i8 %63, ptr %64, align 1, !tbaa !57
  %65 = getelementptr inbounds i8, ptr %12, i64 3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  %66 = icmp sgt i32 %14, 1
  br i1 %66, label %11, label %67, !llvm.loop !68

67:                                               ; preds = %62, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @LogLuvDecode32(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 {
  %5 = icmp eq i16 %3, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 269, ptr noundef nonnull @__PRETTY_FUNCTION__.LogLuvDecode32) #13
  unreachable

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 271, ptr noundef nonnull @__PRETTY_FUNCTION__.LogLuvDecode32) #13
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.logLuvState, ptr %9, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !51
  %15 = sdiv i32 %2, %14
  %16 = load i32, ptr %9, align 8, !tbaa !16
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %27, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.logLuvState, ptr %9, i64 0, i32 3
  %20 = load i16, ptr %19, align 8, !tbaa !54
  %21 = sext i16 %20 to i32
  %22 = icmp sgt i32 %15, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 278, ptr noundef nonnull @__PRETTY_FUNCTION__.LogLuvDecode32) #13
  unreachable

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.logLuvState, ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  br label %27

27:                                               ; preds = %12, %24
  %28 = phi ptr [ %26, %24 ], [ %1, %12 ]
  %29 = shl i32 %15, 2
  tail call void @_TIFFmemset(ptr noundef %28, i32 noundef 0, i32 noundef %29) #14
  %30 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %31 = load ptr, ptr %30, align 8, !tbaa !55
  %32 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %33 = load i32, ptr %32, align 8, !tbaa !56
  %34 = icmp sgt i32 %15, 0
  br label %35

35:                                               ; preds = %108, %27
  %36 = phi i32 [ 32, %27 ], [ %39, %108 ]
  %37 = phi ptr [ %31, %27 ], [ %110, %108 ]
  %38 = phi i32 [ %33, %27 ], [ %111, %108 ]
  %39 = add nsw i32 %36, -8
  %40 = icmp eq i32 %36, 0
  br i1 %40, label %118, label %41

41:                                               ; preds = %35
  %42 = icmp sgt i32 %38, 0
  %43 = select i1 %34, i1 %42, i1 false
  br i1 %43, label %44, label %108

44:                                               ; preds = %41, %101
  %45 = phi i32 [ %104, %101 ], [ %38, %41 ]
  %46 = phi ptr [ %103, %101 ], [ %37, %41 ]
  %47 = phi i32 [ %102, %101 ], [ 0, %41 ]
  %48 = load i8, ptr %46, align 1, !tbaa !57
  %49 = zext i8 %48 to i32
  %50 = icmp slt i8 %48, 0
  %51 = getelementptr inbounds i8, ptr %46, i64 1
  br i1 %50, label %57, label %52

52:                                               ; preds = %44
  %53 = add nsw i32 %45, -1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %101, label %55

55:                                               ; preds = %52
  %56 = sext i32 %47 to i64
  br label %76

57:                                               ; preds = %44
  %58 = add nsw i32 %49, -126
  %59 = getelementptr inbounds i8, ptr %46, i64 2
  %60 = load i8, ptr %51, align 1, !tbaa !57
  %61 = zext i8 %60 to i32
  %62 = shl i32 %61, %39
  %63 = add nsw i32 %45, -2
  %64 = icmp eq i32 %58, 0
  br i1 %64, label %101, label %65

65:                                               ; preds = %57
  %66 = sext i32 %47 to i64
  br label %67

67:                                               ; preds = %65, %67
  %68 = phi i64 [ %66, %65 ], [ %71, %67 ]
  %69 = phi i32 [ %58, %65 ], [ %70, %67 ]
  %70 = add nsw i32 %69, -1
  %71 = add nsw i64 %68, 1
  %72 = getelementptr inbounds i32, ptr %28, i64 %68
  %73 = load i32, ptr %72, align 4, !tbaa !47
  %74 = or i32 %73, %62
  store i32 %74, ptr %72, align 4, !tbaa !47
  %75 = icmp eq i32 %70, 0
  br i1 %75, label %94, label %67, !llvm.loop !69

76:                                               ; preds = %55, %82
  %77 = phi i64 [ %56, %55 ], [ %87, %82 ]
  %78 = phi i32 [ %53, %55 ], [ %92, %82 ]
  %79 = phi ptr [ %51, %55 ], [ %91, %82 ]
  %80 = phi i32 [ %49, %55 ], [ %83, %82 ]
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %96, label %82

82:                                               ; preds = %76
  %83 = add nsw i32 %80, -1
  %84 = load i8, ptr %79, align 1, !tbaa !57
  %85 = zext i8 %84 to i32
  %86 = shl i32 %85, %39
  %87 = add nsw i64 %77, 1
  %88 = getelementptr inbounds i32, ptr %28, i64 %77
  %89 = load i32, ptr %88, align 4, !tbaa !47
  %90 = or i32 %86, %89
  store i32 %90, ptr %88, align 4, !tbaa !47
  %91 = getelementptr inbounds i8, ptr %79, i64 1
  %92 = add nsw i32 %78, -1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %76, !llvm.loop !70

94:                                               ; preds = %67
  %95 = trunc i64 %71 to i32
  br label %101

96:                                               ; preds = %76, %82
  %97 = phi i64 [ %77, %76 ], [ %87, %82 ]
  %98 = phi ptr [ %79, %76 ], [ %91, %82 ]
  %99 = phi i32 [ %78, %76 ], [ 0, %82 ]
  %100 = trunc i64 %97 to i32
  br label %101

101:                                              ; preds = %96, %94, %52, %57
  %102 = phi i32 [ %47, %57 ], [ %47, %52 ], [ %95, %94 ], [ %100, %96 ]
  %103 = phi ptr [ %59, %57 ], [ %51, %52 ], [ %59, %94 ], [ %98, %96 ]
  %104 = phi i32 [ %63, %57 ], [ 0, %52 ], [ %63, %94 ], [ %99, %96 ]
  %105 = icmp slt i32 %102, %15
  %106 = icmp sgt i32 %104, 0
  %107 = select i1 %105, i1 %106, i1 false
  br i1 %107, label %44, label %108, !llvm.loop !71

108:                                              ; preds = %101, %41
  %109 = phi i32 [ 0, %41 ], [ %102, %101 ]
  %110 = phi ptr [ %37, %41 ], [ %103, %101 ]
  %111 = phi i32 [ %38, %41 ], [ %104, %101 ]
  %112 = icmp eq i32 %109, %15
  br i1 %112, label %35, label %113, !llvm.loop !72

113:                                              ; preds = %108
  %114 = load ptr, ptr %0, align 8, !tbaa !31
  %115 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %116 = load i32, ptr %115, align 8, !tbaa !59
  %117 = sub nsw i32 %15, %109
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %114, ptr noundef nonnull @.str.13, i32 noundef %116, i32 noundef %117) #14
  br label %121

118:                                              ; preds = %35
  %119 = getelementptr inbounds %struct.logLuvState, ptr %9, i64 0, i32 4
  %120 = load ptr, ptr %119, align 8, !tbaa !18
  tail call void %120(ptr noundef nonnull %9, ptr noundef %1, i32 noundef %15) #14
  br label %121

121:                                              ; preds = %118, %113
  %122 = phi ptr [ %37, %118 ], [ %110, %113 ]
  %123 = phi i32 [ %38, %118 ], [ %111, %113 ]
  %124 = phi i32 [ 1, %118 ], [ 0, %113 ]
  store ptr %122, ptr %30, align 8, !tbaa !55
  store i32 %123, ptr %32, align 8, !tbaa !56
  ret i32 %124
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal void @Luv32toXYZ(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #7 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %65

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.logLuvState, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  br label %8

8:                                                ; preds = %5, %62
  %9 = phi ptr [ %63, %62 ], [ %1, %5 ]
  %10 = phi ptr [ %13, %62 ], [ %7, %5 ]
  %11 = phi i32 [ %12, %62 ], [ %2, %5 ]
  %12 = add nsw i32 %11, -1
  %13 = getelementptr inbounds i32, ptr %10, i64 1
  %14 = load i32, ptr %10, align 4, !tbaa !47
  %15 = ashr i32 %14, 16
  %16 = and i32 %15, 32767
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %8
  %19 = sitofp i32 %16 to double
  %20 = fadd double %19, 5.000000e-01
  %21 = tail call double @llvm.fmuladd.f64(double %20, double 0x3F662E42FEFA39EF, double 0xC0462E42FEFA39EF)
  %22 = tail call double @exp(double noundef %21) #14
  %23 = and i32 %15, 32768
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = fneg double %22
  br label %27

27:                                               ; preds = %25, %18, %8
  %28 = phi double [ %26, %25 ], [ 0.000000e+00, %8 ], [ %22, %18 ]
  %29 = fcmp oeq double %28, 0.000000e+00
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = getelementptr inbounds float, ptr %9, i64 2
  store float 0.000000e+00, ptr %31, align 4, !tbaa !67
  %32 = getelementptr inbounds float, ptr %9, i64 1
  store float 0.000000e+00, ptr %32, align 4, !tbaa !67
  store float 0.000000e+00, ptr %9, align 4, !tbaa !67
  br label %62

33:                                               ; preds = %27
  %34 = lshr i32 %14, 8
  %35 = and i32 %34, 255
  %36 = uitofp i32 %35 to double
  %37 = fadd double %36, 5.000000e-01
  %38 = fmul double %37, 0x3F63FB013FB013FB
  %39 = and i32 %14, 255
  %40 = uitofp i32 %39 to double
  %41 = fadd double %40, 5.000000e-01
  %42 = fmul double %41, 0x3F63FB013FB013FB
  %43 = fmul double %42, -1.600000e+01
  %44 = tail call double @llvm.fmuladd.f64(double %38, double 6.000000e+00, double %43)
  %45 = fadd double %44, 1.200000e+01
  %46 = fdiv double 1.000000e+00, %45
  %47 = fmul double %38, 9.000000e+00
  %48 = fmul double %47, %46
  %49 = fmul double %42, 4.000000e+00
  %50 = fmul double %49, %46
  %51 = fdiv double %48, %50
  %52 = fmul double %51, %28
  %53 = fptrunc double %52 to float
  store float %53, ptr %9, align 4, !tbaa !67
  %54 = fptrunc double %28 to float
  %55 = getelementptr inbounds float, ptr %9, i64 1
  store float %54, ptr %55, align 4, !tbaa !67
  %56 = fsub double 1.000000e+00, %48
  %57 = fsub double %56, %50
  %58 = fdiv double %57, %50
  %59 = fmul double %58, %28
  %60 = fptrunc double %59 to float
  %61 = getelementptr inbounds float, ptr %9, i64 2
  store float %60, ptr %61, align 4, !tbaa !67
  br label %62

62:                                               ; preds = %30, %33
  %63 = getelementptr inbounds float, ptr %9, i64 3
  %64 = icmp sgt i32 %11, 1
  br i1 %64, label %8, label %65, !llvm.loop !73

65:                                               ; preds = %62, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @Luv32toLuv48(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #8 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %34

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.logLuvState, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i32 [ %12, %8 ], [ %2, %5 ]
  %10 = phi ptr [ %32, %8 ], [ %7, %5 ]
  %11 = phi ptr [ %31, %8 ], [ %1, %5 ]
  %12 = add nsw i32 %9, -1
  %13 = load i32, ptr %10, align 4, !tbaa !47
  %14 = lshr i32 %13, 16
  %15 = trunc i32 %14 to i16
  %16 = getelementptr inbounds i16, ptr %11, i64 1
  store i16 %15, ptr %11, align 2, !tbaa !61
  %17 = lshr i32 %13, 8
  %18 = and i32 %17, 255
  %19 = uitofp i32 %18 to double
  %20 = fadd double %19, 5.000000e-01
  %21 = fmul double %20, 0x3F63FB013FB013FB
  %22 = and i32 %13, 255
  %23 = uitofp i32 %22 to double
  %24 = fadd double %23, 5.000000e-01
  %25 = fmul double %24, 0x3F63FB013FB013FB
  %26 = fmul double %21, 3.276800e+04
  %27 = fptosi double %26 to i16
  %28 = getelementptr inbounds i16, ptr %11, i64 2
  store i16 %27, ptr %16, align 2, !tbaa !61
  %29 = fmul double %25, 3.276800e+04
  %30 = fptosi double %29 to i16
  %31 = getelementptr inbounds i16, ptr %11, i64 3
  store i16 %30, ptr %28, align 2, !tbaa !61
  %32 = getelementptr inbounds i32, ptr %10, i64 1
  %33 = icmp sgt i32 %9, 1
  br i1 %33, label %8, label %34, !llvm.loop !74

34:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal void @Luv32toRGB(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #7 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %107

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.logLuvState, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  br label %8

8:                                                ; preds = %5, %102
  %9 = phi ptr [ %105, %102 ], [ %1, %5 ]
  %10 = phi ptr [ %13, %102 ], [ %7, %5 ]
  %11 = phi i32 [ %12, %102 ], [ %2, %5 ]
  %12 = add nsw i32 %11, -1
  %13 = getelementptr inbounds i32, ptr %10, i64 1
  %14 = load i32, ptr %10, align 4, !tbaa !47
  %15 = ashr i32 %14, 16
  %16 = and i32 %15, 32767
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %8
  %19 = sitofp i32 %16 to double
  %20 = fadd double %19, 5.000000e-01
  %21 = tail call double @llvm.fmuladd.f64(double %20, double 0x3F662E42FEFA39EF, double 0xC0462E42FEFA39EF)
  %22 = tail call double @exp(double noundef %21) #14
  %23 = and i32 %15, 32768
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = fneg double %22
  br label %27

27:                                               ; preds = %25, %18, %8
  %28 = phi double [ %26, %25 ], [ 0.000000e+00, %8 ], [ %22, %18 ]
  %29 = fcmp oeq double %28, 0.000000e+00
  br i1 %29, label %57, label %30

30:                                               ; preds = %27
  %31 = lshr i32 %14, 8
  %32 = and i32 %31, 255
  %33 = uitofp i32 %32 to double
  %34 = fadd double %33, 5.000000e-01
  %35 = fmul double %34, 0x3F63FB013FB013FB
  %36 = and i32 %14, 255
  %37 = uitofp i32 %36 to double
  %38 = fadd double %37, 5.000000e-01
  %39 = fmul double %38, 0x3F63FB013FB013FB
  %40 = fmul double %39, -1.600000e+01
  %41 = tail call double @llvm.fmuladd.f64(double %35, double 6.000000e+00, double %40)
  %42 = fadd double %41, 1.200000e+01
  %43 = fdiv double 1.000000e+00, %42
  %44 = fmul double %35, 9.000000e+00
  %45 = fmul double %44, %43
  %46 = fmul double %39, 4.000000e+00
  %47 = fmul double %46, %43
  %48 = fdiv double %45, %47
  %49 = fmul double %48, %28
  %50 = fptrunc double %49 to float
  %51 = fptrunc double %28 to float
  %52 = fsub double 1.000000e+00, %45
  %53 = fsub double %52, %47
  %54 = fdiv double %53, %47
  %55 = fmul double %54, %28
  %56 = fptrunc double %55 to float
  br label %57

57:                                               ; preds = %27, %30
  %58 = phi float [ %56, %30 ], [ 0.000000e+00, %27 ]
  %59 = phi float [ %51, %30 ], [ 0.000000e+00, %27 ]
  %60 = phi float [ %50, %30 ], [ 0.000000e+00, %27 ]
  %61 = fpext float %60 to double
  %62 = fpext float %59 to double
  %63 = fmul double %62, -1.276000e+00
  %64 = tail call double @llvm.fmuladd.f64(double %61, double 2.690000e+00, double %63)
  %65 = fpext float %58 to double
  %66 = tail call double @llvm.fmuladd.f64(double %65, double -4.140000e-01, double %64)
  %67 = fmul double %62, 1.978000e+00
  %68 = tail call double @llvm.fmuladd.f64(double %61, double -1.022000e+00, double %67)
  %69 = tail call double @llvm.fmuladd.f64(double %65, double 4.400000e-02, double %68)
  %70 = fmul double %62, -2.240000e-01
  %71 = tail call double @llvm.fmuladd.f64(double %61, double 6.100000e-02, double %70)
  %72 = tail call double @llvm.fmuladd.f64(double %65, double 1.163000e+00, double %71)
  %73 = fcmp ugt double %66, 0.000000e+00
  br i1 %73, label %74, label %81

74:                                               ; preds = %57
  %75 = fcmp ult double %66, 1.000000e+00
  br i1 %75, label %76, label %81

76:                                               ; preds = %74
  %77 = tail call double @sqrt(double noundef %66) #14
  %78 = fmul double %77, 2.560000e+02
  %79 = fptosi double %78 to i32
  %80 = trunc i32 %79 to i8
  br label %81

81:                                               ; preds = %76, %74, %57
  %82 = phi i8 [ 0, %57 ], [ %80, %76 ], [ -1, %74 ]
  store i8 %82, ptr %9, align 1, !tbaa !57
  %83 = fcmp ugt double %69, 0.000000e+00
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = fcmp ult double %69, 1.000000e+00
  br i1 %85, label %86, label %91

86:                                               ; preds = %84
  %87 = tail call double @sqrt(double noundef %69) #14
  %88 = fmul double %87, 2.560000e+02
  %89 = fptosi double %88 to i32
  %90 = trunc i32 %89 to i8
  br label %91

91:                                               ; preds = %86, %84, %81
  %92 = phi i8 [ 0, %81 ], [ %90, %86 ], [ -1, %84 ]
  %93 = getelementptr inbounds i8, ptr %9, i64 1
  store i8 %92, ptr %93, align 1, !tbaa !57
  %94 = fcmp ugt double %72, 0.000000e+00
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = fcmp ult double %72, 1.000000e+00
  br i1 %96, label %97, label %102

97:                                               ; preds = %95
  %98 = tail call double @sqrt(double noundef %72) #14
  %99 = fmul double %98, 2.560000e+02
  %100 = fptosi double %99 to i32
  %101 = trunc i32 %100 to i8
  br label %102

102:                                              ; preds = %91, %95, %97
  %103 = phi i8 [ 0, %91 ], [ %101, %97 ], [ -1, %95 ]
  %104 = getelementptr inbounds i8, ptr %9, i64 2
  store i8 %103, ptr %104, align 1, !tbaa !57
  %105 = getelementptr inbounds i8, ptr %9, i64 3
  %106 = icmp sgt i32 %11, 1
  br i1 %106, label %8, label %107, !llvm.loop !75

107:                                              ; preds = %102, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @LogL16InitState(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1025, ptr noundef nonnull @__PRETTY_FUNCTION__.LogL16InitState) #13
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 11
  %8 = load i16, ptr %7, align 2, !tbaa !33
  %9 = icmp eq i16 %8, -32692
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 1026, ptr noundef nonnull @__PRETTY_FUNCTION__.LogL16InitState) #13
  unreachable

11:                                               ; preds = %6
  %12 = load i32, ptr %3, align 8, !tbaa !16
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %16 = load i16, ptr %15, align 4, !tbaa !44
  %17 = zext i16 %16 to i32
  %18 = shl nuw nsw i32 %17, 6
  %19 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %20 = load i16, ptr %19, align 2, !tbaa !43
  %21 = zext i16 %20 to i32
  %22 = shl nuw nsw i32 %21, 3
  %23 = or i32 %22, %18
  %24 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 9
  %25 = load i16, ptr %24, align 2, !tbaa !45
  %26 = zext i16 %25 to i32
  %27 = or i32 %23, %26
  switch i32 %27, label %30 [
    i32 2059, label %31
    i32 1036, label %28
    i32 1034, label %28
    i32 1033, label %28
    i32 524, label %29
    i32 521, label %29
  ]

28:                                               ; preds = %14, %14, %14
  br label %31

29:                                               ; preds = %14, %14
  br label %31

30:                                               ; preds = %14
  br label %31

31:                                               ; preds = %14, %28, %29, %30
  %32 = phi i32 [ -1, %30 ], [ 3, %29 ], [ 1, %28 ], [ 0, %14 ]
  store i32 %32, ptr %3, align 8, !tbaa !16
  br label %33

33:                                               ; preds = %31, %11
  %34 = load i32, ptr %3, align 8, !tbaa !16
  switch i32 %34, label %37 [
    i32 0, label %39
    i32 1, label %35
    i32 3, label %36
  ]

35:                                               ; preds = %33
  br label %39

36:                                               ; preds = %33
  br label %39

37:                                               ; preds = %33
  %38 = load ptr, ptr %0, align 8, !tbaa !31
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %38, ptr noundef nonnull @.str.15) #14
  br label %56

39:                                               ; preds = %33, %36, %35
  %40 = phi i32 [ 1, %36 ], [ 2, %35 ], [ 4, %33 ]
  %41 = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 1
  store i32 %40, ptr %41, align 4, !tbaa !51
  %42 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !52
  %44 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  %45 = load i32, ptr %44, align 4, !tbaa !53
  %46 = mul i32 %45, %43
  %47 = trunc i32 %46 to i16
  %48 = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 3
  store i16 %47, ptr %48, align 8, !tbaa !54
  %49 = shl i32 %46, 16
  %50 = ashr exact i32 %49, 15
  %51 = tail call ptr @_TIFFmalloc(i32 noundef %50) #14
  %52 = getelementptr inbounds %struct.logLuvState, ptr %3, i64 0, i32 2
  store ptr %51, ptr %52, align 8, !tbaa !46
  %53 = icmp eq ptr %51, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = load ptr, ptr %0, align 8, !tbaa !31
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @LogL16InitState.module, ptr noundef nonnull @.str.9, ptr noundef %55) #14
  br label %56

56:                                               ; preds = %39, %54, %37
  %57 = phi i32 [ 0, %37 ], [ 0, %54 ], [ 1, %39 ]
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @LogL16Decode(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i16 %3, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 169, ptr noundef nonnull @__PRETTY_FUNCTION__.LogL16Decode) #13
  unreachable

9:                                                ; preds = %4
  %10 = icmp eq ptr %6, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 170, ptr noundef nonnull @__PRETTY_FUNCTION__.LogL16Decode) #13
  unreachable

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.logLuvState, ptr %6, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !51
  %15 = sdiv i32 %2, %14
  %16 = load i32, ptr %6, align 8, !tbaa !16
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %27, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.logLuvState, ptr %6, i64 0, i32 3
  %20 = load i16, ptr %19, align 8, !tbaa !54
  %21 = sext i16 %20 to i32
  %22 = icmp sgt i32 %15, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 177, ptr noundef nonnull @__PRETTY_FUNCTION__.LogL16Decode) #13
  unreachable

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.logLuvState, ptr %6, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  br label %27

27:                                               ; preds = %12, %24
  %28 = phi ptr [ %26, %24 ], [ %1, %12 ]
  %29 = shl i32 %15, 1
  tail call void @_TIFFmemset(ptr noundef %28, i32 noundef 0, i32 noundef %29) #14
  %30 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %31 = load ptr, ptr %30, align 8, !tbaa !55
  %32 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %33 = load i32, ptr %32, align 8, !tbaa !56
  %34 = icmp sgt i32 %15, 0
  br label %35

35:                                               ; preds = %111, %27
  %36 = phi i32 [ 16, %27 ], [ %39, %111 ]
  %37 = phi ptr [ %31, %27 ], [ %113, %111 ]
  %38 = phi i32 [ %33, %27 ], [ %114, %111 ]
  %39 = add nsw i32 %36, -8
  %40 = icmp eq i32 %36, 0
  br i1 %40, label %121, label %41

41:                                               ; preds = %35
  %42 = icmp sgt i32 %38, 0
  %43 = select i1 %34, i1 %42, i1 false
  br i1 %43, label %44, label %111

44:                                               ; preds = %41, %104
  %45 = phi i32 [ %107, %104 ], [ %38, %41 ]
  %46 = phi ptr [ %106, %104 ], [ %37, %41 ]
  %47 = phi i32 [ %105, %104 ], [ 0, %41 ]
  %48 = load i8, ptr %46, align 1, !tbaa !57
  %49 = zext i8 %48 to i32
  %50 = icmp slt i8 %48, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds i8, ptr %46, i64 1
  %53 = add nsw i32 %45, -1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %104, label %55

55:                                               ; preds = %51
  %56 = sext i32 %47 to i64
  br label %78

57:                                               ; preds = %44
  %58 = add nsw i32 %49, -126
  %59 = getelementptr inbounds i8, ptr %46, i64 2
  %60 = add nsw i32 %45, -2
  %61 = icmp eq i32 %58, 0
  br i1 %61, label %104, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds i8, ptr %46, i64 1
  %64 = load i8, ptr %63, align 1, !tbaa !57
  %65 = zext i8 %64 to i32
  %66 = shl i32 %65, %39
  %67 = trunc i32 %66 to i16
  %68 = sext i32 %47 to i64
  br label %69

69:                                               ; preds = %62, %69
  %70 = phi i64 [ %68, %62 ], [ %73, %69 ]
  %71 = phi i32 [ %58, %62 ], [ %72, %69 ]
  %72 = add nsw i32 %71, -1
  %73 = add nsw i64 %70, 1
  %74 = getelementptr inbounds i16, ptr %28, i64 %70
  %75 = load i16, ptr %74, align 2, !tbaa !61
  %76 = or i16 %75, %67
  store i16 %76, ptr %74, align 2, !tbaa !61
  %77 = icmp eq i32 %72, 0
  br i1 %77, label %97, label %69, !llvm.loop !76

78:                                               ; preds = %55, %84
  %79 = phi i64 [ %56, %55 ], [ %89, %84 ]
  %80 = phi i32 [ %53, %55 ], [ %95, %84 ]
  %81 = phi ptr [ %52, %55 ], [ %94, %84 ]
  %82 = phi i32 [ %49, %55 ], [ %85, %84 ]
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %99, label %84

84:                                               ; preds = %78
  %85 = add nsw i32 %82, -1
  %86 = load i8, ptr %81, align 1, !tbaa !57
  %87 = zext i8 %86 to i32
  %88 = shl i32 %87, %39
  %89 = add nsw i64 %79, 1
  %90 = getelementptr inbounds i16, ptr %28, i64 %79
  %91 = load i16, ptr %90, align 2, !tbaa !61
  %92 = trunc i32 %88 to i16
  %93 = or i16 %91, %92
  store i16 %93, ptr %90, align 2, !tbaa !61
  %94 = getelementptr inbounds i8, ptr %81, i64 1
  %95 = add nsw i32 %80, -1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %78, !llvm.loop !77

97:                                               ; preds = %69
  %98 = trunc i64 %73 to i32
  br label %104

99:                                               ; preds = %78, %84
  %100 = phi i64 [ %79, %78 ], [ %89, %84 ]
  %101 = phi ptr [ %81, %78 ], [ %94, %84 ]
  %102 = phi i32 [ %80, %78 ], [ 0, %84 ]
  %103 = trunc i64 %100 to i32
  br label %104

104:                                              ; preds = %99, %97, %51, %57
  %105 = phi i32 [ %47, %57 ], [ %47, %51 ], [ %98, %97 ], [ %103, %99 ]
  %106 = phi ptr [ %59, %57 ], [ %52, %51 ], [ %59, %97 ], [ %101, %99 ]
  %107 = phi i32 [ %60, %57 ], [ 0, %51 ], [ %60, %97 ], [ %102, %99 ]
  %108 = icmp slt i32 %105, %15
  %109 = icmp sgt i32 %107, 0
  %110 = select i1 %108, i1 %109, i1 false
  br i1 %110, label %44, label %111, !llvm.loop !78

111:                                              ; preds = %104, %41
  %112 = phi i32 [ 0, %41 ], [ %105, %104 ]
  %113 = phi ptr [ %37, %41 ], [ %106, %104 ]
  %114 = phi i32 [ %38, %41 ], [ %107, %104 ]
  %115 = icmp eq i32 %112, %15
  br i1 %115, label %35, label %116, !llvm.loop !79

116:                                              ; preds = %111
  %117 = load ptr, ptr %0, align 8, !tbaa !31
  %118 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %119 = load i32, ptr %118, align 8, !tbaa !59
  %120 = sub nsw i32 %15, %112
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %117, ptr noundef nonnull @.str.16, i32 noundef %119, i32 noundef %120) #14
  br label %124

121:                                              ; preds = %35
  %122 = getelementptr inbounds %struct.logLuvState, ptr %6, i64 0, i32 4
  %123 = load ptr, ptr %122, align 8, !tbaa !18
  tail call void %123(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %15) #14
  br label %124

124:                                              ; preds = %121, %116
  %125 = phi ptr [ %37, %121 ], [ %113, %116 ]
  %126 = phi i32 [ %38, %121 ], [ %114, %116 ]
  %127 = phi i32 [ 1, %121 ], [ 0, %116 ]
  store ptr %125, ptr %30, align 8, !tbaa !55
  store i32 %126, ptr %32, align 8, !tbaa !56
  ret i32 %127
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal void @L16toY(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #7 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %30

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.logLuvState, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  br label %8

8:                                                ; preds = %5, %25
  %9 = phi ptr [ %28, %25 ], [ %1, %5 ]
  %10 = phi ptr [ %13, %25 ], [ %7, %5 ]
  %11 = phi i32 [ %12, %25 ], [ %2, %5 ]
  %12 = add nsw i32 %11, -1
  %13 = getelementptr inbounds i16, ptr %10, i64 1
  %14 = load i16, ptr %10, align 2, !tbaa !61
  %15 = and i16 %14, 32767
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %8
  %18 = uitofp i16 %15 to double
  %19 = fadd double %18, 5.000000e-01
  %20 = tail call double @llvm.fmuladd.f64(double %19, double 0x3F662E42FEFA39EF, double 0xC0462E42FEFA39EF)
  %21 = tail call double @exp(double noundef %20) #14
  %22 = icmp sgt i16 %14, -1
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = fneg double %21
  br label %25

25:                                               ; preds = %8, %17, %23
  %26 = phi double [ %24, %23 ], [ 0.000000e+00, %8 ], [ %21, %17 ]
  %27 = fptrunc double %26 to float
  %28 = getelementptr inbounds float, ptr %9, i64 1
  store float %27, ptr %9, align 4, !tbaa !67
  %29 = icmp sgt i32 %11, 1
  br i1 %29, label %8, label %30, !llvm.loop !80

30:                                               ; preds = %25, %3
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal void @L16toGry(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #7 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %39

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.logLuvState, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  br label %8

8:                                                ; preds = %5, %34
  %9 = phi i32 [ %12, %34 ], [ %2, %5 ]
  %10 = phi ptr [ %37, %34 ], [ %1, %5 ]
  %11 = phi ptr [ %13, %34 ], [ %7, %5 ]
  %12 = add nsw i32 %9, -1
  %13 = getelementptr inbounds i16, ptr %11, i64 1
  %14 = load i16, ptr %11, align 2, !tbaa !61
  %15 = and i16 %14, 32767
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %8
  %18 = uitofp i16 %15 to double
  %19 = fadd double %18, 5.000000e-01
  %20 = tail call double @llvm.fmuladd.f64(double %19, double 0x3F662E42FEFA39EF, double 0xC0462E42FEFA39EF)
  %21 = tail call double @exp(double noundef %20) #14
  %22 = icmp sgt i16 %14, -1
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = fneg double %21
  br label %25

25:                                               ; preds = %8, %17, %23
  %26 = phi double [ %24, %23 ], [ 0.000000e+00, %8 ], [ %21, %17 ]
  %27 = fcmp ugt double %26, 0.000000e+00
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = fcmp ult double %26, 1.000000e+00
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = tail call double @sqrt(double noundef %26) #14
  %32 = fmul double %31, 2.560000e+02
  %33 = fptosi double %32 to i32
  br label %34

34:                                               ; preds = %30, %28, %25
  %35 = phi i32 [ 0, %25 ], [ %33, %30 ], [ 255, %28 ]
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 %36, ptr %10, align 1, !tbaa !57
  %38 = icmp sgt i32 %9, 1
  br i1 %38, label %8, label %39, !llvm.loop !81

39:                                               ; preds = %34, %3
  ret void
}

declare void @_TIFFmemset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(write) uwtable
define internal fastcc void @pix24toXYZ(i32 noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #9 {
  %3 = lshr i32 %0, 14
  %4 = and i32 %3, 1023
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %7, align 4, !tbaa !67
  %8 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %8, align 4, !tbaa !67
  store float 0.000000e+00, ptr %1, align 4, !tbaa !67
  br label %72

9:                                                ; preds = %2
  %10 = sitofp i32 %4 to double
  %11 = fadd double %10, 5.000000e-01
  %12 = tail call double @llvm.fmuladd.f64(double %11, double 0x3F862E42FEFA39EF, double 0xC020A2B23F3BAB73)
  %13 = tail call double @exp(double noundef %12) #14
  %14 = and i32 %0, 16383
  %15 = icmp ugt i32 %14, 16288
  br i1 %15, label %50, label %16

16:                                               ; preds = %9, %29
  %17 = phi i32 [ %30, %29 ], [ 163, %9 ]
  %18 = phi i32 [ %31, %29 ], [ 0, %9 ]
  %19 = add nsw i32 %18, %17
  %20 = ashr i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [163 x %struct.anon], ptr @uv_row, i64 0, i64 %21, i32 2
  %23 = load i16, ptr %22, align 2, !tbaa !62
  %24 = sext i16 %23 to i32
  %25 = sub nsw i32 %14, %24
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %16
  %28 = icmp slt i32 %25, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %27, %16
  %30 = phi i32 [ %17, %16 ], [ %20, %27 ]
  %31 = phi i32 [ %20, %16 ], [ %18, %27 ]
  %32 = sub nsw i32 %30, %31
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %16, label %34, !llvm.loop !64

34:                                               ; preds = %29, %27
  %35 = phi i32 [ %31, %29 ], [ %18, %27 ]
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [163 x %struct.anon], ptr @uv_row, i64 0, i64 %36
  %38 = getelementptr inbounds [163 x %struct.anon], ptr @uv_row, i64 0, i64 %36, i32 2
  %39 = load i16, ptr %38, align 2, !tbaa !62
  %40 = sext i16 %39 to i32
  %41 = sub nsw i32 %14, %40
  %42 = load float, ptr %37, align 8, !tbaa !65
  %43 = fpext float %42 to double
  %44 = sitofp i32 %41 to double
  %45 = fadd double %44, 5.000000e-01
  %46 = tail call double @llvm.fmuladd.f64(double %45, double 0x3F6CAC0840000000, double %43)
  %47 = sitofp i32 %35 to double
  %48 = fadd double %47, 5.000000e-01
  %49 = tail call double @llvm.fmuladd.f64(double %48, double 0x3F6CAC0840000000, double 0x3F9158B820000000)
  br label %50

50:                                               ; preds = %9, %34
  %51 = phi double [ 0x3FDE50D794B8199E, %9 ], [ %49, %34 ]
  %52 = phi double [ 0x3FCAF286BD156C1A, %9 ], [ %46, %34 ]
  %53 = fmul double %51, -1.600000e+01
  %54 = tail call double @llvm.fmuladd.f64(double %52, double 6.000000e+00, double %53)
  %55 = fadd double %54, 1.200000e+01
  %56 = fdiv double 1.000000e+00, %55
  %57 = fmul double %52, 9.000000e+00
  %58 = fmul double %57, %56
  %59 = fmul double %51, 4.000000e+00
  %60 = fmul double %59, %56
  %61 = fdiv double %58, %60
  %62 = fmul double %13, %61
  %63 = fptrunc double %62 to float
  store float %63, ptr %1, align 4, !tbaa !67
  %64 = fptrunc double %13 to float
  %65 = getelementptr inbounds float, ptr %1, i64 1
  store float %64, ptr %65, align 4, !tbaa !67
  %66 = fsub double 1.000000e+00, %58
  %67 = fsub double %66, %60
  %68 = fdiv double %67, %60
  %69 = fmul double %13, %68
  %70 = fptrunc double %69 to float
  %71 = getelementptr inbounds float, ptr %1, i64 2
  store float %70, ptr %71, align 4, !tbaa !67
  br label %72

72:                                               ; preds = %50, %6
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #10

declare i32 @TIFFScanlineSize(ptr noundef) local_unnamed_addr #3

declare i32 @TIFFTileRowSize(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @LogLuvEncode24(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i16 %3, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 445, ptr noundef nonnull @__PRETTY_FUNCTION__.LogLuvEncode24) #13
  unreachable

9:                                                ; preds = %4
  %10 = icmp eq ptr %6, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 446, ptr noundef nonnull @__PRETTY_FUNCTION__.LogLuvEncode24) #13
  unreachable

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.logLuvState, ptr %6, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !51
  %15 = sdiv i32 %2, %14
  %16 = load i32, ptr %6, align 8, !tbaa !16
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %29, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.logLuvState, ptr %6, i64 0, i32 3
  %20 = load i16, ptr %19, align 8, !tbaa !54
  %21 = sext i16 %20 to i32
  %22 = icmp sgt i32 %15, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 453, ptr noundef nonnull @__PRETTY_FUNCTION__.LogLuvEncode24) #13
  unreachable

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.logLuvState, ptr %6, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.logLuvState, ptr %6, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !18
  tail call void %28(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %15) #14
  br label %29

29:                                               ; preds = %12, %24
  %30 = phi ptr [ %26, %24 ], [ %1, %12 ]
  %31 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %32 = load ptr, ptr %31, align 8, !tbaa !55
  %33 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  %34 = load i32, ptr %33, align 8, !tbaa !82
  %35 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %36 = load i32, ptr %35, align 8, !tbaa !56
  %37 = sub nsw i32 %34, %36
  %38 = icmp eq i32 %15, 0
  br i1 %38, label %73, label %39

39:                                               ; preds = %29, %56
  %40 = phi i32 [ %44, %56 ], [ %15, %29 ]
  %41 = phi ptr [ %67, %56 ], [ %30, %29 ]
  %42 = phi ptr [ %70, %56 ], [ %32, %29 ]
  %43 = phi i32 [ %71, %56 ], [ %37, %29 ]
  %44 = add nsw i32 %40, -1
  %45 = icmp slt i32 %43, 3
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  store ptr %42, ptr %31, align 8, !tbaa !55
  %47 = load i32, ptr %33, align 8, !tbaa !82
  %48 = sub nsw i32 %47, %43
  store i32 %48, ptr %35, align 8, !tbaa !56
  %49 = tail call i32 @TIFFFlushData1(ptr noundef %0) #14
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %78, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr %31, align 8, !tbaa !55
  %53 = load i32, ptr %33, align 8, !tbaa !82
  %54 = load i32, ptr %35, align 8, !tbaa !56
  %55 = sub nsw i32 %53, %54
  br label %56

56:                                               ; preds = %51, %39
  %57 = phi i32 [ %55, %51 ], [ %43, %39 ]
  %58 = phi ptr [ %52, %51 ], [ %42, %39 ]
  %59 = load i32, ptr %41, align 4, !tbaa !47
  %60 = lshr i32 %59, 16
  %61 = trunc i32 %60 to i8
  %62 = getelementptr inbounds i8, ptr %58, i64 1
  store i8 %61, ptr %58, align 1, !tbaa !57
  %63 = load i32, ptr %41, align 4, !tbaa !47
  %64 = lshr i32 %63, 8
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds i8, ptr %58, i64 2
  store i8 %65, ptr %62, align 1, !tbaa !57
  %67 = getelementptr inbounds i32, ptr %41, i64 1
  %68 = load i32, ptr %41, align 4, !tbaa !47
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds i8, ptr %58, i64 3
  store i8 %69, ptr %66, align 1, !tbaa !57
  %71 = add nsw i32 %57, -3
  %72 = icmp eq i32 %44, 0
  br i1 %72, label %73, label %39, !llvm.loop !83

73:                                               ; preds = %56, %29
  %74 = phi i32 [ %37, %29 ], [ %71, %56 ]
  %75 = phi ptr [ %32, %29 ], [ %70, %56 ]
  store ptr %75, ptr %31, align 8, !tbaa !55
  %76 = load i32, ptr %33, align 8, !tbaa !82
  %77 = sub nsw i32 %76, %74
  store i32 %77, ptr %35, align 8, !tbaa !56
  br label %78

78:                                               ; preds = %46, %73
  %79 = phi i32 [ 0, %73 ], [ -1, %46 ]
  ret i32 %79
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal void @Luv24fromXYZ(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #7 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %76

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.logLuvState, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  br label %8

8:                                                ; preds = %5, %68
  %9 = phi ptr [ %74, %68 ], [ %1, %5 ]
  %10 = phi ptr [ %73, %68 ], [ %7, %5 ]
  %11 = phi i32 [ %12, %68 ], [ %2, %5 ]
  %12 = add nsw i32 %11, -1
  %13 = getelementptr inbounds float, ptr %9, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !67
  %15 = fpext float %14 to double
  %16 = fcmp ult float %14, 1.600000e+01
  br i1 %16, label %17, label %25

17:                                               ; preds = %8
  %18 = fcmp ugt float %14, 0x3F30000000000000
  br i1 %18, label %19, label %25

19:                                               ; preds = %17
  %20 = tail call double @log(double noundef %15) #14
  %21 = tail call double @llvm.fmuladd.f64(double %20, double 0x3FF71547652B82FE, double 1.200000e+01)
  %22 = fmul double %21, 6.400000e+01
  %23 = fptosi double %22 to i32
  %24 = shl i32 %23, 14
  br label %25

25:                                               ; preds = %19, %17, %8
  %26 = phi i32 [ %24, %19 ], [ 16760832, %8 ], [ 0, %17 ]
  %27 = load float, ptr %9, align 4, !tbaa !67
  %28 = fpext float %27 to double
  %29 = load float, ptr %13, align 4, !tbaa !67
  %30 = fpext float %29 to double
  %31 = tail call double @llvm.fmuladd.f64(double %30, double 1.500000e+01, double %28)
  %32 = getelementptr inbounds float, ptr %9, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !67
  %34 = fpext float %33 to double
  %35 = tail call double @llvm.fmuladd.f64(double %34, double 3.000000e+00, double %31)
  %36 = fcmp oeq double %35, 0.000000e+00
  %37 = fmul double %28, 4.000000e+00
  %38 = fdiv double %37, %35
  %39 = fmul double %30, 9.000000e+00
  %40 = fdiv double %39, %35
  %41 = select i1 %36, double 0x3FCAF286BD156C1A, double %38
  %42 = select i1 %36, double 0x3FDE50D794B8199E, double %40
  %43 = fcmp olt double %42, 0x3F9158B820000000
  br i1 %43, label %68, label %44

44:                                               ; preds = %25
  %45 = fadd double %42, 0xBF9158B820000000
  %46 = fmul double %45, 0x4071DB6DAD9C14EB
  %47 = fptosi double %46 to i32
  %48 = icmp sgt i32 %47, 162
  br i1 %48, label %68, label %49

49:                                               ; preds = %44
  %50 = sext i32 %47 to i64
  %51 = getelementptr inbounds [163 x %struct.anon], ptr @uv_row, i64 0, i64 %50
  %52 = load float, ptr %51, align 8, !tbaa !65
  %53 = fpext float %52 to double
  %54 = fcmp olt double %41, %53
  br i1 %54, label %68, label %55

55:                                               ; preds = %49
  %56 = fsub double %41, %53
  %57 = fmul double %56, 0x4071DB6DAD9C14EB
  %58 = fptosi double %57 to i32
  %59 = getelementptr inbounds [163 x %struct.anon], ptr @uv_row, i64 0, i64 %50, i32 1
  %60 = load i16, ptr %59, align 4, !tbaa !84
  %61 = sext i16 %60 to i32
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = getelementptr inbounds [163 x %struct.anon], ptr @uv_row, i64 0, i64 %50, i32 2
  %65 = load i16, ptr %64, align 2, !tbaa !62
  %66 = sext i16 %65 to i32
  %67 = add nsw i32 %66, %58
  br label %68

68:                                               ; preds = %25, %44, %49, %55, %63
  %69 = phi i32 [ %67, %63 ], [ -1, %25 ], [ -1, %44 ], [ -1, %49 ], [ -1, %55 ]
  %70 = icmp slt i32 %69, 0
  %71 = select i1 %70, i32 12266, i32 %69
  %72 = or i32 %71, %26
  %73 = getelementptr inbounds i32, ptr %10, i64 1
  store i32 %72, ptr %10, align 4, !tbaa !47
  %74 = getelementptr inbounds float, ptr %9, i64 3
  %75 = icmp sgt i32 %11, 1
  br i1 %75, label %8, label %76, !llvm.loop !85

76:                                               ; preds = %68, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @Luv24fromLuv48(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #8 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %66

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.logLuvState, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  br label %8

8:                                                ; preds = %5, %58
  %9 = phi i32 [ %12, %58 ], [ %2, %5 ]
  %10 = phi ptr [ %64, %58 ], [ %1, %5 ]
  %11 = phi ptr [ %23, %58 ], [ %7, %5 ]
  %12 = add nsw i32 %9, -1
  %13 = load i16, ptr %10, align 2, !tbaa !61
  %14 = icmp slt i16 %13, 1
  br i1 %14, label %21, label %15

15:                                               ; preds = %8
  %16 = icmp sgt i16 %13, 7409
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = add nsw i16 %13, -3314
  %19 = ashr i16 %18, 2
  %20 = sext i16 %19 to i32
  br label %21

21:                                               ; preds = %15, %8, %17
  %22 = phi i32 [ %20, %17 ], [ 0, %8 ], [ 1023, %15 ]
  %23 = getelementptr inbounds i32, ptr %11, i64 1
  %24 = load i32, ptr %23, align 4, !tbaa !47
  %25 = uitofp i32 %24 to double
  %26 = fadd double %25, 5.000000e-01
  %27 = fmul double %26, 0x3F00000000000000
  %28 = getelementptr inbounds i32, ptr %11, i64 2
  %29 = load i32, ptr %28, align 4, !tbaa !47
  %30 = uitofp i32 %29 to double
  %31 = fadd double %30, 5.000000e-01
  %32 = fmul double %31, 0x3F00000000000000
  %33 = fcmp olt double %32, 0x3F9158B820000000
  br i1 %33, label %58, label %34

34:                                               ; preds = %21
  %35 = fadd double %32, 0xBF9158B820000000
  %36 = fmul double %35, 0x4071DB6DAD9C14EB
  %37 = fptosi double %36 to i32
  %38 = icmp sgt i32 %37, 162
  br i1 %38, label %58, label %39

39:                                               ; preds = %34
  %40 = sext i32 %37 to i64
  %41 = getelementptr inbounds [163 x %struct.anon], ptr @uv_row, i64 0, i64 %40
  %42 = load float, ptr %41, align 8, !tbaa !65
  %43 = fpext float %42 to double
  %44 = fcmp olt double %27, %43
  br i1 %44, label %58, label %45

45:                                               ; preds = %39
  %46 = fsub double %27, %43
  %47 = fmul double %46, 0x4071DB6DAD9C14EB
  %48 = fptosi double %47 to i32
  %49 = getelementptr inbounds [163 x %struct.anon], ptr @uv_row, i64 0, i64 %40, i32 1
  %50 = load i16, ptr %49, align 4, !tbaa !84
  %51 = sext i16 %50 to i32
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = getelementptr inbounds [163 x %struct.anon], ptr @uv_row, i64 0, i64 %40, i32 2
  %55 = load i16, ptr %54, align 2, !tbaa !62
  %56 = sext i16 %55 to i32
  %57 = add nsw i32 %56, %48
  br label %58

58:                                               ; preds = %21, %34, %39, %45, %53
  %59 = phi i32 [ %57, %53 ], [ -1, %21 ], [ -1, %34 ], [ -1, %39 ], [ -1, %45 ]
  %60 = icmp slt i32 %59, 0
  %61 = select i1 %60, i32 12266, i32 %59
  %62 = shl nsw i32 %22, 14
  %63 = or i32 %61, %62
  store i32 %63, ptr %11, align 4, !tbaa !47
  %64 = getelementptr inbounds i16, ptr %10, i64 3
  %65 = icmp sgt i32 %9, 1
  br i1 %65, label %8, label %66, !llvm.loop !86

66:                                               ; preds = %58, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @LogLuvEncode32(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i16 %3, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 492, ptr noundef nonnull @__PRETTY_FUNCTION__.LogLuvEncode32) #13
  unreachable

9:                                                ; preds = %4
  %10 = icmp eq ptr %6, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 493, ptr noundef nonnull @__PRETTY_FUNCTION__.LogLuvEncode32) #13
  unreachable

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.logLuvState, ptr %6, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !51
  %15 = sdiv i32 %2, %14
  %16 = load i32, ptr %6, align 8, !tbaa !16
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %29, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.logLuvState, ptr %6, i64 0, i32 3
  %20 = load i16, ptr %19, align 8, !tbaa !54
  %21 = sext i16 %20 to i32
  %22 = icmp sgt i32 %15, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 501, ptr noundef nonnull @__PRETTY_FUNCTION__.LogLuvEncode32) #13
  unreachable

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.logLuvState, ptr %6, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.logLuvState, ptr %6, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !18
  tail call void %28(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %15) #14
  br label %29

29:                                               ; preds = %12, %24
  %30 = phi ptr [ %26, %24 ], [ %1, %12 ]
  %31 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %32 = load ptr, ptr %31, align 8, !tbaa !55
  %33 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  %34 = load i32, ptr %33, align 8, !tbaa !82
  %35 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %36 = load i32, ptr %35, align 8, !tbaa !56
  %37 = sub nsw i32 %34, %36
  %38 = icmp sgt i32 %15, 0
  %39 = sext i32 %15 to i64
  br label %46

40:                                               ; preds = %204, %46
  %41 = phi ptr [ %50, %46 ], [ %205, %204 ]
  %42 = phi i32 [ %49, %46 ], [ %206, %204 ]
  %43 = phi i32 [ %48, %46 ], [ %207, %204 ]
  %44 = add nsw i32 %47, -8
  %45 = icmp eq i32 %47, 0
  br i1 %45, label %210, label %46, !llvm.loop !87

46:                                               ; preds = %29, %40
  %47 = phi i32 [ 24, %29 ], [ %44, %40 ]
  %48 = phi i32 [ 0, %29 ], [ %43, %40 ]
  %49 = phi i32 [ %37, %29 ], [ %42, %40 ]
  %50 = phi ptr [ %32, %29 ], [ %41, %40 ]
  br i1 %38, label %51, label %40

51:                                               ; preds = %46
  %52 = shl i32 255, %47
  br label %53

53:                                               ; preds = %51, %204
  %54 = phi i32 [ %48, %51 ], [ %207, %204 ]
  %55 = phi i32 [ %49, %51 ], [ %206, %204 ]
  %56 = phi ptr [ %50, %51 ], [ %205, %204 ]
  %57 = phi i32 [ 0, %51 ], [ %208, %204 ]
  %58 = icmp slt i32 %55, 4
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  store ptr %56, ptr %31, align 8, !tbaa !55
  %60 = load i32, ptr %33, align 8, !tbaa !82
  %61 = sub nsw i32 %60, %55
  store i32 %61, ptr %35, align 8, !tbaa !56
  %62 = tail call i32 @TIFFFlushData1(ptr noundef %0) #14
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %213, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr %31, align 8, !tbaa !55
  %66 = load i32, ptr %33, align 8, !tbaa !82
  %67 = load i32, ptr %35, align 8, !tbaa !56
  %68 = sub nsw i32 %66, %67
  br label %69

69:                                               ; preds = %64, %53
  %70 = phi ptr [ %65, %64 ], [ %56, %53 ]
  %71 = phi i32 [ %68, %64 ], [ %55, %53 ]
  %72 = icmp slt i32 %57, %15
  br i1 %72, label %73, label %102

73:                                               ; preds = %69, %99
  %74 = phi i32 [ %100, %99 ], [ %57, %69 ]
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, ptr %30, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !47
  %78 = sext i32 %74 to i64
  br label %79

79:                                               ; preds = %73, %89
  %80 = phi i64 [ 1, %73 ], [ %90, %89 ]
  %81 = add nsw i64 %80, %78
  %82 = icmp slt i64 %81, %39
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = getelementptr inbounds i32, ptr %30, i64 %81
  %85 = load i32, ptr %84, align 4, !tbaa !47
  %86 = xor i32 %85, %77
  %87 = and i32 %86, %52
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = add nuw nsw i64 %80, 1
  %91 = icmp eq i64 %90, 129
  br i1 %91, label %96, label %79, !llvm.loop !88

92:                                               ; preds = %79
  %93 = trunc i64 %80 to i32
  br label %96

94:                                               ; preds = %83
  %95 = trunc i64 %80 to i32
  br label %96

96:                                               ; preds = %89, %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ], [ 129, %89 ]
  %98 = icmp ugt i32 %97, 3
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = add nsw i32 %97, %74
  %101 = icmp slt i32 %100, %15
  br i1 %101, label %73, label %102, !llvm.loop !89

102:                                              ; preds = %99, %96, %69
  %103 = phi i32 [ %57, %69 ], [ %100, %99 ], [ %74, %96 ]
  %104 = phi i32 [ %54, %69 ], [ %97, %96 ], [ %97, %99 ]
  %105 = sub nsw i32 %103, %57
  %106 = and i32 %105, -2
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %135

108:                                              ; preds = %102
  %109 = sext i32 %57 to i64
  %110 = getelementptr inbounds i32, ptr %30, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !47
  %112 = and i32 %111, %52
  %113 = add i32 %57, 1
  %114 = sext i32 %113 to i64
  br label %115

115:                                              ; preds = %121, %108
  %116 = phi i64 [ %122, %121 ], [ %114, %108 ]
  %117 = getelementptr inbounds i32, ptr %30, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !47
  %119 = and i32 %118, %52
  %120 = icmp eq i32 %119, %112
  br i1 %120, label %121, label %135

121:                                              ; preds = %115
  %122 = add nsw i64 %116, 1
  %123 = trunc i64 %122 to i32
  %124 = icmp eq i32 %103, %123
  br i1 %124, label %125, label %115, !llvm.loop !90

125:                                              ; preds = %121
  %126 = xor i32 %57, -1
  %127 = add i32 %103, %126
  %128 = trunc i32 %127 to i8
  %129 = add i8 %128, 127
  %130 = getelementptr inbounds i8, ptr %70, i64 1
  store i8 %129, ptr %70, align 1, !tbaa !57
  %131 = lshr i32 %112, %47
  %132 = trunc i32 %131 to i8
  %133 = getelementptr inbounds i8, ptr %70, i64 2
  store i8 %132, ptr %130, align 1, !tbaa !57
  %134 = add nsw i32 %71, -2
  br label %135

135:                                              ; preds = %115, %125, %102
  %136 = phi i32 [ %103, %125 ], [ %57, %102 ], [ %57, %115 ]
  %137 = phi ptr [ %133, %125 ], [ %70, %102 ], [ %70, %115 ]
  %138 = phi i32 [ %134, %125 ], [ %71, %102 ], [ %71, %115 ]
  %139 = icmp slt i32 %136, %103
  br i1 %139, label %149, label %188

140:                                              ; preds = %176
  %141 = xor i32 %154, -1
  %142 = add i32 %169, %141
  %143 = trunc i64 %181 to i32
  br label %144

144:                                              ; preds = %140, %167
  %145 = phi i32 [ %152, %167 ], [ %143, %140 ]
  %146 = phi ptr [ %171, %167 ], [ %186, %140 ]
  %147 = phi i32 [ %172, %167 ], [ %142, %140 ]
  %148 = icmp slt i32 %145, %103
  br i1 %148, label %149, label %188, !llvm.loop !91

149:                                              ; preds = %135, %144
  %150 = phi i32 [ %147, %144 ], [ %138, %135 ]
  %151 = phi ptr [ %146, %144 ], [ %137, %135 ]
  %152 = phi i32 [ %145, %144 ], [ %136, %135 ]
  %153 = sub nsw i32 %103, %152
  %154 = tail call i32 @llvm.smin.i32(i32 %153, i32 127)
  %155 = add nsw i32 %154, 3
  %156 = icmp slt i32 %150, %155
  br i1 %156, label %157, label %167

157:                                              ; preds = %149
  store ptr %151, ptr %31, align 8, !tbaa !55
  %158 = load i32, ptr %33, align 8, !tbaa !82
  %159 = sub nsw i32 %158, %150
  store i32 %159, ptr %35, align 8, !tbaa !56
  %160 = tail call i32 @TIFFFlushData1(ptr noundef %0) #14
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %213, label %162

162:                                              ; preds = %157
  %163 = load ptr, ptr %31, align 8, !tbaa !55
  %164 = load i32, ptr %33, align 8, !tbaa !82
  %165 = load i32, ptr %35, align 8, !tbaa !56
  %166 = sub nsw i32 %164, %165
  br label %167

167:                                              ; preds = %162, %149
  %168 = phi ptr [ %163, %162 ], [ %151, %149 ]
  %169 = phi i32 [ %166, %162 ], [ %150, %149 ]
  %170 = trunc i32 %154 to i8
  store i8 %170, ptr %168, align 1, !tbaa !57
  %171 = getelementptr inbounds i8, ptr %168, i64 1
  %172 = add nsw i32 %169, -1
  %173 = icmp eq i32 %103, %152
  br i1 %173, label %144, label %174

174:                                              ; preds = %167
  %175 = sext i32 %152 to i64
  br label %176

176:                                              ; preds = %174, %176
  %177 = phi i64 [ %175, %174 ], [ %181, %176 ]
  %178 = phi ptr [ %171, %174 ], [ %186, %176 ]
  %179 = phi i32 [ %154, %174 ], [ %180, %176 ]
  %180 = add nsw i32 %179, -1
  %181 = add nsw i64 %177, 1
  %182 = getelementptr inbounds i32, ptr %30, i64 %177
  %183 = load i32, ptr %182, align 4, !tbaa !47
  %184 = lshr i32 %183, %47
  %185 = trunc i32 %184 to i8
  store i8 %185, ptr %178, align 1, !tbaa !57
  %186 = getelementptr inbounds i8, ptr %178, i64 1
  %187 = icmp eq i32 %180, 0
  br i1 %187, label %140, label %176, !llvm.loop !92

188:                                              ; preds = %144, %135
  %189 = phi i32 [ %136, %135 ], [ %145, %144 ]
  %190 = phi ptr [ %137, %135 ], [ %146, %144 ]
  %191 = phi i32 [ %138, %135 ], [ %147, %144 ]
  %192 = icmp sgt i32 %104, 3
  br i1 %192, label %193, label %204

193:                                              ; preds = %188
  %194 = trunc i32 %104 to i8
  %195 = add i8 %194, 126
  %196 = getelementptr inbounds i8, ptr %190, i64 1
  store i8 %195, ptr %190, align 1, !tbaa !57
  %197 = sext i32 %103 to i64
  %198 = getelementptr inbounds i32, ptr %30, i64 %197
  %199 = load i32, ptr %198, align 4, !tbaa !47
  %200 = lshr i32 %199, %47
  %201 = trunc i32 %200 to i8
  %202 = getelementptr inbounds i8, ptr %190, i64 2
  store i8 %201, ptr %196, align 1, !tbaa !57
  %203 = add nsw i32 %191, -2
  br label %204

204:                                              ; preds = %188, %193
  %205 = phi ptr [ %202, %193 ], [ %190, %188 ]
  %206 = phi i32 [ %203, %193 ], [ %191, %188 ]
  %207 = phi i32 [ %104, %193 ], [ 0, %188 ]
  %208 = add nsw i32 %207, %189
  %209 = icmp slt i32 %208, %15
  br i1 %209, label %53, label %40, !llvm.loop !93

210:                                              ; preds = %40
  store ptr %41, ptr %31, align 8, !tbaa !55
  %211 = load i32, ptr %33, align 8, !tbaa !82
  %212 = sub nsw i32 %211, %42
  store i32 %212, ptr %35, align 8, !tbaa !56
  br label %213

213:                                              ; preds = %59, %157, %210
  %214 = phi i32 [ 0, %210 ], [ -1, %157 ], [ -1, %59 ]
  ret i32 %214
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal void @Luv32fromXYZ(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #7 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %70

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.logLuvState, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  br label %8

8:                                                ; preds = %5, %35
  %9 = phi ptr [ %68, %35 ], [ %1, %5 ]
  %10 = phi ptr [ %67, %35 ], [ %7, %5 ]
  %11 = phi i32 [ %12, %35 ], [ %2, %5 ]
  %12 = add nsw i32 %11, -1
  %13 = getelementptr inbounds float, ptr %9, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !67
  %15 = fpext float %14 to double
  %16 = fcmp ult double %15, 1.844670e+19
  br i1 %16, label %17, label %35

17:                                               ; preds = %8
  %18 = fcmp ugt double %15, -1.844670e+19
  br i1 %18, label %19, label %35

19:                                               ; preds = %17
  %20 = fcmp ogt double %15, 5.435710e-20
  br i1 %20, label %21, label %26

21:                                               ; preds = %19
  %22 = tail call double @log(double noundef %15) #14
  %23 = tail call double @llvm.fmuladd.f64(double %22, double 0x3FF71547652B82FE, double 6.400000e+01)
  %24 = fmul double %23, 2.560000e+02
  %25 = fptosi double %24 to i32
  br label %35

26:                                               ; preds = %19
  %27 = fcmp olt double %15, -5.435710e-20
  br i1 %27, label %28, label %35

28:                                               ; preds = %26
  %29 = fneg double %15
  %30 = tail call double @log(double noundef %29) #14
  %31 = tail call double @llvm.fmuladd.f64(double %30, double 0x3FF71547652B82FE, double 6.400000e+01)
  %32 = fmul double %31, 2.560000e+02
  %33 = fptosi double %32 to i32
  %34 = or i32 %33, -32768
  br label %35

35:                                               ; preds = %8, %17, %21, %26, %28
  %36 = phi i32 [ %25, %21 ], [ %34, %28 ], [ 32767, %8 ], [ 65535, %17 ], [ 0, %26 ]
  %37 = load float, ptr %9, align 4, !tbaa !67
  %38 = fpext float %37 to double
  %39 = load float, ptr %13, align 4, !tbaa !67
  %40 = fpext float %39 to double
  %41 = tail call double @llvm.fmuladd.f64(double %40, double 1.500000e+01, double %38)
  %42 = getelementptr inbounds float, ptr %9, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !67
  %44 = fpext float %43 to double
  %45 = tail call double @llvm.fmuladd.f64(double %44, double 3.000000e+00, double %41)
  %46 = fcmp oeq double %45, 0.000000e+00
  %47 = fmul double %38, 4.000000e+00
  %48 = fdiv double %47, %45
  %49 = fmul double %40, 9.000000e+00
  %50 = fdiv double %49, %45
  %51 = select i1 %46, double 0x3FCAF286BD156C1A, double %48
  %52 = select i1 %46, double 0x3FDE50D794B8199E, double %50
  %53 = fcmp ugt double %51, 0.000000e+00
  %54 = fmul double %51, 4.100000e+02
  %55 = fptoui double %54 to i32
  %56 = tail call i32 @llvm.umin.i32(i32 %55, i32 255)
  %57 = fcmp ugt double %52, 0.000000e+00
  %58 = fmul double %52, 4.100000e+02
  %59 = fptoui double %58 to i32
  %60 = tail call i32 @llvm.umin.i32(i32 %59, i32 255)
  %61 = shl nuw nsw i32 %56, 8
  %62 = select i1 %57, i32 %60, i32 0
  %63 = shl i32 %36, 16
  %64 = select i1 %53, i32 %61, i32 0
  %65 = or disjoint i32 %64, %63
  %66 = or disjoint i32 %65, %62
  %67 = getelementptr inbounds i32, ptr %10, i64 1
  store i32 %66, ptr %10, align 4, !tbaa !47
  %68 = getelementptr inbounds float, ptr %9, i64 3
  %69 = icmp sgt i32 %11, 1
  br i1 %69, label %8, label %70, !llvm.loop !94

70:                                               ; preds = %35, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @Luv32fromLuv48(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #8 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %33

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.logLuvState, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %31, %8 ], [ %1, %5 ]
  %10 = phi ptr [ %30, %8 ], [ %7, %5 ]
  %11 = phi i32 [ %12, %8 ], [ %2, %5 ]
  %12 = add nsw i32 %11, -1
  %13 = load i16, ptr %9, align 2, !tbaa !61
  %14 = sext i16 %13 to i32
  %15 = shl nsw i32 %14, 16
  %16 = getelementptr inbounds i16, ptr %9, i64 1
  %17 = load i16, ptr %16, align 2, !tbaa !61
  %18 = sext i16 %17 to i32
  %19 = mul nsw i32 %18, 410
  %20 = lshr i32 %19, 7
  %21 = and i32 %20, 65280
  %22 = or disjoint i32 %21, %15
  %23 = getelementptr inbounds i16, ptr %9, i64 2
  %24 = load i16, ptr %23, align 2, !tbaa !61
  %25 = sext i16 %24 to i32
  %26 = mul nsw i32 %25, 410
  %27 = lshr i32 %26, 15
  %28 = and i32 %27, 255
  %29 = or disjoint i32 %22, %28
  %30 = getelementptr inbounds i32, ptr %10, i64 1
  store i32 %29, ptr %10, align 4, !tbaa !47
  %31 = getelementptr inbounds i16, ptr %9, i64 3
  %32 = icmp sgt i32 %11, 1
  br i1 %32, label %8, label %33, !llvm.loop !95

33:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @LogL16Encode(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i16 %3, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 359, ptr noundef nonnull @__PRETTY_FUNCTION__.LogL16Encode) #13
  unreachable

9:                                                ; preds = %4
  %10 = icmp eq ptr %6, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 360, ptr noundef nonnull @__PRETTY_FUNCTION__.LogL16Encode) #13
  unreachable

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.logLuvState, ptr %6, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !51
  %15 = sdiv i32 %2, %14
  %16 = load i32, ptr %6, align 8, !tbaa !16
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %29, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.logLuvState, ptr %6, i64 0, i32 3
  %20 = load i16, ptr %19, align 8, !tbaa !54
  %21 = sext i16 %20 to i32
  %22 = icmp sgt i32 %15, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 367, ptr noundef nonnull @__PRETTY_FUNCTION__.LogL16Encode) #13
  unreachable

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.logLuvState, ptr %6, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.logLuvState, ptr %6, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !18
  tail call void %28(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %15) #14
  br label %29

29:                                               ; preds = %12, %24
  %30 = phi ptr [ %26, %24 ], [ %1, %12 ]
  %31 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %32 = load ptr, ptr %31, align 8, !tbaa !55
  %33 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  %34 = load i32, ptr %33, align 8, !tbaa !82
  %35 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %36 = load i32, ptr %35, align 8, !tbaa !56
  %37 = sub nsw i32 %34, %36
  %38 = icmp sgt i32 %15, 0
  %39 = sext i32 %15 to i64
  br label %46

40:                                               ; preds = %212, %46
  %41 = phi ptr [ %50, %46 ], [ %213, %212 ]
  %42 = phi i32 [ %49, %46 ], [ %214, %212 ]
  %43 = phi i32 [ %48, %46 ], [ %215, %212 ]
  %44 = add nsw i32 %47, -8
  %45 = icmp eq i32 %47, 0
  br i1 %45, label %218, label %46, !llvm.loop !96

46:                                               ; preds = %29, %40
  %47 = phi i32 [ 8, %29 ], [ %44, %40 ]
  %48 = phi i32 [ 0, %29 ], [ %43, %40 ]
  %49 = phi i32 [ %37, %29 ], [ %42, %40 ]
  %50 = phi ptr [ %32, %29 ], [ %41, %40 ]
  br i1 %38, label %51, label %40

51:                                               ; preds = %46
  %52 = shl nuw nsw i32 255, %47
  %53 = trunc i32 %52 to i16
  %54 = trunc i32 %52 to i16
  br label %55

55:                                               ; preds = %51, %212
  %56 = phi i32 [ %48, %51 ], [ %215, %212 ]
  %57 = phi i32 [ %49, %51 ], [ %214, %212 ]
  %58 = phi ptr [ %50, %51 ], [ %213, %212 ]
  %59 = phi i32 [ 0, %51 ], [ %216, %212 ]
  %60 = icmp slt i32 %57, 4
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  store ptr %58, ptr %31, align 8, !tbaa !55
  %62 = load i32, ptr %33, align 8, !tbaa !82
  %63 = sub nsw i32 %62, %57
  store i32 %63, ptr %35, align 8, !tbaa !56
  %64 = tail call i32 @TIFFFlushData1(ptr noundef %0) #14
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %221, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr %31, align 8, !tbaa !55
  %68 = load i32, ptr %33, align 8, !tbaa !82
  %69 = load i32, ptr %35, align 8, !tbaa !56
  %70 = sub nsw i32 %68, %69
  br label %71

71:                                               ; preds = %66, %55
  %72 = phi ptr [ %67, %66 ], [ %58, %55 ]
  %73 = phi i32 [ %70, %66 ], [ %57, %55 ]
  %74 = icmp slt i32 %59, %15
  br i1 %74, label %75, label %106

75:                                               ; preds = %71, %103
  %76 = phi i32 [ %104, %103 ], [ %59, %71 ]
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i16, ptr %30, i64 %77
  %79 = load i16, ptr %78, align 2, !tbaa !61
  %80 = and i16 %79, %53
  %81 = sext i16 %80 to i32
  %82 = sext i32 %76 to i64
  br label %83

83:                                               ; preds = %75, %93
  %84 = phi i64 [ 1, %75 ], [ %94, %93 ]
  %85 = add nsw i64 %84, %82
  %86 = icmp slt i64 %85, %39
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = getelementptr inbounds i16, ptr %30, i64 %85
  %89 = load i16, ptr %88, align 2, !tbaa !61
  %90 = sext i16 %89 to i32
  %91 = and i32 %52, %90
  %92 = icmp eq i32 %91, %81
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = add nuw nsw i64 %84, 1
  %95 = icmp eq i64 %94, 129
  br i1 %95, label %100, label %83, !llvm.loop !97

96:                                               ; preds = %83
  %97 = trunc i64 %84 to i32
  br label %100

98:                                               ; preds = %87
  %99 = trunc i64 %84 to i32
  br label %100

100:                                              ; preds = %93, %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ], [ 129, %93 ]
  %102 = icmp ugt i32 %101, 3
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = add nsw i32 %101, %76
  %105 = icmp slt i32 %104, %15
  br i1 %105, label %75, label %106, !llvm.loop !98

106:                                              ; preds = %103, %100, %71
  %107 = phi i32 [ %59, %71 ], [ %104, %103 ], [ %76, %100 ]
  %108 = phi i32 [ %56, %71 ], [ %101, %100 ], [ %101, %103 ]
  %109 = sub nsw i32 %107, %59
  %110 = and i32 %109, -2
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %112, label %141

112:                                              ; preds = %106
  %113 = sext i32 %59 to i64
  %114 = getelementptr inbounds i16, ptr %30, i64 %113
  %115 = load i16, ptr %114, align 2, !tbaa !61
  %116 = and i16 %115, %54
  %117 = add i32 %59, 1
  %118 = sext i16 %116 to i32
  %119 = sext i32 %117 to i64
  br label %120

120:                                              ; preds = %127, %112
  %121 = phi i64 [ %128, %127 ], [ %119, %112 ]
  %122 = getelementptr inbounds i16, ptr %30, i64 %121
  %123 = load i16, ptr %122, align 2, !tbaa !61
  %124 = sext i16 %123 to i32
  %125 = and i32 %52, %124
  %126 = icmp eq i32 %125, %118
  br i1 %126, label %127, label %141

127:                                              ; preds = %120
  %128 = add nsw i64 %121, 1
  %129 = trunc i64 %128 to i32
  %130 = icmp eq i32 %107, %129
  br i1 %130, label %131, label %120, !llvm.loop !99

131:                                              ; preds = %127
  %132 = xor i32 %59, -1
  %133 = add i32 %107, %132
  %134 = trunc i32 %133 to i8
  %135 = add i8 %134, 127
  %136 = getelementptr inbounds i8, ptr %72, i64 1
  store i8 %135, ptr %72, align 1, !tbaa !57
  %137 = lshr i32 %118, %47
  %138 = trunc i32 %137 to i8
  %139 = getelementptr inbounds i8, ptr %72, i64 2
  store i8 %138, ptr %136, align 1, !tbaa !57
  %140 = add nsw i32 %73, -2
  br label %141

141:                                              ; preds = %120, %131, %106
  %142 = phi i32 [ %107, %131 ], [ %59, %106 ], [ %59, %120 ]
  %143 = phi ptr [ %139, %131 ], [ %72, %106 ], [ %72, %120 ]
  %144 = phi i32 [ %140, %131 ], [ %73, %106 ], [ %73, %120 ]
  %145 = icmp slt i32 %142, %107
  br i1 %145, label %155, label %195

146:                                              ; preds = %182
  %147 = xor i32 %160, -1
  %148 = add i32 %175, %147
  %149 = trunc i64 %187 to i32
  br label %150

150:                                              ; preds = %146, %173
  %151 = phi i32 [ %158, %173 ], [ %149, %146 ]
  %152 = phi ptr [ %177, %173 ], [ %193, %146 ]
  %153 = phi i32 [ %178, %173 ], [ %148, %146 ]
  %154 = icmp slt i32 %151, %107
  br i1 %154, label %155, label %195, !llvm.loop !100

155:                                              ; preds = %141, %150
  %156 = phi i32 [ %153, %150 ], [ %144, %141 ]
  %157 = phi ptr [ %152, %150 ], [ %143, %141 ]
  %158 = phi i32 [ %151, %150 ], [ %142, %141 ]
  %159 = sub nsw i32 %107, %158
  %160 = tail call i32 @llvm.smin.i32(i32 %159, i32 127)
  %161 = add nsw i32 %160, 3
  %162 = icmp slt i32 %156, %161
  br i1 %162, label %163, label %173

163:                                              ; preds = %155
  store ptr %157, ptr %31, align 8, !tbaa !55
  %164 = load i32, ptr %33, align 8, !tbaa !82
  %165 = sub nsw i32 %164, %156
  store i32 %165, ptr %35, align 8, !tbaa !56
  %166 = tail call i32 @TIFFFlushData1(ptr noundef %0) #14
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %221, label %168

168:                                              ; preds = %163
  %169 = load ptr, ptr %31, align 8, !tbaa !55
  %170 = load i32, ptr %33, align 8, !tbaa !82
  %171 = load i32, ptr %35, align 8, !tbaa !56
  %172 = sub nsw i32 %170, %171
  br label %173

173:                                              ; preds = %168, %155
  %174 = phi ptr [ %169, %168 ], [ %157, %155 ]
  %175 = phi i32 [ %172, %168 ], [ %156, %155 ]
  %176 = trunc i32 %160 to i8
  store i8 %176, ptr %174, align 1, !tbaa !57
  %177 = getelementptr inbounds i8, ptr %174, i64 1
  %178 = add nsw i32 %175, -1
  %179 = icmp eq i32 %107, %158
  br i1 %179, label %150, label %180

180:                                              ; preds = %173
  %181 = sext i32 %158 to i64
  br label %182

182:                                              ; preds = %180, %182
  %183 = phi i64 [ %181, %180 ], [ %187, %182 ]
  %184 = phi ptr [ %177, %180 ], [ %193, %182 ]
  %185 = phi i32 [ %160, %180 ], [ %186, %182 ]
  %186 = add nsw i32 %185, -1
  %187 = add nsw i64 %183, 1
  %188 = getelementptr inbounds i16, ptr %30, i64 %183
  %189 = load i16, ptr %188, align 2, !tbaa !61
  %190 = sext i16 %189 to i32
  %191 = ashr i32 %190, %47
  %192 = trunc i32 %191 to i8
  store i8 %192, ptr %184, align 1, !tbaa !57
  %193 = getelementptr inbounds i8, ptr %184, i64 1
  %194 = icmp eq i32 %186, 0
  br i1 %194, label %146, label %182, !llvm.loop !101

195:                                              ; preds = %150, %141
  %196 = phi i32 [ %142, %141 ], [ %151, %150 ]
  %197 = phi ptr [ %143, %141 ], [ %152, %150 ]
  %198 = phi i32 [ %144, %141 ], [ %153, %150 ]
  %199 = icmp sgt i32 %108, 3
  br i1 %199, label %200, label %212

200:                                              ; preds = %195
  %201 = trunc i32 %108 to i8
  %202 = add i8 %201, 126
  %203 = getelementptr inbounds i8, ptr %197, i64 1
  store i8 %202, ptr %197, align 1, !tbaa !57
  %204 = sext i32 %107 to i64
  %205 = getelementptr inbounds i16, ptr %30, i64 %204
  %206 = load i16, ptr %205, align 2, !tbaa !61
  %207 = sext i16 %206 to i32
  %208 = ashr i32 %207, %47
  %209 = trunc i32 %208 to i8
  %210 = getelementptr inbounds i8, ptr %197, i64 2
  store i8 %209, ptr %203, align 1, !tbaa !57
  %211 = add nsw i32 %198, -2
  br label %212

212:                                              ; preds = %195, %200
  %213 = phi ptr [ %210, %200 ], [ %197, %195 ]
  %214 = phi i32 [ %211, %200 ], [ %198, %195 ]
  %215 = phi i32 [ %108, %200 ], [ 0, %195 ]
  %216 = add nsw i32 %215, %196
  %217 = icmp slt i32 %216, %15
  br i1 %217, label %55, label %40, !llvm.loop !102

218:                                              ; preds = %40
  store ptr %41, ptr %31, align 8, !tbaa !55
  %219 = load i32, ptr %33, align 8, !tbaa !82
  %220 = sub nsw i32 %219, %42
  store i32 %220, ptr %35, align 8, !tbaa !56
  br label %221

221:                                              ; preds = %61, %163, %218
  %222 = phi i32 [ 0, %218 ], [ -1, %163 ], [ -1, %61 ]
  ret i32 %222
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal void @L16fromY(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #7 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %40

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.logLuvState, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  br label %8

8:                                                ; preds = %5, %35
  %9 = phi ptr [ %13, %35 ], [ %1, %5 ]
  %10 = phi ptr [ %38, %35 ], [ %7, %5 ]
  %11 = phi i32 [ %12, %35 ], [ %2, %5 ]
  %12 = add nsw i32 %11, -1
  %13 = getelementptr inbounds float, ptr %9, i64 1
  %14 = load float, ptr %9, align 4, !tbaa !67
  %15 = fpext float %14 to double
  %16 = fcmp ult double %15, 1.844670e+19
  br i1 %16, label %17, label %35

17:                                               ; preds = %8
  %18 = fcmp ugt double %15, -1.844670e+19
  br i1 %18, label %19, label %35

19:                                               ; preds = %17
  %20 = fcmp ogt double %15, 5.435710e-20
  br i1 %20, label %21, label %26

21:                                               ; preds = %19
  %22 = tail call double @log(double noundef %15) #14
  %23 = tail call double @llvm.fmuladd.f64(double %22, double 0x3FF71547652B82FE, double 6.400000e+01)
  %24 = fmul double %23, 2.560000e+02
  %25 = fptosi double %24 to i32
  br label %35

26:                                               ; preds = %19
  %27 = fcmp olt double %15, -5.435710e-20
  br i1 %27, label %28, label %35

28:                                               ; preds = %26
  %29 = fneg double %15
  %30 = tail call double @log(double noundef %29) #14
  %31 = tail call double @llvm.fmuladd.f64(double %30, double 0x3FF71547652B82FE, double 6.400000e+01)
  %32 = fmul double %31, 2.560000e+02
  %33 = fptosi double %32 to i32
  %34 = or i32 %33, -32768
  br label %35

35:                                               ; preds = %8, %17, %21, %26, %28
  %36 = phi i32 [ %25, %21 ], [ %34, %28 ], [ 32767, %8 ], [ 65535, %17 ], [ 0, %26 ]
  %37 = trunc i32 %36 to i16
  %38 = getelementptr inbounds i16, ptr %10, i64 1
  store i16 %37, ptr %10, align 2, !tbaa !61
  %39 = icmp sgt i32 %11, 1
  br i1 %39, label %8, label %40, !llvm.loop !103

40:                                               ; preds = %35, %3
  ret void
}

declare i32 @TIFFFlushData1(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #10

declare void @_TIFFfree(ptr noundef) local_unnamed_addr #3

declare i32 @TIFFSetField(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare i32 @TIFFTileSize(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 704}
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
!16 = !{!17, !10, i64 0}
!17 = !{!"logLuvState", !10, i64 0, !10, i64 4, !7, i64 8, !12, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!18 = !{!17, !7, i64 24}
!19 = !{!6, !7, i64 576}
!20 = !{!6, !7, i64 632}
!21 = !{!6, !7, i64 648}
!22 = !{!6, !7, i64 592}
!23 = !{!6, !7, i64 640}
!24 = !{!6, !7, i64 656}
!25 = !{!6, !7, i64 664}
!26 = !{!6, !7, i64 680}
!27 = !{!6, !7, i64 864}
!28 = !{!17, !7, i64 32}
!29 = !{!6, !7, i64 856}
!30 = !{!17, !7, i64 40}
!31 = !{!6, !7, i64 0}
!32 = !{!6, !7, i64 832}
!33 = !{!11, !12, i64 58}
!34 = !{i32 0, i32 2}
!35 = !{!11, !12, i64 56}
!36 = !{!6, !7, i64 616}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = distinct !{!39, !38}
!40 = !{!6, !7, i64 624}
!41 = distinct !{!41, !38}
!42 = distinct !{!42, !38}
!43 = !{!11, !12, i64 66}
!44 = !{!11, !12, i64 52}
!45 = !{!11, !12, i64 54}
!46 = !{!17, !7, i64 8}
!47 = !{!10, !10, i64 0}
!48 = !{!6, !10, i64 572}
!49 = !{!6, !10, i64 712}
!50 = !{!11, !12, i64 106}
!51 = !{!17, !10, i64 4}
!52 = !{!11, !10, i64 24}
!53 = !{!11, !10, i64 68}
!54 = !{!17, !12, i64 16}
!55 = !{!6, !7, i64 736}
!56 = !{!6, !10, i64 744}
!57 = !{!8, !8, i64 0}
!58 = distinct !{!58, !38}
!59 = !{!6, !10, i64 536}
!60 = distinct !{!60, !38}
!61 = !{!12, !12, i64 0}
!62 = !{!63, !12, i64 6}
!63 = !{!"", !14, i64 0, !12, i64 4, !12, i64 6}
!64 = distinct !{!64, !38}
!65 = !{!63, !14, i64 0}
!66 = distinct !{!66, !38}
!67 = !{!14, !14, i64 0}
!68 = distinct !{!68, !38}
!69 = distinct !{!69, !38}
!70 = distinct !{!70, !38}
!71 = distinct !{!71, !38}
!72 = distinct !{!72, !38}
!73 = distinct !{!73, !38}
!74 = distinct !{!74, !38}
!75 = distinct !{!75, !38}
!76 = distinct !{!76, !38}
!77 = distinct !{!77, !38}
!78 = distinct !{!78, !38}
!79 = distinct !{!79, !38}
!80 = distinct !{!80, !38}
!81 = distinct !{!81, !38}
!82 = !{!6, !10, i64 728}
!83 = distinct !{!83, !38}
!84 = !{!63, !12, i64 4}
!85 = distinct !{!85, !38}
!86 = distinct !{!86, !38}
!87 = distinct !{!87, !38}
!88 = distinct !{!88, !38}
!89 = distinct !{!89, !38}
!90 = distinct !{!90, !38}
!91 = distinct !{!91, !38}
!92 = distinct !{!92, !38}
!93 = distinct !{!93, !38}
!94 = distinct !{!94, !38}
!95 = distinct !{!95, !38}
!96 = distinct !{!96, !38}
!97 = distinct !{!97, !38}
!98 = distinct !{!98, !38}
!99 = distinct !{!99, !38}
!100 = distinct !{!100, !38}
!101 = distinct !{!101, !38}
!102 = distinct !{!102, !38}
!103 = distinct !{!103, !38}
