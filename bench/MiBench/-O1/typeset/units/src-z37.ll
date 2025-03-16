; ModuleID = 'src/z37.c'
source_filename = "src/z37.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8 }
%struct.GAP = type { i16, i16 }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%union.anon.10 = type { %struct.GAP }
%struct.font_rec = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, i16, i16, ptr, ptr, ptr, ptr }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.12 }
%union.FOURTH_UNION = type { %struct.STYLE }
%union.anon.12 = type { ptr }
%struct.back_end_rec = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.metrics = type { i16, i16, i16, i16, i16 }
%struct.composite_rec = type { i8, i16, i16 }
%struct.mapvec = type { ptr, i16, i32, i32, ptr, [256 x ptr], [353 x i8], [4 x [256 x i8]] }

@font_curr_page = dso_local local_unnamed_addr global i32 0, align 4
@font_count = internal unnamed_addr global i32 0, align 4
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@no_fpos = external local_unnamed_addr global ptr, align 8
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@font_root = internal unnamed_addr global ptr null, align 8
@font_used = internal unnamed_addr global ptr null, align 8
@font_seqnum = internal unnamed_addr global i32 0, align 4
@finfo = dso_local local_unnamed_addr global ptr null, align 8
@finfo_size = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"@FontDef\00", align 1
@StartSym = external local_unnamed_addr global ptr, align 8
@FontDefSym = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"@Tag\00", align 1
@fd_tag = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"@Family\00", align 1
@fd_family = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"@Face\00", align 1
@fd_face = internal unnamed_addr global ptr null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"@Name\00", align 1
@fd_name = internal unnamed_addr global ptr null, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"@Metrics\00", align 1
@fd_metrics = internal unnamed_addr global ptr null, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"@ExtraMetrics\00", align 1
@fd_extra_metrics = internal unnamed_addr global ptr null, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"@Mapping\00", align 1
@fd_mapping = internal unnamed_addr global ptr null, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"@Recode\00", align 1
@fd_recode = internal unnamed_addr global ptr null, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"FontChange: font_count!\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"smallcaps\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"nosmallcaps\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"error in left parameter of %s\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"@Font\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"FontChange: num!\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"initial font must have family, face and size\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"FontChange: Up(finfo[font(*style)].font_table) !\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"FontChange: type(tmpf)!\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"FontChange: Up(tmpf)!\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"FontChange: type(family)!\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"FontChange: type(face)!\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"FontChange: Up(face)!\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"FontChange requested_face!\00", align 1
@.str.27 = private unnamed_addr constant [52 x i8] c"font family name %s must be followed by a face name\00", align 1
@.str.28 = private unnamed_addr constant [54 x i8] c"there is no font with family name %s and face name %s\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"FontChange: no children!\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"FontChange: 1 child!\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"FontChange: 2 children!\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"syntax error in font size %s; ignoring it\00", align 1
@.str.33 = private unnamed_addr constant [48 x i8] c"no current font on which to base size change %s\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"FontChange: %d\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"%s %s ignored (result is not positive)\00", align 1
@BackEnd = external local_unnamed_addr global ptr, align 8
@PlainCharHeight = external local_unnamed_addr global i32, align 4
@.str.36 = private unnamed_addr constant [47 x i8] c"too many different fonts and sizes (max is %d)\00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"run out of memory when increasing font table size\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"FontChange: old!\00", align 1
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@.str.39 = private unnamed_addr constant [50 x i8] c"run out of memory when changing font or font size\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"FontWordSize: !is_word(type(x))!\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"no current font at word %s\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"no current colour at word %s\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"no current language at word %s\00", align 1
@MapTable = external local_unnamed_addr global [0 x ptr], align 8
@.str.44 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.45 = private unnamed_addr constant [60 x i8] c"character %s replaced by space (it has no glyph in font %s)\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"FontSize!\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"no current font at this point\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"FontHalfXHeight!\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"FontMapping!\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"FontName!\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"FontFamiliy!\00", align 1
@FontFamilyAndFace.buff = internal global [80 x i8] zeroinitializer, align 16
@.str.52 = private unnamed_addr constant [41 x i8] c"family and face names %s %s are too long\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"FontDebug: font_root!\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"FontPrintAll: family!\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"FontPrintAll: face!\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"FontDebug: Down(face)!\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"FontPrintAll: ps_name!\00", align 1
@.str.58 = private unnamed_addr constant [26 x i8] c"FontPrintAll: first_size!\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"/%s%s %s /%s LoutRecode\0A\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"/%s { /%s%s LoutFont } def\0A\00", align 1
@.str.61 = private unnamed_addr constant [26 x i8] c"/%s { /%s LoutFont } def\0A\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"FontDebug: font_used!\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"FontPrintPageSetup: face!\00", align 1
@.str.65 = private unnamed_addr constant [32 x i8] c"FontPrintPageSetup: first_size!\00", align 1
@.str.66 = private unnamed_addr constant [29 x i8] c"FontPrintPageSetup: ps_name!\00", align 1
@.str.67 = private unnamed_addr constant [30 x i8] c"FontPrintPageResources: face!\00", align 1
@.str.68 = private unnamed_addr constant [33 x i8] c"FontPrintPageResources: ps_name!\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"FontPageUsed!\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"%s font %s\0A\00", align 1
@.str.71 = private unnamed_addr constant [27 x i8] c"%%DocumentNeededResources:\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"%%+\00", align 1
@.str.73 = private unnamed_addr constant [52 x i8] c"unable to set font %s %s (no font databases loaded)\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"cannot read %s for %s\00", align 1
@.str.76 = private unnamed_addr constant [26 x i8] c"FontRead: type(y) != PAR!\00", align 1
@.str.77 = private unnamed_addr constant [50 x i8] c"font family name %s incompatible with %s value %s\00", align 1
@.str.78 = private unnamed_addr constant [48 x i8] c"font face name %s incompatible with %s value %s\00", align 1
@.str.79 = private unnamed_addr constant [35 x i8] c"illegal font name (quotes needed?)\00", align 1
@.str.80 = private unnamed_addr constant [48 x i8] c"illegal font metrics file name (quotes needed?)\00", align 1
@.str.81 = private unnamed_addr constant [54 x i8] c"illegal font extra metrics file name (quotes needed?)\00", align 1
@.str.82 = private unnamed_addr constant [43 x i8] c"illegal mapping file name (quotes needed?)\00", align 1
@.str.83 = private unnamed_addr constant [20 x i8] c"illegal value of %s\00", align 1
@.str.84 = private unnamed_addr constant [47 x i8] c"FontRead: cannot identify component of FontDef\00", align 1
@.str.85 = private unnamed_addr constant [33 x i8] c"font %s %s already defined, at%s\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.88 = private unnamed_addr constant [32 x i8] c"expecting either Yes or No here\00", align 1
@.str.89 = private unnamed_addr constant [51 x i8] c"too many different fonts and sizes (maximum is %d)\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"fnt\00", align 1
@.str.91 = private unnamed_addr constant [25 x i8] c"cannot open font file %s\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.93 = private unnamed_addr constant [17 x i8] c"StartFontMetrics\00", align 1
@.str.94 = private unnamed_addr constant [50 x i8] c"font file %s does not begin with StartFontMetrics\00", align 1
@.str.95 = private unnamed_addr constant [45 x i8] c"run out of memory while reading font file %s\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"EndFontMetrics\0A\00", align 1
@.str.97 = private unnamed_addr constant [18 x i8] c"UnderlinePosition\00", align 1
@.str.98 = private unnamed_addr constant [53 x i8] c"UnderlinePosition found twice in font file (line %d)\00", align 1
@.str.99 = private unnamed_addr constant [21 x i8] c"UnderlinePosition %f\00", align 1
@.str.100 = private unnamed_addr constant [19 x i8] c"UnderlineThickness\00", align 1
@.str.101 = private unnamed_addr constant [54 x i8] c"UnderlineThickness found twice in font file (line %d)\00", align 1
@.str.102 = private unnamed_addr constant [22 x i8] c"UnderlineThickness %f\00", align 1
@.str.104 = private unnamed_addr constant [43 x i8] c"XHeight found twice in font file (line %d)\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"XHeight %f\00", align 1
@.str.106 = private unnamed_addr constant [9 x i8] c"FontName\00", align 1
@.str.107 = private unnamed_addr constant [47 x i8] c"FontName found twice in font file %s (line %d)\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"FontName %s\00", align 1
@.str.109 = private unnamed_addr constant [41 x i8] c"FontName empty in font file %s (line %d)\00", align 1
@.str.110 = private unnamed_addr constant [48 x i8] c"FontName in font file (%s) and %s (%s) disagree\00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"IsFixedPitch\00", align 1
@.str.112 = private unnamed_addr constant [16 x i8] c"IsFixedPitch %s\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.114 = private unnamed_addr constant [17 x i8] c"StartCharMetrics\00", align 1
@.str.115 = private unnamed_addr constant [28 x i8] c"FontName missing in file %s\00", align 1
@Kern = external local_unnamed_addr global i32, align 4
@.str.116 = private unnamed_addr constant [15 x i8] c"StartKernPairs\00", align 1
@.str.117 = private unnamed_addr constant [18 x i8] c"StartKernPairs %d\00", align 1
@.str.118 = private unnamed_addr constant [62 x i8] c"syntax error on StartKernPairs line in font file %s (line %d)\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"EndKernPairs\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"KPX\00", align 1
@.str.121 = private unnamed_addr constant [13 x i8] c"KPX %s %s %f\00", align 1
@.str.122 = private unnamed_addr constant [43 x i8] c"syntax error in font file %s (line %d): %s\00", align 1
@.str.123 = private unnamed_addr constant [60 x i8] c"non-contiguous kerning pair %s %s in font file %s (line %d)\00", align 1
@.str.124 = private unnamed_addr constant [49 x i8] c"too many kerning pairs in font file %s (line %d)\00", align 1
@.str.125 = private unnamed_addr constant [59 x i8] c"kerning pair %s %s appears twice in font file %s (line %d)\00", align 1
@.str.126 = private unnamed_addr constant [41 x i8] c"EndFontMetrics missing from font file %s\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.128 = private unnamed_addr constant [31 x i8] c"cannot open extra font file %s\00", align 1
@.str.129 = private unnamed_addr constant [22 x i8] c"StartExtraCharMetrics\00", align 1
@.str.130 = private unnamed_addr constant [21 x i8] c"StartBuildComposites\00", align 1
@.str.131 = private unnamed_addr constant [15 x i8] c"EndCharMetrics\00", align 1
@.str.132 = private unnamed_addr constant [20 x i8] c"EndExtraCharMetrics\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"N %s\00", align 1
@.str.135 = private unnamed_addr constant [3 x i8] c"WX\00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"WX %f\00", align 1
@.str.138 = private unnamed_addr constant [14 x i8] c"B %f %f %f %f\00", align 1
@.str.140 = private unnamed_addr constant [67 x i8] c"ignoring unencoded ligature character %s in font file %s (line %d)\00", align 1
@.str.141 = private unnamed_addr constant [55 x i8] c"too many ligature characters in font file %s (line %d)\00", align 1
@.str.142 = private unnamed_addr constant [37 x i8] c"WX missing in font file %s (line %d)\00", align 1
@.str.143 = private unnamed_addr constant [36 x i8] c"B missing in font file %s (line %d)\00", align 1
@PlainCharWidth = external local_unnamed_addr global i32, align 4
@.str.144 = private unnamed_addr constant [3 x i8] c"CC\00", align 1
@.str.145 = private unnamed_addr constant [10 x i8] c"CC %s %d \00", align 1
@.str.146 = private unnamed_addr constant [45 x i8] c"syntax error in extra font file %s (line %d)\00", align 1
@.str.147 = private unnamed_addr constant [52 x i8] c"unknown character name %s in font file %s (line %d)\00", align 1
@.str.148 = private unnamed_addr constant [14 x i8] c" PCC %s %d %d\00", align 1
@.str.149 = private unnamed_addr constant [44 x i8] c"too many composites in file %s (at line %d)\00", align 1
@.str.150 = private unnamed_addr constant [19 x i8] c"EndBuildComposites\00", align 1
@.str.151 = private unnamed_addr constant [59 x i8] c"missing EndBuildComposites in extra font file %s (line %d)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @FontInit() local_unnamed_addr #0 {
  store i32 1, ptr @font_curr_page, align 4, !tbaa !5
  store i32 0, ptr @font_count, align 4, !tbaa !5
  %1 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !9
  %2 = zext i8 %1 to i32
  store i32 %2, ptr @zz_size, align 4, !tbaa !5
  %3 = zext i8 %1 to i64
  %4 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %9 = tail call ptr @GetMemory(i32 noundef %2, ptr noundef %8) #14
  store ptr %9, ptr @zz_hold, align 8, !tbaa !10
  br label %12

10:                                               ; preds = %0
  store ptr %5, ptr @zz_hold, align 8, !tbaa !10
  %11 = load ptr, ptr %5, align 8, !tbaa !9
  store ptr %11, ptr %4, align 8, !tbaa !10
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi ptr [ %9, %7 ], [ %5, %10 ]
  %14 = getelementptr inbounds %struct.word_type, ptr %13, i64 0, i32 1
  store i8 17, ptr %14, align 8, !tbaa !9
  %15 = getelementptr inbounds [2 x %struct.LIST], ptr %13, i64 0, i64 1, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !9
  %16 = getelementptr inbounds [2 x %struct.LIST], ptr %13, i64 0, i64 1
  store ptr %13, ptr %16, align 8, !tbaa !9
  %17 = getelementptr inbounds %struct.LIST, ptr %13, i64 0, i32 1
  store ptr %13, ptr %17, align 8, !tbaa !9
  store ptr %13, ptr %13, align 8, !tbaa !9
  store ptr %13, ptr @font_root, align 8, !tbaa !10
  %18 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !9
  %19 = zext i8 %18 to i32
  store i32 %19, ptr @zz_size, align 4, !tbaa !5
  %20 = zext i8 %18 to i64
  %21 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %12
  %25 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %26 = tail call ptr @GetMemory(i32 noundef %19, ptr noundef %25) #14
  store ptr %26, ptr @zz_hold, align 8, !tbaa !10
  br label %29

27:                                               ; preds = %12
  store ptr %22, ptr @zz_hold, align 8, !tbaa !10
  %28 = load ptr, ptr %22, align 8, !tbaa !9
  store ptr %28, ptr %21, align 8, !tbaa !10
  br label %29

29:                                               ; preds = %24, %27
  %30 = phi ptr [ %26, %24 ], [ %22, %27 ]
  %31 = getelementptr inbounds %struct.word_type, ptr %30, i64 0, i32 1
  store i8 17, ptr %31, align 8, !tbaa !9
  %32 = getelementptr inbounds [2 x %struct.LIST], ptr %30, i64 0, i64 1, i32 1
  store ptr %30, ptr %32, align 8, !tbaa !9
  %33 = getelementptr inbounds [2 x %struct.LIST], ptr %30, i64 0, i64 1
  store ptr %30, ptr %33, align 8, !tbaa !9
  %34 = getelementptr inbounds %struct.LIST, ptr %30, i64 0, i32 1
  store ptr %30, ptr %34, align 8, !tbaa !9
  store ptr %30, ptr %30, align 8, !tbaa !9
  store ptr %30, ptr @font_used, align 8, !tbaa !10
  store i32 0, ptr @font_seqnum, align 4, !tbaa !5
  %35 = tail call noalias dereferenceable_or_null(9600) ptr @malloc(i64 noundef 9600) #15
  store ptr %35, ptr @finfo, align 8, !tbaa !10
  store i32 100, ptr @finfo_size, align 4, !tbaa !5
  %36 = load ptr, ptr @StartSym, align 8, !tbaa !10
  %37 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %38 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.14, ptr noundef %37) #14
  %39 = tail call ptr @InsertSym(ptr noundef nonnull @.str.1, i8 noundef zeroext -113, ptr noundef %37, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %36, ptr noundef %38) #14
  store ptr %39, ptr @FontDefSym, align 8, !tbaa !10
  %40 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %41 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.14, ptr noundef %40) #14
  %42 = tail call ptr @InsertSym(ptr noundef nonnull @.str.2, i8 noundef zeroext -111, ptr noundef %40, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %39, ptr noundef %41) #14
  %43 = getelementptr inbounds i8, ptr %42, i64 41
  %44 = load i24, ptr %43, align 1
  %45 = or i24 %44, 65536
  store i24 %45, ptr %43, align 1
  %46 = getelementptr inbounds %struct.symbol_type, ptr %39, i64 0, i32 13
  %47 = load i16, ptr %46, align 2, !tbaa !9
  %48 = add i16 %47, 1
  store i16 %48, ptr %46, align 2, !tbaa !9
  %49 = getelementptr inbounds %struct.symbol_type, ptr %42, i64 0, i32 16
  %50 = load i8, ptr %49, align 2
  %51 = or i8 %50, 64
  store i8 %51, ptr %49, align 2
  store ptr %42, ptr @fd_tag, align 8, !tbaa !10
  %52 = load ptr, ptr @FontDefSym, align 8, !tbaa !10
  %53 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %54 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.14, ptr noundef %53) #14
  %55 = tail call ptr @InsertSym(ptr noundef nonnull @.str.3, i8 noundef zeroext -111, ptr noundef %53, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %52, ptr noundef %54) #14
  %56 = getelementptr inbounds i8, ptr %55, i64 41
  %57 = load i24, ptr %56, align 1
  %58 = or i24 %57, 65536
  store i24 %58, ptr %56, align 1
  %59 = getelementptr inbounds %struct.symbol_type, ptr %52, i64 0, i32 13
  %60 = load i16, ptr %59, align 2, !tbaa !9
  %61 = add i16 %60, 1
  store i16 %61, ptr %59, align 2, !tbaa !9
  %62 = getelementptr inbounds %struct.symbol_type, ptr %55, i64 0, i32 16
  %63 = load i8, ptr %62, align 2
  %64 = or i8 %63, 64
  store i8 %64, ptr %62, align 2
  store ptr %55, ptr @fd_family, align 8, !tbaa !10
  %65 = load ptr, ptr @FontDefSym, align 8, !tbaa !10
  %66 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %67 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.14, ptr noundef %66) #14
  %68 = tail call ptr @InsertSym(ptr noundef nonnull @.str.4, i8 noundef zeroext -111, ptr noundef %66, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %65, ptr noundef %67) #14
  %69 = getelementptr inbounds i8, ptr %68, i64 41
  %70 = load i24, ptr %69, align 1
  %71 = or i24 %70, 65536
  store i24 %71, ptr %69, align 1
  %72 = getelementptr inbounds %struct.symbol_type, ptr %65, i64 0, i32 13
  %73 = load i16, ptr %72, align 2, !tbaa !9
  %74 = add i16 %73, 1
  store i16 %74, ptr %72, align 2, !tbaa !9
  %75 = getelementptr inbounds %struct.symbol_type, ptr %68, i64 0, i32 16
  %76 = load i8, ptr %75, align 2
  %77 = or i8 %76, 64
  store i8 %77, ptr %75, align 2
  store ptr %68, ptr @fd_face, align 8, !tbaa !10
  %78 = load ptr, ptr @FontDefSym, align 8, !tbaa !10
  %79 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %80 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.14, ptr noundef %79) #14
  %81 = tail call ptr @InsertSym(ptr noundef nonnull @.str.5, i8 noundef zeroext -111, ptr noundef %79, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %78, ptr noundef %80) #14
  %82 = getelementptr inbounds i8, ptr %81, i64 41
  %83 = load i24, ptr %82, align 1
  %84 = or i24 %83, 65536
  store i24 %84, ptr %82, align 1
  %85 = getelementptr inbounds %struct.symbol_type, ptr %78, i64 0, i32 13
  %86 = load i16, ptr %85, align 2, !tbaa !9
  %87 = add i16 %86, 1
  store i16 %87, ptr %85, align 2, !tbaa !9
  %88 = getelementptr inbounds %struct.symbol_type, ptr %81, i64 0, i32 16
  %89 = load i8, ptr %88, align 2
  %90 = or i8 %89, 64
  store i8 %90, ptr %88, align 2
  store ptr %81, ptr @fd_name, align 8, !tbaa !10
  %91 = load ptr, ptr @FontDefSym, align 8, !tbaa !10
  %92 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %93 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.14, ptr noundef %92) #14
  %94 = tail call ptr @InsertSym(ptr noundef nonnull @.str.6, i8 noundef zeroext -111, ptr noundef %92, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %91, ptr noundef %93) #14
  %95 = getelementptr inbounds i8, ptr %94, i64 41
  %96 = load i24, ptr %95, align 1
  %97 = or i24 %96, 65536
  store i24 %97, ptr %95, align 1
  %98 = getelementptr inbounds %struct.symbol_type, ptr %91, i64 0, i32 13
  %99 = load i16, ptr %98, align 2, !tbaa !9
  %100 = add i16 %99, 1
  store i16 %100, ptr %98, align 2, !tbaa !9
  %101 = getelementptr inbounds %struct.symbol_type, ptr %94, i64 0, i32 16
  %102 = load i8, ptr %101, align 2
  %103 = or i8 %102, 64
  store i8 %103, ptr %101, align 2
  store ptr %94, ptr @fd_metrics, align 8, !tbaa !10
  %104 = load ptr, ptr @FontDefSym, align 8, !tbaa !10
  %105 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %106 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.14, ptr noundef %105) #14
  %107 = tail call ptr @InsertSym(ptr noundef nonnull @.str.7, i8 noundef zeroext -111, ptr noundef %105, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %104, ptr noundef %106) #14
  %108 = getelementptr inbounds i8, ptr %107, i64 41
  %109 = load i24, ptr %108, align 1
  %110 = or i24 %109, 65536
  store i24 %110, ptr %108, align 1
  store ptr %107, ptr @fd_extra_metrics, align 8, !tbaa !10
  %111 = load ptr, ptr @FontDefSym, align 8, !tbaa !10
  %112 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %113 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.14, ptr noundef %112) #14
  %114 = tail call ptr @InsertSym(ptr noundef nonnull @.str.8, i8 noundef zeroext -111, ptr noundef %112, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %111, ptr noundef %113) #14
  %115 = getelementptr inbounds i8, ptr %114, i64 41
  %116 = load i24, ptr %115, align 1
  %117 = or i24 %116, 65536
  store i24 %117, ptr %115, align 1
  %118 = getelementptr inbounds %struct.symbol_type, ptr %111, i64 0, i32 13
  %119 = load i16, ptr %118, align 2, !tbaa !9
  %120 = add i16 %119, 1
  store i16 %120, ptr %118, align 2, !tbaa !9
  %121 = getelementptr inbounds %struct.symbol_type, ptr %114, i64 0, i32 16
  %122 = load i8, ptr %121, align 2
  %123 = or i8 %122, 64
  store i8 %123, ptr %121, align 2
  store ptr %114, ptr @fd_mapping, align 8, !tbaa !10
  %124 = load ptr, ptr @FontDefSym, align 8, !tbaa !10
  %125 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %126 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.14, ptr noundef %125) #14
  %127 = tail call ptr @InsertSym(ptr noundef nonnull @.str.9, i8 noundef zeroext -111, ptr noundef %125, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %124, ptr noundef %126) #14
  %128 = getelementptr inbounds i8, ptr %127, i64 41
  %129 = load i24, ptr %128, align 1
  %130 = or i24 %129, 65536
  store i24 %130, ptr %128, align 1
  store ptr %127, ptr @fd_recode, align 8, !tbaa !10
  ret void
}

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @FontChange(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [512 x i8], align 16
  %4 = alloca [100 x i8], align 16
  %5 = alloca [100 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [100 x i8], align 16
  %10 = alloca [100 x i8], align 16
  %11 = alloca i16, align 2
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca [512 x i8], align 16
  %16 = alloca [512 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca [30 x i8], align 16
  %23 = alloca [30 x i8], align 16
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  %26 = alloca [3 x ptr], align 16
  %27 = alloca %struct.GAP, align 4
  %28 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %26) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %27) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #14
  %29 = getelementptr inbounds %struct.STYLE, ptr %0, i64 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 4095
  %32 = load i32, ptr @font_count, align 4, !tbaa !5
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %36 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %35, ptr noundef nonnull @.str.11) #14
  br label %37

37:                                               ; preds = %34, %2
  %38 = getelementptr inbounds %struct.word_type, ptr %1, i64 0, i32 1
  %39 = load i8, ptr %38, align 8, !tbaa !9
  switch i8 %39, label %101 [
    i8 5, label %2090
    i8 11, label %44
    i8 12, label %44
    i8 17, label %40
  ]

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.LIST, ptr %1, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !9
  %43 = icmp eq ptr %42, %1
  br i1 %43, label %2090, label %61

44:                                               ; preds = %37, %37
  %45 = getelementptr inbounds %struct.word_type, ptr %1, i64 0, i32 4
  %46 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %45, ptr noundef nonnull dereferenceable(10) @.str.12) #16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i8, ptr %0, align 4
  %50 = or i8 %49, 8
  store i8 %50, ptr %0, align 4
  br label %2090

51:                                               ; preds = %44
  %52 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %45, ptr noundef nonnull dereferenceable(12) @.str.13) #16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i8, ptr %0, align 4
  %56 = and i8 %55, -9
  store i8 %56, ptr %0, align 4
  br label %2090

57:                                               ; preds = %51
  %58 = load i8, ptr %45, align 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %2090, label %60

60:                                               ; preds = %57
  store ptr %1, ptr %26, align 16, !tbaa !10
  br label %111

61:                                               ; preds = %40, %96
  %62 = phi ptr [ %99, %96 ], [ %42, %40 ]
  %63 = phi i32 [ %97, %96 ], [ 0, %40 ]
  br label %64

64:                                               ; preds = %61, %64
  %65 = phi ptr [ %67, %64 ], [ %62, %61 ]
  %66 = getelementptr inbounds [2 x %struct.LIST], ptr %65, i64 0, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !9
  %68 = getelementptr inbounds %struct.word_type, ptr %67, i64 0, i32 1
  %69 = load i8, ptr %68, align 8, !tbaa !9
  switch i8 %69, label %94 [
    i8 0, label %64
    i8 1, label %96
    i8 5, label %96
    i8 11, label %70
    i8 12, label %70
  ]

70:                                               ; preds = %64, %64
  %71 = getelementptr inbounds %struct.word_type, ptr %67, i64 0, i32 4
  %72 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %71, ptr noundef nonnull dereferenceable(10) @.str.12) #16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i8, ptr %0, align 4
  %76 = or i8 %75, 8
  store i8 %76, ptr %0, align 4
  br label %96

77:                                               ; preds = %70
  %78 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %71, ptr noundef nonnull dereferenceable(12) @.str.13) #16
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i8, ptr %0, align 4
  %82 = and i8 %81, -9
  store i8 %82, ptr %0, align 4
  br label %96

83:                                               ; preds = %77
  %84 = load i8, ptr %71, align 1
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %83
  %87 = icmp sgt i32 %63, 2
  br i1 %87, label %88, label %90

88:                                               ; preds = %86
  %89 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 40, ptr noundef nonnull @.str.15, i32 noundef 2, ptr noundef nonnull %38, ptr noundef nonnull @.str.16) #14
  br label %2090

90:                                               ; preds = %86
  %91 = add nsw i32 %63, 1
  %92 = sext i32 %63 to i64
  %93 = getelementptr inbounds [3 x ptr], ptr %26, i64 0, i64 %92
  store ptr %67, ptr %93, align 8, !tbaa !10
  br label %96

94:                                               ; preds = %64
  %95 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 41, ptr noundef nonnull @.str.15, i32 noundef 2, ptr noundef nonnull %38, ptr noundef nonnull @.str.16) #14
  br label %2090

96:                                               ; preds = %64, %64, %80, %90, %83, %74
  %97 = phi i32 [ %63, %74 ], [ %63, %80 ], [ %63, %83 ], [ %91, %90 ], [ %63, %64 ], [ %63, %64 ]
  %98 = getelementptr inbounds %struct.LIST, ptr %62, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !9
  %100 = icmp eq ptr %99, %1
  br i1 %100, label %103, label %61

101:                                              ; preds = %37
  %102 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 42, ptr noundef nonnull @.str.15, i32 noundef 2, ptr noundef nonnull %38, ptr noundef nonnull @.str.16) #14
  br label %2090

103:                                              ; preds = %96
  %104 = icmp eq i32 %97, 0
  br i1 %104, label %2090, label %105

105:                                              ; preds = %103
  %106 = icmp ult i32 %97, 4
  br i1 %106, label %111, label %107

107:                                              ; preds = %105
  %108 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %109 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %108, ptr noundef nonnull @.str.17) #14
  %110 = icmp sgt i32 %97, 0
  br i1 %110, label %111, label %226

111:                                              ; preds = %105, %60, %107
  %112 = phi i32 [ %97, %107 ], [ 1, %60 ], [ %97, %105 ]
  br label %113

113:                                              ; preds = %111, %220
  %114 = phi i32 [ %224, %220 ], [ 0, %111 ]
  %115 = phi ptr [ %222, %220 ], [ null, %111 ]
  %116 = phi i32 [ %221, %220 ], [ %112, %111 ]
  %117 = sext i32 %114 to i64
  %118 = getelementptr inbounds [3 x ptr], ptr %26, i64 0, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !10
  %120 = getelementptr inbounds %struct.word_type, ptr %119, i64 0, i32 4
  %121 = load i8, ptr %120, align 8, !tbaa !9
  switch i8 %121, label %122 [
    i8 45, label %125
    i8 43, label %125
  ]

122:                                              ; preds = %113
  %123 = add i8 %121, -48
  %124 = icmp ult i8 %123, 10
  br i1 %124, label %125, label %220

125:                                              ; preds = %113, %113, %122
  %126 = add nsw i32 %114, 1
  %127 = icmp slt i32 %126, %116
  br i1 %127, label %128, label %217

128:                                              ; preds = %125
  %129 = sext i32 %126 to i64
  %130 = add i32 %116, -2
  %131 = sub i32 %130, %114
  %132 = zext i32 %131 to i64
  %133 = add nuw nsw i64 %132, 1
  %134 = icmp ult i32 %131, 9
  %135 = add i32 %116, -2
  %136 = icmp slt i32 %135, %114
  %137 = select i1 %134, i1 true, i1 %136
  br i1 %137, label %164, label %138

138:                                              ; preds = %128
  %139 = sext i32 %114 to i64
  %140 = sub nsw i64 %139, %129
  %141 = and i64 %140, 2305843009213693948
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %164, label %143

143:                                              ; preds = %138
  %144 = and i64 %133, 8589934588
  %145 = add nsw i64 %144, %129
  %146 = trunc i64 %144 to i32
  %147 = add i32 %114, %146
  br label %148

148:                                              ; preds = %148, %143
  %149 = phi i64 [ 0, %143 ], [ %160, %148 ]
  %150 = trunc i64 %149 to i32
  %151 = add i32 %114, %150
  %152 = add i64 %149, %129
  %153 = getelementptr inbounds [3 x ptr], ptr %26, i64 0, i64 %152
  %154 = getelementptr inbounds ptr, ptr %153, i64 2
  %155 = load <2 x ptr>, ptr %153, align 8, !tbaa !10
  %156 = load <2 x ptr>, ptr %154, align 8, !tbaa !10
  %157 = sext i32 %151 to i64
  %158 = getelementptr inbounds [3 x ptr], ptr %26, i64 0, i64 %157
  %159 = getelementptr inbounds ptr, ptr %158, i64 2
  store <2 x ptr> %155, ptr %158, align 8, !tbaa !10
  store <2 x ptr> %156, ptr %159, align 8, !tbaa !10
  %160 = add nuw i64 %149, 4
  %161 = icmp eq i64 %160, %144
  br i1 %161, label %162, label %148, !llvm.loop !12

162:                                              ; preds = %148
  %163 = icmp eq i64 %133, %144
  br i1 %163, label %217, label %164

164:                                              ; preds = %138, %128, %162
  %165 = phi i64 [ %129, %138 ], [ %129, %128 ], [ %145, %162 ]
  %166 = phi i32 [ %114, %138 ], [ %114, %128 ], [ %147, %162 ]
  %167 = trunc i64 %165 to i32
  %168 = sub i32 %116, %167
  %169 = and i32 %168, 3
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %183, label %171

171:                                              ; preds = %164, %171
  %172 = phi i64 [ %179, %171 ], [ %165, %164 ]
  %173 = phi i32 [ %180, %171 ], [ %166, %164 ]
  %174 = phi i32 [ %181, %171 ], [ 0, %164 ]
  %175 = getelementptr inbounds [3 x ptr], ptr %26, i64 0, i64 %172
  %176 = load ptr, ptr %175, align 8, !tbaa !10
  %177 = sext i32 %173 to i64
  %178 = getelementptr inbounds [3 x ptr], ptr %26, i64 0, i64 %177
  store ptr %176, ptr %178, align 8, !tbaa !10
  %179 = add nsw i64 %172, 1
  %180 = trunc i64 %172 to i32
  %181 = add i32 %174, 1
  %182 = icmp eq i32 %181, %169
  br i1 %182, label %183, label %171, !llvm.loop !15

183:                                              ; preds = %171, %164
  %184 = phi i64 [ %165, %164 ], [ %179, %171 ]
  %185 = phi i32 [ %166, %164 ], [ %180, %171 ]
  %186 = sub i32 %167, %116
  %187 = icmp ugt i32 %186, -4
  br i1 %187, label %217, label %188

188:                                              ; preds = %183, %188
  %189 = phi i64 [ %213, %188 ], [ %184, %183 ]
  %190 = phi i32 [ %214, %188 ], [ %185, %183 ]
  %191 = getelementptr inbounds [3 x ptr], ptr %26, i64 0, i64 %189
  %192 = load ptr, ptr %191, align 8, !tbaa !10
  %193 = sext i32 %190 to i64
  %194 = getelementptr inbounds [3 x ptr], ptr %26, i64 0, i64 %193
  store ptr %192, ptr %194, align 8, !tbaa !10
  %195 = add nsw i64 %189, 1
  %196 = getelementptr inbounds [3 x ptr], ptr %26, i64 0, i64 %195
  %197 = load ptr, ptr %196, align 8, !tbaa !10
  %198 = shl i64 %189, 32
  %199 = ashr exact i64 %198, 32
  %200 = getelementptr inbounds [3 x ptr], ptr %26, i64 0, i64 %199
  store ptr %197, ptr %200, align 8, !tbaa !10
  %201 = add nsw i64 %189, 2
  %202 = getelementptr inbounds [3 x ptr], ptr %26, i64 0, i64 %201
  %203 = load ptr, ptr %202, align 8, !tbaa !10
  %204 = shl i64 %195, 32
  %205 = ashr exact i64 %204, 32
  %206 = getelementptr inbounds [3 x ptr], ptr %26, i64 0, i64 %205
  store ptr %203, ptr %206, align 8, !tbaa !10
  %207 = add nsw i64 %189, 3
  %208 = getelementptr inbounds [3 x ptr], ptr %26, i64 0, i64 %207
  %209 = load ptr, ptr %208, align 8, !tbaa !10
  %210 = shl i64 %201, 32
  %211 = ashr exact i64 %210, 32
  %212 = getelementptr inbounds [3 x ptr], ptr %26, i64 0, i64 %211
  store ptr %209, ptr %212, align 8, !tbaa !10
  %213 = add nsw i64 %189, 4
  %214 = trunc i64 %207 to i32
  %215 = trunc i64 %213 to i32
  %216 = icmp eq i32 %116, %215
  br i1 %216, label %217, label %188, !llvm.loop !17

217:                                              ; preds = %183, %188, %162, %125
  %218 = phi i32 [ %126, %125 ], [ %116, %162 ], [ %116, %188 ], [ %116, %183 ]
  %219 = add nsw i32 %116, -1
  br label %220

220:                                              ; preds = %122, %217
  %221 = phi i32 [ %219, %217 ], [ %116, %122 ]
  %222 = phi ptr [ %119, %217 ], [ %115, %122 ]
  %223 = phi i32 [ %218, %217 ], [ %114, %122 ]
  %224 = add nsw i32 %223, 1
  %225 = icmp slt i32 %224, %221
  br i1 %225, label %113, label %226

226:                                              ; preds = %220, %107
  %227 = phi i32 [ %97, %107 ], [ %221, %220 ]
  %228 = phi ptr [ null, %107 ], [ %222, %220 ]
  switch i32 %227, label %235 [
    i32 0, label %237
    i32 1, label %229
    i32 2, label %231
  ]

229:                                              ; preds = %226
  %230 = load ptr, ptr %26, align 16, !tbaa !10
  br label %237

231:                                              ; preds = %226
  %232 = load ptr, ptr %26, align 16, !tbaa !10
  %233 = getelementptr inbounds [3 x ptr], ptr %26, i64 0, i64 1
  %234 = load ptr, ptr %233, align 8, !tbaa !10
  br label %237

235:                                              ; preds = %226
  %236 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 43, ptr noundef nonnull @.str.15, i32 noundef 2, ptr noundef nonnull %38, ptr noundef nonnull @.str.16) #14
  br label %2090

237:                                              ; preds = %226, %231, %229
  %238 = phi ptr [ %234, %231 ], [ %230, %229 ], [ null, %226 ]
  %239 = phi ptr [ %232, %231 ], [ null, %229 ], [ null, %226 ]
  %240 = load i32, ptr %29, align 4
  %241 = and i32 %240, 4095
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %251

243:                                              ; preds = %237
  %244 = icmp eq ptr %228, null
  %245 = icmp eq ptr %239, null
  %246 = select i1 %244, i1 true, i1 %245
  %247 = icmp eq ptr %238, null
  %248 = select i1 %246, i1 true, i1 %247
  br i1 %248, label %249, label %253

249:                                              ; preds = %243
  %250 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 44, ptr noundef nonnull @.str.18, i32 noundef 1, ptr noundef nonnull %38) #14
  br label %251

251:                                              ; preds = %249, %237
  %252 = icmp eq ptr %239, null
  br i1 %252, label %272, label %253

253:                                              ; preds = %243, %251
  %254 = load ptr, ptr @font_root, align 8, !tbaa !10
  %255 = getelementptr inbounds %struct.word_type, ptr %239, i64 0, i32 4
  br label %256

256:                                              ; preds = %268, %253
  %257 = phi ptr [ %254, %253 ], [ %259, %268 ]
  %258 = getelementptr inbounds %struct.LIST, ptr %257, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !9
  %260 = icmp eq ptr %259, %254
  br i1 %260, label %367, label %261

261:                                              ; preds = %256, %261
  %262 = phi ptr [ %264, %261 ], [ %259, %256 ]
  %263 = getelementptr inbounds [2 x %struct.LIST], ptr %262, i64 0, i64 1
  %264 = load ptr, ptr %263, align 8, !tbaa !9
  %265 = getelementptr inbounds %struct.word_type, ptr %264, i64 0, i32 1
  %266 = load i8, ptr %265, align 8, !tbaa !9
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %261, label %268

268:                                              ; preds = %261
  %269 = getelementptr inbounds %struct.word_type, ptr %264, i64 0, i32 4
  %270 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %255, ptr noundef nonnull dereferenceable(1) %269) #16
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %322, label %256

272:                                              ; preds = %251
  %273 = load ptr, ptr @finfo, align 8, !tbaa !10
  %274 = load i32, ptr %29, align 4
  %275 = and i32 %274, 4095
  %276 = zext nneg i32 %275 to i64
  %277 = getelementptr inbounds %struct.font_rec, ptr %273, i64 %276, i32 5
  %278 = load ptr, ptr %277, align 8, !tbaa !18
  %279 = getelementptr inbounds [2 x %struct.LIST], ptr %278, i64 0, i64 1, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !9
  %281 = icmp eq ptr %280, %278
  br i1 %281, label %282, label %289

282:                                              ; preds = %272
  %283 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %284 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %283, ptr noundef nonnull @.str.19) #14
  %285 = load ptr, ptr @finfo, align 8, !tbaa !10
  %286 = load i32, ptr %29, align 4
  %287 = and i32 %286, 4095
  %288 = zext nneg i32 %287 to i64
  br label %289

289:                                              ; preds = %282, %272
  %290 = phi i64 [ %288, %282 ], [ %276, %272 ]
  %291 = phi ptr [ %285, %282 ], [ %273, %272 ]
  %292 = getelementptr inbounds %struct.font_rec, ptr %291, i64 %290, i32 5
  %293 = load ptr, ptr %292, align 8, !tbaa !18
  %294 = getelementptr inbounds [2 x %struct.LIST], ptr %293, i64 0, i64 1, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !9
  br label %296

296:                                              ; preds = %296, %289
  %297 = phi ptr [ %295, %289 ], [ %298, %296 ]
  %298 = load ptr, ptr %297, align 8, !tbaa !9
  %299 = getelementptr inbounds %struct.word_type, ptr %298, i64 0, i32 1
  %300 = load i8, ptr %299, align 8, !tbaa !9
  switch i8 %300, label %301 [
    i8 0, label %296
    i8 11, label %304
    i8 12, label %304
  ]

301:                                              ; preds = %296
  %302 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %303 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %302, ptr noundef nonnull @.str.20) #14
  br label %304

304:                                              ; preds = %296, %296, %301
  %305 = getelementptr inbounds [2 x %struct.LIST], ptr %298, i64 0, i64 1, i32 1
  %306 = load ptr, ptr %305, align 8, !tbaa !9
  %307 = icmp eq ptr %306, %298
  br i1 %307, label %308, label %312

308:                                              ; preds = %304
  %309 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %310 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %309, ptr noundef nonnull @.str.21) #14
  %311 = load ptr, ptr %305, align 8, !tbaa !9
  br label %312

312:                                              ; preds = %308, %304
  %313 = phi ptr [ %306, %304 ], [ %311, %308 ]
  br label %314

314:                                              ; preds = %312, %314
  %315 = phi ptr [ %316, %314 ], [ %313, %312 ]
  %316 = load ptr, ptr %315, align 8, !tbaa !9
  %317 = getelementptr inbounds %struct.word_type, ptr %316, i64 0, i32 1
  %318 = load i8, ptr %317, align 8, !tbaa !9
  switch i8 %318, label %319 [
    i8 0, label %314
    i8 11, label %322
    i8 12, label %322
  ]

319:                                              ; preds = %314
  %320 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %321 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %320, ptr noundef nonnull @.str.22) #14
  br label %322

322:                                              ; preds = %268, %314, %314, %319
  %323 = phi ptr [ %316, %319 ], [ %316, %314 ], [ %316, %314 ], [ %264, %268 ]
  %324 = icmp eq ptr %238, null
  br i1 %324, label %343, label %325

325:                                              ; preds = %322
  %326 = getelementptr inbounds %struct.word_type, ptr %238, i64 0, i32 4
  br label %327

327:                                              ; preds = %325, %339
  %328 = phi ptr [ %330, %339 ], [ %323, %325 ]
  %329 = getelementptr inbounds %struct.LIST, ptr %328, i64 0, i32 1
  %330 = load ptr, ptr %329, align 8, !tbaa !9
  %331 = icmp eq ptr %330, %323
  br i1 %331, label %367, label %332

332:                                              ; preds = %327, %332
  %333 = phi ptr [ %335, %332 ], [ %330, %327 ]
  %334 = getelementptr inbounds [2 x %struct.LIST], ptr %333, i64 0, i64 1
  %335 = load ptr, ptr %334, align 8, !tbaa !9
  %336 = getelementptr inbounds %struct.word_type, ptr %335, i64 0, i32 1
  %337 = load i8, ptr %336, align 8, !tbaa !9
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %332, label %339

339:                                              ; preds = %332
  %340 = getelementptr inbounds %struct.word_type, ptr %335, i64 0, i32 4
  %341 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %326, ptr noundef nonnull dereferenceable(1) %340) #16
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %1554, label %327

343:                                              ; preds = %322
  %344 = load ptr, ptr @finfo, align 8, !tbaa !10
  %345 = load i32, ptr %29, align 4
  %346 = and i32 %345, 4095
  %347 = zext nneg i32 %346 to i64
  %348 = getelementptr inbounds %struct.font_rec, ptr %344, i64 %347, i32 5
  %349 = load ptr, ptr %348, align 8, !tbaa !18
  %350 = getelementptr inbounds [2 x %struct.LIST], ptr %349, i64 0, i64 1, i32 1
  %351 = load ptr, ptr %350, align 8, !tbaa !9
  br label %352

352:                                              ; preds = %352, %343
  %353 = phi ptr [ %351, %343 ], [ %354, %352 ]
  %354 = load ptr, ptr %353, align 8, !tbaa !9
  %355 = getelementptr inbounds %struct.word_type, ptr %354, i64 0, i32 1
  %356 = load i8, ptr %355, align 8, !tbaa !9
  switch i8 %356, label %357 [
    i8 0, label %352
    i8 11, label %360
    i8 12, label %360
  ]

357:                                              ; preds = %352
  %358 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %359 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %358, ptr noundef nonnull @.str.23) #14
  br label %360

360:                                              ; preds = %352, %352, %357
  %361 = getelementptr inbounds [2 x %struct.LIST], ptr %354, i64 0, i64 1, i32 1
  %362 = load ptr, ptr %361, align 8, !tbaa !9
  %363 = icmp eq ptr %362, %354
  br i1 %363, label %364, label %1554

364:                                              ; preds = %360
  %365 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %366 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %365, ptr noundef nonnull @.str.24) #14
  br label %1554

367:                                              ; preds = %256, %327
  %368 = phi ptr [ %323, %327 ], [ null, %256 ]
  %369 = phi i1 [ true, %327 ], [ false, %256 ]
  %370 = icmp eq ptr %238, null
  br i1 %370, label %371, label %374

371:                                              ; preds = %367
  %372 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %373 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %372, ptr noundef nonnull @.str.26) #14
  br label %374

374:                                              ; preds = %371, %367
  %375 = select i1 %369, ptr %368, ptr %239
  %376 = getelementptr inbounds %struct.word_type, ptr %375, i64 0, i32 4
  %377 = getelementptr inbounds %struct.word_type, ptr %238, i64 0, i32 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %15) #14
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %16) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #14
  %378 = load ptr, ptr @FontDefSym, align 8, !tbaa !10
  %379 = getelementptr inbounds %struct.symbol_type, ptr %378, i64 0, i32 8
  %380 = load ptr, ptr %379, align 8, !tbaa !9
  %381 = icmp eq ptr %380, null
  br i1 %381, label %382, label %385

382:                                              ; preds = %374
  %383 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %384 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 10, ptr noundef nonnull @.str.73, i32 noundef 1, ptr noundef %383, ptr noundef nonnull %376, ptr noundef nonnull %377) #14
  br label %385

385:                                              ; preds = %382, %374
  %386 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @.str.74, ptr noundef nonnull %376, ptr noundef nonnull %377) #14
  %387 = getelementptr inbounds [2 x %struct.LIST], ptr %380, i64 0, i64 1, i32 1
  %388 = load ptr, ptr %387, align 8, !tbaa !9
  br label %389

389:                                              ; preds = %400, %385
  %390 = phi ptr [ %388, %385 ], [ %392, %400 ]
  %391 = getelementptr inbounds [2 x %struct.LIST], ptr %390, i64 0, i64 1, i32 1
  %392 = load ptr, ptr %391, align 8, !tbaa !9
  %393 = icmp eq ptr %392, %380
  br i1 %393, label %1500, label %394

394:                                              ; preds = %389, %394
  %395 = phi ptr [ %396, %394 ], [ %392, %389 ]
  %396 = load ptr, ptr %395, align 8, !tbaa !9
  %397 = getelementptr inbounds %struct.word_type, ptr %396, i64 0, i32 1
  %398 = load i8, ptr %397, align 8, !tbaa !9
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %394, label %400

400:                                              ; preds = %394
  %401 = load ptr, ptr @FontDefSym, align 8, !tbaa !10
  %402 = call i32 @DbRetrieve(ptr noundef nonnull %396, i32 noundef 0, ptr noundef %401, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef nonnull %13) #14
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %389, label %404

404:                                              ; preds = %400
  call void @SwitchScope(ptr noundef null) #14
  %405 = load i16, ptr %11, align 2, !tbaa !21
  %406 = load i64, ptr %12, align 8, !tbaa !22
  %407 = load i32, ptr %14, align 4, !tbaa !5
  %408 = call ptr @ReadFromFile(i16 noundef zeroext %405, i64 noundef %406, i32 noundef %407) #14
  call void @UnSwitchScope(ptr noundef null) #14
  %409 = icmp eq ptr %408, null
  br i1 %409, label %410, label %413

410:                                              ; preds = %404
  %411 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %412 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 11, ptr noundef nonnull @.str.75, i32 noundef 0, ptr noundef %411, ptr noundef nonnull @.str.1, ptr noundef nonnull %9) #14
  br label %413

413:                                              ; preds = %410, %404
  %414 = getelementptr inbounds %struct.LIST, ptr %408, i64 0, i32 1
  %415 = load ptr, ptr %414, align 8, !tbaa !9
  %416 = icmp eq ptr %415, %408
  br i1 %416, label %601, label %417

417:                                              ; preds = %413
  %418 = getelementptr inbounds %struct.word_type, ptr %408, i64 0, i32 1
  br label %419

419:                                              ; preds = %590, %417
  %420 = phi ptr [ %415, %417 ], [ %599, %590 ]
  %421 = phi ptr [ null, %417 ], [ %597, %590 ]
  %422 = phi ptr [ null, %417 ], [ %596, %590 ]
  %423 = phi ptr [ null, %417 ], [ %595, %590 ]
  %424 = phi ptr [ null, %417 ], [ %594, %590 ]
  %425 = phi ptr [ null, %417 ], [ %593, %590 ]
  %426 = phi ptr [ null, %417 ], [ %592, %590 ]
  %427 = phi ptr [ null, %417 ], [ %591, %590 ]
  br label %428

428:                                              ; preds = %428, %419
  %429 = phi ptr [ %431, %428 ], [ %420, %419 ]
  %430 = getelementptr inbounds [2 x %struct.LIST], ptr %429, i64 0, i64 1
  %431 = load ptr, ptr %430, align 8, !tbaa !9
  %432 = getelementptr inbounds %struct.word_type, ptr %431, i64 0, i32 1
  %433 = load i8, ptr %432, align 8, !tbaa !9
  switch i8 %433, label %434 [
    i8 0, label %428
    i8 10, label %437
  ]

434:                                              ; preds = %428
  %435 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %436 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %435, ptr noundef nonnull @.str.76) #14
  br label %437

437:                                              ; preds = %428, %434
  %438 = getelementptr inbounds %struct.closure_type, ptr %431, i64 0, i32 5
  %439 = load ptr, ptr %438, align 8, !tbaa !9
  %440 = load ptr, ptr @fd_tag, align 8, !tbaa !10
  %441 = icmp eq ptr %439, %440
  br i1 %441, label %590, label %442

442:                                              ; preds = %437
  %443 = load ptr, ptr @fd_family, align 8, !tbaa !10
  %444 = icmp eq ptr %439, %443
  br i1 %444, label %445, label %461

445:                                              ; preds = %442
  %446 = getelementptr inbounds %struct.LIST, ptr %431, i64 0, i32 1
  %447 = load ptr, ptr %446, align 8, !tbaa !9
  br label %448

448:                                              ; preds = %448, %445
  %449 = phi ptr [ %447, %445 ], [ %451, %448 ]
  %450 = getelementptr inbounds [2 x %struct.LIST], ptr %449, i64 0, i64 1
  %451 = load ptr, ptr %450, align 8, !tbaa !9
  %452 = getelementptr inbounds %struct.word_type, ptr %451, i64 0, i32 1
  %453 = load i8, ptr %452, align 8, !tbaa !9
  switch i8 %453, label %458 [
    i8 0, label %448
    i8 11, label %454
    i8 12, label %454
  ]

454:                                              ; preds = %448, %448
  %455 = getelementptr inbounds %struct.word_type, ptr %451, i64 0, i32 4
  %456 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %455, ptr noundef nonnull dereferenceable(1) %376) #16
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %590, label %458

458:                                              ; preds = %448, %454
  %459 = getelementptr inbounds %struct.word_type, ptr %451, i64 0, i32 4
  %460 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 12, ptr noundef nonnull @.str.77, i32 noundef 1, ptr noundef nonnull %418, ptr noundef nonnull %459, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #14
  br label %590

461:                                              ; preds = %442
  %462 = load ptr, ptr @fd_face, align 8, !tbaa !10
  %463 = icmp eq ptr %439, %462
  br i1 %463, label %464, label %480

464:                                              ; preds = %461
  %465 = getelementptr inbounds %struct.LIST, ptr %431, i64 0, i32 1
  %466 = load ptr, ptr %465, align 8, !tbaa !9
  br label %467

467:                                              ; preds = %467, %464
  %468 = phi ptr [ %466, %464 ], [ %470, %467 ]
  %469 = getelementptr inbounds [2 x %struct.LIST], ptr %468, i64 0, i64 1
  %470 = load ptr, ptr %469, align 8, !tbaa !9
  %471 = getelementptr inbounds %struct.word_type, ptr %470, i64 0, i32 1
  %472 = load i8, ptr %471, align 8, !tbaa !9
  switch i8 %472, label %477 [
    i8 0, label %467
    i8 11, label %473
    i8 12, label %473
  ]

473:                                              ; preds = %467, %467
  %474 = getelementptr inbounds %struct.word_type, ptr %470, i64 0, i32 4
  %475 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %474, ptr noundef nonnull dereferenceable(1) %377) #16
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %590, label %477

477:                                              ; preds = %467, %473
  %478 = getelementptr inbounds %struct.word_type, ptr %470, i64 0, i32 4
  %479 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 13, ptr noundef nonnull @.str.78, i32 noundef 1, ptr noundef nonnull %418, ptr noundef nonnull %478, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #14
  br label %590

480:                                              ; preds = %461
  %481 = load ptr, ptr @fd_name, align 8, !tbaa !10
  %482 = icmp eq ptr %439, %481
  br i1 %482, label %483, label %501

483:                                              ; preds = %480
  %484 = getelementptr inbounds %struct.LIST, ptr %431, i64 0, i32 1
  %485 = load ptr, ptr %484, align 8, !tbaa !9
  br label %486

486:                                              ; preds = %486, %483
  %487 = phi ptr [ %485, %483 ], [ %489, %486 ]
  %488 = getelementptr inbounds [2 x %struct.LIST], ptr %487, i64 0, i64 1
  %489 = load ptr, ptr %488, align 8, !tbaa !9
  %490 = getelementptr inbounds %struct.word_type, ptr %489, i64 0, i32 1
  %491 = load i8, ptr %490, align 8, !tbaa !9
  %492 = icmp eq i8 %491, 0
  br i1 %492, label %486, label %493

493:                                              ; preds = %486
  %494 = call ptr @ReplaceWithTidy(ptr noundef nonnull %489, i32 noundef 1) #14
  %495 = getelementptr inbounds %struct.word_type, ptr %494, i64 0, i32 1
  %496 = load i8, ptr %495, align 8, !tbaa !9
  %497 = add i8 %496, -11
  %498 = icmp ult i8 %497, 2
  br i1 %498, label %590, label %499

499:                                              ; preds = %493
  %500 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 14, ptr noundef nonnull @.str.79, i32 noundef 1, ptr noundef nonnull %495) #14
  br label %590

501:                                              ; preds = %480
  %502 = load ptr, ptr @fd_metrics, align 8, !tbaa !10
  %503 = icmp eq ptr %439, %502
  br i1 %503, label %504, label %522

504:                                              ; preds = %501
  %505 = getelementptr inbounds %struct.LIST, ptr %431, i64 0, i32 1
  %506 = load ptr, ptr %505, align 8, !tbaa !9
  br label %507

507:                                              ; preds = %507, %504
  %508 = phi ptr [ %506, %504 ], [ %510, %507 ]
  %509 = getelementptr inbounds [2 x %struct.LIST], ptr %508, i64 0, i64 1
  %510 = load ptr, ptr %509, align 8, !tbaa !9
  %511 = getelementptr inbounds %struct.word_type, ptr %510, i64 0, i32 1
  %512 = load i8, ptr %511, align 8, !tbaa !9
  %513 = icmp eq i8 %512, 0
  br i1 %513, label %507, label %514

514:                                              ; preds = %507
  %515 = call ptr @ReplaceWithTidy(ptr noundef nonnull %510, i32 noundef 1) #14
  %516 = getelementptr inbounds %struct.word_type, ptr %515, i64 0, i32 1
  %517 = load i8, ptr %516, align 8, !tbaa !9
  %518 = add i8 %517, -11
  %519 = icmp ult i8 %518, 2
  br i1 %519, label %590, label %520

520:                                              ; preds = %514
  %521 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 15, ptr noundef nonnull @.str.80, i32 noundef 1, ptr noundef nonnull %516) #14
  br label %590

522:                                              ; preds = %501
  %523 = load ptr, ptr @fd_extra_metrics, align 8, !tbaa !10
  %524 = icmp eq ptr %439, %523
  br i1 %524, label %525, label %543

525:                                              ; preds = %522
  %526 = getelementptr inbounds %struct.LIST, ptr %431, i64 0, i32 1
  %527 = load ptr, ptr %526, align 8, !tbaa !9
  br label %528

528:                                              ; preds = %528, %525
  %529 = phi ptr [ %527, %525 ], [ %531, %528 ]
  %530 = getelementptr inbounds [2 x %struct.LIST], ptr %529, i64 0, i64 1
  %531 = load ptr, ptr %530, align 8, !tbaa !9
  %532 = getelementptr inbounds %struct.word_type, ptr %531, i64 0, i32 1
  %533 = load i8, ptr %532, align 8, !tbaa !9
  %534 = icmp eq i8 %533, 0
  br i1 %534, label %528, label %535

535:                                              ; preds = %528
  %536 = call ptr @ReplaceWithTidy(ptr noundef nonnull %531, i32 noundef 1) #14
  %537 = getelementptr inbounds %struct.word_type, ptr %536, i64 0, i32 1
  %538 = load i8, ptr %537, align 8, !tbaa !9
  %539 = add i8 %538, -11
  %540 = icmp ult i8 %539, 2
  br i1 %540, label %590, label %541

541:                                              ; preds = %535
  %542 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 16, ptr noundef nonnull @.str.81, i32 noundef 1, ptr noundef nonnull %537) #14
  br label %590

543:                                              ; preds = %522
  %544 = load ptr, ptr @fd_mapping, align 8, !tbaa !10
  %545 = icmp eq ptr %439, %544
  br i1 %545, label %546, label %564

546:                                              ; preds = %543
  %547 = getelementptr inbounds %struct.LIST, ptr %431, i64 0, i32 1
  %548 = load ptr, ptr %547, align 8, !tbaa !9
  br label %549

549:                                              ; preds = %549, %546
  %550 = phi ptr [ %548, %546 ], [ %552, %549 ]
  %551 = getelementptr inbounds [2 x %struct.LIST], ptr %550, i64 0, i64 1
  %552 = load ptr, ptr %551, align 8, !tbaa !9
  %553 = getelementptr inbounds %struct.word_type, ptr %552, i64 0, i32 1
  %554 = load i8, ptr %553, align 8, !tbaa !9
  %555 = icmp eq i8 %554, 0
  br i1 %555, label %549, label %556

556:                                              ; preds = %549
  %557 = call ptr @ReplaceWithTidy(ptr noundef nonnull %552, i32 noundef 1) #14
  %558 = getelementptr inbounds %struct.word_type, ptr %557, i64 0, i32 1
  %559 = load i8, ptr %558, align 8, !tbaa !9
  %560 = add i8 %559, -11
  %561 = icmp ult i8 %560, 2
  br i1 %561, label %590, label %562

562:                                              ; preds = %556
  %563 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 17, ptr noundef nonnull @.str.82, i32 noundef 1, ptr noundef nonnull %558) #14
  br label %590

564:                                              ; preds = %543
  %565 = load ptr, ptr @fd_recode, align 8, !tbaa !10
  %566 = icmp eq ptr %439, %565
  br i1 %566, label %567, label %587

567:                                              ; preds = %564
  %568 = getelementptr inbounds %struct.LIST, ptr %431, i64 0, i32 1
  %569 = load ptr, ptr %568, align 8, !tbaa !9
  br label %570

570:                                              ; preds = %570, %567
  %571 = phi ptr [ %569, %567 ], [ %573, %570 ]
  %572 = getelementptr inbounds [2 x %struct.LIST], ptr %571, i64 0, i64 1
  %573 = load ptr, ptr %572, align 8, !tbaa !9
  %574 = getelementptr inbounds %struct.word_type, ptr %573, i64 0, i32 1
  %575 = load i8, ptr %574, align 8, !tbaa !9
  %576 = icmp eq i8 %575, 0
  br i1 %576, label %570, label %577

577:                                              ; preds = %570
  %578 = call ptr @ReplaceWithTidy(ptr noundef nonnull %573, i32 noundef 1) #14
  %579 = getelementptr inbounds %struct.word_type, ptr %578, i64 0, i32 1
  %580 = load i8, ptr %579, align 8, !tbaa !9
  %581 = add i8 %580, -11
  %582 = icmp ult i8 %581, 2
  br i1 %582, label %590, label %583

583:                                              ; preds = %577
  %584 = load ptr, ptr @fd_recode, align 8, !tbaa !10
  %585 = call ptr @SymName(ptr noundef %584) #14
  %586 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 18, ptr noundef nonnull @.str.83, i32 noundef 1, ptr noundef nonnull %579, ptr noundef %585) #14
  br label %590

587:                                              ; preds = %564
  %588 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %589 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %588, ptr noundef nonnull @.str.84) #14
  br label %590

590:                                              ; preds = %587, %583, %577, %562, %556, %541, %535, %520, %514, %499, %493, %477, %473, %458, %454, %437
  %591 = phi ptr [ %427, %437 ], [ %427, %454 ], [ %427, %458 ], [ %427, %473 ], [ %427, %477 ], [ %427, %499 ], [ %427, %520 ], [ %427, %541 ], [ %427, %562 ], [ %578, %583 ], [ %427, %587 ], [ %427, %493 ], [ %427, %514 ], [ %427, %535 ], [ %427, %556 ], [ %578, %577 ]
  %592 = phi ptr [ %426, %437 ], [ %426, %454 ], [ %426, %458 ], [ %426, %473 ], [ %426, %477 ], [ %426, %499 ], [ %426, %520 ], [ %426, %541 ], [ %557, %562 ], [ %426, %583 ], [ %426, %587 ], [ %426, %493 ], [ %426, %514 ], [ %426, %535 ], [ %557, %556 ], [ %426, %577 ]
  %593 = phi ptr [ %425, %437 ], [ %425, %454 ], [ %425, %458 ], [ %425, %473 ], [ %425, %477 ], [ %425, %499 ], [ %425, %520 ], [ %536, %541 ], [ %425, %562 ], [ %425, %583 ], [ %425, %587 ], [ %425, %493 ], [ %425, %514 ], [ %536, %535 ], [ %425, %556 ], [ %425, %577 ]
  %594 = phi ptr [ %424, %437 ], [ %424, %454 ], [ %424, %458 ], [ %424, %473 ], [ %424, %477 ], [ %424, %499 ], [ %515, %520 ], [ %424, %541 ], [ %424, %562 ], [ %424, %583 ], [ %424, %587 ], [ %424, %493 ], [ %515, %514 ], [ %424, %535 ], [ %424, %556 ], [ %424, %577 ]
  %595 = phi ptr [ %423, %437 ], [ %423, %454 ], [ %423, %458 ], [ %423, %473 ], [ %423, %477 ], [ %494, %499 ], [ %423, %520 ], [ %423, %541 ], [ %423, %562 ], [ %423, %583 ], [ %423, %587 ], [ %494, %493 ], [ %423, %514 ], [ %423, %535 ], [ %423, %556 ], [ %423, %577 ]
  %596 = phi ptr [ %422, %437 ], [ %422, %454 ], [ %422, %458 ], [ %470, %473 ], [ %470, %477 ], [ %422, %499 ], [ %422, %520 ], [ %422, %541 ], [ %422, %562 ], [ %422, %583 ], [ %422, %587 ], [ %422, %493 ], [ %422, %514 ], [ %422, %535 ], [ %422, %556 ], [ %422, %577 ]
  %597 = phi ptr [ %421, %437 ], [ %451, %454 ], [ %451, %458 ], [ %421, %473 ], [ %421, %477 ], [ %421, %499 ], [ %421, %520 ], [ %421, %541 ], [ %421, %562 ], [ %421, %583 ], [ %421, %587 ], [ %421, %493 ], [ %421, %514 ], [ %421, %535 ], [ %421, %556 ], [ %421, %577 ]
  %598 = getelementptr inbounds %struct.LIST, ptr %420, i64 0, i32 1
  %599 = load ptr, ptr %598, align 8, !tbaa !9
  %600 = icmp eq ptr %599, %408
  br i1 %600, label %601, label %419

601:                                              ; preds = %590, %413
  %602 = phi ptr [ null, %413 ], [ %591, %590 ]
  %603 = phi ptr [ null, %413 ], [ %592, %590 ]
  %604 = phi ptr [ null, %413 ], [ %593, %590 ]
  %605 = phi ptr [ null, %413 ], [ %594, %590 ]
  %606 = phi ptr [ null, %413 ], [ %595, %590 ]
  %607 = phi ptr [ null, %413 ], [ %596, %590 ]
  %608 = phi ptr [ null, %413 ], [ %597, %590 ]
  %609 = icmp eq ptr %608, null
  %610 = icmp eq ptr %607, null
  %611 = select i1 %609, i1 true, i1 %610
  %612 = icmp eq ptr %606, null
  %613 = select i1 %611, i1 true, i1 %612
  %614 = icmp eq ptr %605, null
  %615 = select i1 %613, i1 true, i1 %614
  %616 = icmp eq ptr %603, null
  %617 = select i1 %615, i1 true, i1 %616
  br i1 %617, label %1500, label %618

618:                                              ; preds = %601
  %619 = load ptr, ptr @font_root, align 8, !tbaa !10
  %620 = getelementptr inbounds %struct.word_type, ptr %608, i64 0, i32 4
  br label %621

621:                                              ; preds = %633, %618
  %622 = phi ptr [ %619, %618 ], [ %624, %633 ]
  %623 = getelementptr inbounds %struct.LIST, ptr %622, i64 0, i32 1
  %624 = load ptr, ptr %623, align 8, !tbaa !9
  %625 = icmp eq ptr %624, %619
  br i1 %625, label %637, label %626

626:                                              ; preds = %621, %626
  %627 = phi ptr [ %629, %626 ], [ %624, %621 ]
  %628 = getelementptr inbounds [2 x %struct.LIST], ptr %627, i64 0, i64 1
  %629 = load ptr, ptr %628, align 8, !tbaa !9
  %630 = getelementptr inbounds %struct.word_type, ptr %629, i64 0, i32 1
  %631 = load i8, ptr %630, align 8, !tbaa !9
  %632 = icmp eq i8 %631, 0
  br i1 %632, label %626, label %633

633:                                              ; preds = %626
  %634 = getelementptr inbounds %struct.word_type, ptr %629, i64 0, i32 4
  %635 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %634, ptr noundef nonnull dereferenceable(1) %620) #16
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %668, label %621

637:                                              ; preds = %621
  %638 = getelementptr inbounds [2 x %struct.LIST], ptr %608, i64 0, i64 1, i32 1
  %639 = load ptr, ptr %638, align 8, !tbaa !9
  store ptr %639, ptr @xx_link, align 8, !tbaa !10
  store ptr %639, ptr @zz_hold, align 8, !tbaa !10
  %640 = getelementptr inbounds %struct.LIST, ptr %639, i64 0, i32 1
  %641 = load ptr, ptr %640, align 8, !tbaa !9
  %642 = icmp eq ptr %641, %639
  br i1 %642, label %652, label %643

643:                                              ; preds = %637
  store ptr %641, ptr @zz_res, align 8, !tbaa !10
  %644 = load ptr, ptr %639, align 8, !tbaa !9
  store ptr %644, ptr %641, align 8, !tbaa !9
  %645 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %646 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %647 = load ptr, ptr %646, align 8, !tbaa !9
  %648 = getelementptr inbounds %struct.LIST, ptr %647, i64 0, i32 1
  store ptr %645, ptr %648, align 8, !tbaa !9
  %649 = getelementptr inbounds %struct.LIST, ptr %646, i64 0, i32 1
  store ptr %646, ptr %649, align 8, !tbaa !9
  store ptr %646, ptr %646, align 8, !tbaa !9
  %650 = load ptr, ptr @xx_link, align 8, !tbaa !10
  %651 = load ptr, ptr @font_root, align 8, !tbaa !10
  br label %652

652:                                              ; preds = %643, %637
  %653 = phi ptr [ %619, %637 ], [ %651, %643 ]
  %654 = phi ptr [ %639, %637 ], [ %650, %643 ]
  store ptr %654, ptr @zz_res, align 8, !tbaa !10
  store ptr %653, ptr @zz_hold, align 8, !tbaa !10
  %655 = icmp eq ptr %653, null
  %656 = icmp eq ptr %654, null
  %657 = select i1 %655, i1 true, i1 %656
  br i1 %657, label %668, label %658

658:                                              ; preds = %652
  %659 = load ptr, ptr %653, align 8, !tbaa !9
  store ptr %659, ptr @zz_tmp, align 8, !tbaa !10
  %660 = load ptr, ptr %654, align 8, !tbaa !9
  store ptr %660, ptr %653, align 8, !tbaa !9
  %661 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %662 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %663 = load ptr, ptr %662, align 8, !tbaa !9
  %664 = getelementptr inbounds %struct.LIST, ptr %663, i64 0, i32 1
  store ptr %661, ptr %664, align 8, !tbaa !9
  %665 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %665, ptr %662, align 8, !tbaa !9
  %666 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %667 = getelementptr inbounds %struct.LIST, ptr %665, i64 0, i32 1
  store ptr %666, ptr %667, align 8, !tbaa !9
  br label %668

668:                                              ; preds = %633, %658, %652
  %669 = phi ptr [ %608, %652 ], [ %608, %658 ], [ %629, %633 ]
  %670 = getelementptr inbounds %struct.word_type, ptr %607, i64 0, i32 4
  br label %671

671:                                              ; preds = %683, %668
  %672 = phi ptr [ %669, %668 ], [ %674, %683 ]
  %673 = getelementptr inbounds %struct.LIST, ptr %672, i64 0, i32 1
  %674 = load ptr, ptr %673, align 8, !tbaa !9
  %675 = icmp eq ptr %674, %669
  br i1 %675, label %694, label %676

676:                                              ; preds = %671, %676
  %677 = phi ptr [ %679, %676 ], [ %674, %671 ]
  %678 = getelementptr inbounds [2 x %struct.LIST], ptr %677, i64 0, i64 1
  %679 = load ptr, ptr %678, align 8, !tbaa !9
  %680 = getelementptr inbounds %struct.word_type, ptr %679, i64 0, i32 1
  %681 = load i8, ptr %680, align 8, !tbaa !9
  %682 = icmp eq i8 %681, 0
  br i1 %682, label %676, label %683

683:                                              ; preds = %676
  %684 = getelementptr inbounds %struct.word_type, ptr %679, i64 0, i32 4
  %685 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %684, ptr noundef nonnull dereferenceable(1) %670) #16
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %687, label %671

687:                                              ; preds = %683
  %688 = getelementptr inbounds %struct.word_type, ptr %679, i64 0, i32 1
  %689 = getelementptr inbounds %struct.word_type, ptr %607, i64 0, i32 1
  %690 = getelementptr inbounds %struct.word_type, ptr %669, i64 0, i32 4
  %691 = call ptr @EchoFilePos(ptr noundef nonnull %688) #14
  %692 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 19, ptr noundef nonnull @.str.85, i32 noundef 2, ptr noundef nonnull %689, ptr noundef nonnull %690, ptr noundef nonnull %670, ptr noundef %691) #14
  %693 = call i32 @DisposeObject(ptr noundef %408) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %9) #14
  br label %1554

694:                                              ; preds = %671
  %695 = getelementptr inbounds [2 x %struct.LIST], ptr %607, i64 0, i64 1, i32 1
  %696 = load ptr, ptr %695, align 8, !tbaa !9
  store ptr %696, ptr @xx_link, align 8, !tbaa !10
  store ptr %696, ptr @zz_hold, align 8, !tbaa !10
  %697 = getelementptr inbounds %struct.LIST, ptr %696, i64 0, i32 1
  %698 = load ptr, ptr %697, align 8, !tbaa !9
  %699 = icmp eq ptr %698, %696
  br i1 %699, label %708, label %700

700:                                              ; preds = %694
  store ptr %698, ptr @zz_res, align 8, !tbaa !10
  %701 = load ptr, ptr %696, align 8, !tbaa !9
  store ptr %701, ptr %698, align 8, !tbaa !9
  %702 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %703 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %704 = load ptr, ptr %703, align 8, !tbaa !9
  %705 = getelementptr inbounds %struct.LIST, ptr %704, i64 0, i32 1
  store ptr %702, ptr %705, align 8, !tbaa !9
  %706 = getelementptr inbounds %struct.LIST, ptr %703, i64 0, i32 1
  store ptr %703, ptr %706, align 8, !tbaa !9
  store ptr %703, ptr %703, align 8, !tbaa !9
  %707 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %708

708:                                              ; preds = %700, %694
  %709 = phi ptr [ %696, %694 ], [ %707, %700 ]
  store ptr %709, ptr @zz_res, align 8, !tbaa !10
  store ptr %669, ptr @zz_hold, align 8, !tbaa !10
  %710 = icmp eq ptr %669, null
  %711 = icmp eq ptr %709, null
  %712 = select i1 %710, i1 true, i1 %711
  br i1 %712, label %723, label %713

713:                                              ; preds = %708
  %714 = load ptr, ptr %669, align 8, !tbaa !9
  store ptr %714, ptr @zz_tmp, align 8, !tbaa !10
  %715 = load ptr, ptr %709, align 8, !tbaa !9
  store ptr %715, ptr %669, align 8, !tbaa !9
  %716 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %717 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %718 = load ptr, ptr %717, align 8, !tbaa !9
  %719 = getelementptr inbounds %struct.LIST, ptr %718, i64 0, i32 1
  store ptr %716, ptr %719, align 8, !tbaa !9
  %720 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %720, ptr %717, align 8, !tbaa !9
  %721 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %722 = getelementptr inbounds %struct.LIST, ptr %720, i64 0, i32 1
  store ptr %721, ptr %722, align 8, !tbaa !9
  br label %723

723:                                              ; preds = %713, %708
  %724 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %725 = zext i8 %724 to i32
  store i32 %725, ptr @zz_size, align 4, !tbaa !5
  %726 = zext i8 %724 to i64
  %727 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %726
  %728 = load ptr, ptr %727, align 8, !tbaa !10
  %729 = icmp eq ptr %728, null
  br i1 %729, label %730, label %733

730:                                              ; preds = %723
  %731 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %732 = call ptr @GetMemory(i32 noundef %725, ptr noundef %731) #14
  br label %735

733:                                              ; preds = %723
  store ptr %728, ptr @zz_hold, align 8, !tbaa !10
  %734 = load ptr, ptr %728, align 8, !tbaa !9
  store ptr %734, ptr %727, align 8, !tbaa !10
  br label %735

735:                                              ; preds = %733, %730
  %736 = phi ptr [ %732, %730 ], [ %728, %733 ]
  %737 = getelementptr inbounds %struct.word_type, ptr %736, i64 0, i32 1
  store i8 0, ptr %737, align 8, !tbaa !9
  %738 = getelementptr inbounds [2 x %struct.LIST], ptr %736, i64 0, i64 1, i32 1
  store ptr %736, ptr %738, align 8, !tbaa !9
  %739 = getelementptr inbounds [2 x %struct.LIST], ptr %736, i64 0, i64 1
  store ptr %736, ptr %739, align 8, !tbaa !9
  %740 = getelementptr inbounds %struct.LIST, ptr %736, i64 0, i32 1
  store ptr %736, ptr %740, align 8, !tbaa !9
  store ptr %736, ptr %736, align 8, !tbaa !9
  store ptr %736, ptr @xx_link, align 8, !tbaa !10
  store ptr %736, ptr @zz_res, align 8, !tbaa !10
  store ptr %607, ptr @zz_hold, align 8, !tbaa !10
  %741 = load ptr, ptr %607, align 8, !tbaa !9
  store ptr %741, ptr @zz_tmp, align 8, !tbaa !10
  %742 = load ptr, ptr %736, align 8, !tbaa !9
  store ptr %742, ptr %607, align 8, !tbaa !9
  %743 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %744 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %745 = load ptr, ptr %744, align 8, !tbaa !9
  %746 = getelementptr inbounds %struct.LIST, ptr %745, i64 0, i32 1
  store ptr %743, ptr %746, align 8, !tbaa !9
  %747 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %747, ptr %744, align 8, !tbaa !9
  %748 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %749 = getelementptr inbounds %struct.LIST, ptr %747, i64 0, i32 1
  store ptr %748, ptr %749, align 8, !tbaa !9
  %750 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %750, ptr @zz_res, align 8, !tbaa !10
  store ptr %606, ptr @zz_hold, align 8, !tbaa !10
  %751 = icmp eq ptr %750, null
  br i1 %751, label %759, label %752

752:                                              ; preds = %735
  %753 = getelementptr inbounds [2 x %struct.LIST], ptr %606, i64 0, i64 1
  %754 = load ptr, ptr %753, align 8, !tbaa !9
  store ptr %754, ptr @zz_tmp, align 8, !tbaa !10
  %755 = getelementptr inbounds [2 x %struct.LIST], ptr %750, i64 0, i64 1
  %756 = load ptr, ptr %755, align 8, !tbaa !9
  store ptr %756, ptr %753, align 8, !tbaa !9
  %757 = getelementptr inbounds [2 x %struct.LIST], ptr %756, i64 0, i64 1, i32 1
  store ptr %606, ptr %757, align 8, !tbaa !9
  store ptr %754, ptr %755, align 8, !tbaa !9
  %758 = getelementptr inbounds [2 x %struct.LIST], ptr %754, i64 0, i64 1, i32 1
  store ptr %750, ptr %758, align 8, !tbaa !9
  br label %759

759:                                              ; preds = %752, %735
  %760 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %761 = zext i8 %760 to i32
  store i32 %761, ptr @zz_size, align 4, !tbaa !5
  %762 = zext i8 %760 to i64
  %763 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %762
  %764 = load ptr, ptr %763, align 8, !tbaa !10
  %765 = icmp eq ptr %764, null
  br i1 %765, label %766, label %769

766:                                              ; preds = %759
  %767 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %768 = call ptr @GetMemory(i32 noundef %761, ptr noundef %767) #14
  br label %771

769:                                              ; preds = %759
  store ptr %764, ptr @zz_hold, align 8, !tbaa !10
  %770 = load ptr, ptr %764, align 8, !tbaa !9
  store ptr %770, ptr %763, align 8, !tbaa !10
  br label %771

771:                                              ; preds = %769, %766
  %772 = phi ptr [ %768, %766 ], [ %764, %769 ]
  %773 = getelementptr inbounds %struct.word_type, ptr %772, i64 0, i32 1
  store i8 0, ptr %773, align 8, !tbaa !9
  %774 = getelementptr inbounds [2 x %struct.LIST], ptr %772, i64 0, i64 1, i32 1
  store ptr %772, ptr %774, align 8, !tbaa !9
  %775 = getelementptr inbounds [2 x %struct.LIST], ptr %772, i64 0, i64 1
  store ptr %772, ptr %775, align 8, !tbaa !9
  %776 = getelementptr inbounds %struct.LIST, ptr %772, i64 0, i32 1
  store ptr %772, ptr %776, align 8, !tbaa !9
  store ptr %772, ptr %772, align 8, !tbaa !9
  store ptr %772, ptr @xx_link, align 8, !tbaa !10
  store ptr %772, ptr @zz_res, align 8, !tbaa !10
  store ptr %607, ptr @zz_hold, align 8, !tbaa !10
  %777 = load ptr, ptr %607, align 8, !tbaa !9
  store ptr %777, ptr @zz_tmp, align 8, !tbaa !10
  %778 = load ptr, ptr %772, align 8, !tbaa !9
  store ptr %778, ptr %607, align 8, !tbaa !9
  %779 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %780 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %781 = load ptr, ptr %780, align 8, !tbaa !9
  %782 = getelementptr inbounds %struct.LIST, ptr %781, i64 0, i32 1
  store ptr %779, ptr %782, align 8, !tbaa !9
  %783 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %783, ptr %780, align 8, !tbaa !9
  %784 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %785 = getelementptr inbounds %struct.LIST, ptr %783, i64 0, i32 1
  store ptr %784, ptr %785, align 8, !tbaa !9
  %786 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %786, ptr @zz_res, align 8, !tbaa !10
  store ptr %605, ptr @zz_hold, align 8, !tbaa !10
  %787 = icmp eq ptr %786, null
  br i1 %787, label %795, label %788

788:                                              ; preds = %771
  %789 = getelementptr inbounds [2 x %struct.LIST], ptr %605, i64 0, i64 1
  %790 = load ptr, ptr %789, align 8, !tbaa !9
  store ptr %790, ptr @zz_tmp, align 8, !tbaa !10
  %791 = getelementptr inbounds [2 x %struct.LIST], ptr %786, i64 0, i64 1
  %792 = load ptr, ptr %791, align 8, !tbaa !9
  store ptr %792, ptr %789, align 8, !tbaa !9
  %793 = getelementptr inbounds [2 x %struct.LIST], ptr %792, i64 0, i64 1, i32 1
  store ptr %605, ptr %793, align 8, !tbaa !9
  store ptr %790, ptr %791, align 8, !tbaa !9
  %794 = getelementptr inbounds [2 x %struct.LIST], ptr %790, i64 0, i64 1, i32 1
  store ptr %786, ptr %794, align 8, !tbaa !9
  br label %795

795:                                              ; preds = %788, %771
  %796 = icmp eq ptr %604, null
  br i1 %796, label %833, label %797

797:                                              ; preds = %795
  %798 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %799 = zext i8 %798 to i32
  store i32 %799, ptr @zz_size, align 4, !tbaa !5
  %800 = zext i8 %798 to i64
  %801 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %800
  %802 = load ptr, ptr %801, align 8, !tbaa !10
  %803 = icmp eq ptr %802, null
  br i1 %803, label %804, label %807

804:                                              ; preds = %797
  %805 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %806 = call ptr @GetMemory(i32 noundef %799, ptr noundef %805) #14
  br label %809

807:                                              ; preds = %797
  store ptr %802, ptr @zz_hold, align 8, !tbaa !10
  %808 = load ptr, ptr %802, align 8, !tbaa !9
  store ptr %808, ptr %801, align 8, !tbaa !10
  br label %809

809:                                              ; preds = %807, %804
  %810 = phi ptr [ %806, %804 ], [ %802, %807 ]
  %811 = getelementptr inbounds %struct.word_type, ptr %810, i64 0, i32 1
  store i8 0, ptr %811, align 8, !tbaa !9
  %812 = getelementptr inbounds [2 x %struct.LIST], ptr %810, i64 0, i64 1, i32 1
  store ptr %810, ptr %812, align 8, !tbaa !9
  %813 = getelementptr inbounds [2 x %struct.LIST], ptr %810, i64 0, i64 1
  store ptr %810, ptr %813, align 8, !tbaa !9
  %814 = getelementptr inbounds %struct.LIST, ptr %810, i64 0, i32 1
  store ptr %810, ptr %814, align 8, !tbaa !9
  store ptr %810, ptr %810, align 8, !tbaa !9
  store ptr %810, ptr @xx_link, align 8, !tbaa !10
  store ptr %810, ptr @zz_res, align 8, !tbaa !10
  store ptr %605, ptr @zz_hold, align 8, !tbaa !10
  %815 = load ptr, ptr %605, align 8, !tbaa !9
  store ptr %815, ptr @zz_tmp, align 8, !tbaa !10
  %816 = load ptr, ptr %810, align 8, !tbaa !9
  store ptr %816, ptr %605, align 8, !tbaa !9
  %817 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %818 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %819 = load ptr, ptr %818, align 8, !tbaa !9
  %820 = getelementptr inbounds %struct.LIST, ptr %819, i64 0, i32 1
  store ptr %817, ptr %820, align 8, !tbaa !9
  %821 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %821, ptr %818, align 8, !tbaa !9
  %822 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %823 = getelementptr inbounds %struct.LIST, ptr %821, i64 0, i32 1
  store ptr %822, ptr %823, align 8, !tbaa !9
  %824 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %824, ptr @zz_res, align 8, !tbaa !10
  store ptr %604, ptr @zz_hold, align 8, !tbaa !10
  %825 = icmp eq ptr %824, null
  br i1 %825, label %833, label %826

826:                                              ; preds = %809
  %827 = getelementptr inbounds [2 x %struct.LIST], ptr %604, i64 0, i64 1
  %828 = load ptr, ptr %827, align 8, !tbaa !9
  store ptr %828, ptr @zz_tmp, align 8, !tbaa !10
  %829 = getelementptr inbounds [2 x %struct.LIST], ptr %824, i64 0, i64 1
  %830 = load ptr, ptr %829, align 8, !tbaa !9
  store ptr %830, ptr %827, align 8, !tbaa !9
  %831 = getelementptr inbounds [2 x %struct.LIST], ptr %830, i64 0, i64 1, i32 1
  store ptr %604, ptr %831, align 8, !tbaa !9
  store ptr %828, ptr %829, align 8, !tbaa !9
  %832 = getelementptr inbounds [2 x %struct.LIST], ptr %828, i64 0, i64 1, i32 1
  store ptr %824, ptr %832, align 8, !tbaa !9
  br label %833

833:                                              ; preds = %826, %809, %795
  %834 = icmp eq ptr %602, null
  br i1 %834, label %852, label %835

835:                                              ; preds = %833
  %836 = getelementptr inbounds %struct.word_type, ptr %602, i64 0, i32 4
  %837 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %836, ptr noundef nonnull dereferenceable(3) @.str.86) #16
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %839, label %849

839:                                              ; preds = %835
  %840 = getelementptr inbounds %struct.word_type, ptr %607, i64 0, i32 3, i32 1, i64 4
  %841 = load i8, ptr %840, align 4
  %842 = and i8 %841, 127
  store i8 %842, ptr %840, align 4
  %843 = call i32 @MapLoad(ptr noundef %603, i32 noundef 0) #14
  %844 = trunc i32 %843 to i8
  %845 = load i8, ptr %840, align 4
  %846 = and i8 %844, 127
  %847 = and i8 %845, -128
  %848 = or disjoint i8 %847, %846
  store i8 %848, ptr %840, align 4
  br label %865

849:                                              ; preds = %835
  %850 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %836, ptr noundef nonnull dereferenceable(4) @.str.87) #16
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %852, label %862

852:                                              ; preds = %849, %833
  %853 = getelementptr inbounds %struct.word_type, ptr %607, i64 0, i32 3, i32 1, i64 4
  %854 = load i8, ptr %853, align 4
  %855 = or i8 %854, -128
  store i8 %855, ptr %853, align 4
  %856 = call i32 @MapLoad(ptr noundef %603, i32 noundef 1) #14
  %857 = trunc i32 %856 to i8
  %858 = load i8, ptr %853, align 4
  %859 = and i8 %857, 127
  %860 = and i8 %858, -128
  %861 = or disjoint i8 %860, %859
  store i8 %861, ptr %853, align 4
  br label %865

862:                                              ; preds = %849
  %863 = getelementptr inbounds %struct.word_type, ptr %602, i64 0, i32 1
  %864 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 20, ptr noundef nonnull @.str.88, i32 noundef 1, ptr noundef nonnull %863) #14
  br label %865

865:                                              ; preds = %862, %852, %839
  %866 = getelementptr inbounds %struct.word_type, ptr %607, i64 0, i32 2
  %867 = getelementptr inbounds i8, ptr %607, i64 42
  store i16 0, ptr %867, align 2, !tbaa !9
  %868 = load i32, ptr @font_count, align 4, !tbaa !5
  %869 = add i32 %868, 1
  store i32 %869, ptr @font_count, align 4, !tbaa !5
  %870 = load i32, ptr @finfo_size, align 4, !tbaa !5
  %871 = icmp ult i32 %869, %870
  br i1 %871, label %887, label %872

872:                                              ; preds = %865
  %873 = icmp ugt i32 %869, 4096
  br i1 %873, label %874, label %877

874:                                              ; preds = %872
  %875 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 21, ptr noundef nonnull @.str.89, i32 noundef 1, ptr noundef nonnull %38, i32 noundef 4096) #14
  %876 = load i32, ptr @finfo_size, align 4, !tbaa !5
  br label %877

877:                                              ; preds = %874, %872
  %878 = phi i32 [ %876, %874 ], [ %870, %872 ]
  %879 = shl nsw i32 %878, 1
  store i32 %879, ptr @finfo_size, align 4, !tbaa !5
  %880 = load ptr, ptr @finfo, align 8, !tbaa !10
  %881 = sext i32 %879 to i64
  %882 = mul nsw i64 %881, 96
  %883 = call ptr @realloc(ptr noundef %880, i64 noundef %882) #17
  store ptr %883, ptr @finfo, align 8, !tbaa !10
  %884 = icmp eq ptr %883, null
  br i1 %884, label %885, label %887

885:                                              ; preds = %877
  %886 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 22, ptr noundef nonnull @.str.37, i32 noundef 1, ptr noundef nonnull %38) #14
  br label %887

887:                                              ; preds = %885, %877, %865
  %888 = load i32, ptr @font_seqnum, align 4, !tbaa !5
  %889 = add nsw i32 %888, 1
  store i32 %889, ptr @font_seqnum, align 4, !tbaa !5
  %890 = call ptr @StringInt(i32 noundef %889) #14
  %891 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %892 = call ptr @MakeWordTwo(i32 noundef 11, ptr noundef nonnull @.str.90, ptr noundef %890, ptr noundef %891) #14
  %893 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %894 = zext i8 %893 to i32
  store i32 %894, ptr @zz_size, align 4, !tbaa !5
  %895 = zext i8 %893 to i64
  %896 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %895
  %897 = load ptr, ptr %896, align 8, !tbaa !10
  %898 = icmp eq ptr %897, null
  br i1 %898, label %899, label %902

899:                                              ; preds = %887
  %900 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %901 = call ptr @GetMemory(i32 noundef %894, ptr noundef %900) #14
  br label %904

902:                                              ; preds = %887
  store ptr %897, ptr @zz_hold, align 8, !tbaa !10
  %903 = load ptr, ptr %897, align 8, !tbaa !9
  store ptr %903, ptr %896, align 8, !tbaa !10
  br label %904

904:                                              ; preds = %902, %899
  %905 = phi ptr [ %901, %899 ], [ %897, %902 ]
  %906 = getelementptr inbounds %struct.word_type, ptr %905, i64 0, i32 1
  store i8 0, ptr %906, align 8, !tbaa !9
  %907 = getelementptr inbounds [2 x %struct.LIST], ptr %905, i64 0, i64 1, i32 1
  store ptr %905, ptr %907, align 8, !tbaa !9
  %908 = getelementptr inbounds [2 x %struct.LIST], ptr %905, i64 0, i64 1
  store ptr %905, ptr %908, align 8, !tbaa !9
  %909 = getelementptr inbounds %struct.LIST, ptr %905, i64 0, i32 1
  store ptr %905, ptr %909, align 8, !tbaa !9
  store ptr %905, ptr %905, align 8, !tbaa !9
  store ptr %905, ptr @xx_link, align 8, !tbaa !10
  store ptr %905, ptr @zz_res, align 8, !tbaa !10
  store ptr %607, ptr @zz_hold, align 8, !tbaa !10
  %910 = load ptr, ptr %607, align 8, !tbaa !9
  store ptr %910, ptr @zz_tmp, align 8, !tbaa !10
  %911 = load ptr, ptr %905, align 8, !tbaa !9
  store ptr %911, ptr %607, align 8, !tbaa !9
  %912 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %913 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %914 = load ptr, ptr %913, align 8, !tbaa !9
  %915 = getelementptr inbounds %struct.LIST, ptr %914, i64 0, i32 1
  store ptr %912, ptr %915, align 8, !tbaa !9
  %916 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %916, ptr %913, align 8, !tbaa !9
  %917 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %918 = getelementptr inbounds %struct.LIST, ptr %916, i64 0, i32 1
  store ptr %917, ptr %918, align 8, !tbaa !9
  %919 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %919, ptr @zz_res, align 8, !tbaa !10
  store ptr %892, ptr @zz_hold, align 8, !tbaa !10
  %920 = icmp eq ptr %892, null
  %921 = icmp eq ptr %919, null
  %922 = select i1 %920, i1 true, i1 %921
  br i1 %922, label %930, label %923

923:                                              ; preds = %904
  %924 = getelementptr inbounds [2 x %struct.LIST], ptr %892, i64 0, i64 1
  %925 = load ptr, ptr %924, align 8, !tbaa !9
  store ptr %925, ptr @zz_tmp, align 8, !tbaa !10
  %926 = getelementptr inbounds [2 x %struct.LIST], ptr %919, i64 0, i64 1
  %927 = load ptr, ptr %926, align 8, !tbaa !9
  store ptr %927, ptr %924, align 8, !tbaa !9
  %928 = getelementptr inbounds [2 x %struct.LIST], ptr %927, i64 0, i64 1, i32 1
  store ptr %892, ptr %928, align 8, !tbaa !9
  store ptr %925, ptr %926, align 8, !tbaa !9
  %929 = getelementptr inbounds [2 x %struct.LIST], ptr %925, i64 0, i64 1, i32 1
  store ptr %919, ptr %929, align 8, !tbaa !9
  br label %930

930:                                              ; preds = %923, %904
  %931 = load i32, ptr @font_count, align 4, !tbaa !5
  %932 = getelementptr inbounds %struct.word_type, ptr %892, i64 0, i32 2
  %933 = trunc i32 %931 to i16
  %934 = load i16, ptr %932, align 8
  %935 = and i16 %933, 4095
  %936 = and i16 %934, -4096
  %937 = or disjoint i16 %936, %935
  store i16 %937, ptr %932, align 8
  %938 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %939 = getelementptr inbounds %struct.back_end_rec, ptr %938, i64 0, i32 8
  %940 = load i32, ptr %939, align 8, !tbaa !24
  %941 = icmp eq i32 %940, 0
  %942 = load i32, ptr @PlainCharHeight, align 4
  %943 = select i1 %941, i32 %942, i32 1000
  %944 = getelementptr inbounds %struct.word_type, ptr %892, i64 0, i32 3
  store i32 %943, ptr %944, align 8, !tbaa !9
  %945 = getelementptr inbounds %struct.word_type, ptr %607, i64 0, i32 3, i32 1, i64 4
  %946 = load i8, ptr %945, align 4
  %947 = and i8 %946, -128
  %948 = getelementptr inbounds %struct.word_type, ptr %892, i64 0, i32 3, i32 1, i64 4
  %949 = load i8, ptr %948, align 4
  %950 = and i8 %949, 127
  %951 = or disjoint i8 %950, %947
  store i8 %951, ptr %948, align 4
  %952 = load i8, ptr %945, align 4
  %953 = and i8 %952, 127
  %954 = or disjoint i8 %953, %947
  store i8 %954, ptr %948, align 4
  %955 = load i16, ptr %866, align 8
  %956 = and i16 %955, -4096
  %957 = or disjoint i16 %956, %935
  store i16 %957, ptr %866, align 8
  %958 = getelementptr inbounds %struct.word_type, ptr %605, i64 0, i32 4
  %959 = getelementptr inbounds %struct.word_type, ptr %605, i64 0, i32 1
  %960 = call zeroext i16 @DefineFile(ptr noundef nonnull %958, ptr noundef nonnull @.str.14, ptr noundef nonnull %959, i32 noundef 5, i32 noundef 5) #14
  %961 = call ptr @OpenFile(i16 noundef zeroext %960, i32 noundef 0, i32 noundef 0) #14
  %962 = icmp eq ptr %961, null
  br i1 %962, label %963, label %966

963:                                              ; preds = %930
  %964 = call ptr @FileName(i16 noundef zeroext %960) #14
  %965 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 23, ptr noundef nonnull @.str.91, i32 noundef 1, ptr noundef nonnull %959, ptr noundef %964) #14
  br label %966

966:                                              ; preds = %963, %930
  %967 = call ptr @fgets(ptr noundef nonnull %15, i32 noundef 512, ptr noundef %961)
  %968 = icmp eq ptr %967, null
  br i1 %968, label %975, label %969

969:                                              ; preds = %966
  %970 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %15, ptr noundef nonnull @.str.92, ptr noundef nonnull %16) #14
  %971 = icmp eq i32 %970, 1
  br i1 %971, label %972, label %975

972:                                              ; preds = %969
  %973 = call i32 @bcmp(ptr noundef nonnull dereferenceable(17) %16, ptr noundef nonnull dereferenceable(17) @.str.93, i64 17)
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %978, label %975

975:                                              ; preds = %972, %969, %966
  %976 = call ptr @FileName(i16 noundef zeroext %960) #14
  %977 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 24, ptr noundef nonnull @.str.94, i32 noundef 1, ptr noundef nonnull %959, ptr noundef %976) #14
  br label %978

978:                                              ; preds = %975, %972
  %979 = call noalias dereferenceable_or_null(2560) ptr @malloc(i64 noundef 2560) #15
  %980 = icmp eq ptr %979, null
  br i1 %980, label %981, label %984

981:                                              ; preds = %978
  %982 = call ptr @FileName(i16 noundef zeroext %960) #14
  %983 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 25, ptr noundef nonnull @.str.95, i32 noundef 1, ptr noundef nonnull %38, ptr noundef %982) #14
  br label %984

984:                                              ; preds = %981, %978
  %985 = call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #15
  %986 = icmp eq ptr %985, null
  br i1 %986, label %987, label %990

987:                                              ; preds = %984
  %988 = call ptr @FileName(i16 noundef zeroext %960) #14
  %989 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 25, ptr noundef nonnull @.str.95, i32 noundef 1, ptr noundef nonnull %38, ptr noundef %988) #14
  br label %990

990:                                              ; preds = %987, %984
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %985, i8 1, i64 256, i1 false), !tbaa !9
  store i32 258, ptr %18, align 4, !tbaa !5
  %991 = call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #15
  %992 = icmp eq ptr %991, null
  br i1 %992, label %993, label %996

993:                                              ; preds = %990
  %994 = call ptr @FileName(i16 noundef zeroext %960) #14
  %995 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 25, ptr noundef nonnull @.str.95, i32 noundef 1, ptr noundef nonnull %38, ptr noundef %994) #14
  br label %996

996:                                              ; preds = %993, %990
  %997 = call noalias dereferenceable_or_null(1536) ptr @malloc(i64 noundef 1536) #15
  %998 = icmp eq ptr %997, null
  br i1 %998, label %999, label %1002

999:                                              ; preds = %996
  %1000 = call ptr @FileName(i16 noundef zeroext %960) #14
  %1001 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 25, ptr noundef nonnull @.str.95, i32 noundef 1, ptr noundef nonnull %38, ptr noundef %1000) #14
  br label %1002

1002:                                             ; preds = %999, %996
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %991, i8 0, i64 512, i1 false), !tbaa !21
  %1003 = call dereferenceable_or_null(512) ptr @calloc(i64 1, i64 512)
  %1004 = icmp eq ptr %1003, null
  br i1 %1004, label %1005, label %1008

1005:                                             ; preds = %1002
  %1006 = call ptr @FileName(i16 noundef zeroext %960) #14
  %1007 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 25, ptr noundef nonnull @.str.95, i32 noundef 1, ptr noundef nonnull %38, ptr noundef %1006) #14
  br label %1008

1008:                                             ; preds = %1005, %1002
  store i32 1, ptr %17, align 4, !tbaa !5
  %1009 = call ptr @fgets(ptr noundef nonnull %15, i32 noundef 512, ptr noundef %961)
  %1010 = icmp eq ptr %1009, null
  br i1 %1010, label %1309, label %1011

1011:                                             ; preds = %1008
  %1012 = getelementptr inbounds %struct.LIST, ptr %607, i64 0, i32 1
  br label %1013

1013:                                             ; preds = %1295, %1011
  %1014 = phi ptr [ null, %1011 ], [ %1306, %1295 ]
  %1015 = phi ptr [ null, %1011 ], [ %1305, %1295 ]
  %1016 = phi ptr [ null, %1011 ], [ %1304, %1295 ]
  %1017 = phi i32 [ 0, %1011 ], [ %1303, %1295 ]
  %1018 = phi i32 [ 0, %1011 ], [ %1302, %1295 ]
  %1019 = phi i32 [ 0, %1011 ], [ %1301, %1295 ]
  %1020 = phi i32 [ 0, %1011 ], [ %1300, %1295 ]
  %1021 = phi i32 [ 0, %1011 ], [ %1299, %1295 ]
  %1022 = phi i32 [ 0, %1011 ], [ %1298, %1295 ]
  %1023 = phi i32 [ 0, %1011 ], [ %1297, %1295 ]
  %1024 = phi i32 [ 0, %1011 ], [ %1296, %1295 ]
  %1025 = load i8, ptr %15, align 16, !tbaa !9
  %1026 = icmp eq i8 %1025, 69
  br i1 %1026, label %1027, label %1030

1027:                                             ; preds = %1013
  %1028 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %15, ptr noundef nonnull dereferenceable(16) @.str.96, i64 16)
  %1029 = icmp eq i32 %1028, 0
  br i1 %1029, label %1319, label %1030

1030:                                             ; preds = %1027, %1013
  %1031 = load i32, ptr %17, align 4, !tbaa !5
  %1032 = add nsw i32 %1031, 1
  store i32 %1032, ptr %17, align 4, !tbaa !5
  %1033 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %15, ptr noundef nonnull @.str.92, ptr noundef nonnull %16) #14
  %1034 = load i8, ptr %16, align 16, !tbaa !9
  switch i8 %1034, label %1295 [
    i8 85, label %1035
    i8 88, label %1057
    i8 70, label %1069
    i8 73, label %1100
    i8 83, label %1108
  ]

1035:                                             ; preds = %1030
  %1036 = call i32 @bcmp(ptr noundef nonnull dereferenceable(18) %16, ptr noundef nonnull dereferenceable(18) @.str.97, i64 18)
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1038, label %1046

1038:                                             ; preds = %1035
  %1039 = icmp eq i32 %1021, 0
  br i1 %1039, label %1042, label %1040

1040:                                             ; preds = %1038
  %1041 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 26, ptr noundef nonnull @.str.98, i32 noundef 1, ptr noundef nonnull %959, i32 noundef %1032) #14
  br label %1042

1042:                                             ; preds = %1040, %1038
  %1043 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %15, ptr noundef nonnull @.str.99, ptr noundef nonnull %20) #14
  %1044 = load float, ptr %20, align 4, !tbaa !26
  %1045 = fptosi float %1044 to i32
  br label %1295

1046:                                             ; preds = %1035
  %1047 = call i32 @bcmp(ptr noundef nonnull dereferenceable(19) %16, ptr noundef nonnull dereferenceable(19) @.str.100, i64 19)
  %1048 = icmp eq i32 %1047, 0
  br i1 %1048, label %1049, label %1295

1049:                                             ; preds = %1046
  %1050 = icmp eq i32 %1020, 0
  br i1 %1050, label %1053, label %1051

1051:                                             ; preds = %1049
  %1052 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 27, ptr noundef nonnull @.str.101, i32 noundef 1, ptr noundef nonnull %959, i32 noundef %1032) #14
  br label %1053

1053:                                             ; preds = %1051, %1049
  %1054 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %15, ptr noundef nonnull @.str.102, ptr noundef nonnull %21) #14
  %1055 = load float, ptr %21, align 4, !tbaa !26
  %1056 = fptosi float %1055 to i32
  br label %1295

1057:                                             ; preds = %1030
  %1058 = load i64, ptr %16, align 16
  %1059 = icmp eq i64 %1058, 32765890657601624
  br i1 %1059, label %1060, label %1295

1060:                                             ; preds = %1057
  %1061 = icmp eq i32 %1019, 0
  br i1 %1061, label %1064, label %1062

1062:                                             ; preds = %1060
  %1063 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 28, ptr noundef nonnull @.str.104, i32 noundef 1, ptr noundef nonnull %959, i32 noundef %1032) #14
  br label %1064

1064:                                             ; preds = %1062, %1060
  %1065 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %15, ptr noundef nonnull @.str.105, ptr noundef nonnull %19) #14
  %1066 = load float, ptr %19, align 4, !tbaa !26
  %1067 = fmul float %1066, 5.000000e-01
  %1068 = fptosi float %1067 to i32
  br label %1295

1069:                                             ; preds = %1030
  %1070 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %16, ptr noundef nonnull dereferenceable(9) @.str.106, i64 9)
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1072, label %1295

1072:                                             ; preds = %1069
  %1073 = icmp eq i32 %1017, 0
  br i1 %1073, label %1077, label %1074

1074:                                             ; preds = %1072
  %1075 = call ptr @FileName(i16 noundef zeroext %960) #14
  %1076 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 29, ptr noundef nonnull @.str.107, i32 noundef 1, ptr noundef nonnull %959, ptr noundef %1075, i32 noundef %1032) #14
  br label %1077

1077:                                             ; preds = %1074, %1072
  %1078 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %15, ptr noundef nonnull @.str.108, ptr noundef nonnull %16) #14
  %1079 = load i8, ptr %16, align 16
  %1080 = icmp eq i8 %1079, 0
  br i1 %1080, label %1081, label %1085

1081:                                             ; preds = %1077
  %1082 = call ptr @FileName(i16 noundef zeroext %960) #14
  %1083 = load i32, ptr %17, align 4, !tbaa !5
  %1084 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 30, ptr noundef nonnull @.str.109, i32 noundef 1, ptr noundef nonnull %959, ptr noundef %1082, i32 noundef %1083) #14
  br label %1085

1085:                                             ; preds = %1081, %1077
  %1086 = load ptr, ptr %1012, align 8, !tbaa !9
  br label %1087

1087:                                             ; preds = %1087, %1085
  %1088 = phi ptr [ %1086, %1085 ], [ %1090, %1087 ]
  %1089 = getelementptr inbounds [2 x %struct.LIST], ptr %1088, i64 0, i64 1
  %1090 = load ptr, ptr %1089, align 8, !tbaa !9
  %1091 = getelementptr inbounds %struct.word_type, ptr %1090, i64 0, i32 1
  %1092 = load i8, ptr %1091, align 8, !tbaa !9
  %1093 = icmp eq i8 %1092, 0
  br i1 %1093, label %1087, label %1094

1094:                                             ; preds = %1087
  %1095 = getelementptr inbounds %struct.word_type, ptr %1090, i64 0, i32 4
  %1096 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %1095) #16
  %1097 = icmp eq i32 %1096, 0
  br i1 %1097, label %1295, label %1098

1098:                                             ; preds = %1094
  %1099 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 31, ptr noundef nonnull @.str.110, i32 noundef 2, ptr noundef nonnull %959, ptr noundef nonnull %16, ptr noundef nonnull @.str.1, ptr noundef nonnull %1095) #14
  br label %1295

1100:                                             ; preds = %1030
  %1101 = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %16, ptr noundef nonnull dereferenceable(13) @.str.111, i64 13)
  %1102 = icmp eq i32 %1101, 0
  br i1 %1102, label %1103, label %1295

1103:                                             ; preds = %1100
  %1104 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %15, ptr noundef nonnull @.str.112, ptr noundef nonnull %16) #14
  %1105 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %16, ptr noundef nonnull dereferenceable(5) @.str.113, i64 5)
  %1106 = icmp eq i32 %1105, 0
  %1107 = select i1 %1106, i32 1, i32 %1018
  br label %1295

1108:                                             ; preds = %1030
  %1109 = call i32 @bcmp(ptr noundef nonnull dereferenceable(17) %16, ptr noundef nonnull dereferenceable(17) @.str.114, i64 17)
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1111, label %1119

1111:                                             ; preds = %1108
  %1112 = icmp eq i32 %1017, 0
  br i1 %1112, label %1113, label %1116

1113:                                             ; preds = %1111
  %1114 = call ptr @FileName(i16 noundef zeroext %960) #14
  %1115 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 32, ptr noundef nonnull @.str.115, i32 noundef 1, ptr noundef nonnull %959, ptr noundef %1114) #14
  br label %1116

1116:                                             ; preds = %1113, %1111
  %1117 = icmp eq i32 %1019, 0
  %1118 = select i1 %1117, i32 250, i32 %1024
  call fastcc void @ReadCharMetrics(ptr noundef nonnull %607, i32 noundef %1018, i32 noundef %1118, ptr noundef %985, ptr noundef nonnull %18, i16 noundef zeroext %960, ptr noundef %979, ptr noundef nonnull %17, ptr noundef %961)
  br label %1295

1119:                                             ; preds = %1108
  %1120 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %1121 = getelementptr inbounds %struct.back_end_rec, ptr %1120, i64 0, i32 8
  %1122 = load i32, ptr %1121, align 8, !tbaa !24
  %1123 = icmp ne i32 %1122, 0
  %1124 = load i32, ptr @Kern, align 4
  %1125 = icmp ne i32 %1124, 0
  %1126 = select i1 %1123, i1 %1125, i1 false
  br i1 %1126, label %1127, label %1295

1127:                                             ; preds = %1119
  %1128 = call i32 @bcmp(ptr noundef nonnull dereferenceable(15) %16, ptr noundef nonnull dereferenceable(15) @.str.116, i64 15)
  %1129 = icmp eq i32 %1128, 0
  br i1 %1129, label %1130, label %1295

1130:                                             ; preds = %1127
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %22) #14
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %23) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #14
  %1131 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %15, ptr noundef nonnull @.str.117, ptr noundef nonnull %24) #14
  %1132 = icmp eq i32 %1131, 1
  br i1 %1132, label %1136, label %1133

1133:                                             ; preds = %1130
  %1134 = call ptr @FileName(i16 noundef zeroext %960) #14
  %1135 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 33, ptr noundef nonnull @.str.118, i32 noundef 1, ptr noundef nonnull %959, ptr noundef %1134, i32 noundef %1032) #14
  br label %1136

1136:                                             ; preds = %1133, %1130
  %1137 = load i32, ptr %24, align 4, !tbaa !5
  %1138 = shl nsw i32 %1137, 1
  %1139 = sext i32 %1138 to i64
  %1140 = call noalias ptr @malloc(i64 noundef %1139) #15
  %1141 = call noalias ptr @malloc(i64 noundef %1139) #15
  %1142 = sext i32 %1137 to i64
  %1143 = shl nsw i64 %1142, 1
  %1144 = call noalias ptr @malloc(i64 noundef %1143) #15
  %1145 = call ptr @fgets(ptr noundef nonnull %15, i32 noundef 512, ptr noundef %961)
  %1146 = icmp eq ptr %1145, %15
  br i1 %1146, label %1147, label %1292

1147:                                             ; preds = %1136, %1286
  %1148 = phi i32 [ %1289, %1286 ], [ 1, %1136 ]
  %1149 = phi i32 [ %1288, %1286 ], [ 1, %1136 ]
  %1150 = phi i8 [ %1287, %1286 ], [ 0, %1136 ]
  br label %1151

1151:                                             ; preds = %1192, %1147
  %1152 = call i32 @StringBeginsWith(ptr noundef nonnull %15, ptr noundef nonnull @.str.119) #14
  %1153 = icmp eq i32 %1152, 0
  br i1 %1153, label %1154, label %1292

1154:                                             ; preds = %1151
  %1155 = load i32, ptr %17, align 4, !tbaa !5
  %1156 = add nsw i32 %1155, 1
  store i32 %1156, ptr %17, align 4, !tbaa !5
  %1157 = call i32 @StringBeginsWith(ptr noundef nonnull %15, ptr noundef nonnull @.str.120) #14
  %1158 = icmp eq i32 %1157, 0
  br i1 %1158, label %1286, label %1159

1159:                                             ; preds = %1154
  %1160 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %15, ptr noundef nonnull @.str.121, ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef nonnull %25) #14
  %1161 = icmp eq i32 %1160, 3
  br i1 %1161, label %1165, label %1162

1162:                                             ; preds = %1159
  %1163 = call ptr @FileName(i16 noundef zeroext %960) #14
  %1164 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 34, ptr noundef nonnull @.str.122, i32 noundef 1, ptr noundef nonnull %959, ptr noundef %1163, i32 noundef %1156, ptr noundef nonnull %15) #14
  br label %1165

1165:                                             ; preds = %1162, %1159
  %1166 = load float, ptr %25, align 4, !tbaa !26
  %1167 = fptosi float %1166 to i32
  %1168 = icmp eq i32 %1167, 0
  br i1 %1168, label %1192, label %1169

1169:                                             ; preds = %1165
  %1170 = load i8, ptr %945, align 4
  %1171 = and i8 %1170, 127
  %1172 = zext nneg i8 %1171 to i32
  %1173 = call zeroext i8 @MapCharEncoding(ptr noundef nonnull %22, i32 noundef %1172) #14
  %1174 = icmp eq i8 %1173, 0
  br i1 %1174, label %1192, label %1175

1175:                                             ; preds = %1169
  %1176 = load i8, ptr %945, align 4
  %1177 = and i8 %1176, 127
  %1178 = zext nneg i8 %1177 to i32
  %1179 = call zeroext i8 @MapCharEncoding(ptr noundef nonnull %23, i32 noundef %1178) #14
  %1180 = icmp eq i8 %1179, 0
  br i1 %1180, label %1192, label %1181

1181:                                             ; preds = %1175
  %1182 = icmp eq i8 %1173, %1150
  br i1 %1182, label %1195, label %1183

1183:                                             ; preds = %1181
  %1184 = zext i8 %1173 to i64
  %1185 = getelementptr inbounds i16, ptr %1003, i64 %1184
  %1186 = load i16, ptr %1185, align 2, !tbaa !21
  %1187 = icmp eq i16 %1186, 0
  br i1 %1187, label %1200, label %1188

1188:                                             ; preds = %1183
  %1189 = call ptr @FileName(i16 noundef zeroext %960) #14
  %1190 = load i32, ptr %17, align 4, !tbaa !5
  %1191 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 35, ptr noundef nonnull @.str.123, i32 noundef 2, ptr noundef nonnull %959, ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef %1189, i32 noundef %1190) #14
  br label %1192

1192:                                             ; preds = %1188, %1175, %1169, %1165
  %1193 = call ptr @fgets(ptr noundef nonnull %15, i32 noundef 512, ptr noundef %961)
  %1194 = icmp eq ptr %1193, %15
  br i1 %1194, label %1151, label %1292

1195:                                             ; preds = %1181
  %1196 = zext i8 %1150 to i64
  %1197 = getelementptr inbounds i16, ptr %1003, i64 %1196
  %1198 = load i16, ptr %1197, align 2, !tbaa !21
  %1199 = icmp eq i16 %1198, 0
  br i1 %1199, label %1202, label %1210

1200:                                             ; preds = %1183
  %1201 = getelementptr inbounds i16, ptr %1003, i64 %1184
  br label %1202

1202:                                             ; preds = %1200, %1195
  %1203 = phi ptr [ %1197, %1195 ], [ %1201, %1200 ]
  %1204 = phi i8 [ %1150, %1195 ], [ %1173, %1200 ]
  %1205 = trunc i32 %1149 to i16
  store i16 %1205, ptr %1203, align 2, !tbaa !21
  %1206 = sext i32 %1149 to i64
  %1207 = getelementptr inbounds i8, ptr %1140, i64 %1206
  store i8 0, ptr %1207, align 1, !tbaa !9
  %1208 = getelementptr inbounds i8, ptr %1141, i64 %1206
  store i8 0, ptr %1208, align 1, !tbaa !9
  %1209 = add nsw i32 %1149, 1
  br label %1210

1210:                                             ; preds = %1202, %1195
  %1211 = phi ptr [ %1203, %1202 ], [ %1197, %1195 ]
  %1212 = phi i8 [ %1204, %1202 ], [ %1150, %1195 ]
  %1213 = phi i16 [ %1205, %1202 ], [ %1198, %1195 ]
  %1214 = phi i32 [ %1209, %1202 ], [ %1149, %1195 ]
  %1215 = icmp sgt i32 %1148, 1
  br i1 %1215, label %1216, label %1229

1216:                                             ; preds = %1210
  %1217 = zext nneg i32 %1148 to i64
  br label %1218

1218:                                             ; preds = %1224, %1216
  %1219 = phi i64 [ 1, %1216 ], [ %1225, %1224 ]
  %1220 = getelementptr inbounds i16, ptr %1144, i64 %1219
  %1221 = load i16, ptr %1220, align 2, !tbaa !21
  %1222 = sext i16 %1221 to i32
  %1223 = icmp eq i32 %1222, %1167
  br i1 %1223, label %1227, label %1224

1224:                                             ; preds = %1218
  %1225 = add nuw nsw i64 %1219, 1
  %1226 = icmp eq i64 %1225, %1217
  br i1 %1226, label %1232, label %1218

1227:                                             ; preds = %1218
  %1228 = trunc i64 %1219 to i32
  br label %1229

1229:                                             ; preds = %1227, %1210
  %1230 = phi i32 [ 1, %1210 ], [ %1228, %1227 ]
  %1231 = icmp eq i32 %1230, %1148
  br i1 %1231, label %1232, label %1246

1232:                                             ; preds = %1224, %1229
  %1233 = load i32, ptr %24, align 4, !tbaa !5
  %1234 = icmp eq i32 %1148, %1233
  br i1 %1234, label %1235, label %1240

1235:                                             ; preds = %1232
  %1236 = call ptr @FileName(i16 noundef zeroext %960) #14
  %1237 = load i32, ptr %17, align 4, !tbaa !5
  %1238 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 36, ptr noundef nonnull @.str.124, i32 noundef 1, ptr noundef nonnull %959, ptr noundef %1236, i32 noundef %1237) #14
  %1239 = load i16, ptr %1211, align 2, !tbaa !21
  br label %1240

1240:                                             ; preds = %1235, %1232
  %1241 = phi i16 [ %1239, %1235 ], [ %1213, %1232 ]
  %1242 = trunc i32 %1167 to i16
  %1243 = zext nneg i32 %1148 to i64
  %1244 = getelementptr inbounds i16, ptr %1144, i64 %1243
  store i16 %1242, ptr %1244, align 2, !tbaa !21
  %1245 = add nsw i32 %1148, 1
  br label %1246

1246:                                             ; preds = %1240, %1229
  %1247 = phi i32 [ %1148, %1240 ], [ %1230, %1229 ]
  %1248 = phi i16 [ %1241, %1240 ], [ %1213, %1229 ]
  %1249 = phi i32 [ %1245, %1240 ], [ %1148, %1229 ]
  %1250 = zext i16 %1248 to i32
  %1251 = icmp sgt i32 %1214, %1250
  br i1 %1251, label %1252, label %1279

1252:                                             ; preds = %1246
  %1253 = zext nneg i32 %1214 to i64
  %1254 = zext i16 %1248 to i64
  br label %1255

1255:                                             ; preds = %1261, %1252
  %1256 = phi i64 [ %1253, %1252 ], [ %1257, %1261 ]
  %1257 = add nsw i64 %1256, -1
  %1258 = getelementptr inbounds i8, ptr %1140, i64 %1257
  %1259 = load i8, ptr %1258, align 1, !tbaa !9
  %1260 = icmp ult i8 %1259, %1179
  br i1 %1260, label %1261, label %1267

1261:                                             ; preds = %1255
  %1262 = getelementptr inbounds i8, ptr %1140, i64 %1256
  store i8 %1259, ptr %1262, align 1, !tbaa !9
  %1263 = getelementptr inbounds i8, ptr %1141, i64 %1257
  %1264 = load i8, ptr %1263, align 1, !tbaa !9
  %1265 = getelementptr inbounds i8, ptr %1141, i64 %1256
  store i8 %1264, ptr %1265, align 1, !tbaa !9
  %1266 = icmp sgt i64 %1257, %1254
  br i1 %1266, label %1255, label %1277

1267:                                             ; preds = %1255
  %1268 = trunc i64 %1256 to i32
  %1269 = and i64 %1257, 4294967295
  %1270 = getelementptr inbounds i8, ptr %1140, i64 %1269
  %1271 = load i8, ptr %1270, align 1, !tbaa !9
  %1272 = icmp eq i8 %1271, %1179
  br i1 %1272, label %1273, label %1279

1273:                                             ; preds = %1267
  %1274 = call ptr @FileName(i16 noundef zeroext %960) #14
  %1275 = load i32, ptr %17, align 4, !tbaa !5
  %1276 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 37, ptr noundef nonnull @.str.125, i32 noundef 1, ptr noundef nonnull %959, ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef %1274, i32 noundef %1275) #14
  br label %1279

1277:                                             ; preds = %1261
  %1278 = trunc i64 %1257 to i32
  br label %1279

1279:                                             ; preds = %1277, %1273, %1267, %1246
  %1280 = phi i32 [ %1268, %1273 ], [ %1268, %1267 ], [ %1214, %1246 ], [ %1278, %1277 ]
  %1281 = sext i32 %1280 to i64
  %1282 = getelementptr inbounds i8, ptr %1140, i64 %1281
  store i8 %1179, ptr %1282, align 1, !tbaa !9
  %1283 = trunc i32 %1247 to i8
  %1284 = getelementptr inbounds i8, ptr %1141, i64 %1281
  store i8 %1283, ptr %1284, align 1, !tbaa !9
  %1285 = add nsw i32 %1214, 1
  br label %1286

1286:                                             ; preds = %1154, %1279
  %1287 = phi i8 [ %1212, %1279 ], [ %1150, %1154 ]
  %1288 = phi i32 [ %1285, %1279 ], [ %1149, %1154 ]
  %1289 = phi i32 [ %1249, %1279 ], [ %1148, %1154 ]
  %1290 = call ptr @fgets(ptr noundef nonnull %15, i32 noundef 512, ptr noundef %961)
  %1291 = icmp eq ptr %1290, %15
  br i1 %1291, label %1147, label %1292

1292:                                             ; preds = %1286, %1192, %1151, %1136
  %1293 = phi i32 [ 1, %1136 ], [ %1148, %1151 ], [ %1148, %1192 ], [ %1289, %1286 ]
  %1294 = trunc i32 %1293 to i16
  store i16 %1294, ptr %1144, align 2, !tbaa !21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #14
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %23) #14
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %22) #14
  br label %1295

1295:                                             ; preds = %1292, %1127, %1119, %1116, %1103, %1100, %1098, %1094, %1069, %1064, %1057, %1053, %1046, %1042, %1030
  %1296 = phi i32 [ %1024, %1030 ], [ %1118, %1116 ], [ %1024, %1292 ], [ %1024, %1127 ], [ %1024, %1119 ], [ %1024, %1100 ], [ %1024, %1069 ], [ %1068, %1064 ], [ %1024, %1057 ], [ %1024, %1042 ], [ %1024, %1053 ], [ %1024, %1046 ], [ %1024, %1098 ], [ %1024, %1094 ], [ %1024, %1103 ]
  %1297 = phi i32 [ %1023, %1030 ], [ %1023, %1116 ], [ %1023, %1292 ], [ %1023, %1127 ], [ %1023, %1119 ], [ %1023, %1100 ], [ %1023, %1069 ], [ %1023, %1064 ], [ %1023, %1057 ], [ %1045, %1042 ], [ %1023, %1053 ], [ %1023, %1046 ], [ %1023, %1098 ], [ %1023, %1094 ], [ %1023, %1103 ]
  %1298 = phi i32 [ %1022, %1030 ], [ %1022, %1116 ], [ %1022, %1292 ], [ %1022, %1127 ], [ %1022, %1119 ], [ %1022, %1100 ], [ %1022, %1069 ], [ %1022, %1064 ], [ %1022, %1057 ], [ %1022, %1042 ], [ %1056, %1053 ], [ %1022, %1046 ], [ %1022, %1098 ], [ %1022, %1094 ], [ %1022, %1103 ]
  %1299 = phi i32 [ %1021, %1030 ], [ %1021, %1116 ], [ %1021, %1292 ], [ %1021, %1127 ], [ %1021, %1119 ], [ %1021, %1100 ], [ %1021, %1069 ], [ %1021, %1064 ], [ %1021, %1057 ], [ 1, %1042 ], [ %1021, %1053 ], [ %1021, %1046 ], [ %1021, %1098 ], [ %1021, %1094 ], [ %1021, %1103 ]
  %1300 = phi i32 [ %1020, %1030 ], [ %1020, %1116 ], [ %1020, %1292 ], [ %1020, %1127 ], [ %1020, %1119 ], [ %1020, %1100 ], [ %1020, %1069 ], [ %1020, %1064 ], [ %1020, %1057 ], [ %1020, %1042 ], [ 1, %1053 ], [ %1020, %1046 ], [ %1020, %1098 ], [ %1020, %1094 ], [ %1020, %1103 ]
  %1301 = phi i32 [ %1019, %1030 ], [ %1019, %1116 ], [ %1019, %1292 ], [ %1019, %1127 ], [ %1019, %1119 ], [ %1019, %1100 ], [ %1019, %1069 ], [ 1, %1064 ], [ %1019, %1057 ], [ %1019, %1042 ], [ %1019, %1053 ], [ %1019, %1046 ], [ %1019, %1098 ], [ %1019, %1094 ], [ %1019, %1103 ]
  %1302 = phi i32 [ %1018, %1030 ], [ %1018, %1116 ], [ %1018, %1292 ], [ %1018, %1127 ], [ %1018, %1119 ], [ %1018, %1100 ], [ %1018, %1069 ], [ %1018, %1064 ], [ %1018, %1057 ], [ %1018, %1042 ], [ %1018, %1053 ], [ %1018, %1046 ], [ %1018, %1098 ], [ %1018, %1094 ], [ %1107, %1103 ]
  %1303 = phi i32 [ %1017, %1030 ], [ %1017, %1116 ], [ %1017, %1292 ], [ %1017, %1127 ], [ %1017, %1119 ], [ %1017, %1100 ], [ %1017, %1069 ], [ %1017, %1064 ], [ %1017, %1057 ], [ %1017, %1042 ], [ %1017, %1053 ], [ %1017, %1046 ], [ 1, %1098 ], [ 1, %1094 ], [ %1017, %1103 ]
  %1304 = phi ptr [ %1016, %1030 ], [ %1016, %1116 ], [ %1140, %1292 ], [ %1016, %1127 ], [ %1016, %1119 ], [ %1016, %1100 ], [ %1016, %1069 ], [ %1016, %1064 ], [ %1016, %1057 ], [ %1016, %1042 ], [ %1016, %1053 ], [ %1016, %1046 ], [ %1016, %1098 ], [ %1016, %1094 ], [ %1016, %1103 ]
  %1305 = phi ptr [ %1015, %1030 ], [ %1015, %1116 ], [ %1141, %1292 ], [ %1015, %1127 ], [ %1015, %1119 ], [ %1015, %1100 ], [ %1015, %1069 ], [ %1015, %1064 ], [ %1015, %1057 ], [ %1015, %1042 ], [ %1015, %1053 ], [ %1015, %1046 ], [ %1015, %1098 ], [ %1015, %1094 ], [ %1015, %1103 ]
  %1306 = phi ptr [ %1014, %1030 ], [ %1014, %1116 ], [ %1144, %1292 ], [ %1014, %1127 ], [ %1014, %1119 ], [ %1014, %1100 ], [ %1014, %1069 ], [ %1014, %1064 ], [ %1014, %1057 ], [ %1014, %1042 ], [ %1014, %1053 ], [ %1014, %1046 ], [ %1014, %1098 ], [ %1014, %1094 ], [ %1014, %1103 ]
  %1307 = call ptr @fgets(ptr noundef nonnull %15, i32 noundef 512, ptr noundef %961)
  %1308 = icmp eq ptr %1307, null
  br i1 %1308, label %1309, label %1013

1309:                                             ; preds = %1295, %1008
  %1310 = phi i32 [ 0, %1008 ], [ %1296, %1295 ]
  %1311 = phi i32 [ 0, %1008 ], [ %1297, %1295 ]
  %1312 = phi i32 [ 0, %1008 ], [ %1298, %1295 ]
  %1313 = phi i32 [ 0, %1008 ], [ %1302, %1295 ]
  %1314 = phi ptr [ null, %1008 ], [ %1304, %1295 ]
  %1315 = phi ptr [ null, %1008 ], [ %1305, %1295 ]
  %1316 = phi ptr [ null, %1008 ], [ %1306, %1295 ]
  %1317 = call ptr @FileName(i16 noundef zeroext %960) #14
  %1318 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 38, ptr noundef nonnull @.str.126, i32 noundef 1, ptr noundef nonnull %959, ptr noundef %1317) #14
  br label %1319

1319:                                             ; preds = %1027, %1309
  %1320 = phi i32 [ %1310, %1309 ], [ %1024, %1027 ]
  %1321 = phi i32 [ %1311, %1309 ], [ %1023, %1027 ]
  %1322 = phi i32 [ %1312, %1309 ], [ %1022, %1027 ]
  %1323 = phi i32 [ %1313, %1309 ], [ %1018, %1027 ]
  %1324 = phi ptr [ %1314, %1309 ], [ %1016, %1027 ]
  %1325 = phi ptr [ %1315, %1309 ], [ %1015, %1027 ]
  %1326 = phi ptr [ %1316, %1309 ], [ %1014, %1027 ]
  %1327 = call i32 @fclose(ptr noundef %961)
  %1328 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %1329 = getelementptr inbounds %struct.back_end_rec, ptr %1328, i64 0, i32 8
  %1330 = load i32, ptr %1329, align 8, !tbaa !24
  %1331 = icmp eq i32 %1330, 0
  br i1 %1331, label %1332, label %1335

1332:                                             ; preds = %1319
  %1333 = load i32, ptr @PlainCharHeight, align 4, !tbaa !5
  %1334 = sdiv i32 %1333, 4
  br label %1335

1335:                                             ; preds = %1332, %1319
  %1336 = phi i32 [ %1334, %1332 ], [ %1320, %1319 ]
  %1337 = getelementptr inbounds i8, ptr %892, i64 52
  store i32 %1336, ptr %1337, align 4, !tbaa !9
  %1338 = load i8, ptr %948, align 4
  %1339 = and i8 %1338, 127
  %1340 = zext nneg i8 %1339 to i32
  %1341 = call zeroext i8 @MapCharEncoding(ptr noundef nonnull @.str.127, i32 noundef %1340) #14
  %1342 = icmp eq i8 %1341, 0
  br i1 %1342, label %1348, label %1343

1343:                                             ; preds = %1335
  %1344 = zext i8 %1341 to i64
  %1345 = getelementptr inbounds %struct.metrics, ptr %979, i64 %1344, i32 3
  %1346 = load i16, ptr %1345, align 2, !tbaa !28
  %1347 = sext i16 %1346 to i32
  br label %1348

1348:                                             ; preds = %1343, %1335
  %1349 = phi i32 [ %1347, %1343 ], [ 0, %1335 ]
  %1350 = getelementptr inbounds %struct.word_type, ptr %892, i64 0, i32 3, i32 1
  store i32 %1349, ptr %1350, align 8, !tbaa !9
  br i1 %796, label %1502, label %1351

1351:                                             ; preds = %1348
  %1352 = getelementptr inbounds %struct.word_type, ptr %604, i64 0, i32 4
  %1353 = getelementptr inbounds %struct.word_type, ptr %604, i64 0, i32 1
  %1354 = call zeroext i16 @DefineFile(ptr noundef nonnull %1352, ptr noundef nonnull @.str.14, ptr noundef nonnull %1353, i32 noundef 5, i32 noundef 5) #14
  %1355 = call ptr @OpenFile(i16 noundef zeroext %1354, i32 noundef 0, i32 noundef 0) #14
  %1356 = icmp eq ptr %1355, null
  br i1 %1356, label %1357, label %1360

1357:                                             ; preds = %1351
  %1358 = call ptr @FileName(i16 noundef zeroext %1354) #14
  %1359 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 39, ptr noundef nonnull @.str.128, i32 noundef 1, ptr noundef nonnull %1353, ptr noundef %1358) #14
  br label %1360

1360:                                             ; preds = %1357, %1351
  store i32 0, ptr %17, align 4, !tbaa !5
  %1361 = call ptr @fgets(ptr noundef nonnull %15, i32 noundef 512, ptr noundef %1355)
  %1362 = icmp eq ptr %1361, null
  br i1 %1362, label %1497, label %1363

1363:                                             ; preds = %1360, %1493
  %1364 = phi i32 [ %1494, %1493 ], [ 1, %1360 ]
  %1365 = load i32, ptr %17, align 4, !tbaa !5
  %1366 = add nsw i32 %1365, 1
  store i32 %1366, ptr %17, align 4, !tbaa !5
  %1367 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %15, ptr noundef nonnull @.str.92, ptr noundef nonnull %16) #14
  %1368 = load i8, ptr %16, align 16, !tbaa !9
  %1369 = icmp eq i8 %1368, 83
  br i1 %1369, label %1370, label %1493

1370:                                             ; preds = %1363
  %1371 = call i32 @bcmp(ptr noundef nonnull dereferenceable(22) %16, ptr noundef nonnull dereferenceable(22) @.str.129, i64 22)
  %1372 = icmp eq i32 %1371, 0
  br i1 %1372, label %1373, label %1374

1373:                                             ; preds = %1370
  call fastcc void @ReadCharMetrics(ptr noundef nonnull %607, i32 noundef %1323, i32 noundef %1320, ptr noundef %985, ptr noundef nonnull %18, i16 noundef zeroext %1354, ptr noundef %979, ptr noundef nonnull %17, ptr noundef %1355)
  br label %1493

1374:                                             ; preds = %1370
  %1375 = call i32 @bcmp(ptr noundef nonnull dereferenceable(21) %16, ptr noundef nonnull dereferenceable(21) @.str.130, i64 21)
  %1376 = icmp eq i32 %1375, 0
  br i1 %1376, label %1377, label %1493

1377:                                             ; preds = %1374
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  %1378 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 512, ptr noundef %1355)
  %1379 = icmp eq ptr %1378, null
  br i1 %1379, label %1486, label %1380

1380:                                             ; preds = %1377, %1477
  %1381 = phi i32 [ %1480, %1477 ], [ %1364, %1377 ]
  %1382 = call i32 @StringBeginsWith(ptr noundef nonnull %3, ptr noundef nonnull @.str.144) #14
  %1383 = icmp eq i32 %1382, 0
  br i1 %1383, label %1483, label %1384

1384:                                             ; preds = %1380
  %1385 = load i32, ptr %17, align 4, !tbaa !5
  %1386 = add nsw i32 %1385, 1
  store i32 %1386, ptr %17, align 4, !tbaa !5
  %1387 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %3, ptr noundef nonnull @.str.145, ptr noundef nonnull %4, ptr noundef nonnull %6) #14
  %1388 = icmp eq i32 %1387, 2
  br i1 %1388, label %1392, label %1389

1389:                                             ; preds = %1384
  %1390 = call ptr @FileName(i16 noundef zeroext %1354) #14
  %1391 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 5, ptr noundef nonnull @.str.146, i32 noundef 1, ptr noundef nonnull %1353, ptr noundef %1390, i32 noundef %1386) #14
  br label %1392

1392:                                             ; preds = %1389, %1384
  br label %1393

1393:                                             ; preds = %1392, %1397
  %1394 = phi i64 [ %1398, %1397 ], [ 0, %1392 ]
  %1395 = getelementptr inbounds [512 x i8], ptr %3, i64 0, i64 %1394
  %1396 = load i8, ptr %1395, align 1, !tbaa !9
  switch i8 %1396, label %1397 [
    i8 59, label %1403
    i8 0, label %1399
    i8 10, label %1399
  ]

1397:                                             ; preds = %1393
  %1398 = add nuw i64 %1394, 1
  br label %1393

1399:                                             ; preds = %1393, %1393
  %1400 = call ptr @FileName(i16 noundef zeroext %1354) #14
  %1401 = load i32, ptr %17, align 4, !tbaa !5
  %1402 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 5, ptr noundef nonnull @.str.146, i32 noundef 1, ptr noundef nonnull %1353, ptr noundef %1400, i32 noundef %1401) #14
  br label %1403

1403:                                             ; preds = %1393, %1399
  %1404 = load i8, ptr %945, align 4
  %1405 = and i8 %1404, 127
  %1406 = zext nneg i8 %1405 to i32
  %1407 = call zeroext i8 @MapCharEncoding(ptr noundef nonnull %4, i32 noundef %1406) #14
  %1408 = icmp eq i8 %1407, 0
  br i1 %1408, label %1409, label %1413

1409:                                             ; preds = %1403
  %1410 = call ptr @FileName(i16 noundef zeroext %1354) #14
  %1411 = load i32, ptr %17, align 4, !tbaa !5
  %1412 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 6, ptr noundef nonnull @.str.147, i32 noundef 1, ptr noundef nonnull %1353, ptr noundef %1410, i32 noundef %1411) #14
  br label %1413

1413:                                             ; preds = %1409, %1403
  %1414 = trunc i32 %1381 to i16
  %1415 = zext i8 %1407 to i64
  %1416 = getelementptr inbounds i16, ptr %991, i64 %1415
  store i16 %1414, ptr %1416, align 2, !tbaa !21
  %1417 = load i32, ptr %6, align 4, !tbaa !5
  %1418 = icmp sgt i32 %1417, 0
  br i1 %1418, label %1419, label %1470

1419:                                             ; preds = %1413
  %1420 = sext i32 %1381 to i64
  br label %1421

1421:                                             ; preds = %1452, %1419
  %1422 = phi i64 [ %1420, %1419 ], [ %1464, %1452 ]
  %1423 = phi i64 [ %1394, %1419 ], [ %1439, %1452 ]
  %1424 = phi i32 [ 0, %1419 ], [ %1465, %1452 ]
  %1425 = shl i64 %1423, 32
  %1426 = add i64 %1425, 4294967296
  %1427 = ashr exact i64 %1426, 32
  %1428 = getelementptr inbounds [512 x i8], ptr %3, i64 0, i64 %1427
  %1429 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %1428, ptr noundef nonnull @.str.148, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %8) #14
  %1430 = icmp eq i32 %1429, 3
  br i1 %1430, label %1435, label %1431

1431:                                             ; preds = %1421
  %1432 = call ptr @FileName(i16 noundef zeroext %1354) #14
  %1433 = load i32, ptr %17, align 4, !tbaa !5
  %1434 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 5, ptr noundef nonnull @.str.146, i32 noundef 1, ptr noundef nonnull %1353, ptr noundef %1432, i32 noundef %1433) #14
  br label %1435

1435:                                             ; preds = %1431, %1421
  %1436 = ashr exact i64 %1425, 32
  br label %1437

1437:                                             ; preds = %1437, %1435
  %1438 = phi i64 [ %1436, %1435 ], [ %1439, %1437 ]
  %1439 = add i64 %1438, 1
  %1440 = getelementptr inbounds [512 x i8], ptr %3, i64 0, i64 %1439
  %1441 = load i8, ptr %1440, align 1, !tbaa !9
  switch i8 %1441, label %1437 [
    i8 59, label %1446
    i8 0, label %1442
    i8 10, label %1442
  ]

1442:                                             ; preds = %1437, %1437
  %1443 = call ptr @FileName(i16 noundef zeroext %1354) #14
  %1444 = load i32, ptr %17, align 4, !tbaa !5
  %1445 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 5, ptr noundef nonnull @.str.146, i32 noundef 1, ptr noundef nonnull %1353, ptr noundef %1443, i32 noundef %1444) #14
  br label %1446

1446:                                             ; preds = %1437, %1442
  %1447 = icmp sgt i64 %1422, 255
  br i1 %1447, label %1448, label %1452

1448:                                             ; preds = %1446
  %1449 = call ptr @FileName(i16 noundef zeroext %1354) #14
  %1450 = load i32, ptr %17, align 4, !tbaa !5
  %1451 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 7, ptr noundef nonnull @.str.149, i32 noundef 1, ptr noundef nonnull %1353, ptr noundef %1449, i32 noundef %1450) #14
  br label %1452

1452:                                             ; preds = %1448, %1446
  %1453 = load i8, ptr %945, align 4
  %1454 = and i8 %1453, 127
  %1455 = zext nneg i8 %1454 to i32
  %1456 = call zeroext i8 @MapCharEncoding(ptr noundef nonnull %5, i32 noundef %1455) #14
  %1457 = getelementptr inbounds %struct.composite_rec, ptr %997, i64 %1422
  store i8 %1456, ptr %1457, align 2, !tbaa !30
  %1458 = load i32, ptr %7, align 4, !tbaa !5
  %1459 = trunc i32 %1458 to i16
  %1460 = getelementptr inbounds %struct.composite_rec, ptr %997, i64 %1422, i32 1
  store i16 %1459, ptr %1460, align 2, !tbaa !32
  %1461 = load i32, ptr %8, align 4, !tbaa !5
  %1462 = trunc i32 %1461 to i16
  %1463 = getelementptr inbounds %struct.composite_rec, ptr %997, i64 %1422, i32 2
  store i16 %1462, ptr %1463, align 2, !tbaa !33
  %1464 = add nsw i64 %1422, 1
  %1465 = add nuw nsw i32 %1424, 1
  %1466 = load i32, ptr %6, align 4, !tbaa !5
  %1467 = icmp slt i32 %1465, %1466
  br i1 %1467, label %1421, label %1468

1468:                                             ; preds = %1452
  %1469 = trunc i64 %1464 to i32
  br label %1470

1470:                                             ; preds = %1468, %1413
  %1471 = phi i32 [ %1381, %1413 ], [ %1469, %1468 ]
  %1472 = icmp sgt i32 %1471, 255
  br i1 %1472, label %1473, label %1477

1473:                                             ; preds = %1470
  %1474 = call ptr @FileName(i16 noundef zeroext %1354) #14
  %1475 = load i32, ptr %17, align 4, !tbaa !5
  %1476 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 8, ptr noundef nonnull @.str.149, i32 noundef 1, ptr noundef nonnull %1353, ptr noundef %1474, i32 noundef %1475) #14
  br label %1477

1477:                                             ; preds = %1473, %1470
  %1478 = sext i32 %1471 to i64
  %1479 = getelementptr inbounds %struct.composite_rec, ptr %997, i64 %1478
  store i8 0, ptr %1479, align 2, !tbaa !30
  %1480 = add nsw i32 %1471, 1
  %1481 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 512, ptr noundef %1355)
  %1482 = icmp eq ptr %1481, null
  br i1 %1482, label %1486, label %1380

1483:                                             ; preds = %1380
  %1484 = call i32 @StringBeginsWith(ptr noundef nonnull %3, ptr noundef nonnull @.str.150) #14
  %1485 = icmp eq i32 %1484, 0
  br i1 %1485, label %1486, label %1491

1486:                                             ; preds = %1477, %1483, %1377
  %1487 = phi i32 [ %1364, %1377 ], [ %1381, %1483 ], [ %1480, %1477 ]
  %1488 = call ptr @FileName(i16 noundef zeroext %1354) #14
  %1489 = load i32, ptr %17, align 4, !tbaa !5
  %1490 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 9, ptr noundef nonnull @.str.151, i32 noundef 1, ptr noundef nonnull %1353, ptr noundef %1488, i32 noundef %1489) #14
  br label %1491

1491:                                             ; preds = %1486, %1483
  %1492 = phi i32 [ %1487, %1486 ], [ %1381, %1483 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %3) #14
  br label %1493

1493:                                             ; preds = %1491, %1374, %1373, %1363
  %1494 = phi i32 [ %1364, %1373 ], [ %1492, %1491 ], [ %1364, %1374 ], [ %1364, %1363 ]
  %1495 = call ptr @fgets(ptr noundef nonnull %15, i32 noundef 512, ptr noundef %1355)
  %1496 = icmp eq ptr %1495, null
  br i1 %1496, label %1497, label %1363

1497:                                             ; preds = %1493, %1360
  %1498 = phi i32 [ 1, %1360 ], [ %1494, %1493 ]
  %1499 = call i32 @fclose(ptr noundef %1355)
  br label %1502

1500:                                             ; preds = %389, %601
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %9) #14
  %1501 = load ptr, ptr @font_root, align 8, !tbaa !10
  br label %1532

1502:                                             ; preds = %1348, %1497
  %1503 = phi i32 [ 1, %1348 ], [ %1498, %1497 ]
  %1504 = load ptr, ptr @finfo, align 8, !tbaa !10
  %1505 = load i32, ptr @font_count, align 4, !tbaa !5
  %1506 = zext i32 %1505 to i64
  %1507 = getelementptr inbounds %struct.font_rec, ptr %1504, i64 %1506, i32 5
  store ptr %892, ptr %1507, align 8, !tbaa !18
  %1508 = load ptr, ptr @finfo, align 8, !tbaa !10
  %1509 = getelementptr inbounds %struct.font_rec, ptr %1508, i64 %1506, i32 6
  store ptr %607, ptr %1509, align 8, !tbaa !34
  %1510 = sub nsw i32 %1320, %1321
  %1511 = trunc i32 %1510 to i16
  %1512 = load ptr, ptr @finfo, align 8, !tbaa !10
  %1513 = getelementptr inbounds %struct.font_rec, ptr %1512, i64 %1506, i32 7
  store i16 %1511, ptr %1513, align 8, !tbaa !35
  %1514 = trunc i32 %1322 to i16
  %1515 = getelementptr inbounds %struct.font_rec, ptr %1512, i64 %1506, i32 8
  store i16 %1514, ptr %1515, align 2, !tbaa !36
  %1516 = getelementptr inbounds %struct.font_rec, ptr %1512, i64 %1506
  store ptr %979, ptr %1516, align 8, !tbaa !37
  %1517 = load ptr, ptr @finfo, align 8, !tbaa !10
  %1518 = getelementptr inbounds %struct.font_rec, ptr %1517, i64 %1506, i32 1
  store ptr %985, ptr %1518, align 8, !tbaa !38
  %1519 = load ptr, ptr @finfo, align 8, !tbaa !10
  %1520 = getelementptr inbounds %struct.font_rec, ptr %1519, i64 %1506, i32 2
  store ptr %991, ptr %1520, align 8, !tbaa !39
  %1521 = load ptr, ptr @finfo, align 8, !tbaa !10
  %1522 = getelementptr inbounds %struct.font_rec, ptr %1521, i64 %1506, i32 3
  store ptr %997, ptr %1522, align 8, !tbaa !40
  %1523 = load ptr, ptr @finfo, align 8, !tbaa !10
  %1524 = getelementptr inbounds %struct.font_rec, ptr %1523, i64 %1506, i32 4
  store i32 %1503, ptr %1524, align 8, !tbaa !41
  %1525 = getelementptr inbounds %struct.font_rec, ptr %1523, i64 %1506, i32 9
  store ptr %1003, ptr %1525, align 8, !tbaa !42
  %1526 = load ptr, ptr @finfo, align 8, !tbaa !10
  %1527 = getelementptr inbounds %struct.font_rec, ptr %1526, i64 %1506, i32 10
  store ptr %1324, ptr %1527, align 8, !tbaa !43
  %1528 = load ptr, ptr @finfo, align 8, !tbaa !10
  %1529 = getelementptr inbounds %struct.font_rec, ptr %1528, i64 %1506, i32 11
  store ptr %1325, ptr %1529, align 8, !tbaa !44
  %1530 = load ptr, ptr @finfo, align 8, !tbaa !10
  %1531 = getelementptr inbounds %struct.font_rec, ptr %1530, i64 %1506, i32 12
  store ptr %1326, ptr %1531, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %9) #14
  br label %1554

1532:                                             ; preds = %1544, %1500
  %1533 = phi ptr [ %1501, %1500 ], [ %1535, %1544 ]
  %1534 = getelementptr inbounds %struct.LIST, ptr %1533, i64 0, i32 1
  %1535 = load ptr, ptr %1534, align 8, !tbaa !9
  %1536 = icmp eq ptr %1535, %1501
  br i1 %1536, label %1551, label %1537

1537:                                             ; preds = %1532, %1537
  %1538 = phi ptr [ %1540, %1537 ], [ %1535, %1532 ]
  %1539 = getelementptr inbounds [2 x %struct.LIST], ptr %1538, i64 0, i64 1
  %1540 = load ptr, ptr %1539, align 8, !tbaa !9
  %1541 = getelementptr inbounds %struct.word_type, ptr %1540, i64 0, i32 1
  %1542 = load i8, ptr %1541, align 8, !tbaa !9
  %1543 = icmp eq i8 %1542, 0
  br i1 %1543, label %1537, label %1544

1544:                                             ; preds = %1537
  %1545 = getelementptr inbounds %struct.word_type, ptr %1540, i64 0, i32 4
  %1546 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1545, ptr noundef nonnull dereferenceable(1) %377) #16
  %1547 = icmp eq i32 %1546, 0
  br i1 %1547, label %1548, label %1532

1548:                                             ; preds = %1544
  %1549 = getelementptr inbounds %struct.word_type, ptr %238, i64 0, i32 1
  %1550 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 45, ptr noundef nonnull @.str.27, i32 noundef 2, ptr noundef nonnull %1549, ptr noundef nonnull %377) #14
  br label %2090

1551:                                             ; preds = %1532
  %1552 = getelementptr inbounds %struct.word_type, ptr %238, i64 0, i32 1
  %1553 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 46, ptr noundef nonnull @.str.28, i32 noundef 2, ptr noundef nonnull %1552, ptr noundef nonnull %376, ptr noundef nonnull %377) #14
  br label %2090

1554:                                             ; preds = %339, %1502, %364, %360, %687
  %1555 = phi ptr [ %607, %1502 ], [ %679, %687 ], [ %354, %360 ], [ %354, %364 ], [ %335, %339 ]
  %1556 = getelementptr inbounds %struct.LIST, ptr %1555, i64 0, i32 1
  %1557 = load ptr, ptr %1556, align 8, !tbaa !9
  %1558 = icmp eq ptr %1557, %1555
  br i1 %1558, label %1559, label %1563

1559:                                             ; preds = %1554
  %1560 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %1561 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %1560, ptr noundef nonnull @.str.29) #14
  %1562 = load ptr, ptr %1556, align 8, !tbaa !9
  br label %1563

1563:                                             ; preds = %1559, %1554
  %1564 = phi ptr [ %1562, %1559 ], [ %1557, %1554 ]
  %1565 = getelementptr inbounds %struct.LIST, ptr %1564, i64 0, i32 1
  %1566 = load ptr, ptr %1565, align 8, !tbaa !9
  %1567 = icmp eq ptr %1566, %1555
  br i1 %1567, label %1568, label %1574

1568:                                             ; preds = %1563
  %1569 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %1570 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %1569, ptr noundef nonnull @.str.30) #14
  %1571 = load ptr, ptr %1556, align 8, !tbaa !9
  %1572 = getelementptr inbounds %struct.LIST, ptr %1571, i64 0, i32 1
  %1573 = load ptr, ptr %1572, align 8, !tbaa !9
  br label %1574

1574:                                             ; preds = %1568, %1563
  %1575 = phi ptr [ %1573, %1568 ], [ %1566, %1563 ]
  %1576 = getelementptr inbounds %struct.LIST, ptr %1575, i64 0, i32 1
  %1577 = load ptr, ptr %1576, align 8, !tbaa !9
  %1578 = icmp eq ptr %1577, %1555
  br i1 %1578, label %1579, label %1582

1579:                                             ; preds = %1574
  %1580 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %1581 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %1580, ptr noundef nonnull @.str.31) #14
  br label %1582

1582:                                             ; preds = %1579, %1574
  %1583 = icmp eq ptr %228, null
  br i1 %1583, label %1584, label %1594

1584:                                             ; preds = %1582
  %1585 = load ptr, ptr @finfo, align 8, !tbaa !10
  %1586 = load i32, ptr %29, align 4
  %1587 = and i32 %1586, 4095
  %1588 = zext nneg i32 %1587 to i64
  %1589 = getelementptr inbounds %struct.font_rec, ptr %1585, i64 %1588, i32 5
  %1590 = load ptr, ptr %1589, align 8, !tbaa !18
  %1591 = getelementptr inbounds %struct.word_type, ptr %1590, i64 0, i32 3
  %1592 = load i32, ptr %1591, align 8, !tbaa !9
  %1593 = trunc i32 %1592 to i16
  br label %1650

1594:                                             ; preds = %1582
  call void @GetGap(ptr noundef nonnull %228, ptr noundef %0, ptr noundef nonnull %27, ptr noundef nonnull %28) #14
  %1595 = load i16, ptr %27, align 4
  %1596 = and i16 %1595, -1024
  %1597 = icmp eq i16 %1596, 9216
  br i1 %1597, label %1611, label %1598

1598:                                             ; preds = %1594
  %1599 = getelementptr inbounds %struct.word_type, ptr %228, i64 0, i32 1
  %1600 = getelementptr inbounds %struct.word_type, ptr %228, i64 0, i32 4
  %1601 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 47, ptr noundef nonnull @.str.32, i32 noundef 2, ptr noundef nonnull %1599, ptr noundef nonnull %1600) #14
  %1602 = load ptr, ptr @finfo, align 8, !tbaa !10
  %1603 = load i32, ptr %29, align 4
  %1604 = and i32 %1603, 4095
  %1605 = zext nneg i32 %1604 to i64
  %1606 = getelementptr inbounds %struct.font_rec, ptr %1602, i64 %1605, i32 5
  %1607 = load ptr, ptr %1606, align 8, !tbaa !18
  %1608 = getelementptr inbounds %struct.word_type, ptr %1607, i64 0, i32 3
  %1609 = load i32, ptr %1608, align 8, !tbaa !9
  %1610 = trunc i32 %1609 to i16
  br label %1650

1611:                                             ; preds = %1594
  %1612 = load i32, ptr %28, align 4, !tbaa !5
  %1613 = icmp eq i32 %1612, 158
  br i1 %1613, label %1614, label %1617

1614:                                             ; preds = %1611
  %1615 = getelementptr inbounds %struct.GAP, ptr %27, i64 0, i32 1
  %1616 = load i16, ptr %1615, align 2, !tbaa !46
  br label %1650

1617:                                             ; preds = %1611
  %1618 = load i32, ptr %29, align 4
  %1619 = and i32 %1618, 4095
  %1620 = icmp eq i32 %1619, 0
  br i1 %1620, label %1621, label %1625

1621:                                             ; preds = %1617
  %1622 = getelementptr inbounds %struct.word_type, ptr %228, i64 0, i32 1
  %1623 = getelementptr inbounds %struct.word_type, ptr %228, i64 0, i32 4
  %1624 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 48, ptr noundef nonnull @.str.33, i32 noundef 1, ptr noundef nonnull %1622, ptr noundef nonnull %1623) #14
  br label %1657

1625:                                             ; preds = %1617
  switch i32 %1612, label %1648 [
    i32 159, label %1626
    i32 160, label %1637
  ]

1626:                                             ; preds = %1625
  %1627 = load ptr, ptr @finfo, align 8, !tbaa !10
  %1628 = zext nneg i32 %1619 to i64
  %1629 = getelementptr inbounds %struct.font_rec, ptr %1627, i64 %1628, i32 5
  %1630 = load ptr, ptr %1629, align 8, !tbaa !18
  %1631 = getelementptr inbounds %struct.word_type, ptr %1630, i64 0, i32 3
  %1632 = load i32, ptr %1631, align 8, !tbaa !9
  %1633 = getelementptr inbounds %struct.GAP, ptr %27, i64 0, i32 1
  %1634 = load i16, ptr %1633, align 2, !tbaa !46
  %1635 = trunc i32 %1632 to i16
  %1636 = add i16 %1634, %1635
  br label %1650

1637:                                             ; preds = %1625
  %1638 = load ptr, ptr @finfo, align 8, !tbaa !10
  %1639 = zext nneg i32 %1619 to i64
  %1640 = getelementptr inbounds %struct.font_rec, ptr %1638, i64 %1639, i32 5
  %1641 = load ptr, ptr %1640, align 8, !tbaa !18
  %1642 = getelementptr inbounds %struct.word_type, ptr %1641, i64 0, i32 3
  %1643 = load i32, ptr %1642, align 8, !tbaa !9
  %1644 = getelementptr inbounds %struct.GAP, ptr %27, i64 0, i32 1
  %1645 = load i16, ptr %1644, align 2, !tbaa !46
  %1646 = trunc i32 %1643 to i16
  %1647 = sub i16 %1646, %1645
  br label %1650

1648:                                             ; preds = %1625
  %1649 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 49, ptr noundef nonnull @.str.34, i32 noundef 0, ptr noundef nonnull %38, i32 noundef %1612) #14
  br label %1657

1650:                                             ; preds = %1598, %1637, %1626, %1614, %1584
  %1651 = phi i16 [ %1593, %1584 ], [ %1610, %1598 ], [ %1616, %1614 ], [ %1636, %1626 ], [ %1647, %1637 ]
  %1652 = icmp slt i16 %1651, 1
  br i1 %1652, label %1653, label %1657

1653:                                             ; preds = %1650
  %1654 = getelementptr inbounds %struct.word_type, ptr %228, i64 0, i32 1
  %1655 = getelementptr inbounds %struct.word_type, ptr %228, i64 0, i32 4
  %1656 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 50, ptr noundef nonnull @.str.35, i32 noundef 2, ptr noundef nonnull %1654, ptr noundef nonnull %1655, ptr noundef nonnull @.str.16) #14
  br label %2090

1657:                                             ; preds = %1648, %1621, %1650
  %1658 = phi i16 [ %1651, %1650 ], [ undef, %1621 ], [ undef, %1648 ]
  %1659 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %1660 = getelementptr inbounds %struct.back_end_rec, ptr %1659, i64 0, i32 8
  %1661 = load i32, ptr %1660, align 8, !tbaa !24
  %1662 = icmp eq i32 %1661, 0
  %1663 = load i32, ptr @PlainCharHeight, align 4
  %1664 = trunc i32 %1663 to i16
  %1665 = select i1 %1662, i16 %1664, i16 %1658
  %1666 = load ptr, ptr %1556, align 8, !tbaa !9
  %1667 = getelementptr inbounds %struct.LIST, ptr %1666, i64 0, i32 1
  %1668 = load ptr, ptr %1667, align 8, !tbaa !9
  %1669 = sext i16 %1665 to i32
  br label %1670

1670:                                             ; preds = %1682, %1657
  %1671 = phi ptr [ %1668, %1657 ], [ %1673, %1682 ]
  %1672 = getelementptr inbounds %struct.LIST, ptr %1671, i64 0, i32 1
  %1673 = load ptr, ptr %1672, align 8, !tbaa !9
  %1674 = icmp eq ptr %1673, %1555
  br i1 %1674, label %1702, label %1675

1675:                                             ; preds = %1670, %1675
  %1676 = phi ptr [ %1678, %1675 ], [ %1673, %1670 ]
  %1677 = getelementptr inbounds [2 x %struct.LIST], ptr %1676, i64 0, i64 1
  %1678 = load ptr, ptr %1677, align 8, !tbaa !9
  %1679 = getelementptr inbounds %struct.word_type, ptr %1678, i64 0, i32 1
  %1680 = load i8, ptr %1679, align 8, !tbaa !9
  %1681 = icmp eq i8 %1680, 0
  br i1 %1681, label %1675, label %1682

1682:                                             ; preds = %1675
  %1683 = getelementptr inbounds %struct.word_type, ptr %1678, i64 0, i32 3
  %1684 = load i32, ptr %1683, align 8, !tbaa !9
  %1685 = icmp eq i32 %1684, %1669
  br i1 %1685, label %1686, label %1670

1686:                                             ; preds = %1682
  %1687 = getelementptr inbounds %struct.word_type, ptr %1678, i64 0, i32 2
  %1688 = load i16, ptr %1687, align 8
  %1689 = load i32, ptr %29, align 4
  %1690 = and i16 %1688, 4095
  %1691 = zext nneg i16 %1690 to i32
  %1692 = and i32 %1689, -4096
  %1693 = or disjoint i32 %1692, %1691
  store i32 %1693, ptr %29, align 4
  %1694 = getelementptr inbounds %struct.STYLE, ptr %0, i64 0, i32 1
  %1695 = load i16, ptr %1694, align 4
  %1696 = and i16 %1695, 255
  %1697 = or disjoint i16 %1696, 9728
  store i16 %1697, ptr %1694, align 4
  %1698 = getelementptr inbounds %struct.word_type, ptr %1678, i64 0, i32 3, i32 1
  %1699 = load i32, ptr %1698, align 8, !tbaa !9
  %1700 = trunc i32 %1699 to i16
  %1701 = getelementptr inbounds %struct.STYLE, ptr %0, i64 0, i32 1, i32 0, i32 1
  store i16 %1700, ptr %1701, align 2, !tbaa !9
  br label %2090

1702:                                             ; preds = %1670
  %1703 = load i32, ptr @font_count, align 4, !tbaa !5
  %1704 = add i32 %1703, 1
  store i32 %1704, ptr @font_count, align 4, !tbaa !5
  %1705 = load i32, ptr @finfo_size, align 4, !tbaa !5
  %1706 = icmp ult i32 %1704, %1705
  br i1 %1706, label %1722, label %1707

1707:                                             ; preds = %1702
  %1708 = icmp ugt i32 %1704, 4096
  br i1 %1708, label %1709, label %1712

1709:                                             ; preds = %1707
  %1710 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 51, ptr noundef nonnull @.str.36, i32 noundef 1, ptr noundef nonnull %38, i32 noundef 4096) #14
  %1711 = load i32, ptr @finfo_size, align 4, !tbaa !5
  br label %1712

1712:                                             ; preds = %1709, %1707
  %1713 = phi i32 [ %1711, %1709 ], [ %1705, %1707 ]
  %1714 = shl nsw i32 %1713, 1
  store i32 %1714, ptr @finfo_size, align 4, !tbaa !5
  %1715 = load ptr, ptr @finfo, align 8, !tbaa !10
  %1716 = sext i32 %1714 to i64
  %1717 = mul nsw i64 %1716, 96
  %1718 = call ptr @realloc(ptr noundef %1715, i64 noundef %1717) #17
  store ptr %1718, ptr @finfo, align 8, !tbaa !10
  %1719 = icmp eq ptr %1718, null
  br i1 %1719, label %1720, label %1722

1720:                                             ; preds = %1712
  %1721 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 52, ptr noundef nonnull @.str.37, i32 noundef 1, ptr noundef nonnull %38) #14
  br label %1722

1722:                                             ; preds = %1712, %1720, %1702
  %1723 = load ptr, ptr %1556, align 8, !tbaa !9
  %1724 = getelementptr inbounds %struct.LIST, ptr %1723, i64 0, i32 1
  %1725 = load ptr, ptr %1724, align 8, !tbaa !9
  %1726 = getelementptr inbounds %struct.LIST, ptr %1725, i64 0, i32 1
  %1727 = load ptr, ptr %1726, align 8, !tbaa !9
  br label %1728

1728:                                             ; preds = %1728, %1722
  %1729 = phi ptr [ %1727, %1722 ], [ %1731, %1728 ]
  %1730 = getelementptr inbounds [2 x %struct.LIST], ptr %1729, i64 0, i64 1
  %1731 = load ptr, ptr %1730, align 8, !tbaa !9
  %1732 = getelementptr inbounds %struct.word_type, ptr %1731, i64 0, i32 1
  %1733 = load i8, ptr %1732, align 8, !tbaa !9
  switch i8 %1733, label %1734 [
    i8 0, label %1728
    i8 11, label %1737
    i8 12, label %1737
  ]

1734:                                             ; preds = %1728
  %1735 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %1736 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %1735, ptr noundef nonnull @.str.38) #14
  br label %1737

1737:                                             ; preds = %1728, %1728, %1734
  %1738 = getelementptr inbounds %struct.word_type, ptr %1731, i64 0, i32 4
  %1739 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %1740 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %1738, ptr noundef %1739) #14
  %1741 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %1742 = zext i8 %1741 to i32
  store i32 %1742, ptr @zz_size, align 4, !tbaa !5
  %1743 = zext i8 %1741 to i64
  %1744 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1743
  %1745 = load ptr, ptr %1744, align 8, !tbaa !10
  %1746 = icmp eq ptr %1745, null
  br i1 %1746, label %1747, label %1750

1747:                                             ; preds = %1737
  %1748 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %1749 = call ptr @GetMemory(i32 noundef %1742, ptr noundef %1748) #14
  br label %1752

1750:                                             ; preds = %1737
  store ptr %1745, ptr @zz_hold, align 8, !tbaa !10
  %1751 = load ptr, ptr %1745, align 8, !tbaa !9
  store ptr %1751, ptr %1744, align 8, !tbaa !10
  br label %1752

1752:                                             ; preds = %1747, %1750
  %1753 = phi ptr [ %1749, %1747 ], [ %1745, %1750 ]
  %1754 = getelementptr inbounds %struct.word_type, ptr %1753, i64 0, i32 1
  store i8 0, ptr %1754, align 8, !tbaa !9
  %1755 = getelementptr inbounds [2 x %struct.LIST], ptr %1753, i64 0, i64 1, i32 1
  store ptr %1753, ptr %1755, align 8, !tbaa !9
  %1756 = getelementptr inbounds [2 x %struct.LIST], ptr %1753, i64 0, i64 1
  store ptr %1753, ptr %1756, align 8, !tbaa !9
  %1757 = getelementptr inbounds %struct.LIST, ptr %1753, i64 0, i32 1
  store ptr %1753, ptr %1757, align 8, !tbaa !9
  store ptr %1753, ptr %1753, align 8, !tbaa !9
  store ptr %1753, ptr @xx_link, align 8, !tbaa !10
  store ptr %1753, ptr @zz_res, align 8, !tbaa !10
  store ptr %1555, ptr @zz_hold, align 8, !tbaa !10
  %1758 = load ptr, ptr %1555, align 8, !tbaa !9
  store ptr %1758, ptr @zz_tmp, align 8, !tbaa !10
  %1759 = load ptr, ptr %1753, align 8, !tbaa !9
  store ptr %1759, ptr %1555, align 8, !tbaa !9
  %1760 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %1761 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %1762 = load ptr, ptr %1761, align 8, !tbaa !9
  %1763 = getelementptr inbounds %struct.LIST, ptr %1762, i64 0, i32 1
  store ptr %1760, ptr %1763, align 8, !tbaa !9
  %1764 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %1764, ptr %1761, align 8, !tbaa !9
  %1765 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %1766 = getelementptr inbounds %struct.LIST, ptr %1764, i64 0, i32 1
  store ptr %1765, ptr %1766, align 8, !tbaa !9
  %1767 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %1767, ptr @zz_res, align 8, !tbaa !10
  store ptr %1740, ptr @zz_hold, align 8, !tbaa !10
  %1768 = icmp eq ptr %1740, null
  %1769 = icmp eq ptr %1767, null
  %1770 = select i1 %1768, i1 true, i1 %1769
  br i1 %1770, label %1778, label %1771

1771:                                             ; preds = %1752
  %1772 = getelementptr inbounds [2 x %struct.LIST], ptr %1740, i64 0, i64 1
  %1773 = load ptr, ptr %1772, align 8, !tbaa !9
  store ptr %1773, ptr @zz_tmp, align 8, !tbaa !10
  %1774 = getelementptr inbounds [2 x %struct.LIST], ptr %1767, i64 0, i64 1
  %1775 = load ptr, ptr %1774, align 8, !tbaa !9
  store ptr %1775, ptr %1772, align 8, !tbaa !9
  %1776 = getelementptr inbounds [2 x %struct.LIST], ptr %1775, i64 0, i64 1, i32 1
  store ptr %1740, ptr %1776, align 8, !tbaa !9
  store ptr %1773, ptr %1774, align 8, !tbaa !9
  %1777 = getelementptr inbounds [2 x %struct.LIST], ptr %1773, i64 0, i64 1, i32 1
  store ptr %1767, ptr %1777, align 8, !tbaa !9
  br label %1778

1778:                                             ; preds = %1752, %1771
  %1779 = load i32, ptr @font_count, align 4, !tbaa !5
  %1780 = getelementptr inbounds %struct.word_type, ptr %1740, i64 0, i32 2
  %1781 = trunc i32 %1779 to i16
  %1782 = load i16, ptr %1780, align 8
  %1783 = and i16 %1781, 4095
  %1784 = and i16 %1782, -4096
  %1785 = or disjoint i16 %1784, %1783
  store i16 %1785, ptr %1780, align 8
  %1786 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %1787 = getelementptr inbounds %struct.back_end_rec, ptr %1786, i64 0, i32 8
  %1788 = load i32, ptr %1787, align 8, !tbaa !24
  %1789 = icmp eq i32 %1788, 0
  br i1 %1789, label %1790, label %1793

1790:                                             ; preds = %1778
  %1791 = getelementptr inbounds %struct.word_type, ptr %1731, i64 0, i32 3
  %1792 = load i32, ptr %1791, align 8, !tbaa !9
  br label %1793

1793:                                             ; preds = %1778, %1790
  %1794 = phi i32 [ %1792, %1790 ], [ %1669, %1778 ]
  %1795 = getelementptr inbounds %struct.word_type, ptr %1740, i64 0, i32 3
  store i32 %1794, ptr %1795, align 8, !tbaa !9
  %1796 = getelementptr inbounds %struct.word_type, ptr %1731, i64 0, i32 3
  %1797 = getelementptr inbounds i8, ptr %1731, i64 52
  %1798 = load i32, ptr %1797, align 4, !tbaa !9
  %1799 = mul nsw i32 %1798, %1794
  %1800 = load i32, ptr %1796, align 8, !tbaa !9
  %1801 = sdiv i32 %1799, %1800
  %1802 = getelementptr inbounds i8, ptr %1740, i64 52
  store i32 %1801, ptr %1802, align 4, !tbaa !9
  %1803 = getelementptr inbounds %struct.word_type, ptr %1731, i64 0, i32 3, i32 1, i64 4
  %1804 = load i8, ptr %1803, align 4
  %1805 = and i8 %1804, -128
  %1806 = getelementptr inbounds %struct.word_type, ptr %1740, i64 0, i32 3, i32 1, i64 4
  %1807 = load i8, ptr %1806, align 4
  %1808 = and i8 %1807, 127
  %1809 = or disjoint i8 %1808, %1805
  store i8 %1809, ptr %1806, align 4
  %1810 = load i8, ptr %1803, align 4
  %1811 = and i8 %1810, 127
  %1812 = or disjoint i8 %1811, %1805
  store i8 %1812, ptr %1806, align 4
  %1813 = getelementptr inbounds %struct.word_type, ptr %1731, i64 0, i32 3, i32 1
  %1814 = load i32, ptr %1813, align 8, !tbaa !9
  %1815 = mul nsw i32 %1814, %1794
  %1816 = load i32, ptr %1796, align 8, !tbaa !9
  %1817 = sdiv i32 %1815, %1816
  %1818 = getelementptr inbounds %struct.word_type, ptr %1740, i64 0, i32 3, i32 1
  store i32 %1817, ptr %1818, align 8, !tbaa !9
  %1819 = load ptr, ptr @finfo, align 8, !tbaa !10
  %1820 = zext i32 %1779 to i64
  %1821 = getelementptr inbounds %struct.font_rec, ptr %1819, i64 %1820, i32 5
  store ptr %1740, ptr %1821, align 8, !tbaa !18
  %1822 = load ptr, ptr @finfo, align 8, !tbaa !10
  %1823 = getelementptr inbounds %struct.font_rec, ptr %1822, i64 %1820, i32 6
  store ptr %1555, ptr %1823, align 8, !tbaa !34
  %1824 = load ptr, ptr @finfo, align 8, !tbaa !10
  %1825 = getelementptr inbounds %struct.word_type, ptr %1731, i64 0, i32 2
  %1826 = load i16, ptr %1825, align 8
  %1827 = and i16 %1826, 4095
  %1828 = zext nneg i16 %1827 to i64
  %1829 = getelementptr inbounds %struct.font_rec, ptr %1824, i64 %1828, i32 7
  %1830 = load i16, ptr %1829, align 8, !tbaa !35
  %1831 = sext i16 %1830 to i32
  %1832 = load i32, ptr %1795, align 8, !tbaa !9
  %1833 = mul nsw i32 %1832, %1831
  %1834 = load i32, ptr %1796, align 8, !tbaa !9
  %1835 = sdiv i32 %1833, %1834
  %1836 = trunc i32 %1835 to i16
  %1837 = getelementptr inbounds %struct.font_rec, ptr %1824, i64 %1820, i32 7
  store i16 %1836, ptr %1837, align 8, !tbaa !35
  %1838 = load i16, ptr %1825, align 8
  %1839 = and i16 %1838, 4095
  %1840 = zext nneg i16 %1839 to i64
  %1841 = getelementptr inbounds %struct.font_rec, ptr %1824, i64 %1840, i32 8
  %1842 = load i16, ptr %1841, align 2, !tbaa !36
  %1843 = sext i16 %1842 to i32
  %1844 = load i32, ptr %1795, align 8, !tbaa !9
  %1845 = mul nsw i32 %1844, %1843
  %1846 = load i32, ptr %1796, align 8, !tbaa !9
  %1847 = sdiv i32 %1845, %1846
  %1848 = trunc i32 %1847 to i16
  %1849 = getelementptr inbounds %struct.font_rec, ptr %1824, i64 %1820, i32 8
  store i16 %1848, ptr %1849, align 2, !tbaa !36
  %1850 = call noalias dereferenceable_or_null(2560) ptr @malloc(i64 noundef 2560) #15
  %1851 = getelementptr inbounds %struct.font_rec, ptr %1824, i64 %1820
  store ptr %1850, ptr %1851, align 8, !tbaa !37
  %1852 = load ptr, ptr @finfo, align 8, !tbaa !10
  %1853 = getelementptr inbounds %struct.font_rec, ptr %1852, i64 %1820
  %1854 = load ptr, ptr %1853, align 8, !tbaa !37
  %1855 = icmp eq ptr %1854, null
  br i1 %1855, label %1856, label %1861

1856:                                             ; preds = %1793
  %1857 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 53, ptr noundef nonnull @.str.39, i32 noundef 1, ptr noundef nonnull %38) #14
  %1858 = load ptr, ptr @finfo, align 8, !tbaa !10
  %1859 = load i32, ptr @font_count, align 4, !tbaa !5
  %1860 = zext i32 %1859 to i64
  br label %1861

1861:                                             ; preds = %1856, %1793
  %1862 = phi i64 [ %1860, %1856 ], [ %1820, %1793 ]
  %1863 = phi ptr [ %1858, %1856 ], [ %1852, %1793 ]
  %1864 = load i16, ptr %1825, align 8
  %1865 = and i16 %1864, 4095
  %1866 = zext nneg i16 %1865 to i64
  %1867 = getelementptr inbounds %struct.font_rec, ptr %1863, i64 %1866, i32 1
  %1868 = load ptr, ptr %1867, align 8, !tbaa !38
  %1869 = getelementptr inbounds %struct.font_rec, ptr %1863, i64 %1862, i32 1
  store ptr %1868, ptr %1869, align 8, !tbaa !38
  %1870 = load ptr, ptr @finfo, align 8, !tbaa !10
  %1871 = load i16, ptr %1780, align 8
  %1872 = and i16 %1871, 4095
  %1873 = zext nneg i16 %1872 to i64
  %1874 = getelementptr inbounds %struct.font_rec, ptr %1870, i64 %1873
  %1875 = load ptr, ptr %1874, align 8, !tbaa !37
  %1876 = load i16, ptr %1825, align 8
  %1877 = and i16 %1876, 4095
  %1878 = zext nneg i16 %1877 to i64
  %1879 = getelementptr inbounds %struct.font_rec, ptr %1870, i64 %1878
  %1880 = load ptr, ptr %1879, align 8, !tbaa !37
  br label %1881

1881:                                             ; preds = %1861, %1932
  %1882 = phi i64 [ 0, %1861 ], [ %1933, %1932 ]
  %1883 = getelementptr inbounds i8, ptr %1868, i64 %1882
  %1884 = load i8, ptr %1883, align 1, !tbaa !9
  %1885 = icmp eq i8 %1884, 1
  br i1 %1885, label %1932, label %1886

1886:                                             ; preds = %1881
  %1887 = getelementptr inbounds %struct.metrics, ptr %1880, i64 %1882
  %1888 = getelementptr inbounds %struct.metrics, ptr %1880, i64 %1882, i32 2
  %1889 = load i16, ptr %1888, align 2, !tbaa !48
  %1890 = sext i16 %1889 to i32
  %1891 = load i32, ptr %1795, align 8, !tbaa !9
  %1892 = mul nsw i32 %1891, %1890
  %1893 = load i32, ptr %1796, align 8, !tbaa !9
  %1894 = sdiv i32 %1892, %1893
  %1895 = trunc i32 %1894 to i16
  %1896 = getelementptr inbounds %struct.metrics, ptr %1875, i64 %1882
  %1897 = getelementptr inbounds %struct.metrics, ptr %1875, i64 %1882, i32 2
  store i16 %1895, ptr %1897, align 2, !tbaa !48
  %1898 = getelementptr inbounds %struct.metrics, ptr %1880, i64 %1882, i32 3
  %1899 = load i16, ptr %1898, align 2, !tbaa !28
  %1900 = sext i16 %1899 to i32
  %1901 = load i32, ptr %1795, align 8, !tbaa !9
  %1902 = mul nsw i32 %1901, %1900
  %1903 = load i32, ptr %1796, align 8, !tbaa !9
  %1904 = sdiv i32 %1902, %1903
  %1905 = trunc i32 %1904 to i16
  %1906 = getelementptr inbounds %struct.metrics, ptr %1875, i64 %1882, i32 3
  store i16 %1905, ptr %1906, align 2, !tbaa !28
  %1907 = getelementptr inbounds %struct.metrics, ptr %1880, i64 %1882, i32 1
  %1908 = load i16, ptr %1907, align 2, !tbaa !49
  %1909 = sext i16 %1908 to i32
  %1910 = load i32, ptr %1795, align 8, !tbaa !9
  %1911 = mul nsw i32 %1910, %1909
  %1912 = load i32, ptr %1796, align 8, !tbaa !9
  %1913 = sdiv i32 %1911, %1912
  %1914 = trunc i32 %1913 to i16
  %1915 = getelementptr inbounds %struct.metrics, ptr %1875, i64 %1882, i32 1
  store i16 %1914, ptr %1915, align 2, !tbaa !49
  %1916 = load i16, ptr %1887, align 2, !tbaa !50
  %1917 = sext i16 %1916 to i32
  %1918 = load i32, ptr %1795, align 8, !tbaa !9
  %1919 = mul nsw i32 %1918, %1917
  %1920 = load i32, ptr %1796, align 8, !tbaa !9
  %1921 = sdiv i32 %1919, %1920
  %1922 = trunc i32 %1921 to i16
  store i16 %1922, ptr %1896, align 2, !tbaa !50
  %1923 = getelementptr inbounds %struct.metrics, ptr %1880, i64 %1882, i32 4
  %1924 = load i16, ptr %1923, align 2, !tbaa !51
  %1925 = sext i16 %1924 to i32
  %1926 = load i32, ptr %1795, align 8, !tbaa !9
  %1927 = mul nsw i32 %1926, %1925
  %1928 = load i32, ptr %1796, align 8, !tbaa !9
  %1929 = sdiv i32 %1927, %1928
  %1930 = trunc i32 %1929 to i16
  %1931 = getelementptr inbounds %struct.metrics, ptr %1875, i64 %1882, i32 4
  store i16 %1930, ptr %1931, align 2, !tbaa !51
  br label %1932

1932:                                             ; preds = %1881, %1886
  %1933 = add nuw nsw i64 %1882, 1
  %1934 = icmp eq i64 %1933, 256
  br i1 %1934, label %1935, label %1881

1935:                                             ; preds = %1932
  %1936 = load i16, ptr %1825, align 8
  %1937 = and i16 %1936, 4095
  %1938 = zext nneg i16 %1937 to i64
  %1939 = getelementptr inbounds %struct.font_rec, ptr %1870, i64 %1938, i32 2
  %1940 = load ptr, ptr %1939, align 8, !tbaa !39
  %1941 = getelementptr inbounds %struct.font_rec, ptr %1870, i64 %1862, i32 2
  store ptr %1940, ptr %1941, align 8, !tbaa !39
  %1942 = load ptr, ptr @finfo, align 8, !tbaa !10
  %1943 = load i16, ptr %1825, align 8
  %1944 = and i16 %1943, 4095
  %1945 = zext nneg i16 %1944 to i64
  %1946 = getelementptr inbounds %struct.font_rec, ptr %1942, i64 %1945, i32 4
  %1947 = load i32, ptr %1946, align 8, !tbaa !41
  %1948 = getelementptr inbounds %struct.font_rec, ptr %1942, i64 %1862, i32 4
  store i32 %1947, ptr %1948, align 8, !tbaa !41
  %1949 = load i16, ptr %1825, align 8
  %1950 = and i16 %1949, 4095
  %1951 = zext nneg i16 %1950 to i64
  %1952 = getelementptr inbounds %struct.font_rec, ptr %1942, i64 %1951, i32 3
  %1953 = load ptr, ptr %1952, align 8, !tbaa !40
  %1954 = sext i32 %1947 to i64
  %1955 = mul nsw i64 %1954, 6
  %1956 = call noalias ptr @malloc(i64 noundef %1955) #15
  %1957 = icmp eq ptr %1956, null
  br i1 %1957, label %1958, label %1960

1958:                                             ; preds = %1935
  %1959 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 54, ptr noundef nonnull @.str.39, i32 noundef 1, ptr noundef nonnull %38) #14
  br label %1960

1960:                                             ; preds = %1958, %1935
  %1961 = icmp sgt i32 %1947, 1
  br i1 %1961, label %1962, label %1990

1962:                                             ; preds = %1960
  %1963 = zext nneg i32 %1947 to i64
  br label %1964

1964:                                             ; preds = %1962, %1987
  %1965 = phi i64 [ 1, %1962 ], [ %1988, %1987 ]
  %1966 = getelementptr inbounds %struct.composite_rec, ptr %1953, i64 %1965
  %1967 = load i8, ptr %1966, align 2, !tbaa !30
  %1968 = getelementptr inbounds %struct.composite_rec, ptr %1956, i64 %1965
  store i8 %1967, ptr %1968, align 2, !tbaa !30
  %1969 = icmp eq i8 %1967, 0
  br i1 %1969, label %1987, label %1970

1970:                                             ; preds = %1964
  %1971 = getelementptr inbounds %struct.composite_rec, ptr %1953, i64 %1965, i32 1
  %1972 = load i16, ptr %1971, align 2, !tbaa !32
  %1973 = sext i16 %1972 to i32
  %1974 = load i32, ptr %1795, align 8, !tbaa !9
  %1975 = mul nsw i32 %1974, %1973
  %1976 = load i32, ptr %1796, align 8, !tbaa !9
  %1977 = sdiv i32 %1975, %1976
  %1978 = trunc i32 %1977 to i16
  %1979 = getelementptr inbounds %struct.composite_rec, ptr %1956, i64 %1965, i32 1
  store i16 %1978, ptr %1979, align 2, !tbaa !32
  %1980 = getelementptr inbounds %struct.composite_rec, ptr %1953, i64 %1965, i32 2
  %1981 = load i16, ptr %1980, align 2, !tbaa !33
  %1982 = sext i16 %1981 to i32
  %1983 = mul nsw i32 %1974, %1982
  %1984 = sdiv i32 %1983, %1976
  %1985 = trunc i32 %1984 to i16
  %1986 = getelementptr inbounds %struct.composite_rec, ptr %1956, i64 %1965, i32 2
  store i16 %1985, ptr %1986, align 2, !tbaa !33
  br label %1987

1987:                                             ; preds = %1964, %1970
  %1988 = add nuw nsw i64 %1965, 1
  %1989 = icmp eq i64 %1988, %1963
  br i1 %1989, label %1990, label %1964

1990:                                             ; preds = %1987, %1960
  %1991 = load ptr, ptr @finfo, align 8, !tbaa !10
  %1992 = load i32, ptr @font_count, align 4, !tbaa !5
  %1993 = zext i32 %1992 to i64
  %1994 = getelementptr inbounds %struct.font_rec, ptr %1991, i64 %1993, i32 3
  store ptr %1956, ptr %1994, align 8, !tbaa !40
  %1995 = load ptr, ptr @finfo, align 8, !tbaa !10
  %1996 = load i16, ptr %1825, align 8
  %1997 = and i16 %1996, 4095
  %1998 = zext nneg i16 %1997 to i64
  %1999 = getelementptr inbounds %struct.font_rec, ptr %1995, i64 %1998, i32 9
  %2000 = load ptr, ptr %1999, align 8, !tbaa !42
  %2001 = getelementptr inbounds %struct.font_rec, ptr %1995, i64 %1993, i32 9
  store ptr %2000, ptr %2001, align 8, !tbaa !42
  %2002 = load ptr, ptr @finfo, align 8, !tbaa !10
  %2003 = load i16, ptr %1825, align 8
  %2004 = and i16 %2003, 4095
  %2005 = zext nneg i16 %2004 to i64
  %2006 = getelementptr inbounds %struct.font_rec, ptr %2002, i64 %2005, i32 10
  %2007 = load ptr, ptr %2006, align 8, !tbaa !43
  %2008 = getelementptr inbounds %struct.font_rec, ptr %2002, i64 %1993, i32 10
  store ptr %2007, ptr %2008, align 8, !tbaa !43
  %2009 = load ptr, ptr @finfo, align 8, !tbaa !10
  %2010 = load i16, ptr %1825, align 8
  %2011 = and i16 %2010, 4095
  %2012 = zext nneg i16 %2011 to i64
  %2013 = getelementptr inbounds %struct.font_rec, ptr %2009, i64 %2012, i32 11
  %2014 = load ptr, ptr %2013, align 8, !tbaa !44
  %2015 = getelementptr inbounds %struct.font_rec, ptr %2009, i64 %1993, i32 11
  store ptr %2014, ptr %2015, align 8, !tbaa !44
  %2016 = load ptr, ptr @finfo, align 8, !tbaa !10
  %2017 = load i16, ptr %1825, align 8
  %2018 = and i16 %2017, 4095
  %2019 = zext nneg i16 %2018 to i64
  %2020 = getelementptr inbounds %struct.font_rec, ptr %2016, i64 %2019, i32 12
  %2021 = load ptr, ptr %2020, align 8, !tbaa !45
  %2022 = icmp eq ptr %2021, null
  br i1 %2022, label %2064, label %2023

2023:                                             ; preds = %1990
  %2024 = load i16, ptr %2021, align 2, !tbaa !21
  %2025 = sext i16 %2024 to i64
  %2026 = shl nsw i64 %2025, 1
  %2027 = call noalias ptr @malloc(i64 noundef %2026) #15
  %2028 = getelementptr inbounds %struct.font_rec, ptr %2016, i64 %1993, i32 12
  store ptr %2027, ptr %2028, align 8, !tbaa !45
  %2029 = icmp eq ptr %2027, null
  br i1 %2029, label %2030, label %2032

2030:                                             ; preds = %2023
  %2031 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 55, ptr noundef nonnull @.str.39, i32 noundef 1, ptr noundef nonnull %38) #14
  br label %2032

2032:                                             ; preds = %2030, %2023
  store i16 %2024, ptr %2027, align 2, !tbaa !21
  %2033 = icmp sgt i16 %2024, 1
  br i1 %2033, label %2034, label %2077

2034:                                             ; preds = %2032
  %2035 = load i32, ptr %1795, align 8, !tbaa !9
  %2036 = load i32, ptr %1796, align 8, !tbaa !9
  %2037 = add nsw i16 %2024, -1
  %2038 = sext i16 %2037 to i64
  %2039 = and i64 %2038, 1
  %2040 = icmp eq i16 %2024, 2
  br i1 %2040, label %2066, label %2041

2041:                                             ; preds = %2034
  %2042 = and i64 %2038, -2
  br label %2043

2043:                                             ; preds = %2043, %2041
  %2044 = phi i64 [ 1, %2041 ], [ %2061, %2043 ]
  %2045 = phi i64 [ 0, %2041 ], [ %2062, %2043 ]
  %2046 = getelementptr inbounds i16, ptr %2021, i64 %2044
  %2047 = load i16, ptr %2046, align 2, !tbaa !21
  %2048 = sext i16 %2047 to i32
  %2049 = mul nsw i32 %2035, %2048
  %2050 = sdiv i32 %2049, %2036
  %2051 = trunc i32 %2050 to i16
  %2052 = getelementptr inbounds i16, ptr %2027, i64 %2044
  store i16 %2051, ptr %2052, align 2, !tbaa !21
  %2053 = add nuw nsw i64 %2044, 1
  %2054 = getelementptr inbounds i16, ptr %2021, i64 %2053
  %2055 = load i16, ptr %2054, align 2, !tbaa !21
  %2056 = sext i16 %2055 to i32
  %2057 = mul nsw i32 %2035, %2056
  %2058 = sdiv i32 %2057, %2036
  %2059 = trunc i32 %2058 to i16
  %2060 = getelementptr inbounds i16, ptr %2027, i64 %2053
  store i16 %2059, ptr %2060, align 2, !tbaa !21
  %2061 = add nuw nsw i64 %2044, 2
  %2062 = add i64 %2045, 2
  %2063 = icmp eq i64 %2062, %2042
  br i1 %2063, label %2066, label %2043

2064:                                             ; preds = %1990
  %2065 = getelementptr inbounds %struct.font_rec, ptr %2016, i64 %1993, i32 12
  store ptr null, ptr %2065, align 8, !tbaa !45
  br label %2077

2066:                                             ; preds = %2043, %2034
  %2067 = phi i64 [ 1, %2034 ], [ %2061, %2043 ]
  %2068 = icmp eq i64 %2039, 0
  br i1 %2068, label %2077, label %2069

2069:                                             ; preds = %2066
  %2070 = getelementptr inbounds i16, ptr %2021, i64 %2067
  %2071 = load i16, ptr %2070, align 2, !tbaa !21
  %2072 = sext i16 %2071 to i32
  %2073 = mul nsw i32 %2035, %2072
  %2074 = sdiv i32 %2073, %2036
  %2075 = trunc i32 %2074 to i16
  %2076 = getelementptr inbounds i16, ptr %2027, i64 %2067
  store i16 %2075, ptr %2076, align 2, !tbaa !21
  br label %2077

2077:                                             ; preds = %2069, %2066, %2032, %2064
  %2078 = load i32, ptr @font_count, align 4, !tbaa !5
  %2079 = load i32, ptr %29, align 4
  %2080 = and i32 %2078, 4095
  %2081 = and i32 %2079, -4096
  %2082 = or disjoint i32 %2081, %2080
  store i32 %2082, ptr %29, align 4
  %2083 = getelementptr inbounds %struct.STYLE, ptr %0, i64 0, i32 1
  %2084 = load i16, ptr %2083, align 4
  %2085 = and i16 %2084, 255
  %2086 = or disjoint i16 %2085, 9728
  store i16 %2086, ptr %2083, align 4
  %2087 = load i32, ptr %1818, align 8, !tbaa !9
  %2088 = trunc i32 %2087 to i16
  %2089 = getelementptr inbounds %struct.STYLE, ptr %0, i64 0, i32 1, i32 0, i32 1
  store i16 %2088, ptr %2089, align 2, !tbaa !9
  br label %2090

2090:                                             ; preds = %40, %57, %54, %48, %37, %1548, %1551, %103, %2077, %1686, %1653, %235, %101, %94, %88
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %26) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare void @GetGap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #5

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @FontWordSize(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %2) #14
  %3 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !9
  %5 = add i8 %4, -11
  %6 = icmp ult i8 %5, 2
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %9 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %8, ptr noundef nonnull @.str.40) #14
  br label %10

10:                                               ; preds = %1, %7
  %11 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %12 = load i8, ptr %11, align 1, !tbaa !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %268, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 4095
  %18 = load i32, ptr @font_count, align 4
  %19 = freeze i32 %18
  %20 = add nsw i32 %17, -1
  %21 = icmp ult i32 %20, %19
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 56, ptr noundef nonnull @.str.41, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %11) #14
  %24 = load i32, ptr %15, align 8
  br label %25

25:                                               ; preds = %14, %22
  %26 = phi i32 [ %16, %14 ], [ %24, %22 ]
  %27 = and i32 %26, 4190208
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %31 = getelementptr inbounds %struct.back_end_rec, ptr %30, i64 0, i32 9
  %32 = load i32, ptr %31, align 4, !tbaa !52
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 57, ptr noundef nonnull @.str.42, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %11) #14
  %36 = load i32, ptr %15, align 8
  br label %37

37:                                               ; preds = %34, %29, %25
  %38 = phi i32 [ %36, %34 ], [ %26, %29 ], [ %26, %25 ]
  %39 = and i32 %38, 528482304
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 58, ptr noundef nonnull @.str.43, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %11) #14
  %43 = load i32, ptr %15, align 8
  br label %44

44:                                               ; preds = %41, %37
  %45 = phi i32 [ %43, %41 ], [ %38, %37 ]
  %46 = load ptr, ptr @finfo, align 8, !tbaa !10
  %47 = and i32 %45, 4095
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds %struct.font_rec, ptr %46, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !37
  %51 = getelementptr inbounds %struct.font_rec, ptr %46, i64 %48, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !38
  %53 = getelementptr inbounds %struct.font_rec, ptr %46, i64 %48, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !18
  %55 = getelementptr inbounds %struct.word_type, ptr %54, i64 0, i32 3, i32 1, i64 4
  %56 = load i8, ptr %55, align 4
  %57 = and i8 %56, 127
  %58 = zext nneg i8 %57 to i64
  %59 = getelementptr inbounds [0 x ptr], ptr @MapTable, i64 0, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !10
  %61 = getelementptr inbounds %struct.mapvec, ptr %60, i64 0, i32 7, i64 2
  %62 = load i8, ptr %11, align 1, !tbaa !9
  br label %63

63:                                               ; preds = %181, %44
  %64 = phi i8 [ %62, %44 ], [ %198, %181 ]
  %65 = phi i32 [ 0, %44 ], [ %188, %181 ]
  %66 = phi i32 [ 0, %44 ], [ %192, %181 ]
  %67 = phi i32 [ 0, %44 ], [ %197, %181 ]
  %68 = phi ptr [ %2, %44 ], [ %193, %181 ]
  %69 = phi ptr [ %11, %44 ], [ %183, %181 ]
  %70 = getelementptr inbounds i8, ptr %69, i64 1
  store i8 %64, ptr %68, align 1, !tbaa !9
  %71 = zext i8 %64 to i64
  %72 = getelementptr inbounds i8, ptr %52, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !9
  switch i8 %73, label %134 [
    i8 0, label %181
    i8 1, label %74
  ]

74:                                               ; preds = %63
  %75 = tail call ptr @MakeWord(i32 noundef 12, ptr noundef nonnull @.str.44, ptr noundef nonnull %3) #14
  %76 = load i8, ptr %68, align 1, !tbaa !9
  %77 = getelementptr inbounds %struct.word_type, ptr %75, i64 0, i32 4
  store i8 %76, ptr %77, align 8, !tbaa !9
  %78 = zext i8 %76 to i64
  %79 = getelementptr inbounds i8, ptr %61, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !9
  %81 = icmp eq i8 %80, %76
  br i1 %81, label %108, label %82

82:                                               ; preds = %74
  %83 = zext i8 %80 to i64
  %84 = getelementptr inbounds %struct.metrics, ptr %50, i64 %83
  %85 = load i16, ptr %84, align 2, !tbaa !50
  %86 = getelementptr inbounds %struct.metrics, ptr %50, i64 %78
  store i16 %85, ptr %86, align 2, !tbaa !50
  %87 = load i8, ptr %79, align 1, !tbaa !9
  %88 = zext i8 %87 to i64
  %89 = getelementptr inbounds %struct.metrics, ptr %50, i64 %88, i32 1
  %90 = load i16, ptr %89, align 2, !tbaa !49
  %91 = getelementptr inbounds %struct.metrics, ptr %50, i64 %78, i32 1
  store i16 %90, ptr %91, align 2, !tbaa !49
  %92 = load i8, ptr %79, align 1, !tbaa !9
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds %struct.metrics, ptr %50, i64 %93, i32 2
  %95 = load i16, ptr %94, align 2, !tbaa !48
  %96 = getelementptr inbounds %struct.metrics, ptr %50, i64 %78, i32 2
  store i16 %95, ptr %96, align 2, !tbaa !48
  %97 = load i8, ptr %79, align 1, !tbaa !9
  %98 = zext i8 %97 to i64
  %99 = getelementptr inbounds %struct.metrics, ptr %50, i64 %98, i32 3
  %100 = load i16, ptr %99, align 2, !tbaa !28
  %101 = getelementptr inbounds %struct.metrics, ptr %50, i64 %78, i32 3
  store i16 %100, ptr %101, align 2, !tbaa !28
  %102 = load i8, ptr %79, align 1, !tbaa !9
  %103 = zext i8 %102 to i64
  %104 = getelementptr inbounds %struct.metrics, ptr %50, i64 %103, i32 4
  %105 = load i16, ptr %104, align 2, !tbaa !51
  %106 = getelementptr inbounds %struct.metrics, ptr %50, i64 %78, i32 4
  store i16 %105, ptr %106, align 2, !tbaa !51
  %107 = getelementptr inbounds i8, ptr %52, i64 %78
  store i8 0, ptr %107, align 1, !tbaa !9
  br label %115

108:                                              ; preds = %74
  %109 = tail call ptr @StringQuotedWord(ptr noundef nonnull %75) #14
  %110 = load i32, ptr %15, align 8
  %111 = and i32 %110, 4095
  %112 = tail call ptr @FontFamilyAndFace(i32 noundef %111)
  %113 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 60, ptr noundef nonnull @.str.45, i32 noundef 2, ptr noundef nonnull %3, ptr noundef %109, ptr noundef nonnull @FontFamilyAndFace.buff) #14
  store i8 32, ptr %68, align 1, !tbaa !9
  store i8 32, ptr %69, align 1, !tbaa !9
  %114 = load i8, ptr %68, align 1, !tbaa !9
  br label %115

115:                                              ; preds = %108, %82
  %116 = phi i8 [ %114, %108 ], [ %76, %82 ]
  store ptr %75, ptr @zz_hold, align 8, !tbaa !10
  %117 = getelementptr inbounds %struct.word_type, ptr %75, i64 0, i32 1
  %118 = load i8, ptr %117, align 8, !tbaa !9
  %119 = add i8 %118, -11
  %120 = icmp ult i8 %119, 2
  %121 = getelementptr inbounds %struct.word_type, ptr %75, i64 0, i32 1, i32 0, i32 1
  %122 = zext i8 %118 to i64
  %123 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %122
  %124 = select i1 %120, ptr %121, ptr %123
  %125 = load i8, ptr %124, align 1, !tbaa !9
  %126 = zext i8 %125 to i32
  store i32 %126, ptr @zz_size, align 4, !tbaa !5
  %127 = zext i8 %125 to i64
  %128 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !10
  store ptr %129, ptr %75, align 8, !tbaa !9
  %130 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %131 = load i32, ptr @zz_size, align 4, !tbaa !5
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %132
  store ptr %130, ptr %133, align 8, !tbaa !10
  br label %181

134:                                              ; preds = %63
  %135 = load i8, ptr %69, align 1, !tbaa !9
  %136 = zext i8 %135 to i64
  %137 = getelementptr inbounds i8, ptr %52, i64 %136
  %138 = load i8, ptr %137, align 1, !tbaa !9
  %139 = zext i8 %138 to i64
  %140 = or disjoint i64 %139, 256
  %141 = getelementptr inbounds i8, ptr %52, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !9
  %143 = icmp eq i8 %142, %135
  br i1 %143, label %144, label %181

144:                                              ; preds = %134
  %145 = load i8, ptr %70, align 1, !tbaa !9
  br label %146

146:                                              ; preds = %144, %177
  %147 = phi ptr [ %141, %144 ], [ %178, %177 ]
  %148 = getelementptr inbounds i8, ptr %147, i64 1
  %149 = load i8, ptr %148, align 1, !tbaa !9
  %150 = icmp eq i8 %149, %145
  br i1 %150, label %151, label %164

151:                                              ; preds = %146, %160
  %152 = phi i8 [ %156, %160 ], [ %145, %146 ]
  %153 = phi ptr [ %155, %160 ], [ %148, %146 ]
  %154 = phi ptr [ %161, %160 ], [ %70, %146 ]
  %155 = getelementptr inbounds i8, ptr %153, i64 1
  %156 = load i8, ptr %155, align 1, !tbaa !9
  %157 = icmp eq i8 %156, 0
  %158 = icmp eq i8 %152, 0
  %159 = or i1 %158, %157
  br i1 %159, label %164, label %160

160:                                              ; preds = %151
  %161 = getelementptr inbounds i8, ptr %154, i64 1
  %162 = load i8, ptr %161, align 1, !tbaa !9
  %163 = icmp eq i8 %156, %162
  br i1 %163, label %151, label %164

164:                                              ; preds = %160, %151, %146
  %165 = phi ptr [ %70, %146 ], [ %154, %151 ], [ %161, %160 ]
  %166 = phi ptr [ %148, %146 ], [ %153, %151 ], [ %155, %160 ]
  %167 = phi i8 [ %149, %146 ], [ %152, %151 ], [ %156, %160 ]
  %168 = getelementptr inbounds i8, ptr %166, i64 1
  %169 = load i8, ptr %168, align 1, !tbaa !9
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %164
  store i8 %167, ptr %68, align 1, !tbaa !9
  br label %181

172:                                              ; preds = %164, %172
  %173 = phi ptr [ %174, %172 ], [ %166, %164 ]
  %174 = getelementptr inbounds i8, ptr %173, i64 1
  %175 = load i8, ptr %174, align 1, !tbaa !9
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %172

177:                                              ; preds = %172
  %178 = getelementptr inbounds i8, ptr %173, i64 2
  %179 = load i8, ptr %178, align 1, !tbaa !9
  %180 = icmp eq i8 %179, %135
  br i1 %180, label %146, label %181

181:                                              ; preds = %177, %134, %63, %115, %171
  %182 = phi i8 [ %116, %115 ], [ %167, %171 ], [ %64, %63 ], [ %64, %134 ], [ %64, %177 ]
  %183 = phi ptr [ %70, %115 ], [ %165, %171 ], [ %70, %63 ], [ %70, %134 ], [ %70, %177 ]
  %184 = zext i8 %182 to i64
  %185 = getelementptr inbounds %struct.metrics, ptr %50, i64 %184
  %186 = load i16, ptr %185, align 2, !tbaa !50
  %187 = sext i16 %186 to i32
  %188 = tail call i32 @llvm.smax.i32(i32 %65, i32 %187)
  %189 = getelementptr inbounds %struct.metrics, ptr %50, i64 %184, i32 1
  %190 = load i16, ptr %189, align 2, !tbaa !49
  %191 = sext i16 %190 to i32
  %192 = tail call i32 @llvm.smin.i32(i32 %66, i32 %191)
  %193 = getelementptr inbounds i8, ptr %68, i64 1
  %194 = getelementptr inbounds %struct.metrics, ptr %50, i64 %184, i32 3
  %195 = load i16, ptr %194, align 2, !tbaa !28
  %196 = sext i16 %195 to i32
  %197 = add nsw i32 %67, %196
  %198 = load i8, ptr %183, align 1, !tbaa !9
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %200, label %63

200:                                              ; preds = %181
  store i8 0, ptr %193, align 1, !tbaa !9
  %201 = getelementptr inbounds %struct.metrics, ptr %50, i64 %184, i32 4
  %202 = load i16, ptr %201, align 2, !tbaa !51
  %203 = sext i16 %202 to i32
  %204 = add nsw i32 %197, %203
  %205 = getelementptr inbounds i8, ptr %2, i64 1
  %206 = load i8, ptr %205, align 1, !tbaa !9
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %261, label %208

208:                                              ; preds = %200
  %209 = load ptr, ptr @finfo, align 8, !tbaa !10
  %210 = load i32, ptr %15, align 8
  %211 = and i32 %210, 4095
  %212 = zext nneg i32 %211 to i64
  %213 = getelementptr inbounds %struct.font_rec, ptr %209, i64 %212, i32 9
  %214 = load ptr, ptr %213, align 8, !tbaa !42
  %215 = getelementptr inbounds %struct.font_rec, ptr %209, i64 %212, i32 10
  %216 = getelementptr inbounds %struct.font_rec, ptr %209, i64 %212, i32 12
  %217 = getelementptr inbounds %struct.font_rec, ptr %209, i64 %212, i32 11
  br label %218

218:                                              ; preds = %208, %254
  %219 = phi i8 [ %206, %208 ], [ %259, %254 ]
  %220 = phi ptr [ %205, %208 ], [ %258, %254 ]
  %221 = phi ptr [ %2, %208 ], [ %257, %254 ]
  %222 = phi i32 [ %204, %208 ], [ %256, %254 ]
  %223 = load i8, ptr %221, align 1, !tbaa !9
  %224 = zext i8 %223 to i64
  %225 = getelementptr inbounds i8, ptr %61, i64 %224
  %226 = load i8, ptr %225, align 1, !tbaa !9
  %227 = zext i8 %219 to i64
  %228 = getelementptr inbounds i8, ptr %61, i64 %227
  %229 = load i8, ptr %228, align 1, !tbaa !9
  %230 = zext i8 %226 to i64
  %231 = getelementptr inbounds i16, ptr %214, i64 %230
  %232 = load i16, ptr %231, align 2, !tbaa !21
  %233 = icmp eq i16 %232, 0
  br i1 %233, label %254, label %234

234:                                              ; preds = %218
  %235 = load ptr, ptr %215, align 8, !tbaa !43
  %236 = zext i16 %232 to i64
  br label %237

237:                                              ; preds = %237, %234
  %238 = phi i64 [ %242, %237 ], [ %236, %234 ]
  %239 = getelementptr inbounds i8, ptr %235, i64 %238
  %240 = load i8, ptr %239, align 1, !tbaa !9
  %241 = icmp ugt i8 %240, %229
  %242 = add nuw i64 %238, 1
  br i1 %241, label %237, label %243

243:                                              ; preds = %237
  %244 = icmp eq i8 %240, %229
  br i1 %244, label %245, label %254

245:                                              ; preds = %243
  %246 = load ptr, ptr %216, align 8, !tbaa !45
  %247 = load ptr, ptr %217, align 8, !tbaa !44
  %248 = getelementptr inbounds i8, ptr %247, i64 %238
  %249 = load i8, ptr %248, align 1, !tbaa !9
  %250 = zext i8 %249 to i64
  %251 = getelementptr inbounds i16, ptr %246, i64 %250
  %252 = load i16, ptr %251, align 2, !tbaa !21
  %253 = sext i16 %252 to i32
  br label %254

254:                                              ; preds = %245, %243, %218
  %255 = phi i32 [ 0, %218 ], [ %253, %245 ], [ 0, %243 ]
  %256 = add nsw i32 %255, %222
  %257 = getelementptr inbounds i8, ptr %221, i64 1
  %258 = getelementptr inbounds i8, ptr %220, i64 1
  %259 = load i8, ptr %258, align 1, !tbaa !9
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %261, label %218

261:                                              ; preds = %254, %200
  %262 = phi i32 [ %204, %200 ], [ %256, %254 ]
  %263 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  store i32 0, ptr %263, align 8, !tbaa !9
  %264 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  store i32 %262, ptr %264, align 8, !tbaa !9
  %265 = getelementptr inbounds i8, ptr %0, i64 52
  store i32 %188, ptr %265, align 4, !tbaa !9
  %266 = sub nsw i32 0, %192
  %267 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1, i64 4
  store i32 %266, ptr %267, align 4, !tbaa !9
  br label %270

268:                                              ; preds = %10
  %269 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %269, i8 0, i64 16, i1 false)
  br label %270

270:                                              ; preds = %268, %261
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %2) #14
  ret void
}

declare ptr @StringQuotedWord(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef nonnull ptr @FontFamilyAndFace(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @font_count, align 4, !tbaa !5
  %3 = icmp ult i32 %2, %0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %6 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %5, ptr noundef nonnull @.str.50) #14
  br label %7

7:                                                ; preds = %4, %1
  %8 = load ptr, ptr @finfo, align 8, !tbaa !10
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds %struct.font_rec, ptr %8, i64 %9, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds [2 x %struct.LIST], ptr %11, i64 0, i64 1, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  br label %14

14:                                               ; preds = %14, %7
  %15 = phi ptr [ %13, %7 ], [ %16, %14 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %14, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds [2 x %struct.LIST], ptr %16, i64 0, i64 1, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  br label %23

23:                                               ; preds = %23, %20
  %24 = phi ptr [ %22, %20 ], [ %25, %23 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  %26 = getelementptr inbounds %struct.word_type, ptr %25, i64 0, i32 1
  %27 = load i8, ptr %26, align 8, !tbaa !9
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %23, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.word_type, ptr %25, i64 0, i32 4
  %31 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %30) #16
  %32 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 4
  %33 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %32) #16
  %34 = add i64 %31, -80
  %35 = add i64 %34, %33
  %36 = icmp ult i64 %35, -81
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %39 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 63, ptr noundef nonnull @.str.52, i32 noundef 1, ptr noundef %38, ptr noundef nonnull %30, ptr noundef nonnull %32) #14
  br label %40

40:                                               ; preds = %37, %29
  %41 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @FontFamilyAndFace.buff, ptr noundef nonnull dereferenceable(1) %30) #14
  %42 = tail call i64 @strlen(ptr nonnull dereferenceable(1) @FontFamilyAndFace.buff)
  %43 = getelementptr inbounds i8, ptr @FontFamilyAndFace.buff, i64 %42
  store i16 32, ptr %43, align 1
  %44 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @FontFamilyAndFace.buff, ptr noundef nonnull dereferenceable(1) %32) #14
  ret ptr @FontFamilyAndFace.buff
}

; Function Attrs: nounwind uwtable
define dso_local i32 @FontSize(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @font_count, align 4, !tbaa !5
  %4 = icmp ult i32 %3, %0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %7 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %6, ptr noundef nonnull @.str.46) #14
  br label %13

8:                                                ; preds = %2
  %9 = icmp eq i32 %0, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.word_type, ptr %1, i64 0, i32 1
  %12 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 61, ptr noundef nonnull @.str.47, i32 noundef 1, ptr noundef nonnull %11) #14
  br label %13

13:                                               ; preds = %5, %10, %8
  %14 = load ptr, ptr @finfo, align 8, !tbaa !10
  %15 = zext i32 %0 to i64
  %16 = getelementptr inbounds %struct.font_rec, ptr %14, i64 %15, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !18
  %18 = getelementptr inbounds %struct.word_type, ptr %17, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !9
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @FontHalfXHeight(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @font_count, align 4, !tbaa !5
  %3 = icmp ult i32 %2, %0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %6 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %5, ptr noundef nonnull @.str.48) #14
  br label %7

7:                                                ; preds = %4, %1
  %8 = load ptr, ptr @finfo, align 8, !tbaa !10
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds %struct.font_rec, ptr %8, i64 %9, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds i8, ptr %11, i64 52
  %13 = load i32, ptr %12, align 4, !tbaa !9
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local i32 @FontMapping(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @font_count, align 4, !tbaa !5
  %4 = icmp ult i32 %3, %0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %7 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %6, ptr noundef nonnull @.str.49) #14
  br label %12

8:                                                ; preds = %2
  %9 = icmp eq i32 %0, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 62, ptr noundef nonnull @.str.47, i32 noundef 1, ptr noundef %1) #14
  br label %12

12:                                               ; preds = %5, %10, %8
  %13 = load ptr, ptr @finfo, align 8, !tbaa !10
  %14 = zext i32 %0 to i64
  %15 = getelementptr inbounds %struct.font_rec, ptr %13, i64 %14, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !18
  %17 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 3, i32 1, i64 4
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, 127
  %20 = zext nneg i8 %19 to i32
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @FontName(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @font_count, align 4, !tbaa !5
  %3 = icmp ult i32 %2, %0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %6 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %5, ptr noundef nonnull @.str.50) #14
  br label %7

7:                                                ; preds = %4, %1
  %8 = load ptr, ptr @finfo, align 8, !tbaa !10
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds %struct.font_rec, ptr %8, i64 %9, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds %struct.word_type, ptr %11, i64 0, i32 4
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @FontFamily(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @font_count, align 4, !tbaa !5
  %3 = icmp ult i32 %2, %0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %6 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %5, ptr noundef nonnull @.str.51) #14
  br label %7

7:                                                ; preds = %4, %1
  %8 = load ptr, ptr @finfo, align 8, !tbaa !10
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds %struct.font_rec, ptr %8, i64 %9, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds [2 x %struct.LIST], ptr %11, i64 0, i64 1, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  br label %14

14:                                               ; preds = %14, %7
  %15 = phi ptr [ %13, %7 ], [ %16, %14 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %14, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds [2 x %struct.LIST], ptr %16, i64 0, i64 1, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  br label %23

23:                                               ; preds = %23, %20
  %24 = phi ptr [ %22, %20 ], [ %25, %23 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  %26 = getelementptr inbounds %struct.word_type, ptr %25, i64 0, i32 1
  %27 = load i8, ptr %26, align 8, !tbaa !9
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %23, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.word_type, ptr %25, i64 0, i32 4
  ret ptr %30
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @FontFace(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @font_count, align 4, !tbaa !5
  %3 = icmp ult i32 %2, %0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %6 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %5, ptr noundef nonnull @.str.51) #14
  br label %7

7:                                                ; preds = %4, %1
  %8 = load ptr, ptr @finfo, align 8, !tbaa !10
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds %struct.font_rec, ptr %8, i64 %9, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds [2 x %struct.LIST], ptr %11, i64 0, i64 1, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  br label %14

14:                                               ; preds = %14, %7
  %15 = phi ptr [ %13, %7 ], [ %16, %14 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %14, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds [2 x %struct.LIST], ptr %16, i64 0, i64 1, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  br label %23

23:                                               ; preds = %23, %20
  %24 = phi ptr [ %22, %20 ], [ %25, %23 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  %26 = getelementptr inbounds %struct.word_type, ptr %25, i64 0, i32 1
  %27 = load i8, ptr %26, align 8, !tbaa !9
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %23, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.word_type, ptr %16, i64 0, i32 4
  ret ptr %30
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @FontPrintAll(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @font_root, align 8, !tbaa !10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.word_type, ptr %2, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !9
  %7 = icmp eq i8 %6, 17
  br i1 %7, label %12, label %8

8:                                                ; preds = %4, %1
  %9 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %10 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %9, ptr noundef nonnull @.str.53) #14
  %11 = load ptr, ptr @font_root, align 8, !tbaa !10
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi ptr [ %11, %8 ], [ %2, %4 ]
  %14 = getelementptr inbounds %struct.LIST, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = icmp eq ptr %15, %13
  br i1 %16, label %111, label %22

17:                                               ; preds = %107, %33
  %18 = getelementptr inbounds %struct.LIST, ptr %23, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !9
  %20 = load ptr, ptr @font_root, align 8, !tbaa !10
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %111, label %22

22:                                               ; preds = %12, %17
  %23 = phi ptr [ %19, %17 ], [ %15, %12 ]
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi ptr [ %27, %24 ], [ %23, %22 ]
  %26 = getelementptr inbounds [2 x %struct.LIST], ptr %25, i64 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !9
  %28 = getelementptr inbounds %struct.word_type, ptr %27, i64 0, i32 1
  %29 = load i8, ptr %28, align 8, !tbaa !9
  switch i8 %29, label %30 [
    i8 0, label %24
    i8 11, label %33
    i8 12, label %33
  ]

30:                                               ; preds = %24
  %31 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %32 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %31, ptr noundef nonnull @.str.54) #14
  br label %33

33:                                               ; preds = %24, %24, %30
  %34 = getelementptr inbounds %struct.LIST, ptr %27, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !9
  %36 = icmp eq ptr %35, %27
  br i1 %36, label %17, label %37

37:                                               ; preds = %33, %107
  %38 = phi ptr [ %109, %107 ], [ %35, %33 ]
  br label %39

39:                                               ; preds = %37, %39
  %40 = phi ptr [ %42, %39 ], [ %38, %37 ]
  %41 = getelementptr inbounds [2 x %struct.LIST], ptr %40, i64 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !9
  %43 = getelementptr inbounds %struct.word_type, ptr %42, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !9
  switch i8 %44, label %45 [
    i8 0, label %39
    i8 11, label %48
    i8 12, label %48
  ]

45:                                               ; preds = %39
  %46 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %47 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %46, ptr noundef nonnull @.str.55) #14
  br label %48

48:                                               ; preds = %39, %39, %45
  %49 = getelementptr inbounds %struct.LIST, ptr %42, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !9
  %51 = icmp eq ptr %50, %42
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.LIST, ptr %50, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !9
  %55 = icmp eq ptr %54, %42
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.LIST, ptr %54, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !9
  %59 = icmp eq ptr %58, %42
  br i1 %59, label %60, label %64

60:                                               ; preds = %56, %52, %48
  %61 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %62 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %61, ptr noundef nonnull @.str.56) #14
  %63 = load ptr, ptr %49, align 8, !tbaa !9
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi ptr [ %63, %60 ], [ %50, %56 ]
  br label %66

66:                                               ; preds = %66, %64
  %67 = phi ptr [ %65, %64 ], [ %69, %66 ]
  %68 = getelementptr inbounds [2 x %struct.LIST], ptr %67, i64 0, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !9
  %70 = getelementptr inbounds %struct.word_type, ptr %69, i64 0, i32 1
  %71 = load i8, ptr %70, align 8, !tbaa !9
  switch i8 %71, label %72 [
    i8 0, label %66
    i8 11, label %76
    i8 12, label %76
  ]

72:                                               ; preds = %66
  %73 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %74 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %73, ptr noundef nonnull @.str.57) #14
  %75 = load ptr, ptr %49, align 8, !tbaa !9
  br label %76

76:                                               ; preds = %66, %66, %72
  %77 = phi ptr [ %75, %72 ], [ %65, %66 ], [ %65, %66 ]
  %78 = getelementptr inbounds %struct.LIST, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !9
  %80 = getelementptr inbounds %struct.LIST, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !9
  br label %82

82:                                               ; preds = %82, %76
  %83 = phi ptr [ %81, %76 ], [ %85, %82 ]
  %84 = getelementptr inbounds [2 x %struct.LIST], ptr %83, i64 0, i64 1
  %85 = load ptr, ptr %84, align 8, !tbaa !9
  %86 = getelementptr inbounds %struct.word_type, ptr %85, i64 0, i32 1
  %87 = load i8, ptr %86, align 8, !tbaa !9
  switch i8 %87, label %88 [
    i8 0, label %82
    i8 11, label %91
    i8 12, label %91
  ]

88:                                               ; preds = %82
  %89 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %90 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %89, ptr noundef nonnull @.str.58) #14
  br label %91

91:                                               ; preds = %82, %82, %88
  %92 = getelementptr inbounds %struct.word_type, ptr %42, i64 0, i32 3, i32 1, i64 4
  %93 = load i8, ptr %92, align 4
  %94 = icmp sgt i8 %93, -1
  br i1 %94, label %103, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.word_type, ptr %69, i64 0, i32 4
  %97 = getelementptr inbounds %struct.word_type, ptr %85, i64 0, i32 4
  %98 = and i8 %93, 127
  %99 = zext nneg i8 %98 to i32
  %100 = tail call ptr @MapEncodingName(i32 noundef %99) #14
  %101 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.59, ptr noundef nonnull %96, ptr noundef nonnull %97, ptr noundef %100, ptr noundef nonnull %96)
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.60, ptr noundef nonnull %97, ptr noundef nonnull %96, ptr noundef nonnull %97)
  br label %107

103:                                              ; preds = %91
  %104 = getelementptr inbounds %struct.word_type, ptr %85, i64 0, i32 4
  %105 = getelementptr inbounds %struct.word_type, ptr %69, i64 0, i32 4
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.61, ptr noundef nonnull %104, ptr noundef nonnull %105)
  br label %107

107:                                              ; preds = %95, %103
  %108 = getelementptr inbounds %struct.LIST, ptr %38, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !9
  %110 = icmp eq ptr %109, %27
  br i1 %110, label %17, label %37

111:                                              ; preds = %17, %12
  %112 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

declare ptr @MapEncodingName(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @FontPrintPageSetup(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @font_root, align 8, !tbaa !10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.word_type, ptr %2, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !9
  %7 = icmp eq i8 %6, 17
  br i1 %7, label %11, label %8

8:                                                ; preds = %4, %1
  %9 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %10 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %9, ptr noundef nonnull @.str.53) #14
  br label %11

11:                                               ; preds = %8, %4
  %12 = load ptr, ptr @font_used, align 8, !tbaa !10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.word_type, ptr %12, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !9
  %17 = icmp eq i8 %16, 17
  br i1 %17, label %22, label %18

18:                                               ; preds = %14, %11
  %19 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %20 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %19, ptr noundef nonnull @.str.63) #14
  %21 = load ptr, ptr @font_used, align 8, !tbaa !10
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi ptr [ %21, %18 ], [ %12, %14 ]
  %24 = getelementptr inbounds %struct.LIST, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  %26 = icmp eq ptr %25, %23
  br i1 %26, label %84, label %27

27:                                               ; preds = %22, %73
  %28 = phi ptr [ %81, %73 ], [ %25, %22 ]
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi ptr [ %32, %29 ], [ %28, %27 ]
  %31 = getelementptr inbounds [2 x %struct.LIST], ptr %30, i64 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !9
  %33 = getelementptr inbounds %struct.word_type, ptr %32, i64 0, i32 1
  %34 = load i8, ptr %33, align 8, !tbaa !9
  switch i8 %34, label %35 [
    i8 0, label %29
    i8 11, label %38
    i8 12, label %38
  ]

35:                                               ; preds = %29
  %36 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %37 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %36, ptr noundef nonnull @.str.64) #14
  br label %38

38:                                               ; preds = %29, %29, %35
  %39 = getelementptr inbounds %struct.LIST, ptr %32, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !9
  %41 = icmp eq ptr %40, %32
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %44 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %43, ptr noundef nonnull @.str.56) #14
  %45 = load ptr, ptr %39, align 8, !tbaa !9
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi ptr [ %45, %42 ], [ %40, %38 ]
  %48 = getelementptr inbounds %struct.LIST, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !9
  %50 = getelementptr inbounds %struct.LIST, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !9
  br label %52

52:                                               ; preds = %52, %46
  %53 = phi ptr [ %51, %46 ], [ %55, %52 ]
  %54 = getelementptr inbounds [2 x %struct.LIST], ptr %53, i64 0, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !9
  %56 = getelementptr inbounds %struct.word_type, ptr %55, i64 0, i32 1
  %57 = load i8, ptr %56, align 8, !tbaa !9
  switch i8 %57, label %58 [
    i8 0, label %52
    i8 11, label %62
    i8 12, label %62
  ]

58:                                               ; preds = %52
  %59 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %60 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %59, ptr noundef nonnull @.str.65) #14
  %61 = load ptr, ptr %39, align 8, !tbaa !9
  br label %62

62:                                               ; preds = %52, %52, %58
  %63 = phi ptr [ %61, %58 ], [ %47, %52 ], [ %47, %52 ]
  br label %64

64:                                               ; preds = %62, %64
  %65 = phi ptr [ %67, %64 ], [ %63, %62 ]
  %66 = getelementptr inbounds [2 x %struct.LIST], ptr %65, i64 0, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !9
  %68 = getelementptr inbounds %struct.word_type, ptr %67, i64 0, i32 1
  %69 = load i8, ptr %68, align 8, !tbaa !9
  switch i8 %69, label %70 [
    i8 0, label %64
    i8 11, label %73
    i8 12, label %73
  ]

70:                                               ; preds = %64
  %71 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %72 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %71, ptr noundef nonnull @.str.66) #14
  br label %73

73:                                               ; preds = %64, %64, %70
  %74 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %75 = getelementptr inbounds %struct.back_end_rec, ptr %74, i64 0, i32 12
  %76 = load ptr, ptr %75, align 8, !tbaa !53
  %77 = load i32, ptr @font_curr_page, align 4, !tbaa !5
  %78 = getelementptr inbounds %struct.word_type, ptr %67, i64 0, i32 4
  %79 = getelementptr inbounds %struct.word_type, ptr %55, i64 0, i32 4
  tail call void %76(ptr noundef %32, i32 noundef %77, ptr noundef nonnull %78, ptr noundef nonnull %79) #14
  %80 = getelementptr inbounds %struct.LIST, ptr %28, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !9
  %82 = load ptr, ptr @font_used, align 8, !tbaa !10
  %83 = icmp eq ptr %81, %82
  br i1 %83, label %84, label %27

84:                                               ; preds = %73, %22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FontPrintPageResources(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @font_root, align 8, !tbaa !10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.word_type, ptr %2, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !9
  %7 = icmp eq i8 %6, 17
  br i1 %7, label %11, label %8

8:                                                ; preds = %4, %1
  %9 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %10 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %9, ptr noundef nonnull @.str.53) #14
  br label %11

11:                                               ; preds = %8, %4
  %12 = load ptr, ptr @font_used, align 8, !tbaa !10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.word_type, ptr %12, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !9
  %17 = icmp eq i8 %16, 17
  br i1 %17, label %22, label %18

18:                                               ; preds = %14, %11
  %19 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %20 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %19, ptr noundef nonnull @.str.63) #14
  %21 = load ptr, ptr @font_used, align 8, !tbaa !10
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi ptr [ %21, %18 ], [ %12, %14 ]
  %24 = getelementptr inbounds %struct.LIST, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  %26 = icmp eq ptr %25, %23
  br i1 %26, label %98, label %27

27:                                               ; preds = %22, %92
  %28 = phi ptr [ %96, %92 ], [ %25, %22 ]
  %29 = phi i32 [ %94, %92 ], [ 1, %22 ]
  br label %30

30:                                               ; preds = %27, %30
  %31 = phi ptr [ %33, %30 ], [ %28, %27 ]
  %32 = getelementptr inbounds [2 x %struct.LIST], ptr %31, i64 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !9
  %34 = getelementptr inbounds %struct.word_type, ptr %33, i64 0, i32 1
  %35 = load i8, ptr %34, align 8, !tbaa !9
  switch i8 %35, label %36 [
    i8 0, label %30
    i8 11, label %39
    i8 12, label %39
  ]

36:                                               ; preds = %30
  %37 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %38 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %37, ptr noundef nonnull @.str.67) #14
  br label %39

39:                                               ; preds = %30, %30, %36
  %40 = getelementptr inbounds %struct.LIST, ptr %33, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !9
  %42 = icmp eq ptr %41, %33
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %45 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %44, ptr noundef nonnull @.str.56) #14
  %46 = load ptr, ptr %40, align 8, !tbaa !9
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi ptr [ %41, %39 ], [ %46, %43 ]
  br label %49

49:                                               ; preds = %47, %49
  %50 = phi ptr [ %52, %49 ], [ %48, %47 ]
  %51 = getelementptr inbounds [2 x %struct.LIST], ptr %50, i64 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !9
  %53 = getelementptr inbounds %struct.word_type, ptr %52, i64 0, i32 1
  %54 = load i8, ptr %53, align 8, !tbaa !9
  switch i8 %54, label %55 [
    i8 0, label %49
    i8 11, label %58
    i8 12, label %58
  ]

55:                                               ; preds = %49
  %56 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %57 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %56, ptr noundef nonnull @.str.68) #14
  br label %58

58:                                               ; preds = %49, %49, %55
  %59 = load ptr, ptr @font_used, align 8, !tbaa !10
  %60 = getelementptr inbounds %struct.word_type, ptr %52, i64 0, i32 4
  br label %61

61:                                               ; preds = %83, %58
  %62 = phi ptr [ %59, %58 ], [ %64, %83 ]
  %63 = getelementptr inbounds %struct.LIST, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !9
  %65 = icmp eq ptr %64, %28
  br i1 %65, label %87, label %66

66:                                               ; preds = %61, %66
  %67 = phi ptr [ %69, %66 ], [ %64, %61 ]
  %68 = getelementptr inbounds [2 x %struct.LIST], ptr %67, i64 0, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !9
  %70 = getelementptr inbounds %struct.word_type, ptr %69, i64 0, i32 1
  %71 = load i8, ptr %70, align 8, !tbaa !9
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %66, label %73

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.LIST, ptr %69, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !9
  br label %76

76:                                               ; preds = %76, %73
  %77 = phi ptr [ %75, %73 ], [ %79, %76 ]
  %78 = getelementptr inbounds [2 x %struct.LIST], ptr %77, i64 0, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !9
  %80 = getelementptr inbounds %struct.word_type, ptr %79, i64 0, i32 1
  %81 = load i8, ptr %80, align 8, !tbaa !9
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %76, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.word_type, ptr %79, i64 0, i32 4
  %85 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull dereferenceable(1) %60) #16
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %92, label %61

87:                                               ; preds = %61
  %88 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %89 = getelementptr inbounds %struct.back_end_rec, ptr %88, i64 0, i32 13
  %90 = load ptr, ptr %89, align 8, !tbaa !54
  tail call void %90(ptr noundef nonnull %60, i32 noundef %29) #14
  %91 = load ptr, ptr @font_used, align 8, !tbaa !10
  br label %92

92:                                               ; preds = %83, %87
  %93 = phi ptr [ %91, %87 ], [ %59, %83 ]
  %94 = phi i32 [ 0, %87 ], [ %29, %83 ]
  %95 = getelementptr inbounds %struct.LIST, ptr %28, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !9
  %97 = icmp eq ptr %96, %93
  br i1 %97, label %98, label %27

98:                                               ; preds = %92, %22
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FontAdvanceCurrentPage() local_unnamed_addr #8 {
  %1 = load ptr, ptr @font_used, align 8, !tbaa !10
  %2 = getelementptr inbounds %struct.LIST, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %48, label %5

5:                                                ; preds = %0, %27
  %6 = phi ptr [ %46, %27 ], [ %3, %0 ]
  store ptr %6, ptr @xx_link, align 8, !tbaa !10
  %7 = getelementptr inbounds [2 x %struct.LIST], ptr %6, i64 0, i64 1, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = icmp eq ptr %8, %6
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  store ptr %8, ptr @zz_res, align 8, !tbaa !10
  %11 = getelementptr inbounds [2 x %struct.LIST], ptr %6, i64 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = getelementptr inbounds [2 x %struct.LIST], ptr %8, i64 0, i64 1
  store ptr %12, ptr %13, align 8, !tbaa !9
  %14 = getelementptr inbounds [2 x %struct.LIST], ptr %12, i64 0, i64 1, i32 1
  store ptr %8, ptr %14, align 8, !tbaa !9
  store ptr %6, ptr %7, align 8, !tbaa !9
  store ptr %6, ptr %11, align 8, !tbaa !9
  br label %15

15:                                               ; preds = %5, %10
  store ptr %6, ptr @zz_hold, align 8, !tbaa !10
  %16 = getelementptr inbounds %struct.LIST, ptr %6, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !9
  %18 = icmp eq ptr %17, %6
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  store ptr %17, ptr @zz_res, align 8, !tbaa !10
  %20 = load ptr, ptr %6, align 8, !tbaa !9
  store ptr %20, ptr %17, align 8, !tbaa !9
  %21 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %22 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %23 = load ptr, ptr %22, align 8, !tbaa !9
  %24 = getelementptr inbounds %struct.LIST, ptr %23, i64 0, i32 1
  store ptr %21, ptr %24, align 8, !tbaa !9
  %25 = getelementptr inbounds %struct.LIST, ptr %22, i64 0, i32 1
  store ptr %22, ptr %25, align 8, !tbaa !9
  store ptr %22, ptr %22, align 8, !tbaa !9
  %26 = load ptr, ptr @xx_link, align 8, !tbaa !10
  br label %27

27:                                               ; preds = %15, %19
  %28 = phi ptr [ %6, %15 ], [ %26, %19 ]
  store ptr %28, ptr @zz_hold, align 8, !tbaa !10
  %29 = getelementptr inbounds %struct.word_type, ptr %28, i64 0, i32 1
  %30 = load i8, ptr %29, align 8, !tbaa !9
  %31 = add i8 %30, -11
  %32 = icmp ult i8 %31, 2
  %33 = getelementptr inbounds %struct.word_type, ptr %28, i64 0, i32 1, i32 0, i32 1
  %34 = zext i8 %30 to i64
  %35 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %34
  %36 = select i1 %32, ptr %33, ptr %35
  %37 = load i8, ptr %36, align 1, !tbaa !9
  %38 = zext i8 %37 to i32
  store i32 %38, ptr @zz_size, align 4, !tbaa !5
  %39 = zext i8 %37 to i64
  %40 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !10
  store ptr %41, ptr %28, align 8, !tbaa !9
  %42 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %43 = load i32, ptr @zz_size, align 4, !tbaa !5
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %44
  store ptr %42, ptr %45, align 8, !tbaa !10
  %46 = load ptr, ptr %2, align 8, !tbaa !9
  %47 = icmp eq ptr %46, %1
  br i1 %47, label %48, label %5

48:                                               ; preds = %27, %0
  %49 = load i32, ptr @font_curr_page, align 4, !tbaa !5
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr @font_curr_page, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FontPageUsed(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 42
  %3 = load i16, ptr %2, align 2, !tbaa !9
  %4 = zext i16 %3 to i32
  %5 = load i32, ptr @font_curr_page, align 4, !tbaa !5
  %6 = icmp sgt i32 %5, %4
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %9 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %8, ptr noundef nonnull @.str.69) #14
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i8, ptr @zz_lengths, align 1, !tbaa !9
  %12 = zext i8 %11 to i32
  store i32 %12, ptr @zz_size, align 4, !tbaa !5
  %13 = zext i8 %11 to i64
  %14 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %19 = tail call ptr @GetMemory(i32 noundef %12, ptr noundef %18) #14
  br label %22

20:                                               ; preds = %10
  store ptr %15, ptr @zz_hold, align 8, !tbaa !10
  %21 = load ptr, ptr %15, align 8, !tbaa !9
  store ptr %21, ptr %14, align 8, !tbaa !10
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %19, %17 ], [ %15, %20 ]
  %24 = getelementptr inbounds %struct.word_type, ptr %23, i64 0, i32 1
  store i8 0, ptr %24, align 8, !tbaa !9
  %25 = getelementptr inbounds [2 x %struct.LIST], ptr %23, i64 0, i64 1, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !9
  %26 = getelementptr inbounds [2 x %struct.LIST], ptr %23, i64 0, i64 1
  store ptr %23, ptr %26, align 8, !tbaa !9
  %27 = getelementptr inbounds %struct.LIST, ptr %23, i64 0, i32 1
  store ptr %23, ptr %27, align 8, !tbaa !9
  store ptr %23, ptr %23, align 8, !tbaa !9
  store ptr %23, ptr @xx_link, align 8, !tbaa !10
  store ptr %23, ptr @zz_res, align 8, !tbaa !10
  %28 = load ptr, ptr @font_used, align 8, !tbaa !10
  store ptr %28, ptr @zz_hold, align 8, !tbaa !10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store ptr %0, ptr @zz_hold, align 8, !tbaa !10
  br label %43

31:                                               ; preds = %22
  %32 = load ptr, ptr %28, align 8, !tbaa !9
  store ptr %32, ptr @zz_tmp, align 8, !tbaa !10
  %33 = load ptr, ptr %23, align 8, !tbaa !9
  store ptr %33, ptr %28, align 8, !tbaa !9
  %34 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %35 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %36 = load ptr, ptr %35, align 8, !tbaa !9
  %37 = getelementptr inbounds %struct.LIST, ptr %36, i64 0, i32 1
  store ptr %34, ptr %37, align 8, !tbaa !9
  %38 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %38, ptr %35, align 8, !tbaa !9
  %39 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %40 = getelementptr inbounds %struct.LIST, ptr %38, i64 0, i32 1
  store ptr %39, ptr %40, align 8, !tbaa !9
  %41 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %41, ptr @zz_res, align 8, !tbaa !10
  store ptr %0, ptr @zz_hold, align 8, !tbaa !10
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %30, %31
  %44 = phi ptr [ %23, %30 ], [ %41, %31 ]
  %45 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !9
  store ptr %46, ptr @zz_tmp, align 8, !tbaa !10
  %47 = getelementptr inbounds [2 x %struct.LIST], ptr %44, i64 0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !9
  store ptr %48, ptr %45, align 8, !tbaa !9
  %49 = getelementptr inbounds [2 x %struct.LIST], ptr %48, i64 0, i64 1, i32 1
  store ptr %0, ptr %49, align 8, !tbaa !9
  store ptr %46, ptr %47, align 8, !tbaa !9
  %50 = getelementptr inbounds [2 x %struct.LIST], ptr %46, i64 0, i64 1, i32 1
  store ptr %44, ptr %50, align 8, !tbaa !9
  br label %51

51:                                               ; preds = %31, %43
  %52 = load i32, ptr @font_curr_page, align 4, !tbaa !5
  %53 = trunc i32 %52 to i16
  store i16 %53, ptr %2, align 2, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @FontNeeded(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @font_root, align 8, !tbaa !10
  %3 = getelementptr inbounds %struct.LIST, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = icmp eq ptr %4, %2
  br i1 %5, label %59, label %14

6:                                                ; preds = %51
  %7 = load ptr, ptr @font_root, align 8, !tbaa !10
  br label %8

8:                                                ; preds = %6, %25
  %9 = phi ptr [ %15, %25 ], [ %7, %6 ]
  %10 = phi i32 [ %17, %25 ], [ 0, %6 ]
  %11 = getelementptr inbounds %struct.LIST, ptr %16, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = icmp eq ptr %12, %9
  br i1 %13, label %59, label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %9, %8 ], [ %2, %1 ]
  %16 = phi ptr [ %12, %8 ], [ %4, %1 ]
  %17 = phi i32 [ %10, %8 ], [ 1, %1 ]
  br label %18

18:                                               ; preds = %14, %18
  %19 = phi ptr [ %21, %18 ], [ %16, %14 ]
  %20 = getelementptr inbounds [2 x %struct.LIST], ptr %19, i64 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !9
  %22 = getelementptr inbounds %struct.word_type, ptr %21, i64 0, i32 1
  %23 = load i8, ptr %22, align 8, !tbaa !9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %18, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.LIST, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !9
  %28 = icmp eq ptr %27, %21
  br i1 %28, label %8, label %29

29:                                               ; preds = %25, %51
  %30 = phi ptr [ %57, %51 ], [ %27, %25 ]
  %31 = phi i32 [ 0, %51 ], [ %17, %25 ]
  br label %32

32:                                               ; preds = %29, %32
  %33 = phi ptr [ %35, %32 ], [ %30, %29 ]
  %34 = getelementptr inbounds [2 x %struct.LIST], ptr %33, i64 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !9
  %36 = getelementptr inbounds %struct.word_type, ptr %35, i64 0, i32 1
  %37 = load i8, ptr %36, align 8, !tbaa !9
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %32, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.LIST, ptr %35, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !9
  br label %42

42:                                               ; preds = %42, %39
  %43 = phi ptr [ %41, %39 ], [ %45, %42 ]
  %44 = getelementptr inbounds [2 x %struct.LIST], ptr %43, i64 0, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !9
  %46 = getelementptr inbounds %struct.word_type, ptr %45, i64 0, i32 1
  %47 = load i8, ptr %46, align 8, !tbaa !9
  switch i8 %47, label %48 [
    i8 0, label %42
    i8 11, label %51
    i8 12, label %51
  ]

48:                                               ; preds = %42
  %49 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %50 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %49, ptr noundef nonnull @.str.68) #14
  br label %51

51:                                               ; preds = %42, %42, %48
  %52 = icmp eq i32 %31, 0
  %53 = select i1 %52, ptr @.str.72, ptr @.str.71
  %54 = getelementptr inbounds %struct.word_type, ptr %45, i64 0, i32 4
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.70, ptr noundef nonnull %53, ptr noundef nonnull %54)
  %56 = getelementptr inbounds %struct.LIST, ptr %30, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !9
  %58 = icmp eq ptr %57, %21
  br i1 %58, label %6, label %29

59:                                               ; preds = %8, %1
  %60 = phi i32 [ 1, %1 ], [ %10, %8 ]
  ret i32 %60
}

declare ptr @InsertSym(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

declare i32 @DbRetrieve(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @SwitchScope(ptr noundef) local_unnamed_addr #1

declare ptr @ReadFromFile(i16 noundef zeroext, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @UnSwitchScope(ptr noundef) local_unnamed_addr #1

declare ptr @ReplaceWithTidy(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @SymName(ptr noundef) local_unnamed_addr #1

declare ptr @EchoFilePos(ptr noundef) local_unnamed_addr #1

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #1

declare i32 @MapLoad(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @MakeWordTwo(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @StringInt(i32 noundef) local_unnamed_addr #1

declare zeroext i16 @DefineFile(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @OpenFile(i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @FileName(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @ReadCharMetrics(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, i16 noundef zeroext %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef %7, ptr nocapture noundef %8) unnamed_addr #0 {
  %10 = alloca [512 x i8], align 16
  %11 = alloca [512 x i8], align 16
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #14
  %17 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !9
  %19 = getelementptr inbounds %struct.LIST, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !9
  br label %21

21:                                               ; preds = %21, %9
  %22 = phi ptr [ %20, %9 ], [ %24, %21 ]
  %23 = getelementptr inbounds [2 x %struct.LIST], ptr %22, i64 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !9
  %25 = getelementptr inbounds %struct.word_type, ptr %24, i64 0, i32 1
  %26 = load i8, ptr %25, align 8, !tbaa !9
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %21, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.word_type, ptr %24, i64 0, i32 1
  %30 = call ptr @fgets(ptr noundef nonnull %10, i32 noundef 512, ptr noundef %8)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %267, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1, i64 4
  %34 = icmp ne i32 %1, 0
  %35 = insertelement <2 x i32> poison, i32 %2, i64 0
  %36 = shufflevector <2 x i32> %35, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %37

37:                                               ; preds = %32, %262
  %38 = phi i32 [ undef, %32 ], [ %263, %262 ]
  %39 = phi <4 x i32> [ undef, %32 ], [ %264, %262 ]
  %40 = call i32 @StringBeginsWith(ptr noundef nonnull %10, ptr noundef nonnull @.str.131) #14
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %267

42:                                               ; preds = %37
  %43 = call i32 @StringBeginsWith(ptr noundef nonnull %10, ptr noundef nonnull @.str.132) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %267

45:                                               ; preds = %42
  %46 = load i32, ptr %7, align 4, !tbaa !5
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %7, align 4, !tbaa !5
  br label %48

48:                                               ; preds = %48, %45
  %49 = phi i64 [ %53, %48 ], [ 0, %45 ]
  %50 = getelementptr inbounds [512 x i8], ptr %10, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !9
  %52 = icmp eq i8 %51, 32
  %53 = add nuw i64 %49, 1
  br i1 %52, label %48, label %54

54:                                               ; preds = %48
  %55 = and i64 %49, 4294967295
  %56 = getelementptr inbounds [512 x i8], ptr %10, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !9
  %58 = icmp eq i8 %57, 10
  br i1 %58, label %262, label %59

59:                                               ; preds = %54, %192
  %60 = phi ptr [ %196, %192 ], [ %56, %54 ]
  %61 = phi i32 [ %176, %192 ], [ 0, %54 ]
  %62 = phi i32 [ %175, %192 ], [ 0, %54 ]
  %63 = phi i32 [ %174, %192 ], [ %38, %54 ]
  %64 = phi i64 [ %193, %192 ], [ %49, %54 ]
  %65 = phi i8 [ %172, %192 ], [ 0, %54 ]
  %66 = phi <4 x i32> [ %177, %192 ], [ %39, %54 ]
  %67 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %60, ptr noundef nonnull @.str.92, ptr noundef nonnull %11) #14
  %68 = load i16, ptr %11, align 16
  %69 = icmp eq i16 %68, 78
  br i1 %69, label %70, label %76

70:                                               ; preds = %59
  %71 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %60, ptr noundef nonnull @.str.134, ptr noundef nonnull %11) #14
  %72 = load i8, ptr %33, align 4
  %73 = and i8 %72, 127
  %74 = zext nneg i8 %73 to i32
  %75 = call zeroext i8 @MapCharEncoding(ptr noundef nonnull %11, i32 noundef %74) #14
  br label %171

76:                                               ; preds = %59
  %77 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %11, ptr noundef nonnull dereferenceable(3) @.str.135, i64 3)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %60, ptr noundef nonnull @.str.136, ptr noundef nonnull %12) #14
  %81 = load float, ptr %12, align 4, !tbaa !26
  %82 = fptosi float %81 to i32
  br label %171

83:                                               ; preds = %76
  switch i16 %68, label %171 [
    i16 66, label %84
    i16 76, label %95
  ]

84:                                               ; preds = %83
  %85 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %60, ptr noundef nonnull @.str.138, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16) #14
  %86 = load float, ptr %13, align 4, !tbaa !26
  %87 = load float, ptr %14, align 4, !tbaa !26
  %88 = load float, ptr %15, align 4, !tbaa !26
  %89 = load float, ptr %16, align 4, !tbaa !26
  %90 = insertelement <4 x float> poison, float %89, i64 0
  %91 = insertelement <4 x float> %90, float %88, i64 1
  %92 = insertelement <4 x float> %91, float %87, i64 2
  %93 = insertelement <4 x float> %92, float %86, i64 3
  %94 = fptosi <4 x float> %93 to <4 x i32>
  br label %171

95:                                               ; preds = %83
  %96 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %97 = getelementptr inbounds %struct.back_end_rec, ptr %96, i64 0, i32 8
  %98 = load i32, ptr %97, align 8, !tbaa !24
  %99 = icmp ne i32 %98, 0
  %100 = icmp ne i8 %65, 0
  %101 = select i1 %99, i1 %100, i1 false
  br i1 %101, label %102, label %171

102:                                              ; preds = %95
  %103 = zext i8 %65 to i64
  %104 = getelementptr inbounds i8, ptr %3, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !9
  %106 = icmp eq i8 %105, 1
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32, ptr %4, align 4, !tbaa !5
  %109 = trunc i32 %108 to i8
  store i8 %109, ptr %104, align 1, !tbaa !9
  br label %110

110:                                              ; preds = %107, %102
  %111 = load i32, ptr %4, align 4, !tbaa !5
  %112 = add nsw i32 %111, 1
  store i32 %112, ptr %4, align 4, !tbaa !5
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, ptr %3, i64 %113
  store i8 %65, ptr %114, align 1, !tbaa !9
  %115 = shl i64 %64, 32
  %116 = ashr exact i64 %115, 32
  br label %117

117:                                              ; preds = %117, %110
  %118 = phi i64 [ %119, %117 ], [ %116, %110 ]
  %119 = add i64 %118, 1
  %120 = getelementptr inbounds [512 x i8], ptr %10, i64 0, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !9
  %122 = icmp eq i8 %121, 32
  br i1 %122, label %117, label %123

123:                                              ; preds = %160, %117
  %124 = phi i64 [ %119, %117 ], [ %161, %160 ]
  %125 = shl i64 %124, 32
  %126 = ashr exact i64 %125, 32
  %127 = getelementptr inbounds [512 x i8], ptr %10, i64 0, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !9
  switch i8 %128, label %129 [
    i8 59, label %166
    i8 10, label %166
  ]

129:                                              ; preds = %123
  %130 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %127, ptr noundef nonnull @.str.92, ptr noundef nonnull %11) #14
  %131 = load i8, ptr %33, align 4
  %132 = and i8 %131, 127
  %133 = zext nneg i8 %132 to i32
  %134 = call zeroext i8 @MapCharEncoding(ptr noundef nonnull %11, i32 noundef %133) #14
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %129
  %137 = load i32, ptr %4, align 4, !tbaa !5
  %138 = add nsw i32 %137, 1
  store i32 %138, ptr %4, align 4, !tbaa !5
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i8, ptr %3, i64 %139
  store i8 %134, ptr %140, align 1, !tbaa !9
  br label %145

141:                                              ; preds = %129
  %142 = call ptr @FileName(i16 noundef zeroext %5) #14
  %143 = load i32, ptr %7, align 4, !tbaa !5
  %144 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 1, ptr noundef nonnull @.str.140, i32 noundef 2, ptr noundef nonnull %29, ptr noundef nonnull %11, ptr noundef %142, i32 noundef %143) #14
  store i8 1, ptr %104, align 1, !tbaa !9
  br label %145

145:                                              ; preds = %141, %136
  %146 = load i32, ptr %4, align 4, !tbaa !5
  %147 = icmp sgt i32 %146, 507
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = call ptr @FileName(i16 noundef zeroext %5) #14
  %150 = load i32, ptr %7, align 4, !tbaa !5
  %151 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 2, ptr noundef nonnull @.str.141, i32 noundef 1, ptr noundef nonnull %29, ptr noundef %149, i32 noundef %150) #14
  br label %152

152:                                              ; preds = %148, %145
  br label %153

153:                                              ; preds = %152, %158
  %154 = phi i64 [ %159, %158 ], [ %126, %152 ]
  %155 = getelementptr inbounds [512 x i8], ptr %10, i64 0, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !9
  switch i8 %156, label %158 [
    i8 32, label %157
    i8 59, label %157
  ]

157:                                              ; preds = %153, %153
  br label %160

158:                                              ; preds = %153
  %159 = add i64 %154, 1
  br label %153

160:                                              ; preds = %157, %160
  %161 = phi i64 [ %165, %160 ], [ %154, %157 ]
  %162 = getelementptr inbounds [512 x i8], ptr %10, i64 0, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !9
  %164 = icmp eq i8 %163, 32
  %165 = add i64 %161, 1
  br i1 %164, label %160, label %123

166:                                              ; preds = %123, %123
  %167 = load i32, ptr %4, align 4, !tbaa !5
  %168 = add nsw i32 %167, 1
  store i32 %168, ptr %4, align 4, !tbaa !5
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i8, ptr %3, i64 %169
  store i8 0, ptr %170, align 1, !tbaa !9
  br label %171

171:                                              ; preds = %83, %79, %95, %166, %84, %70
  %172 = phi i8 [ %75, %70 ], [ %65, %79 ], [ %65, %84 ], [ %65, %166 ], [ %65, %95 ], [ %65, %83 ]
  %173 = phi i64 [ %64, %70 ], [ %64, %79 ], [ %64, %84 ], [ %124, %166 ], [ %64, %95 ], [ %64, %83 ]
  %174 = phi i32 [ %63, %70 ], [ %82, %79 ], [ %63, %84 ], [ %63, %166 ], [ %63, %95 ], [ %63, %83 ]
  %175 = phi i32 [ %62, %70 ], [ 1, %79 ], [ %62, %84 ], [ %62, %166 ], [ %62, %95 ], [ %62, %83 ]
  %176 = phi i32 [ %61, %70 ], [ %61, %79 ], [ 1, %84 ], [ %61, %166 ], [ %61, %95 ], [ %61, %83 ]
  %177 = phi <4 x i32> [ %66, %70 ], [ %66, %79 ], [ %94, %84 ], [ %66, %166 ], [ %66, %95 ], [ %66, %83 ]
  %178 = shl i64 %173, 32
  %179 = ashr exact i64 %178, 32
  br label %180

180:                                              ; preds = %184, %171
  %181 = phi i64 [ %185, %184 ], [ %179, %171 ]
  %182 = getelementptr inbounds [512 x i8], ptr %10, i64 0, i64 %181
  %183 = load i8, ptr %182, align 1, !tbaa !9
  switch i8 %183, label %184 [
    i8 59, label %186
    i8 10, label %192
  ]

184:                                              ; preds = %180
  %185 = add i64 %181, 1
  br label %180

186:                                              ; preds = %180, %186
  %187 = phi i64 [ %188, %186 ], [ %181, %180 ]
  %188 = add i64 %187, 1
  %189 = getelementptr inbounds [512 x i8], ptr %10, i64 0, i64 %188
  %190 = load i8, ptr %189, align 1, !tbaa !9
  %191 = icmp eq i8 %190, 32
  br i1 %191, label %186, label %192

192:                                              ; preds = %180, %186
  %193 = phi i64 [ %188, %186 ], [ %181, %180 ]
  %194 = shl i64 %193, 32
  %195 = ashr exact i64 %194, 32
  %196 = getelementptr inbounds [512 x i8], ptr %10, i64 0, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !9
  %198 = icmp eq i8 %197, 10
  br i1 %198, label %199, label %59

199:                                              ; preds = %192
  %200 = icmp eq i8 %172, 0
  br i1 %200, label %262, label %201

201:                                              ; preds = %199
  %202 = icmp eq i32 %175, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %201
  %204 = call ptr @FileName(i16 noundef zeroext %5) #14
  %205 = load i32, ptr %7, align 4, !tbaa !5
  %206 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 3, ptr noundef nonnull @.str.142, i32 noundef 1, ptr noundef nonnull %29, ptr noundef %204, i32 noundef %205) #14
  br label %207

207:                                              ; preds = %203, %201
  %208 = icmp eq i32 %176, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %207
  %210 = call ptr @FileName(i16 noundef zeroext %5) #14
  %211 = load i32, ptr %7, align 4, !tbaa !5
  %212 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 4, ptr noundef nonnull @.str.143, i32 noundef 1, ptr noundef nonnull %29, ptr noundef %210, i32 noundef %211) #14
  br label %213

213:                                              ; preds = %209, %207
  %214 = zext i8 %172 to i64
  %215 = getelementptr inbounds i8, ptr %3, i64 %214
  %216 = load i8, ptr %215, align 1, !tbaa !9
  switch i8 %216, label %217 [
    i8 1, label %222
    i8 0, label %224
  ]

217:                                              ; preds = %213
  %218 = load i32, ptr %4, align 4, !tbaa !5
  %219 = add nsw i32 %218, 1
  store i32 %219, ptr %4, align 4, !tbaa !5
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i8, ptr %3, i64 %220
  br label %222

222:                                              ; preds = %213, %217
  %223 = phi ptr [ %221, %217 ], [ %215, %213 ]
  store i8 0, ptr %223, align 1, !tbaa !9
  br label %224

224:                                              ; preds = %222, %213
  %225 = load ptr, ptr @BackEnd, align 8, !tbaa !10
  %226 = getelementptr inbounds %struct.back_end_rec, ptr %225, i64 0, i32 8
  %227 = load i32, ptr %226, align 8, !tbaa !24
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %247, label %229

229:                                              ; preds = %224
  %230 = bitcast <4 x i32> %177 to <8 x i16>
  %231 = extractelement <8 x i16> %230, i64 6
  %232 = getelementptr inbounds %struct.metrics, ptr %6, i64 %214
  %233 = getelementptr inbounds %struct.metrics, ptr %6, i64 %214, i32 2
  store i16 %231, ptr %233, align 2, !tbaa !48
  %234 = trunc i32 %174 to i16
  %235 = getelementptr inbounds %struct.metrics, ptr %6, i64 %214, i32 3
  store i16 %234, ptr %235, align 2, !tbaa !28
  %236 = shufflevector <4 x i32> %177, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %237 = sub nsw <2 x i32> %236, %36
  %238 = trunc <2 x i32> %237 to <2 x i16>
  store <2 x i16> %238, ptr %232, align 2, !tbaa !21
  %239 = extractelement <4 x i32> %177, i64 1
  %240 = icmp eq i32 %239, 0
  %241 = icmp eq i32 %174, 0
  %242 = select i1 %240, i1 true, i1 %241
  %243 = or i1 %34, %242
  %244 = sub nsw i32 %239, %174
  %245 = trunc i32 %244 to i16
  %246 = select i1 %243, i16 0, i16 %245
  br label %259

247:                                              ; preds = %224
  %248 = getelementptr inbounds %struct.metrics, ptr %6, i64 %214, i32 1
  %249 = getelementptr inbounds %struct.metrics, ptr %6, i64 %214
  %250 = getelementptr inbounds %struct.metrics, ptr %6, i64 %214, i32 2
  store i16 0, ptr %250, align 2, !tbaa !48
  %251 = load i32, ptr @PlainCharHeight, align 4, !tbaa !5
  %252 = sdiv i32 %251, -2
  %253 = trunc i32 %252 to i16
  store i16 %253, ptr %248, align 2, !tbaa !49
  %254 = load i32, ptr @PlainCharWidth, align 4, !tbaa !5
  %255 = trunc i32 %254 to i16
  %256 = getelementptr inbounds %struct.metrics, ptr %6, i64 %214, i32 3
  store i16 %255, ptr %256, align 2, !tbaa !28
  %257 = sdiv i32 %251, 2
  %258 = trunc i32 %257 to i16
  store i16 %258, ptr %249, align 2, !tbaa !50
  br label %259

259:                                              ; preds = %247, %229
  %260 = phi i16 [ %246, %229 ], [ 0, %247 ]
  %261 = getelementptr inbounds %struct.metrics, ptr %6, i64 %214, i32 4
  store i16 %260, ptr %261, align 2, !tbaa !51
  br label %262

262:                                              ; preds = %259, %54, %199
  %263 = phi i32 [ %174, %199 ], [ %38, %54 ], [ %174, %259 ]
  %264 = phi <4 x i32> [ %177, %199 ], [ %39, %54 ], [ %177, %259 ]
  %265 = call ptr @fgets(ptr noundef nonnull %10, i32 noundef 512, ptr noundef %8)
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %37

267:                                              ; preds = %42, %262, %37, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %10) #14
  ret void
}

declare i32 @StringBeginsWith(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @MapCharEncoding(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind allocsize(1) }

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
!11 = !{!"any pointer", !7, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !13}
!18 = !{!19, !11, i64 40}
!19 = !{!"font_rec", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !6, i64 32, !11, i64 40, !11, i64 48, !20, i64 56, !20, i64 58, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88}
!20 = !{!"short", !7, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !7, i64 0}
!24 = !{!25, !6, i64 40}
!25 = !{!"back_end_rec", !6, i64 0, !11, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224}
!26 = !{!27, !27, i64 0}
!27 = !{!"float", !7, i64 0}
!28 = !{!29, !20, i64 6}
!29 = !{!"metrics", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6, !20, i64 8}
!30 = !{!31, !7, i64 0}
!31 = !{!"composite_rec", !7, i64 0, !20, i64 2, !20, i64 4}
!32 = !{!31, !20, i64 2}
!33 = !{!31, !20, i64 4}
!34 = !{!19, !11, i64 48}
!35 = !{!19, !20, i64 56}
!36 = !{!19, !20, i64 58}
!37 = !{!19, !11, i64 0}
!38 = !{!19, !11, i64 8}
!39 = !{!19, !11, i64 16}
!40 = !{!19, !11, i64 24}
!41 = !{!19, !6, i64 32}
!42 = !{!19, !11, i64 64}
!43 = !{!19, !11, i64 72}
!44 = !{!19, !11, i64 80}
!45 = !{!19, !11, i64 88}
!46 = !{!47, !20, i64 2}
!47 = !{!"", !6, i64 0, !6, i64 0, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !20, i64 2}
!48 = !{!29, !20, i64 4}
!49 = !{!29, !20, i64 2}
!50 = !{!29, !20, i64 0}
!51 = !{!29, !20, i64 8}
!52 = !{!25, !6, i64 44}
!53 = !{!25, !11, i64 64}
!54 = !{!25, !11, i64 72}
