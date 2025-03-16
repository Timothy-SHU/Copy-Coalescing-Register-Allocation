; ModuleID = 'src/z49.c'
source_filename = "src/z49.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GRAPHICS_STATE = type { i32, i32, i32, i32, i16 }
%struct.back_end_rec = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.12 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.12 = type { ptr }
%struct.anon.14 = type { i32, i32, [1 x ptr] }
%struct.mapvec = type { ptr, i16, i32, i32, ptr, [256 x ptr], [353 x i8], [4 x [256 x i8]] }
%struct.font_rec = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, i16, i16, ptr, ptr, ptr, ptr }
%struct.composite_rec = type { i8, i16, i16 }
%struct.metrics = type { i16, i16, i16, i16, i16 }

@out_fp = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [11 x i8] c"\0Agrestore\0A\00", align 1
@gs_stack = internal unnamed_addr global [50 x %struct.GRAPHICS_STATE] zeroinitializer, align 16
@gs_stack_top = internal unnamed_addr global i32 0, align 4
@currentfont = internal unnamed_addr global i32 0, align 4
@currentcolour = internal unnamed_addr global i32 0, align 4
@cpexists = internal unnamed_addr global i32 0, align 4
@currenty = internal unnamed_addr global i32 0, align 4
@currentxheight2 = internal unnamed_addr global i16 0, align 2
@.str.3 = private unnamed_addr constant [30 x i8] c"error in left parameter of %s\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"@Graphic\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"PrintGraphic: type(x) != GRAPHIC!\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%hd %s \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"%d %d %d %d %d %d %d LoutGraphic\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"%d %d %d %d %d %d %d %d %d LoutGr2\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"PrintGraphicInclude!\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"PrintGraphicInclude: !incgraphic_ok(x)!\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"PrintGraphicInclude: fp!\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"%hd %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"BeginEPSF\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"%%%%BeginDocument: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"%%DocumentNeededResources:\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"(atend)\00", align 1
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@needs = internal unnamed_addr global ptr null, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [17 x i8] c"%%LanguageLevel:\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"ignoring LanguageLevel comment in %s file %s\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"@IncludeGraphic\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"%%Extensions:\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"ignoring Extensions comment in %s file %s\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"%%+\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"lout.eps\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"\0A%%%%EndDocument\0AEndEPSF\0A\00", align 1
@wordcount = internal unnamed_addr global i32 0, align 4
@ConvertToPDFName.buff = internal global [200 x i8] zeroinitializer, align 16
@.str.29 = private unnamed_addr constant [5 x i8] c"LOUT\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"tag %s is too long\00", align 1
@ps_back = internal global %struct.back_end_rec { i32 0, ptr @.str.37, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, ptr @PS_PrintInitialize, ptr @PS_PrintLength, ptr @PS_PrintPageSetupForFont, ptr @PS_PrintPageResourceForFont, ptr @PS_PrintMapping, ptr @PS_PrintBeforeFirstPage, ptr @PS_PrintBetweenPages, ptr @PS_PrintAfterLastPage, ptr @PS_PrintWord, ptr @PS_PrintPlainGraphic, ptr @PS_PrintUnderline, ptr @PS_CoordTranslate, ptr @PS_CoordRotate, ptr @PS_CoordScale, ptr @PS_SaveGraphicState, ptr @PS_RestoreGraphicState, ptr @PS_PrintGraphicObject, ptr @PS_DefineGraphicNames, ptr @PS_SaveTranslateDefineSave, ptr @PS_PrintGraphicInclude, ptr @PS_LinkSource, ptr @PS_LinkDest, ptr @PS_LinkCheck }, align 8
@PS_BackEnd = dso_local local_unnamed_addr global ptr @ps_back, align 8
@Encapsulated = dso_local local_unnamed_addr global i32 0, align 4
@.str.31 = private unnamed_addr constant [7 x i8] c"gsave\0A\00", align 1
@.str.32 = private unnamed_addr constant [55 x i8] c"rotations, graphics etc. too deeply nested (max is %d)\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"%d %d translate\0A\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"%.4f %.4f scale\0A\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"%%EOF\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"%%Trailer\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"PostScript\00", align 1
@prologue_done = internal unnamed_addr global i1 false, align 4
@pagecount = internal unnamed_addr global i32 0, align 4
@supplied = internal unnamed_addr global ptr null, align 8
@link_dest_tab = internal global ptr null, align 8
@link_source_list = internal unnamed_addr global ptr null, align 8
@.str.38 = private unnamed_addr constant [44 x i8] c"run out of memory enlarging link dest table\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"%.3fc\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"%%%%IncludeResource: font %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"/%s%s %s /%s LoutRecode\0A\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"/%s { /%s%s LoutFont } def\0A\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"/%s { /%s LoutFont } def\0A\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"%s font %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"%%PageResources:\00", align 1
@MapTable = external local_unnamed_addr global [0 x ptr], align 8
@.str.46 = private unnamed_addr constant [32 x i8] c"%%%%BeginResource: encoding %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"/%s [\0A\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"/%s%c\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"] def\0A\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"%%%%EndResource\0A\0A\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"%!PS-Adobe-3.0 EPSF-3.0\0A\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"%!PS-Adobe-3.0\0A\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"%%%%Creator: %s\0A\00", align 1
@.str.54 = private unnamed_addr constant [40 x i8] c"Basser Lout Version 3.24 (October 2000)\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"%%%%CreationDate: %s\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"%%DocumentData: Binary\0A\00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"%%DocumentNeededResources: (atend)\0A\00", align 1
@.str.58 = private unnamed_addr constant [38 x i8] c"%%DocumentSuppliedResources: (atend)\0A\00", align 1
@.str.59 = private unnamed_addr constant [40 x i8] c"%%%%DocumentMedia: %s %d %d 0 white ()\0A\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"%%PageOrder: Ascend\0A\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"%%Pages: (atend)\0A\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"%%%%BoundingBox: 0 0 %d %d\0A\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"%%EndComments\0A\0A\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"%%BeginProlog\0A\00", align 1
@.str.65 = private unnamed_addr constant [31 x i8] c"%%%%BeginResource: procset %s\0A\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"LoutStartUp\00", align 1
@.str.67 = private unnamed_addr constant [61 x i8] c"/save_cp { currentpoint /cp_y exch def /cp_x exch def } def\0A\00", align 1
@.str.68 = private unnamed_addr constant [38 x i8] c"/restore_cp { cp_x cp_y moveto } def\0A\00", align 1
@.str.69 = private unnamed_addr constant [53 x i8] c"/outline { gsave 1 1 1 setrgbcolor dup show save_cp\0A\00", align 1
@.str.70 = private unnamed_addr constant [55 x i8] c"  grestore true charpath stroke restore_cp } bind def\0A\00", align 1
@.str.71 = private unnamed_addr constant [39 x i8] c"/m  { 3 1 roll moveto show } bind def\0A\00", align 1
@.str.72 = private unnamed_addr constant [42 x i8] c"/mo { 3 1 roll moveto outline } bind def\0A\00", align 1
@.str.73 = private unnamed_addr constant [57 x i8] c"/s  { exch currentpoint exch pop moveto show } bind def\0A\00", align 1
@.str.74 = private unnamed_addr constant [60 x i8] c"/so { exch currentpoint exch pop moveto outline } bind def\0A\00", align 1
@.str.75 = private unnamed_addr constant [42 x i8] c"/k  { exch neg 0 rmoveto show } bind def\0A\00", align 1
@.str.76 = private unnamed_addr constant [45 x i8] c"/ko { exch neg 0 rmoveto outline } bind def\0A\00", align 1
@.str.77 = private unnamed_addr constant [38 x i8] c"/r  { exch 0 rmoveto show } bind def\0A\00", align 1
@.str.78 = private unnamed_addr constant [41 x i8] c"/ro { exch 0 rmoveto outline } bind def\0A\00", align 1
@.str.79 = private unnamed_addr constant [55 x i8] c"/c  { gsave 3 1 roll rmoveto show grestore } bind def\0A\00", align 1
@.str.80 = private unnamed_addr constant [58 x i8] c"/co { gsave 3 1 roll rmoveto outline grestore } bind def\0A\00", align 1
@.str.81 = private unnamed_addr constant [39 x i8] c"/ul { gsave setlinewidth dup 3 1 roll\0A\00", align 1
@.str.82 = private unnamed_addr constant [48 x i8] c"      moveto lineto stroke grestore } bind def\0A\00", align 1
@.str.83 = private unnamed_addr constant [20 x i8] c"/in { %d mul } def\0A\00", align 1
@.str.84 = private unnamed_addr constant [20 x i8] c"/cm { %d mul } def\0A\00", align 1
@.str.85 = private unnamed_addr constant [20 x i8] c"/pt { %d mul } def\0A\00", align 1
@.str.86 = private unnamed_addr constant [20 x i8] c"/em { %d mul } def\0A\00", align 1
@.str.87 = private unnamed_addr constant [23 x i8] c"/sp { louts mul } def\0A\00", align 1
@.str.88 = private unnamed_addr constant [23 x i8] c"/vs { loutv mul } def\0A\00", align 1
@.str.89 = private unnamed_addr constant [23 x i8] c"/ft { loutf mul } def\0A\00", align 1
@.str.90 = private unnamed_addr constant [24 x i8] c"/dg {           } def\0A\0A\00", align 1
@.str.91 = private unnamed_addr constant [16 x i8] c"/LoutGraphic {\0A\00", align 1
@.str.92 = private unnamed_addr constant [19 x i8] c"  /louts exch def\0A\00", align 1
@.str.93 = private unnamed_addr constant [19 x i8] c"  /loutv exch def\0A\00", align 1
@.str.94 = private unnamed_addr constant [19 x i8] c"  /loutf exch def\0A\00", align 1
@.str.95 = private unnamed_addr constant [19 x i8] c"  /ymark exch def\0A\00", align 1
@.str.96 = private unnamed_addr constant [19 x i8] c"  /xmark exch def\0A\00", align 1
@.str.97 = private unnamed_addr constant [19 x i8] c"  /ysize exch def\0A\00", align 1
@.str.98 = private unnamed_addr constant [26 x i8] c"  /xsize exch def\0A} def\0A\0A\00", align 1
@.str.99 = private unnamed_addr constant [53 x i8] c"/LoutGr2 { gsave translate LoutGraphic gsave } def\0A\0A\00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"/LoutFont\0A\00", align 1
@.str.101 = private unnamed_addr constant [35 x i8] c"{ findfont exch scalefont setfont\0A\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"} bind def\0A\0A\00", align 1
@.str.103 = private unnamed_addr constant [15 x i8] c"/LoutRecode {\0A\00", align 1
@.str.104 = private unnamed_addr constant [36 x i8] c"  { findfont dup length dict begin\0A\00", align 1
@.str.105 = private unnamed_addr constant [53 x i8] c"    {1 index /FID ne {def} {pop pop} ifelse} forall\0A\00", align 1
@.str.106 = private unnamed_addr constant [24 x i8] c"    /Encoding exch def\0A\00", align 1
@.str.107 = private unnamed_addr constant [36 x i8] c"    currentdict end definefont pop\0A\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"  }\0A\00", align 1
@.str.109 = private unnamed_addr constant [15 x i8] c"  stopped pop\0A\00", align 1
@.str.110 = private unnamed_addr constant [14 x i8] c"/BeginEPSF {\0A\00", align 1
@.str.111 = private unnamed_addr constant [27 x i8] c"  /LoutEPSFState save def\0A\00", align 1
@.str.112 = private unnamed_addr constant [34 x i8] c"  /dict_count countdictstack def\0A\00", align 1
@.str.113 = private unnamed_addr constant [29 x i8] c"  /op_count count 1 sub def\0A\00", align 1
@.str.114 = private unnamed_addr constant [18 x i8] c"  userdict begin\0A\00", align 1
@.str.115 = private unnamed_addr constant [21 x i8] c"  /showpage { } def\0A\00", align 1
@.str.116 = private unnamed_addr constant [26 x i8] c"  0 setgray 0 setlinecap\0A\00", align 1
@.str.117 = private unnamed_addr constant [32 x i8] c"  1 setlinewidth 0 setlinejoin\0A\00", align 1
@.str.118 = private unnamed_addr constant [41 x i8] c"  10 setmiterlimit [] 0 setdash newpath\0A\00", align 1
@.str.119 = private unnamed_addr constant [24 x i8] c"  /languagelevel where\0A\00", align 1
@.str.120 = private unnamed_addr constant [23 x i8] c"  { pop languagelevel\0A\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"    1 ne\0A\00", align 1
@.str.122 = private unnamed_addr constant [48 x i8] c"    { false setstrokeadjust false setoverprint\0A\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"    } if\0A\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"  } if\0A\00", align 1
@.str.125 = private unnamed_addr constant [12 x i8] c"/EndEPSF {\0A\00", align 1
@.str.126 = private unnamed_addr constant [37 x i8] c"  count op_count sub { pop } repeat\0A\00", align 1
@.str.127 = private unnamed_addr constant [48 x i8] c"  countdictstack dict_count sub { end } repeat\0A\00", align 1
@.str.128 = private unnamed_addr constant [25 x i8] c"  LoutEPSFState restore\0A\00", align 1
@.str.129 = private unnamed_addr constant [12 x i8] c"} bind def\0A\00", align 1
@.str.130 = private unnamed_addr constant [16 x i8] c"%%EndResource\0A\0A\00", align 1
@.str.131 = private unnamed_addr constant [23 x i8] c"cannot open %s file %s\00", align 1
@.str.132 = private unnamed_addr constant [16 x i8] c"@PrependGraphic\00", align 1
@.str.133 = private unnamed_addr constant [20 x i8] c"%s file %s is empty\00", align 1
@.str.134 = private unnamed_addr constant [17 x i8] c"%%BeginResource:\00", align 1
@.str.135 = private unnamed_addr constant [50 x i8] c"%s file %s lacks PostScript BeginResource comment\00", align 1
@.str.136 = private unnamed_addr constant [15 x i8] c"%% %s file %s\0A\00", align 1
@.str.137 = private unnamed_addr constant [14 x i8] c"%%EndProlog\0A\0A\00", align 1
@.str.138 = private unnamed_addr constant [14 x i8] c"%%BeginSetup\0A\00", align 1
@.str.139 = private unnamed_addr constant [71 x i8] c"/pdfmark where {pop} {userdict /pdfmark /cleartomark load put} ifelse\0A\00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"%%EndSetup\0A\0A\00", align 1
@.str.141 = private unnamed_addr constant [11 x i8] c"%%%%Page: \00", align 1
@EightBitToPrintForm = external local_unnamed_addr global [0 x ptr], align 8
@.str.142 = private unnamed_addr constant [5 x i8] c" %d\0A\00", align 1
@.str.143 = private unnamed_addr constant [20 x i8] c"%%%%BeginPageSetup\0A\00", align 1
@.str.144 = private unnamed_addr constant [18 x i8] c"/pgsave save def\0A\00", align 1
@.str.145 = private unnamed_addr constant [32 x i8] c"%.4f dup scale %d setlinewidth\0A\00", align 1
@.str.146 = private unnamed_addr constant [19 x i8] c"%%%%EndPageSetup\0A\0A\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"Letter\00", align 1
@.str.148 = private unnamed_addr constant [8 x i8] c"Tabloid\00", align 1
@.str.149 = private unnamed_addr constant [7 x i8] c"Ledger\00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c"Legal\00", align 1
@.str.151 = private unnamed_addr constant [10 x i8] c"Statement\00", align 1
@.str.152 = private unnamed_addr constant [10 x i8] c"Executive\00", align 1
@.str.153 = private unnamed_addr constant [3 x i8] c"A3\00", align 1
@.str.154 = private unnamed_addr constant [3 x i8] c"A4\00", align 1
@.str.155 = private unnamed_addr constant [3 x i8] c"A5\00", align 1
@.str.156 = private unnamed_addr constant [3 x i8] c"B4\00", align 1
@.str.157 = private unnamed_addr constant [3 x i8] c"B5\00", align 1
@.str.158 = private unnamed_addr constant [6 x i8] c"Folio\00", align 1
@.str.159 = private unnamed_addr constant [7 x i8] c"Quarto\00", align 1
@.str.160 = private unnamed_addr constant [6 x i8] c"10x14\00", align 1
@.str.161 = private unnamed_addr constant [6 x i8] c"Plain\00", align 1
@.str.162 = private unnamed_addr constant [26 x i8] c"\0Apgsave restore\0Ashowpage\0A\00", align 1
@.str.163 = private unnamed_addr constant [46 x i8] c"truncating -EPS document at end of first page\00", align 1
@.str.164 = private unnamed_addr constant [12 x i8] c"\0A%%%%Page: \00", align 1
@.str.165 = private unnamed_addr constant [18 x i8] c"%%%%EndPageSetup\0A\00", align 1
@.str.166 = private unnamed_addr constant [14 x i8] c"\0A%%%%Trailer\0A\00", align 1
@.str.167 = private unnamed_addr constant [23 x i8] c"PrintAfterLast: needs!\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.169 = private unnamed_addr constant [43 x i8] c"%%%%DocumentSuppliedResources: procset %s\0A\00", align 1
@.str.170 = private unnamed_addr constant [9 x i8] c"%%%%+ %s\00", align 1
@.str.171 = private unnamed_addr constant [15 x i8] c"%%%%Pages: %d\0A\00", align 1
@.str.172 = private unnamed_addr constant [9 x i8] c"%%%%EOF\0A\00", align 1
@TotalWordCount = external local_unnamed_addr global i32, align 4
@.str.173 = private unnamed_addr constant [7 x i8] c"%hd %s\00", align 1
@finfo = external local_unnamed_addr global ptr, align 8
@.str.175 = private unnamed_addr constant [3 x i8] c"so\00", align 1
@.str.176 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.177 = private unnamed_addr constant [3 x i8] c"mo\00", align 1
@.str.178 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.179 = private unnamed_addr constant [5 x i8] c")%s \00", align 1
@.str.180 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.181 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.182 = private unnamed_addr constant [8 x i8] c")%s %d(\00", align 1
@.str.183 = private unnamed_addr constant [3 x i8] c"ko\00", align 1
@.str.184 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.185 = private unnamed_addr constant [5 x i8] c")%s\0A\00", align 1
@.str.186 = private unnamed_addr constant [14 x i8] c"%d %d (%c)%s \00", align 1
@.str.187 = private unnamed_addr constant [3 x i8] c"co\00", align 1
@.str.188 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.189 = private unnamed_addr constant [59 x i8] c"PS_PrintPlainGraphic: this routine should never be called!\00", align 1
@.str.190 = private unnamed_addr constant [16 x i8] c"%d %d %d %d ul\0A\00", align 1
@.str.191 = private unnamed_addr constant [13 x i8] c"%.4f rotate\0A\00", align 1
@.str.192 = private unnamed_addr constant [62 x i8] c"\0A[ /Rect [%d %d %d %d] /Subtype /Link /Dest /%s /ANN pdfmark\0A\00", align 1
@.str.193 = private unnamed_addr constant [28 x i8] c"\0A[ /Dest /%s /DEST pdfmark\0A\00", align 1
@.str.194 = private unnamed_addr constant [56 x i8] c"link destination %s ignored (there is already one at%s)\00", align 1
@.str.195 = private unnamed_addr constant [37 x i8] c"link name %s used twice (first at%s)\00", align 1
@.str.196 = private unnamed_addr constant [34 x i8] c" PS_LinkCheck: !is_word(type(y))!\00", align 1
@.str.197 = private unnamed_addr constant [38 x i8] c"link name %s has no destination point\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @PS_RestoreGraphicState() #0 {
  %1 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 10, i64 1, ptr %1)
  %3 = load i32, ptr @gs_stack_top, align 4, !tbaa !9
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !11
  store i32 %6, ptr @currentfont, align 4, !tbaa !9
  %7 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %4, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !14
  store i32 %8, ptr @currentcolour, align 4, !tbaa !9
  %9 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %4, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !15
  store i32 %10, ptr @cpexists, align 4, !tbaa !9
  %11 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %4, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !16
  store i32 %12, ptr @currenty, align 4, !tbaa !9
  %13 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %4, i32 4
  %14 = load i16, ptr %13, align 4, !tbaa !17
  store i16 %14, ptr @currentxheight2, align 2, !tbaa !18
  %15 = add nsw i32 %3, -1
  store i32 %15, ptr @gs_stack_top, align 4, !tbaa !9
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @PS_PrintGraphicObject(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !19
  switch i8 %3, label %44 [
    i8 11, label %8
    i8 12, label %8
    i8 17, label %4
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %46, label %12

8:                                                ; preds = %1, %1
  %9 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %11 = tail call i32 @fputs(ptr noundef nonnull %9, ptr noundef %10)
  br label %46

12:                                               ; preds = %4, %40
  %13 = phi ptr [ %42, %40 ], [ %6, %4 ]
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi ptr [ %17, %14 ], [ %13, %12 ]
  %16 = getelementptr inbounds [2 x %struct.LIST], ptr %15, i64 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !19
  %18 = getelementptr inbounds %struct.word_type, ptr %17, i64 0, i32 1
  %19 = load i8, ptr %18, align 8, !tbaa !19
  switch i8 %19, label %35 [
    i8 0, label %14
    i8 1, label %20
    i8 11, label %34
    i8 12, label %34
    i8 17, label %34
    i8 26, label %40
  ]

20:                                               ; preds = %14
  %21 = getelementptr inbounds i8, ptr %17, i64 42
  %22 = load i8, ptr %21, align 2, !tbaa !19
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %26 = tail call i32 @fputc(i32 10, ptr %25)
  br label %40

27:                                               ; preds = %20
  %28 = getelementptr inbounds i8, ptr %17, i64 41
  %29 = load i8, ptr %28, align 1, !tbaa !19
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %33 = tail call i32 @fputc(i32 32, ptr %32)
  br label %40

34:                                               ; preds = %14, %14, %14
  tail call void @PS_PrintGraphicObject(ptr noundef nonnull %17)
  br label %40

35:                                               ; preds = %14
  %36 = add i8 %19, -119
  %37 = icmp ult i8 %36, 20
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 49, i32 noundef 8, ptr noundef nonnull @.str.3, i32 noundef 2, ptr noundef nonnull %2, ptr noundef nonnull @.str.4) #11
  br label %40

40:                                               ; preds = %14, %35, %27, %31, %24, %38, %34
  %41 = getelementptr inbounds %struct.LIST, ptr %13, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !19
  %43 = icmp eq ptr %42, %0
  br i1 %43, label %46, label %12

44:                                               ; preds = %1
  %45 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 49, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef 2, ptr noundef nonnull %2, ptr noundef nonnull @.str.4) #11
  br label %46

46:                                               ; preds = %40, %4, %44, %8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @PS_DefineGraphicNames(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !19
  %4 = icmp eq i8 %3, 97
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %7 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef %6, ptr noundef nonnull @.str.6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 4095
  %12 = load i32, ptr @currentfont, align 4, !tbaa !9
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %26, label %14

14:                                               ; preds = %8
  store i32 %11, ptr @currentfont, align 4, !tbaa !9
  %15 = icmp eq i32 %11, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %14
  %17 = tail call i32 @FontHalfXHeight(i32 noundef %11) #11
  %18 = trunc i32 %17 to i16
  store i16 %18, ptr @currentxheight2, align 2, !tbaa !18
  %19 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %20 = load i32, ptr @currentfont, align 4, !tbaa !9
  %21 = tail call i32 @FontSize(i32 noundef %20, ptr noundef nonnull %0) #11
  %22 = load i32, ptr @currentfont, align 4, !tbaa !9
  %23 = tail call ptr @FontName(i32 noundef %22) #11
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.7, i32 noundef %21, ptr noundef %23)
  %25 = load i32, ptr %9, align 4
  br label %26

26:                                               ; preds = %14, %16, %8
  %27 = phi i32 [ %10, %14 ], [ %25, %16 ], [ %10, %8 ]
  %28 = lshr i32 %27, 12
  %29 = and i32 %28, 1023
  %30 = load i32, ptr @currentcolour, align 4, !tbaa !9
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  store i32 %29, ptr @currentcolour, align 4, !tbaa !9
  %33 = icmp eq i32 %29, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %32
  %35 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %36 = tail call ptr @ColourCommand(i32 noundef %29) #11
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.8, ptr noundef %36)
  br label %38

38:                                               ; preds = %32, %34, %26
  %39 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %41 = load i32, ptr %40, align 8, !tbaa !19
  %42 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !19
  %44 = getelementptr inbounds i8, ptr %0, i64 52
  %45 = load i32, ptr %44, align 4, !tbaa !19
  %46 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1, i64 4
  %47 = load i32, ptr %46, align 4, !tbaa !19
  %48 = load i32, ptr @currentfont, align 4, !tbaa !9
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %38
  %51 = tail call i32 @FontSize(i32 noundef %48, ptr noundef nonnull %0) #11
  br label %52

52:                                               ; preds = %38, %50
  %53 = phi i32 [ %51, %50 ], [ 240, %38 ]
  %54 = add nsw i32 %47, %45
  %55 = add nsw i32 %43, %41
  %56 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %57 = load i16, ptr %56, align 2, !tbaa !19
  %58 = sext i16 %57 to i32
  %59 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  %60 = load i16, ptr %59, align 2, !tbaa !19
  %61 = sext i16 %60 to i32
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.9, i32 noundef %55, i32 noundef %54, i32 noundef %41, i32 noundef %47, i32 noundef %53, i32 noundef %58, i32 noundef %61)
  ret void
}

declare i32 @FontHalfXHeight(i32 noundef) local_unnamed_addr #4

declare i32 @FontSize(i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @FontName(i32 noundef) local_unnamed_addr #4

declare ptr @ColourCommand(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @PS_SaveTranslateDefineSave(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = load i32, ptr @gs_stack_top, align 4, !tbaa !9
  %5 = icmp sgt i32 %4, 48
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 4095
  %10 = load i32, ptr @currentfont, align 4, !tbaa !9
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = lshr i32 %8, 12
  %14 = and i32 %13, 1023
  %15 = load i32, ptr @currentcolour, align 4, !tbaa !9
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %64, label %17

17:                                               ; preds = %12, %6, %3
  %18 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %19 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 6, i64 1, ptr %18)
  %20 = load i32, ptr @gs_stack_top, align 4, !tbaa !9
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr @gs_stack_top, align 4, !tbaa !9
  %22 = icmp sgt i32 %20, 48
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %25 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 49, i32 noundef 7, ptr noundef nonnull @.str.32, i32 noundef 1, ptr noundef nonnull %24, i32 noundef 50) #11
  %26 = load i32, ptr @gs_stack_top, align 4, !tbaa !9
  br label %27

27:                                               ; preds = %17, %23
  %28 = phi i32 [ %26, %23 ], [ %21, %17 ]
  %29 = load i32, ptr @currentfont, align 4, !tbaa !9
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %30
  store i32 %29, ptr %31, align 4, !tbaa !11
  %32 = load i32, ptr @currentcolour, align 4, !tbaa !9
  %33 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %30, i32 1
  store i32 %32, ptr %33, align 4, !tbaa !14
  %34 = load i32, ptr @cpexists, align 4, !tbaa !9
  %35 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %30, i32 2
  store i32 %34, ptr %35, align 4, !tbaa !15
  %36 = load i32, ptr @currenty, align 4, !tbaa !9
  %37 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %30, i32 3
  store i32 %36, ptr %37, align 4, !tbaa !16
  %38 = load i16, ptr @currentxheight2, align 2, !tbaa !18
  %39 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %30, i32 4
  store i16 %38, ptr %39, align 4, !tbaa !17
  %40 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.33, i32 noundef %1, i32 noundef %2)
  store i32 0, ptr @cpexists, align 4, !tbaa !9
  tail call void @PS_DefineGraphicNames(ptr noundef %0)
  %42 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %43 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 6, i64 1, ptr %42)
  %44 = load i32, ptr @gs_stack_top, align 4, !tbaa !9
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr @gs_stack_top, align 4, !tbaa !9
  %46 = icmp sgt i32 %44, 48
  br i1 %46, label %47, label %51

47:                                               ; preds = %27
  %48 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %49 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 49, i32 noundef 7, ptr noundef nonnull @.str.32, i32 noundef 1, ptr noundef nonnull %48, i32 noundef 50) #11
  %50 = load i32, ptr @gs_stack_top, align 4, !tbaa !9
  br label %51

51:                                               ; preds = %27, %47
  %52 = phi i32 [ %50, %47 ], [ %45, %27 ]
  %53 = load i32, ptr @currentfont, align 4, !tbaa !9
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %54
  store i32 %53, ptr %55, align 4, !tbaa !11
  %56 = load i32, ptr @currentcolour, align 4, !tbaa !9
  %57 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %54, i32 1
  store i32 %56, ptr %57, align 4, !tbaa !14
  %58 = load i32, ptr @cpexists, align 4, !tbaa !9
  %59 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %54, i32 2
  store i32 %58, ptr %59, align 4, !tbaa !15
  %60 = load i32, ptr @currenty, align 4, !tbaa !9
  %61 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %54, i32 3
  store i32 %60, ptr %61, align 4, !tbaa !16
  %62 = load i16, ptr @currentxheight2, align 2, !tbaa !18
  %63 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %54, i32 4
  store i16 %62, ptr %63, align 4, !tbaa !17
  br label %105

64:                                               ; preds = %12
  %65 = add nsw i32 %4, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %66
  store i32 %9, ptr %67, align 4, !tbaa !11
  %68 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %66, i32 1
  store i32 %14, ptr %68, align 4, !tbaa !14
  %69 = load i32, ptr @cpexists, align 4, !tbaa !9
  %70 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %66, i32 2
  store i32 %69, ptr %70, align 4, !tbaa !15
  %71 = load i32, ptr @currenty, align 4, !tbaa !9
  %72 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %66, i32 3
  store i32 %71, ptr %72, align 4, !tbaa !16
  %73 = load i16, ptr @currentxheight2, align 2, !tbaa !18
  %74 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %66, i32 4
  store i16 %73, ptr %74, align 4, !tbaa !17
  store i32 0, ptr @cpexists, align 4, !tbaa !9
  %75 = add nsw i32 %4, 2
  store i32 %75, ptr @gs_stack_top, align 4, !tbaa !9
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %76
  store i32 %9, ptr %77, align 4, !tbaa !11
  %78 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %76, i32 1
  store i32 %14, ptr %78, align 4, !tbaa !14
  %79 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %76, i32 2
  store i32 0, ptr %79, align 4, !tbaa !15
  %80 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %76, i32 3
  store i32 %71, ptr %80, align 4, !tbaa !16
  %81 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %76, i32 4
  store i16 %73, ptr %81, align 4, !tbaa !17
  %82 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %83 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %84 = load i32, ptr %83, align 8, !tbaa !19
  %85 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %86 = load i32, ptr %85, align 8, !tbaa !19
  %87 = add nsw i32 %86, %84
  %88 = getelementptr inbounds i8, ptr %0, i64 52
  %89 = load i32, ptr %88, align 4, !tbaa !19
  %90 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1, i64 4
  %91 = load i32, ptr %90, align 4, !tbaa !19
  %92 = add nsw i32 %91, %89
  %93 = icmp eq i32 %9, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %64
  %95 = tail call i32 @FontSize(i32 noundef %9, ptr noundef nonnull %0) #11
  br label %96

96:                                               ; preds = %64, %94
  %97 = phi i32 [ %95, %94 ], [ 240, %64 ]
  %98 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %99 = load i16, ptr %98, align 2, !tbaa !19
  %100 = sext i16 %99 to i32
  %101 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  %102 = load i16, ptr %101, align 2, !tbaa !19
  %103 = sext i16 %102 to i32
  %104 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef nonnull @.str.10, i32 noundef %87, i32 noundef %92, i32 noundef %84, i32 noundef %91, i32 noundef %97, i32 noundef %100, i32 noundef %103, i32 noundef %1, i32 noundef %2)
  br label %105

105:                                              ; preds = %96, %51
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_SaveGraphicState(ptr noundef %0) #2 {
  %2 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %3 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 6, i64 1, ptr %2)
  %4 = load i32, ptr @gs_stack_top, align 4, !tbaa !9
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @gs_stack_top, align 4, !tbaa !9
  %6 = icmp sgt i32 %4, 48
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %9 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 49, i32 noundef 7, ptr noundef nonnull @.str.32, i32 noundef 1, ptr noundef nonnull %8, i32 noundef 50) #11
  %10 = load i32, ptr @gs_stack_top, align 4, !tbaa !9
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i32 [ %10, %7 ], [ %5, %1 ]
  %13 = load i32, ptr @currentfont, align 4, !tbaa !9
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %14
  store i32 %13, ptr %15, align 4, !tbaa !11
  %16 = load i32, ptr @currentcolour, align 4, !tbaa !9
  %17 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %14, i32 1
  store i32 %16, ptr %17, align 4, !tbaa !14
  %18 = load i32, ptr @cpexists, align 4, !tbaa !9
  %19 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %14, i32 2
  store i32 %18, ptr %19, align 4, !tbaa !15
  %20 = load i32, ptr @currenty, align 4, !tbaa !9
  %21 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %14, i32 3
  store i32 %20, ptr %21, align 4, !tbaa !16
  %22 = load i16, ptr @currentxheight2, align 2, !tbaa !18
  %23 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], ptr @gs_stack, i64 0, i64 %14, i32 4
  store i16 %22, ptr %23, align 4, !tbaa !17
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @PS_CoordTranslate(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.33, i32 noundef %0, i32 noundef %1)
  store i32 0, ptr @cpexists, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PS_PrintGraphicInclude(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca ptr, align 8
  %5 = alloca [512 x i8], align 16
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  %7 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !19
  %9 = and i8 %8, -2
  %10 = icmp eq i8 %9, 94
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %13 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef %12, ptr noundef nonnull @.str.11) #11
  br label %14

14:                                               ; preds = %3, %11
  %15 = getelementptr inbounds i8, ptr %0, i64 41
  %16 = load i8, ptr %15, align 1, !tbaa !19
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %20 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef %19, ptr noundef nonnull @.str.12) #11
  br label %21

21:                                               ; preds = %18, %14
  %22 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !19
  br label %24

24:                                               ; preds = %24, %21
  %25 = phi ptr [ %23, %21 ], [ %27, %24 ]
  %26 = getelementptr inbounds [2 x %struct.LIST], ptr %25, i64 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !19
  %28 = getelementptr inbounds %struct.word_type, ptr %27, i64 0, i32 1
  %29 = load i8, ptr %28, align 8, !tbaa !19
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %24, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.word_type, ptr %27, i64 0, i32 1
  %33 = getelementptr inbounds %struct.word_type, ptr %27, i64 0, i32 4
  %34 = load i8, ptr %7, align 8, !tbaa !19
  %35 = call ptr @OpenIncGraphicFile(ptr noundef nonnull %33, i8 noundef zeroext %34, ptr noundef nonnull %4, ptr noundef nonnull %32, ptr noundef nonnull %6) #11
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %39 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef %38, ptr noundef nonnull @.str.13) #11
  br label %40

40:                                               ; preds = %37, %31
  %41 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 4095
  %44 = load i32, ptr @currentfont, align 4, !tbaa !9
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %56, label %46

46:                                               ; preds = %40
  store i32 %43, ptr @currentfont, align 4, !tbaa !9
  %47 = call i32 @FontHalfXHeight(i32 noundef %43) #11
  %48 = trunc i32 %47 to i16
  store i16 %48, ptr @currentxheight2, align 2, !tbaa !18
  %49 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %50 = load i32, ptr @currentfont, align 4, !tbaa !9
  %51 = call i32 @FontSize(i32 noundef %50, ptr noundef nonnull %0) #11
  %52 = load i32, ptr @currentfont, align 4, !tbaa !9
  %53 = call ptr @FontName(i32 noundef %52) #11
  %54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.14, i32 noundef %51, ptr noundef %53)
  %55 = load i32, ptr %41, align 4
  br label %56

56:                                               ; preds = %46, %40
  %57 = phi i32 [ %55, %46 ], [ %42, %40 ]
  %58 = lshr i32 %57, 12
  %59 = and i32 %58, 1023
  %60 = load i32, ptr @currentcolour, align 4, !tbaa !9
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  store i32 %59, ptr @currentcolour, align 4, !tbaa !9
  %63 = icmp eq i32 %59, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %62
  %65 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %66 = call ptr @ColourCommand(i32 noundef %59) #11
  %67 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.15, ptr noundef %66)
  br label %68

68:                                               ; preds = %62, %64, %56
  %69 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %70 = call i64 @fwrite(ptr nonnull @.str.16, i64 10, i64 1, ptr %69)
  %71 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %72 = load i32, ptr %71, align 8, !tbaa !19
  %73 = sub nsw i32 %1, %72
  %74 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1, i64 4
  %75 = load i32, ptr %74, align 4, !tbaa !19
  %76 = sub nsw i32 %2, %75
  %77 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %78 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef nonnull @.str.33, i32 noundef %73, i32 noundef %76)
  store i32 0, ptr @cpexists, align 4, !tbaa !9
  %79 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %80 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef nonnull @.str.34, double noundef 2.000000e+01, double noundef 2.000000e+01)
  store i32 0, ptr @cpexists, align 4, !tbaa !9
  %81 = getelementptr inbounds %struct.word_type, ptr %27, i64 0, i32 3
  %82 = load i32, ptr %81, align 8, !tbaa !19
  %83 = sub nsw i32 0, %82
  %84 = getelementptr inbounds i8, ptr %27, i64 52
  %85 = load i32, ptr %84, align 4, !tbaa !19
  %86 = sub nsw i32 0, %85
  %87 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %88 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.33, i32 noundef %83, i32 noundef %86)
  store i32 0, ptr @cpexists, align 4, !tbaa !9
  %89 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %90 = load ptr, ptr %4, align 8, !tbaa !5
  %91 = getelementptr inbounds %struct.word_type, ptr %90, i64 0, i32 4
  %92 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef nonnull @.str.17, ptr noundef nonnull %91)
  %93 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 512, ptr noundef %35)
  %94 = icmp eq ptr %93, null
  %95 = getelementptr inbounds [512 x i8], ptr %5, i64 0, i64 3
  %96 = getelementptr inbounds [512 x i8], ptr %5, i64 0, i64 26
  %97 = select i1 %94, i32 2, i32 0
  br label %98

98:                                               ; preds = %68, %235
  %99 = phi ptr [ %237, %235 ], [ %0, %68 ]
  %100 = phi i32 [ %240, %235 ], [ %97, %68 ]
  switch i32 %100, label %234 [
    i32 2, label %241
    i32 0, label %101
    i32 1, label %177
  ]

101:                                              ; preds = %98
  %102 = call i32 @StringBeginsWith(ptr noundef nonnull %5, ptr noundef nonnull @.str.18) #11
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %152, label %104

104:                                              ; preds = %101
  %105 = call i32 @StringContains(ptr noundef nonnull %5, ptr noundef nonnull @.str.19) #11
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %152

107:                                              ; preds = %104
  %108 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %109 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %96, ptr noundef %108) #11
  %110 = load i8, ptr @zz_lengths, align 1, !tbaa !19
  %111 = zext i8 %110 to i32
  store i32 %111, ptr @zz_size, align 4, !tbaa !9
  %112 = zext i8 %110 to i64
  %113 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !5
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %107
  %117 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %118 = call ptr @GetMemory(i32 noundef %111, ptr noundef %117) #11
  br label %121

119:                                              ; preds = %107
  store ptr %114, ptr @zz_hold, align 8, !tbaa !5
  %120 = load ptr, ptr %114, align 8, !tbaa !19
  store ptr %120, ptr %113, align 8, !tbaa !5
  br label %121

121:                                              ; preds = %116, %119
  %122 = phi ptr [ %118, %116 ], [ %114, %119 ]
  %123 = getelementptr inbounds %struct.word_type, ptr %122, i64 0, i32 1
  store i8 0, ptr %123, align 8, !tbaa !19
  %124 = getelementptr inbounds [2 x %struct.LIST], ptr %122, i64 0, i64 1, i32 1
  store ptr %122, ptr %124, align 8, !tbaa !19
  %125 = getelementptr inbounds [2 x %struct.LIST], ptr %122, i64 0, i64 1
  store ptr %122, ptr %125, align 8, !tbaa !19
  %126 = getelementptr inbounds %struct.LIST, ptr %122, i64 0, i32 1
  store ptr %122, ptr %126, align 8, !tbaa !19
  store ptr %122, ptr %122, align 8, !tbaa !19
  store ptr %122, ptr @xx_link, align 8, !tbaa !5
  store ptr %122, ptr @zz_res, align 8, !tbaa !5
  %127 = load ptr, ptr @needs, align 8, !tbaa !5
  store ptr %127, ptr @zz_hold, align 8, !tbaa !5
  %128 = icmp eq ptr %127, null
  br i1 %128, label %140, label %129

129:                                              ; preds = %121
  %130 = load ptr, ptr %127, align 8, !tbaa !19
  store ptr %130, ptr @zz_tmp, align 8, !tbaa !5
  %131 = load ptr, ptr %122, align 8, !tbaa !19
  store ptr %131, ptr %127, align 8, !tbaa !19
  %132 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %133 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %134 = load ptr, ptr %133, align 8, !tbaa !19
  %135 = getelementptr inbounds %struct.LIST, ptr %134, i64 0, i32 1
  store ptr %132, ptr %135, align 8, !tbaa !19
  %136 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %136, ptr %133, align 8, !tbaa !19
  %137 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %138 = getelementptr inbounds %struct.LIST, ptr %136, i64 0, i32 1
  store ptr %137, ptr %138, align 8, !tbaa !19
  %139 = load ptr, ptr @xx_link, align 8, !tbaa !5
  br label %140

140:                                              ; preds = %121, %129
  %141 = phi ptr [ %122, %121 ], [ %139, %129 ]
  store ptr %141, ptr @zz_res, align 8, !tbaa !5
  store ptr %109, ptr @zz_hold, align 8, !tbaa !5
  %142 = icmp eq ptr %109, null
  %143 = icmp eq ptr %141, null
  %144 = select i1 %142, i1 true, i1 %143
  br i1 %144, label %235, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds [2 x %struct.LIST], ptr %109, i64 0, i64 1
  %147 = load ptr, ptr %146, align 8, !tbaa !19
  store ptr %147, ptr @zz_tmp, align 8, !tbaa !5
  %148 = getelementptr inbounds [2 x %struct.LIST], ptr %141, i64 0, i64 1
  %149 = load ptr, ptr %148, align 8, !tbaa !19
  store ptr %149, ptr %146, align 8, !tbaa !19
  %150 = getelementptr inbounds [2 x %struct.LIST], ptr %149, i64 0, i64 1, i32 1
  store ptr %109, ptr %150, align 8, !tbaa !19
  store ptr %147, ptr %148, align 8, !tbaa !19
  %151 = getelementptr inbounds [2 x %struct.LIST], ptr %147, i64 0, i64 1, i32 1
  store ptr %141, ptr %151, align 8, !tbaa !19
  br label %235

152:                                              ; preds = %104, %101
  %153 = call i32 @StringBeginsWith(ptr noundef nonnull %5, ptr noundef nonnull @.str.21) #11
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.word_type, ptr %99, i64 0, i32 1
  %157 = load ptr, ptr %4, align 8, !tbaa !5
  %158 = getelementptr inbounds %struct.word_type, ptr %157, i64 0, i32 4
  %159 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 49, i32 noundef 10, ptr noundef nonnull @.str.22, i32 noundef 2, ptr noundef nonnull %156, ptr noundef nonnull @.str.23, ptr noundef nonnull %158) #11
  br label %160

160:                                              ; preds = %155, %152
  %161 = call i32 @StringBeginsWith(ptr noundef nonnull %5, ptr noundef nonnull @.str.24) #11
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.word_type, ptr %99, i64 0, i32 1
  %165 = load ptr, ptr %4, align 8, !tbaa !5
  %166 = getelementptr inbounds %struct.word_type, ptr %165, i64 0, i32 4
  %167 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 49, i32 noundef 11, ptr noundef nonnull @.str.25, i32 noundef 2, ptr noundef nonnull %164, ptr noundef nonnull @.str.23, ptr noundef nonnull %166) #11
  br label %168

168:                                              ; preds = %163, %160
  %169 = call i32 @StringBeginsWith(ptr noundef nonnull %5, ptr noundef nonnull @.str.35) #11
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %235

171:                                              ; preds = %168
  %172 = call i32 @StringBeginsWith(ptr noundef nonnull %5, ptr noundef nonnull @.str.36) #11
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %235

174:                                              ; preds = %171
  %175 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %176 = call i32 @fputs(ptr noundef nonnull %5, ptr noundef %175)
  br label %235

177:                                              ; preds = %98
  %178 = call i32 @StringBeginsWith(ptr noundef nonnull %5, ptr noundef nonnull @.str.26) #11
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %225, label %180

180:                                              ; preds = %177
  %181 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %182 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %95, ptr noundef %181) #11
  %183 = load i8, ptr @zz_lengths, align 1, !tbaa !19
  %184 = zext i8 %183 to i32
  store i32 %184, ptr @zz_size, align 4, !tbaa !9
  %185 = zext i8 %183 to i64
  %186 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %185
  %187 = load ptr, ptr %186, align 8, !tbaa !5
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %192

189:                                              ; preds = %180
  %190 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %191 = call ptr @GetMemory(i32 noundef %184, ptr noundef %190) #11
  br label %194

192:                                              ; preds = %180
  store ptr %187, ptr @zz_hold, align 8, !tbaa !5
  %193 = load ptr, ptr %187, align 8, !tbaa !19
  store ptr %193, ptr %186, align 8, !tbaa !5
  br label %194

194:                                              ; preds = %189, %192
  %195 = phi ptr [ %191, %189 ], [ %187, %192 ]
  %196 = getelementptr inbounds %struct.word_type, ptr %195, i64 0, i32 1
  store i8 0, ptr %196, align 8, !tbaa !19
  %197 = getelementptr inbounds [2 x %struct.LIST], ptr %195, i64 0, i64 1, i32 1
  store ptr %195, ptr %197, align 8, !tbaa !19
  %198 = getelementptr inbounds [2 x %struct.LIST], ptr %195, i64 0, i64 1
  store ptr %195, ptr %198, align 8, !tbaa !19
  %199 = getelementptr inbounds %struct.LIST, ptr %195, i64 0, i32 1
  store ptr %195, ptr %199, align 8, !tbaa !19
  store ptr %195, ptr %195, align 8, !tbaa !19
  store ptr %195, ptr @xx_link, align 8, !tbaa !5
  store ptr %195, ptr @zz_res, align 8, !tbaa !5
  %200 = load ptr, ptr @needs, align 8, !tbaa !5
  store ptr %200, ptr @zz_hold, align 8, !tbaa !5
  %201 = icmp eq ptr %200, null
  br i1 %201, label %213, label %202

202:                                              ; preds = %194
  %203 = load ptr, ptr %200, align 8, !tbaa !19
  store ptr %203, ptr @zz_tmp, align 8, !tbaa !5
  %204 = load ptr, ptr %195, align 8, !tbaa !19
  store ptr %204, ptr %200, align 8, !tbaa !19
  %205 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %206 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %207 = load ptr, ptr %206, align 8, !tbaa !19
  %208 = getelementptr inbounds %struct.LIST, ptr %207, i64 0, i32 1
  store ptr %205, ptr %208, align 8, !tbaa !19
  %209 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %209, ptr %206, align 8, !tbaa !19
  %210 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %211 = getelementptr inbounds %struct.LIST, ptr %209, i64 0, i32 1
  store ptr %210, ptr %211, align 8, !tbaa !19
  %212 = load ptr, ptr @xx_link, align 8, !tbaa !5
  br label %213

213:                                              ; preds = %194, %202
  %214 = phi ptr [ %195, %194 ], [ %212, %202 ]
  store ptr %214, ptr @zz_res, align 8, !tbaa !5
  store ptr %182, ptr @zz_hold, align 8, !tbaa !5
  %215 = icmp eq ptr %182, null
  %216 = icmp eq ptr %214, null
  %217 = select i1 %215, i1 true, i1 %216
  br i1 %217, label %235, label %218

218:                                              ; preds = %213
  %219 = getelementptr inbounds [2 x %struct.LIST], ptr %182, i64 0, i64 1
  %220 = load ptr, ptr %219, align 8, !tbaa !19
  store ptr %220, ptr @zz_tmp, align 8, !tbaa !5
  %221 = getelementptr inbounds [2 x %struct.LIST], ptr %214, i64 0, i64 1
  %222 = load ptr, ptr %221, align 8, !tbaa !19
  store ptr %222, ptr %219, align 8, !tbaa !19
  %223 = getelementptr inbounds [2 x %struct.LIST], ptr %222, i64 0, i64 1, i32 1
  store ptr %182, ptr %223, align 8, !tbaa !19
  store ptr %220, ptr %221, align 8, !tbaa !19
  %224 = getelementptr inbounds [2 x %struct.LIST], ptr %220, i64 0, i64 1, i32 1
  store ptr %214, ptr %224, align 8, !tbaa !19
  br label %235

225:                                              ; preds = %177
  %226 = call i32 @StringBeginsWith(ptr noundef nonnull %5, ptr noundef nonnull @.str.35) #11
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %225
  %229 = call i32 @StringBeginsWith(ptr noundef nonnull %5, ptr noundef nonnull @.str.36) #11
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %228
  %232 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %233 = call i32 @fputs(ptr noundef nonnull %5, ptr noundef %232)
  br label %235

234:                                              ; preds = %98
  unreachable

235:                                              ; preds = %228, %231, %225, %218, %213, %171, %174, %168, %145, %140
  %236 = phi i32 [ 1, %140 ], [ 1, %145 ], [ 0, %168 ], [ 0, %174 ], [ 0, %171 ], [ 1, %213 ], [ 1, %218 ], [ 0, %225 ], [ 0, %231 ], [ 0, %228 ]
  %237 = phi ptr [ %99, %140 ], [ %99, %145 ], [ %99, %168 ], [ %99, %174 ], [ %99, %171 ], [ %182, %213 ], [ %182, %218 ], [ %99, %225 ], [ %99, %231 ], [ %99, %228 ]
  %238 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 512, ptr noundef %35)
  %239 = icmp eq ptr %238, null
  %240 = select i1 %239, i32 2, i32 %236
  br label %98

241:                                              ; preds = %98
  %242 = load ptr, ptr %4, align 8, !tbaa !5
  %243 = call i32 @DisposeObject(ptr noundef %242) #11
  %244 = call i32 @fclose(ptr noundef %35)
  %245 = load i32, ptr %6, align 4, !tbaa !9
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %249, label %247

247:                                              ; preds = %241
  %248 = call i32 @remove(ptr noundef nonnull @.str.27) #11
  br label %249

249:                                              ; preds = %247, %241
  %250 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %251 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %250, ptr noundef nonnull @.str.28)
  store i32 0, ptr @wordcount, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret void
}

declare ptr @OpenIncGraphicFile(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define internal void @PS_CoordScale(float noundef %0, float noundef %1) #0 {
  %3 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %4 = fpext float %0 to double
  %5 = fpext float %1 to double
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.34, double noundef %4, double noundef %5)
  store i32 0, ptr @cpexists, align 4, !tbaa !9
  ret void
}

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

declare i32 @StringBeginsWith(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @StringContains(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef nonnull ptr @ConvertToPDFName(ptr noundef %0) local_unnamed_addr #2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) @ConvertToPDFName.buff, ptr noundef nonnull align 1 dereferenceable(5) @.str.29, i64 5, i1 false) #11
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @ConvertToPDFName.buff) #12
  %3 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %4 = getelementptr inbounds i8, ptr @ConvertToPDFName.buff, i64 %2
  %5 = load i8, ptr %3, align 1, !tbaa !19
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  br label %9

9:                                                ; preds = %7, %18
  %10 = phi i8 [ %5, %7 ], [ %30, %18 ]
  %11 = phi ptr [ %4, %7 ], [ %29, %18 ]
  %12 = phi ptr [ %3, %7 ], [ %28, %18 ]
  %13 = phi i64 [ %2, %7 ], [ %27, %18 ]
  %14 = icmp slt i64 %13, 199
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 49, i32 noundef 12, ptr noundef nonnull @.str.30, i32 noundef 1, ptr noundef nonnull %8, ptr noundef nonnull %3) #11
  %17 = load i8, ptr %12, align 1, !tbaa !19
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi i8 [ %17, %15 ], [ %10, %9 ]
  %20 = and i8 %19, -33
  %21 = add i8 %20, -65
  %22 = icmp ult i8 %21, 26
  %23 = add i8 %19, -48
  %24 = icmp ult i8 %23, 10
  %25 = or i1 %24, %22
  %26 = select i1 %25, i8 %19, i8 95
  %27 = add nsw i64 %13, 1
  store i8 %26, ptr %11, align 1, !tbaa !19
  %28 = getelementptr inbounds i8, ptr %12, i64 1
  %29 = getelementptr inbounds i8, ptr @ConvertToPDFName.buff, i64 %27
  %30 = load i8, ptr %28, align 1, !tbaa !19
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %9

32:                                               ; preds = %18, %1
  %33 = phi ptr [ %4, %1 ], [ %29, %18 ]
  store i8 0, ptr %33, align 1, !tbaa !19
  ret ptr @ConvertToPDFName.buff
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @PS_PrintInitialize(ptr noundef %0) #2 {
  store ptr %0, ptr @out_fp, align 8, !tbaa !5
  store i1 false, ptr @prologue_done, align 4
  store i32 -1, ptr @gs_stack_top, align 4, !tbaa !9
  store i32 0, ptr @currentfont, align 4, !tbaa !9
  store i32 0, ptr @currentcolour, align 4, !tbaa !9
  store i32 0, ptr @cpexists, align 4, !tbaa !9
  store i32 0, ptr @pagecount, align 4, !tbaa !9
  store i32 0, ptr @wordcount, align 4, !tbaa !9
  %2 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !19
  %3 = zext i8 %2 to i32
  store i32 %3, ptr @zz_size, align 4, !tbaa !9
  %4 = zext i8 %2 to i64
  %5 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %10 = tail call ptr @GetMemory(i32 noundef %3, ptr noundef %9) #11
  store ptr %10, ptr @zz_hold, align 8, !tbaa !5
  br label %13

11:                                               ; preds = %1
  store ptr %6, ptr @zz_hold, align 8, !tbaa !5
  %12 = load ptr, ptr %6, align 8, !tbaa !19
  store ptr %12, ptr %5, align 8, !tbaa !5
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi ptr [ %10, %8 ], [ %6, %11 ]
  %15 = getelementptr inbounds %struct.word_type, ptr %14, i64 0, i32 1
  store i8 17, ptr %15, align 8, !tbaa !19
  %16 = getelementptr inbounds [2 x %struct.LIST], ptr %14, i64 0, i64 1, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !19
  %17 = getelementptr inbounds [2 x %struct.LIST], ptr %14, i64 0, i64 1
  store ptr %14, ptr %17, align 8, !tbaa !19
  %18 = getelementptr inbounds %struct.LIST, ptr %14, i64 0, i32 1
  store ptr %14, ptr %18, align 8, !tbaa !19
  store ptr %14, ptr %14, align 8, !tbaa !19
  store ptr %14, ptr @needs, align 8, !tbaa !5
  %19 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !19
  %20 = zext i8 %19 to i32
  store i32 %20, ptr @zz_size, align 4, !tbaa !9
  %21 = zext i8 %19 to i64
  %22 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %27 = tail call ptr @GetMemory(i32 noundef %20, ptr noundef %26) #11
  store ptr %27, ptr @zz_hold, align 8, !tbaa !5
  br label %30

28:                                               ; preds = %13
  store ptr %23, ptr @zz_hold, align 8, !tbaa !5
  %29 = load ptr, ptr %23, align 8, !tbaa !19
  store ptr %29, ptr %22, align 8, !tbaa !5
  br label %30

30:                                               ; preds = %25, %28
  %31 = phi ptr [ %27, %25 ], [ %23, %28 ]
  %32 = getelementptr inbounds %struct.word_type, ptr %31, i64 0, i32 1
  store i8 17, ptr %32, align 8, !tbaa !19
  %33 = getelementptr inbounds [2 x %struct.LIST], ptr %31, i64 0, i64 1, i32 1
  store ptr %31, ptr %33, align 8, !tbaa !19
  %34 = getelementptr inbounds [2 x %struct.LIST], ptr %31, i64 0, i64 1
  store ptr %31, ptr %34, align 8, !tbaa !19
  %35 = getelementptr inbounds %struct.LIST, ptr %31, i64 0, i32 1
  store ptr %31, ptr %35, align 8, !tbaa !19
  store ptr %31, ptr %31, align 8, !tbaa !19
  store ptr %31, ptr @supplied, align 8, !tbaa !5
  %36 = tail call noalias dereferenceable_or_null(1608) ptr @malloc(i64 noundef 1608) #13
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %40 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 43, i32 noundef 1, ptr noundef nonnull @.str.38, i32 noundef 1, ptr noundef %39) #11
  br label %41

41:                                               ; preds = %30, %38
  store i32 200, ptr %36, align 8, !tbaa !20
  %42 = getelementptr inbounds %struct.anon.14, ptr %36, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1604) %42, i8 0, i64 1604, i1 false)
  store ptr %36, ptr @link_dest_tab, align 8, !tbaa !5
  %43 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !19
  %44 = zext i8 %43 to i32
  store i32 %44, ptr @zz_size, align 4, !tbaa !9
  %45 = zext i8 %43 to i64
  %46 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !5
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %51 = tail call ptr @GetMemory(i32 noundef %44, ptr noundef %50) #11
  store ptr %51, ptr @zz_hold, align 8, !tbaa !5
  br label %54

52:                                               ; preds = %41
  store ptr %47, ptr @zz_hold, align 8, !tbaa !5
  %53 = load ptr, ptr %47, align 8, !tbaa !19
  store ptr %53, ptr %46, align 8, !tbaa !5
  br label %54

54:                                               ; preds = %49, %52
  %55 = phi ptr [ %51, %49 ], [ %47, %52 ]
  %56 = getelementptr inbounds %struct.word_type, ptr %55, i64 0, i32 1
  store i8 17, ptr %56, align 8, !tbaa !19
  %57 = getelementptr inbounds [2 x %struct.LIST], ptr %55, i64 0, i64 1, i32 1
  store ptr %55, ptr %57, align 8, !tbaa !19
  %58 = getelementptr inbounds [2 x %struct.LIST], ptr %55, i64 0, i64 1
  store ptr %55, ptr %58, align 8, !tbaa !19
  %59 = getelementptr inbounds %struct.LIST, ptr %55, i64 0, i32 1
  store ptr %55, ptr %59, align 8, !tbaa !19
  store ptr %55, ptr %55, align 8, !tbaa !19
  store ptr %55, ptr @link_source_list, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @PS_PrintLength(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 %2) #0 {
  %4 = sitofp i32 %1 to float
  %5 = fdiv float %4, 5.670000e+02
  %6 = fpext float %5 to double
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.39, double noundef %6) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintPageSetupForFont(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.40, ptr noundef %2)
  %7 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1, i64 4
  %8 = load i8, ptr %7, align 4
  %9 = icmp sgt i8 %8, -1
  br i1 %9, label %21, label %10

10:                                               ; preds = %4
  %11 = and i8 %8, 127
  %12 = zext nneg i8 %11 to i32
  tail call void @MapEnsurePrinted(i32 noundef %12, i32 noundef %1) #11
  %13 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %14 = load i8, ptr %7, align 4
  %15 = and i8 %14, 127
  %16 = zext nneg i8 %15 to i32
  %17 = tail call ptr @MapEncodingName(i32 noundef %16) #11
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.41, ptr noundef %2, ptr noundef %3, ptr noundef %17, ptr noundef %2)
  %19 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.42, ptr noundef %3, ptr noundef %2, ptr noundef %3)
  br label %24

21:                                               ; preds = %4
  %22 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.43, ptr noundef %3, ptr noundef %2)
  br label %24

24:                                               ; preds = %21, %10
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @PS_PrintPageResourceForFont(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %4 = icmp eq i32 %1, 0
  %5 = select i1 %4, ptr @.str.26, ptr @.str.45
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.44, ptr noundef nonnull %5, ptr noundef %0)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @PS_PrintMapping(i32 noundef %0) #0 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [0 x ptr], ptr @MapTable, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.mapvec, ptr %4, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.word_type, ptr %7, i64 0, i32 4
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.46, ptr noundef nonnull %8)
  %10 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %11 = load ptr, ptr %6, align 8, !tbaa !22
  %12 = getelementptr inbounds %struct.word_type, ptr %11, i64 0, i32 4
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.47, ptr noundef nonnull %12)
  br label %14

14:                                               ; preds = %1, %14
  %15 = phi i64 [ 0, %1 ], [ %20, %14 ]
  %16 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.mapvec, ptr %4, i64 0, i32 5, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.word_type, ptr %18, i64 0, i32 4
  %20 = add nuw nsw i64 %15, 1
  %21 = and i64 %20, 7
  %22 = icmp eq i64 %21, 0
  %23 = select i1 %22, i32 10, i32 32
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.48, ptr noundef nonnull %19, i32 noundef %23)
  %25 = icmp eq i64 %20, 256
  br i1 %25, label %26, label %14

26:                                               ; preds = %14
  %27 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %28 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 6, i64 1, ptr %27)
  %29 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.50)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintBeforeFirstPage(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca [512 x i8], align 16
  %5 = load i32, ptr @Encapsulated, align 4, !tbaa !9
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr @out_fp, align 8, !tbaa !5
  br i1 %6, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 24, i64 1, ptr %7)
  br label %12

10:                                               ; preds = %3
  %11 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 15, i64 1, ptr %7)
  br label %12

12:                                               ; preds = %10, %8
  %13 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54)
  %15 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %16 = tail call ptr @TimeString() #11
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.55, ptr noundef %16)
  %18 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %19 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 23, i64 1, ptr %18)
  %20 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %21 = tail call i64 @fwrite(ptr nonnull @.str.57, i64 35, i64 1, ptr %20)
  %22 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %23 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 37, i64 1, ptr %22)
  %24 = load ptr, ptr @out_fp, align 8, !tbaa !5
  switch i32 %0, label %48 [
    i32 12240, label %25
    i32 15840, label %26
    i32 24480, label %28
    i32 7920, label %30
    i32 10800, label %32
    i32 16840, label %34
    i32 11900, label %36
    i32 8400, label %38
    i32 14580, label %40
    i32 10320, label %42
    i32 12200, label %44
    i32 14400, label %46
  ]

25:                                               ; preds = %12
  switch i32 %1, label %48 [
    i32 15840, label %51
    i32 20160, label %49
    i32 18720, label %50
  ]

26:                                               ; preds = %12
  %27 = icmp eq i32 %1, 24480
  br i1 %27, label %51, label %48

28:                                               ; preds = %12
  %29 = icmp eq i32 %1, 15840
  br i1 %29, label %51, label %48

30:                                               ; preds = %12
  %31 = icmp eq i32 %1, 12240
  br i1 %31, label %51, label %48

32:                                               ; preds = %12
  %33 = icmp eq i32 %1, 14400
  br i1 %33, label %51, label %48

34:                                               ; preds = %12
  %35 = icmp eq i32 %1, 23800
  br i1 %35, label %51, label %48

36:                                               ; preds = %12
  %37 = icmp eq i32 %1, 16840
  br i1 %37, label %51, label %48

38:                                               ; preds = %12
  %39 = icmp eq i32 %1, 11900
  br i1 %39, label %51, label %48

40:                                               ; preds = %12
  %41 = icmp eq i32 %1, 20640
  br i1 %41, label %51, label %48

42:                                               ; preds = %12
  %43 = icmp eq i32 %1, 14580
  br i1 %43, label %51, label %48

44:                                               ; preds = %12
  %45 = icmp eq i32 %1, 15600
  br i1 %45, label %51, label %48

46:                                               ; preds = %12
  %47 = icmp eq i32 %1, 20160
  br i1 %47, label %51, label %48

48:                                               ; preds = %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %25, %12
  br label %51

49:                                               ; preds = %25
  br label %51

50:                                               ; preds = %25
  br label %51

51:                                               ; preds = %25, %26, %28, %30, %32, %34, %36, %38, %40, %42, %44, %46, %48, %49, %50
  %52 = phi ptr [ @.str.147, %25 ], [ @.str.148, %26 ], [ @.str.149, %28 ], [ @.str.151, %30 ], [ @.str.152, %32 ], [ @.str.153, %34 ], [ @.str.154, %36 ], [ @.str.155, %38 ], [ @.str.156, %40 ], [ @.str.157, %42 ], [ @.str.159, %44 ], [ @.str.160, %46 ], [ @.str.161, %48 ], [ @.str.150, %49 ], [ @.str.158, %50 ]
  %53 = sdiv i32 %0, 20
  %54 = sdiv i32 %1, 20
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.59, ptr noundef nonnull %52, i32 noundef %53, i32 noundef %54)
  %56 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %57 = tail call i64 @fwrite(ptr nonnull @.str.60, i64 20, i64 1, ptr %56)
  %58 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %59 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 17, i64 1, ptr %58)
  %60 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.62, i32 noundef %53, i32 noundef %54)
  %62 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %63 = tail call i64 @fwrite(ptr nonnull @.str.63, i64 15, i64 1, ptr %62)
  %64 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %65 = tail call i64 @fwrite(ptr nonnull @.str.64, i64 14, i64 1, ptr %64)
  %66 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %67 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66)
  %68 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %69 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 60, i64 1, ptr %68)
  %70 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %71 = tail call i64 @fwrite(ptr nonnull @.str.68, i64 37, i64 1, ptr %70)
  %72 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %73 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 52, i64 1, ptr %72)
  %74 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %75 = tail call i64 @fwrite(ptr nonnull @.str.70, i64 54, i64 1, ptr %74)
  %76 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %77 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 38, i64 1, ptr %76)
  %78 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %79 = tail call i64 @fwrite(ptr nonnull @.str.72, i64 41, i64 1, ptr %78)
  %80 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %81 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 56, i64 1, ptr %80)
  %82 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %83 = tail call i64 @fwrite(ptr nonnull @.str.74, i64 59, i64 1, ptr %82)
  %84 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %85 = tail call i64 @fwrite(ptr nonnull @.str.75, i64 41, i64 1, ptr %84)
  %86 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %87 = tail call i64 @fwrite(ptr nonnull @.str.76, i64 44, i64 1, ptr %86)
  %88 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %89 = tail call i64 @fwrite(ptr nonnull @.str.77, i64 37, i64 1, ptr %88)
  %90 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %91 = tail call i64 @fwrite(ptr nonnull @.str.78, i64 40, i64 1, ptr %90)
  %92 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %93 = tail call i64 @fwrite(ptr nonnull @.str.79, i64 54, i64 1, ptr %92)
  %94 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %95 = tail call i64 @fwrite(ptr nonnull @.str.80, i64 57, i64 1, ptr %94)
  %96 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %97 = tail call i64 @fwrite(ptr nonnull @.str.81, i64 38, i64 1, ptr %96)
  %98 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %99 = tail call i64 @fwrite(ptr nonnull @.str.82, i64 47, i64 1, ptr %98)
  %100 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %101 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %100, ptr noundef nonnull @.str.83, i32 noundef 1440)
  %102 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %103 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef nonnull @.str.84, i32 noundef 567)
  %104 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %105 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %104, ptr noundef nonnull @.str.85, i32 noundef 20)
  %106 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %107 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef nonnull @.str.86, i32 noundef 120)
  %108 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %109 = tail call i64 @fwrite(ptr nonnull @.str.87, i64 22, i64 1, ptr %108)
  %110 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %111 = tail call i64 @fwrite(ptr nonnull @.str.88, i64 22, i64 1, ptr %110)
  %112 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %113 = tail call i64 @fwrite(ptr nonnull @.str.89, i64 22, i64 1, ptr %112)
  %114 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %115 = tail call i64 @fwrite(ptr nonnull @.str.90, i64 23, i64 1, ptr %114)
  %116 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %117 = tail call i64 @fwrite(ptr nonnull @.str.91, i64 15, i64 1, ptr %116)
  %118 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %119 = tail call i64 @fwrite(ptr nonnull @.str.92, i64 18, i64 1, ptr %118)
  %120 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %121 = tail call i64 @fwrite(ptr nonnull @.str.93, i64 18, i64 1, ptr %120)
  %122 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %123 = tail call i64 @fwrite(ptr nonnull @.str.94, i64 18, i64 1, ptr %122)
  %124 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %125 = tail call i64 @fwrite(ptr nonnull @.str.95, i64 18, i64 1, ptr %124)
  %126 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %127 = tail call i64 @fwrite(ptr nonnull @.str.96, i64 18, i64 1, ptr %126)
  %128 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %129 = tail call i64 @fwrite(ptr nonnull @.str.97, i64 18, i64 1, ptr %128)
  %130 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %131 = tail call i64 @fwrite(ptr nonnull @.str.98, i64 25, i64 1, ptr %130)
  %132 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %133 = tail call i64 @fwrite(ptr nonnull @.str.99, i64 52, i64 1, ptr %132)
  %134 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %135 = tail call i64 @fwrite(ptr nonnull @.str.100, i64 10, i64 1, ptr %134)
  %136 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %137 = tail call i64 @fwrite(ptr nonnull @.str.101, i64 34, i64 1, ptr %136)
  %138 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %139 = tail call i64 @fwrite(ptr nonnull @.str.102, i64 12, i64 1, ptr %138)
  %140 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %141 = tail call i64 @fwrite(ptr nonnull @.str.103, i64 14, i64 1, ptr %140)
  %142 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %143 = tail call i64 @fwrite(ptr nonnull @.str.104, i64 35, i64 1, ptr %142)
  %144 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %145 = tail call i64 @fwrite(ptr nonnull @.str.105, i64 52, i64 1, ptr %144)
  %146 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %147 = tail call i64 @fwrite(ptr nonnull @.str.106, i64 23, i64 1, ptr %146)
  %148 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %149 = tail call i64 @fwrite(ptr nonnull @.str.107, i64 35, i64 1, ptr %148)
  %150 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %151 = tail call i64 @fwrite(ptr nonnull @.str.108, i64 4, i64 1, ptr %150)
  %152 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %153 = tail call i64 @fwrite(ptr nonnull @.str.109, i64 14, i64 1, ptr %152)
  %154 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %155 = tail call i64 @fwrite(ptr nonnull @.str.102, i64 12, i64 1, ptr %154)
  %156 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %157 = tail call i64 @fwrite(ptr nonnull @.str.110, i64 13, i64 1, ptr %156)
  %158 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %159 = tail call i64 @fwrite(ptr nonnull @.str.111, i64 26, i64 1, ptr %158)
  %160 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %161 = tail call i64 @fwrite(ptr nonnull @.str.112, i64 33, i64 1, ptr %160)
  %162 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %163 = tail call i64 @fwrite(ptr nonnull @.str.113, i64 28, i64 1, ptr %162)
  %164 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %165 = tail call i64 @fwrite(ptr nonnull @.str.114, i64 17, i64 1, ptr %164)
  %166 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %167 = tail call i64 @fwrite(ptr nonnull @.str.115, i64 20, i64 1, ptr %166)
  %168 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %169 = tail call i64 @fwrite(ptr nonnull @.str.116, i64 25, i64 1, ptr %168)
  %170 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %171 = tail call i64 @fwrite(ptr nonnull @.str.117, i64 31, i64 1, ptr %170)
  %172 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %173 = tail call i64 @fwrite(ptr nonnull @.str.118, i64 40, i64 1, ptr %172)
  %174 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %175 = tail call i64 @fwrite(ptr nonnull @.str.119, i64 23, i64 1, ptr %174)
  %176 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %177 = tail call i64 @fwrite(ptr nonnull @.str.120, i64 22, i64 1, ptr %176)
  %178 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %179 = tail call i64 @fwrite(ptr nonnull @.str.121, i64 9, i64 1, ptr %178)
  %180 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %181 = tail call i64 @fwrite(ptr nonnull @.str.122, i64 47, i64 1, ptr %180)
  %182 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %183 = tail call i64 @fwrite(ptr nonnull @.str.123, i64 9, i64 1, ptr %182)
  %184 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %185 = tail call i64 @fwrite(ptr nonnull @.str.124, i64 7, i64 1, ptr %184)
  %186 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %187 = tail call i64 @fwrite(ptr nonnull @.str.102, i64 12, i64 1, ptr %186)
  %188 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %189 = tail call i64 @fwrite(ptr nonnull @.str.125, i64 11, i64 1, ptr %188)
  %190 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %191 = tail call i64 @fwrite(ptr nonnull @.str.126, i64 36, i64 1, ptr %190)
  %192 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %193 = tail call i64 @fwrite(ptr nonnull @.str.127, i64 47, i64 1, ptr %192)
  %194 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %195 = tail call i64 @fwrite(ptr nonnull @.str.128, i64 24, i64 1, ptr %194)
  %196 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %197 = tail call i64 @fwrite(ptr nonnull @.str.129, i64 11, i64 1, ptr %196)
  %198 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %199 = tail call i64 @fwrite(ptr nonnull @.str.130, i64 15, i64 1, ptr %198)
  %200 = tail call zeroext i16 @FirstFile(i32 noundef 6) #11
  %201 = icmp eq i16 %200, 0
  br i1 %201, label %291, label %202

202:                                              ; preds = %51
  %203 = getelementptr inbounds [512 x i8], ptr %4, i64 0, i64 16
  br label %204

204:                                              ; preds = %202, %288
  %205 = phi i16 [ %200, %202 ], [ %289, %288 ]
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #11
  %206 = call ptr @OpenFile(i16 noundef zeroext %205, i32 noundef 0, i32 noundef 0) #11
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %212

208:                                              ; preds = %204
  %209 = call ptr @PosOfFile(i16 noundef zeroext %205) #11
  %210 = call ptr @FileName(i16 noundef zeroext %205) #11
  %211 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 49, i32 noundef 3, ptr noundef nonnull @.str.131, i32 noundef 2, ptr noundef %209, ptr noundef nonnull @.str.132, ptr noundef %210) #11
  br label %288

212:                                              ; preds = %204
  %213 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 512, ptr noundef nonnull %206)
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %219

215:                                              ; preds = %212
  %216 = call ptr @PosOfFile(i16 noundef zeroext %205) #11
  %217 = call ptr @FileName(i16 noundef zeroext %205) #11
  %218 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 49, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 2, ptr noundef %216, ptr noundef nonnull @.str.132, ptr noundef %217) #11
  br label %288

219:                                              ; preds = %212
  %220 = call i32 @StringBeginsWith(ptr noundef nonnull %4, ptr noundef nonnull @.str.134) #11
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %267, label %222

222:                                              ; preds = %219
  %223 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %224 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %203, ptr noundef %223) #11
  %225 = load i8, ptr @zz_lengths, align 1, !tbaa !19
  %226 = zext i8 %225 to i32
  store i32 %226, ptr @zz_size, align 4, !tbaa !9
  %227 = zext i8 %225 to i64
  %228 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !5
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %234

231:                                              ; preds = %222
  %232 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %233 = call ptr @GetMemory(i32 noundef %226, ptr noundef %232) #11
  br label %236

234:                                              ; preds = %222
  store ptr %229, ptr @zz_hold, align 8, !tbaa !5
  %235 = load ptr, ptr %229, align 8, !tbaa !19
  store ptr %235, ptr %228, align 8, !tbaa !5
  br label %236

236:                                              ; preds = %231, %234
  %237 = phi ptr [ %233, %231 ], [ %229, %234 ]
  %238 = getelementptr inbounds %struct.word_type, ptr %237, i64 0, i32 1
  store i8 0, ptr %238, align 8, !tbaa !19
  %239 = getelementptr inbounds [2 x %struct.LIST], ptr %237, i64 0, i64 1, i32 1
  store ptr %237, ptr %239, align 8, !tbaa !19
  %240 = getelementptr inbounds [2 x %struct.LIST], ptr %237, i64 0, i64 1
  store ptr %237, ptr %240, align 8, !tbaa !19
  %241 = getelementptr inbounds %struct.LIST, ptr %237, i64 0, i32 1
  store ptr %237, ptr %241, align 8, !tbaa !19
  store ptr %237, ptr %237, align 8, !tbaa !19
  store ptr %237, ptr @xx_link, align 8, !tbaa !5
  store ptr %237, ptr @zz_res, align 8, !tbaa !5
  %242 = load ptr, ptr @supplied, align 8, !tbaa !5
  store ptr %242, ptr @zz_hold, align 8, !tbaa !5
  %243 = icmp eq ptr %242, null
  br i1 %243, label %255, label %244

244:                                              ; preds = %236
  %245 = load ptr, ptr %242, align 8, !tbaa !19
  store ptr %245, ptr @zz_tmp, align 8, !tbaa !5
  %246 = load ptr, ptr %237, align 8, !tbaa !19
  store ptr %246, ptr %242, align 8, !tbaa !19
  %247 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %248 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %249 = load ptr, ptr %248, align 8, !tbaa !19
  %250 = getelementptr inbounds %struct.LIST, ptr %249, i64 0, i32 1
  store ptr %247, ptr %250, align 8, !tbaa !19
  %251 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %251, ptr %248, align 8, !tbaa !19
  %252 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %253 = getelementptr inbounds %struct.LIST, ptr %251, i64 0, i32 1
  store ptr %252, ptr %253, align 8, !tbaa !19
  %254 = load ptr, ptr @xx_link, align 8, !tbaa !5
  br label %255

255:                                              ; preds = %236, %244
  %256 = phi ptr [ %237, %236 ], [ %254, %244 ]
  store ptr %256, ptr @zz_res, align 8, !tbaa !5
  store ptr %224, ptr @zz_hold, align 8, !tbaa !5
  %257 = icmp eq ptr %224, null
  %258 = icmp eq ptr %256, null
  %259 = select i1 %257, i1 true, i1 %258
  br i1 %259, label %271, label %260

260:                                              ; preds = %255
  %261 = getelementptr inbounds [2 x %struct.LIST], ptr %224, i64 0, i64 1
  %262 = load ptr, ptr %261, align 8, !tbaa !19
  store ptr %262, ptr @zz_tmp, align 8, !tbaa !5
  %263 = getelementptr inbounds [2 x %struct.LIST], ptr %256, i64 0, i64 1
  %264 = load ptr, ptr %263, align 8, !tbaa !19
  store ptr %264, ptr %261, align 8, !tbaa !19
  %265 = getelementptr inbounds [2 x %struct.LIST], ptr %264, i64 0, i64 1, i32 1
  store ptr %224, ptr %265, align 8, !tbaa !19
  store ptr %262, ptr %263, align 8, !tbaa !19
  %266 = getelementptr inbounds [2 x %struct.LIST], ptr %262, i64 0, i64 1, i32 1
  store ptr %256, ptr %266, align 8, !tbaa !19
  br label %271

267:                                              ; preds = %219
  %268 = call ptr @PosOfFile(i16 noundef zeroext %205) #11
  %269 = call ptr @FileName(i16 noundef zeroext %205) #11
  %270 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 49, i32 noundef 5, ptr noundef nonnull @.str.135, i32 noundef 2, ptr noundef %268, ptr noundef nonnull @.str.132, ptr noundef %269) #11
  br label %271

271:                                              ; preds = %260, %255, %267
  %272 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %273 = call i32 @fputs(ptr noundef nonnull %4, ptr noundef %272)
  %274 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %275 = call ptr @FileName(i16 noundef zeroext %205) #11
  %276 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %274, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.132, ptr noundef %275)
  %277 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 512, ptr noundef nonnull %206)
  %278 = icmp eq ptr %277, null
  br i1 %278, label %284, label %279

279:                                              ; preds = %271, %279
  %280 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %281 = call i32 @fputs(ptr noundef nonnull %4, ptr noundef %280)
  %282 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 512, ptr noundef nonnull %206)
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %279

284:                                              ; preds = %279, %271
  %285 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %286 = call i32 @fputc(i32 10, ptr %285)
  %287 = call i32 @fclose(ptr noundef nonnull %206)
  br label %288

288:                                              ; preds = %215, %284, %208
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #11
  %289 = call zeroext i16 @NextFile(i16 noundef zeroext %205) #11
  %290 = icmp eq i16 %289, 0
  br i1 %290, label %291, label %204

291:                                              ; preds = %288, %51
  %292 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %293 = call i64 @fwrite(ptr nonnull @.str.137, i64 13, i64 1, ptr %292)
  %294 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %295 = call i64 @fwrite(ptr nonnull @.str.138, i64 13, i64 1, ptr %294)
  call void (...) @MapPrintEncodings() #11
  %296 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %297 = call i64 @fwrite(ptr nonnull @.str.139, i64 70, i64 1, ptr %296)
  %298 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %299 = call i64 @fwrite(ptr nonnull @.str.140, i64 12, i64 1, ptr %298)
  %300 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %301 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %300, ptr noundef nonnull @.str.141)
  %302 = load i8, ptr %2, align 1, !tbaa !19
  %303 = icmp eq i8 %302, 0
  br i1 %303, label %315, label %304

304:                                              ; preds = %291, %304
  %305 = phi i8 [ %313, %304 ], [ %302, %291 ]
  %306 = phi ptr [ %312, %304 ], [ %2, %291 ]
  %307 = zext i8 %305 to i64
  %308 = getelementptr inbounds [0 x ptr], ptr @EightBitToPrintForm, i64 0, i64 %307
  %309 = load ptr, ptr %308, align 8, !tbaa !5
  %310 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %311 = call i32 @fputs(ptr noundef %309, ptr noundef %310)
  %312 = getelementptr inbounds i8, ptr %306, i64 1
  %313 = load i8, ptr %312, align 1, !tbaa !19
  %314 = icmp eq i8 %313, 0
  br i1 %314, label %315, label %304

315:                                              ; preds = %304, %291
  %316 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %317 = load i32, ptr @pagecount, align 4, !tbaa !9
  %318 = add nsw i32 %317, 1
  store i32 %318, ptr @pagecount, align 4, !tbaa !9
  %319 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %316, ptr noundef nonnull @.str.142, i32 noundef %318)
  %320 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %321 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %320, ptr noundef nonnull @.str.143)
  %322 = load ptr, ptr @out_fp, align 8, !tbaa !5
  call void @FontPrintPageResources(ptr noundef %322) #11
  %323 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %324 = call i64 @fwrite(ptr nonnull @.str.144, i64 17, i64 1, ptr %323)
  %325 = load ptr, ptr @out_fp, align 8, !tbaa !5
  call void @FontPrintPageSetup(ptr noundef %325) #11
  call void @FontAdvanceCurrentPage() #11
  %326 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %327 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %326, ptr noundef nonnull @.str.145, double noundef 5.000000e-02, i32 noundef 10)
  %328 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %329 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %328, ptr noundef nonnull @.str.146)
  store i1 true, ptr @prologue_done, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintBetweenPages(i32 %0, i32 %1, ptr nocapture noundef readonly %2) #2 {
  %4 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %5 = tail call i64 @fwrite(ptr nonnull @.str.162, i64 25, i64 1, ptr %4)
  store i32 0, ptr @gs_stack_top, align 4, !tbaa !9
  store i32 0, ptr @cpexists, align 4, !tbaa !9
  store i32 0, ptr @currentfont, align 4, !tbaa !9
  store i32 0, ptr @currentcolour, align 4, !tbaa !9
  %6 = load i32, ptr @Encapsulated, align 4, !tbaa !9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  tail call void @PS_PrintAfterLastPage()
  %9 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %10 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 49, i32 noundef 6, ptr noundef nonnull @.str.163, i32 noundef 1, ptr noundef %9) #11
  br label %11

11:                                               ; preds = %8, %3
  %12 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.164)
  %14 = load i8, ptr %2, align 1, !tbaa !19
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %11, %16
  %17 = phi i8 [ %25, %16 ], [ %14, %11 ]
  %18 = phi ptr [ %24, %16 ], [ %2, %11 ]
  %19 = zext i8 %17 to i64
  %20 = getelementptr inbounds [0 x ptr], ptr @EightBitToPrintForm, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %23 = tail call i32 @fputs(ptr noundef %21, ptr noundef %22)
  %24 = getelementptr inbounds i8, ptr %18, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !19
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %16

27:                                               ; preds = %16, %11
  %28 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %29 = load i32, ptr @pagecount, align 4, !tbaa !9
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr @pagecount, align 4, !tbaa !9
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.142, i32 noundef %30)
  %32 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.143)
  %34 = load ptr, ptr @out_fp, align 8, !tbaa !5
  tail call void @FontPrintPageResources(ptr noundef %34) #11
  %35 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %36 = tail call i64 @fwrite(ptr nonnull @.str.144, i64 17, i64 1, ptr %35)
  %37 = load ptr, ptr @out_fp, align 8, !tbaa !5
  tail call void @FontPrintPageSetup(ptr noundef %37) #11
  tail call void @FontAdvanceCurrentPage() #11
  %38 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.145, double noundef 5.000000e-02, i32 noundef 10)
  %40 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.165)
  store i32 0, ptr @wordcount, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintAfterLastPage() #2 {
  %1 = load i1, ptr @prologue_done, align 4
  br i1 %1, label %2, label %67

2:                                                ; preds = %0
  %3 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(ptr nonnull @.str.162, i64 25, i64 1, ptr %3)
  %5 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.166)
  %7 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %8 = tail call i32 @FontNeeded(ptr noundef %7) #11
  %9 = load ptr, ptr @needs, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.LIST, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = icmp eq ptr %11, %9
  br i1 %12, label %36, label %13

13:                                               ; preds = %2
  %14 = icmp eq i32 %8, 0
  %15 = select i1 %14, ptr @.str.26, ptr @.str.18
  br label %16

16:                                               ; preds = %13, %28
  %17 = phi ptr [ %33, %28 ], [ %11, %13 ]
  %18 = phi ptr [ @.str.26, %28 ], [ %15, %13 ]
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi ptr [ %22, %19 ], [ %17, %16 ]
  %21 = getelementptr inbounds [2 x %struct.LIST], ptr %20, i64 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !19
  %23 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 1
  %24 = load i8, ptr %23, align 8, !tbaa !19
  switch i8 %24, label %25 [
    i8 0, label %19
    i8 11, label %28
    i8 12, label %28
  ]

25:                                               ; preds = %19
  %26 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %27 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef %26, ptr noundef nonnull @.str.167) #11
  br label %28

28:                                               ; preds = %19, %19, %25
  %29 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 4
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.168, ptr noundef nonnull %18, ptr noundef nonnull %30)
  %32 = getelementptr inbounds %struct.LIST, ptr %17, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !19
  %34 = load ptr, ptr @needs, align 8, !tbaa !5
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %36, label %16

36:                                               ; preds = %28, %2
  %37 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.66)
  %39 = load ptr, ptr @supplied, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.LIST, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !19
  %42 = icmp eq ptr %41, %39
  br i1 %42, label %60, label %43

43:                                               ; preds = %36, %52
  %44 = phi ptr [ %57, %52 ], [ %41, %36 ]
  br label %45

45:                                               ; preds = %43, %45
  %46 = phi ptr [ %48, %45 ], [ %44, %43 ]
  %47 = getelementptr inbounds [2 x %struct.LIST], ptr %46, i64 0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !19
  %49 = getelementptr inbounds %struct.word_type, ptr %48, i64 0, i32 1
  %50 = load i8, ptr %49, align 8, !tbaa !19
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %45, label %52

52:                                               ; preds = %45
  %53 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %54 = getelementptr inbounds %struct.word_type, ptr %48, i64 0, i32 4
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef nonnull @.str.170, ptr noundef nonnull %54)
  %56 = getelementptr inbounds %struct.LIST, ptr %44, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !19
  %58 = load ptr, ptr @supplied, align 8, !tbaa !5
  %59 = icmp eq ptr %57, %58
  br i1 %59, label %60, label %43

60:                                               ; preds = %52, %36
  %61 = load ptr, ptr @out_fp, align 8, !tbaa !5
  tail call void @MapPrintPSResources(ptr noundef %61) #11
  %62 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %63 = load i32, ptr @pagecount, align 4, !tbaa !9
  %64 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.171, i32 noundef %63)
  %65 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.172)
  br label %67

67:                                               ; preds = %60, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintWord(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca [20 x i8], align 16
  %5 = alloca [20 x i8], align 16
  %6 = alloca [20 x i8], align 16
  %7 = alloca [20 x i8], align 16
  %8 = alloca [20 x i8], align 16
  %9 = load i32, ptr @TotalWordCount, align 4, !tbaa !9
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr @TotalWordCount, align 4, !tbaa !9
  %11 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 4095
  %14 = load i32, ptr @currentfont, align 4, !tbaa !9
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %33, label %16

16:                                               ; preds = %3
  store i32 %13, ptr @currentfont, align 4, !tbaa !9
  %17 = tail call i32 @FontHalfXHeight(i32 noundef %13) #11
  %18 = trunc i32 %17 to i16
  store i16 %18, ptr @currentxheight2, align 2, !tbaa !18
  %19 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %20 = load i32, ptr @currentfont, align 4, !tbaa !9
  %21 = tail call i32 @FontSize(i32 noundef %20, ptr noundef nonnull %0) #11
  %22 = load i32, ptr @currentfont, align 4, !tbaa !9
  %23 = tail call ptr @FontName(i32 noundef %22) #11
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.173, i32 noundef %21, ptr noundef %23)
  %25 = load i32, ptr @wordcount, align 4, !tbaa !9
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr @wordcount, align 4, !tbaa !9
  %27 = icmp sgt i32 %25, 3
  %28 = load ptr, ptr @out_fp, align 8, !tbaa !5
  br i1 %27, label %29, label %31

29:                                               ; preds = %16
  %30 = tail call i32 @putc(i32 noundef 10, ptr noundef %28)
  store i32 0, ptr @wordcount, align 4, !tbaa !9
  br label %33

31:                                               ; preds = %16
  %32 = tail call i32 @putc(i32 noundef 32, ptr noundef %28)
  br label %33

33:                                               ; preds = %29, %31, %3
  %34 = load i32, ptr %11, align 8
  %35 = lshr i32 %34, 12
  %36 = and i32 %35, 1023
  %37 = load i32, ptr @currentcolour, align 4, !tbaa !9
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %53, label %39

39:                                               ; preds = %33
  store i32 %36, ptr @currentcolour, align 4, !tbaa !9
  %40 = icmp eq i32 %36, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %43 = tail call ptr @ColourCommand(i32 noundef %36) #11
  %44 = tail call i32 @fputs(ptr %43, ptr %42)
  %45 = load i32, ptr @wordcount, align 4, !tbaa !9
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr @wordcount, align 4, !tbaa !9
  %47 = icmp sgt i32 %45, 3
  %48 = load ptr, ptr @out_fp, align 8, !tbaa !5
  br i1 %47, label %49, label %51

49:                                               ; preds = %41
  %50 = tail call i32 @putc(i32 noundef 10, ptr noundef %48)
  store i32 0, ptr @wordcount, align 4, !tbaa !9
  br label %53

51:                                               ; preds = %41
  %52 = tail call i32 @putc(i32 noundef 32, ptr noundef %48)
  br label %53

53:                                               ; preds = %39, %51, %49, %33
  %54 = load ptr, ptr @finfo, align 8, !tbaa !5
  %55 = load i32, ptr %11, align 8
  %56 = and i32 %55, 4095
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds %struct.font_rec, ptr %54, i64 %57, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !24
  %60 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %61 = load i8, ptr %60, align 1, !tbaa !19
  br label %62

62:                                               ; preds = %119, %53
  %63 = phi i8 [ %61, %53 ], [ %121, %119 ]
  %64 = phi ptr [ %60, %53 ], [ %67, %119 ]
  %65 = phi ptr [ %60, %53 ], [ %120, %119 ]
  %66 = getelementptr inbounds i8, ptr %65, i64 1
  %67 = getelementptr inbounds i8, ptr %64, i64 1
  store i8 %63, ptr %64, align 1, !tbaa !19
  %68 = zext i8 %63 to i64
  %69 = getelementptr inbounds i8, ptr %59, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !19
  %71 = icmp ult i8 %70, 2
  br i1 %71, label %119, label %72

72:                                               ; preds = %62
  %73 = load i8, ptr %65, align 1, !tbaa !19
  %74 = zext i8 %73 to i64
  %75 = getelementptr inbounds i8, ptr %59, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !19
  %77 = zext i8 %76 to i64
  %78 = or disjoint i64 %77, 256
  %79 = getelementptr inbounds i8, ptr %59, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !19
  %81 = icmp eq i8 %80, %73
  br i1 %81, label %82, label %119

82:                                               ; preds = %72
  %83 = load i8, ptr %66, align 1, !tbaa !19
  br label %84

84:                                               ; preds = %82, %115
  %85 = phi ptr [ %79, %82 ], [ %116, %115 ]
  %86 = getelementptr inbounds i8, ptr %85, i64 1
  %87 = load i8, ptr %86, align 1, !tbaa !19
  %88 = icmp eq i8 %87, %83
  br i1 %88, label %89, label %102

89:                                               ; preds = %84, %98
  %90 = phi i8 [ %94, %98 ], [ %83, %84 ]
  %91 = phi ptr [ %93, %98 ], [ %86, %84 ]
  %92 = phi ptr [ %99, %98 ], [ %66, %84 ]
  %93 = getelementptr inbounds i8, ptr %91, i64 1
  %94 = load i8, ptr %93, align 1, !tbaa !19
  %95 = icmp eq i8 %94, 0
  %96 = icmp eq i8 %90, 0
  %97 = or i1 %96, %95
  br i1 %97, label %102, label %98

98:                                               ; preds = %89
  %99 = getelementptr inbounds i8, ptr %92, i64 1
  %100 = load i8, ptr %99, align 1, !tbaa !19
  %101 = icmp eq i8 %94, %100
  br i1 %101, label %89, label %102

102:                                              ; preds = %98, %89, %84
  %103 = phi ptr [ %66, %84 ], [ %92, %89 ], [ %99, %98 ]
  %104 = phi ptr [ %86, %84 ], [ %91, %89 ], [ %93, %98 ]
  %105 = phi i8 [ %87, %84 ], [ %90, %89 ], [ %94, %98 ]
  %106 = getelementptr inbounds i8, ptr %104, i64 1
  %107 = load i8, ptr %106, align 1, !tbaa !19
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  store i8 %105, ptr %64, align 1, !tbaa !19
  br label %119

110:                                              ; preds = %102, %110
  %111 = phi ptr [ %112, %110 ], [ %104, %102 ]
  %112 = getelementptr inbounds i8, ptr %111, i64 1
  %113 = load i8, ptr %112, align 1, !tbaa !19
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %110

115:                                              ; preds = %110
  %116 = getelementptr inbounds i8, ptr %111, i64 2
  %117 = load i8, ptr %116, align 1, !tbaa !19
  %118 = icmp eq i8 %117, %73
  br i1 %118, label %84, label %119

119:                                              ; preds = %115, %72, %62, %109
  %120 = phi ptr [ %103, %109 ], [ %66, %62 ], [ %66, %72 ], [ %66, %115 ]
  %121 = load i8, ptr %120, align 1, !tbaa !19
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %62

123:                                              ; preds = %119
  store i8 0, ptr %67, align 1, !tbaa !19
  %124 = load ptr, ptr @finfo, align 8, !tbaa !5
  %125 = load i32, ptr %11, align 8
  %126 = and i32 %125, 4095
  %127 = zext nneg i32 %126 to i64
  %128 = getelementptr inbounds %struct.font_rec, ptr %124, i64 %127, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !26
  %130 = getelementptr inbounds %struct.font_rec, ptr %124, i64 %127, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !27
  %132 = load i16, ptr @currentxheight2, align 2, !tbaa !18
  %133 = sext i16 %132 to i32
  %134 = sub nsw i32 %2, %133
  %135 = load i32, ptr @cpexists, align 4, !tbaa !9
  %136 = icmp ne i32 %135, 0
  %137 = load i32, ptr @currenty, align 4
  %138 = icmp eq i32 %137, %134
  %139 = select i1 %136, i1 %138, i1 false
  br i1 %139, label %140, label %177

140:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #11
  %141 = icmp sgt i32 %1, -1
  br i1 %141, label %146, label %142

142:                                              ; preds = %140
  %143 = sub nsw i32 0, %1
  %144 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %145 = tail call i32 @putc(i32 noundef 45, ptr noundef %144)
  br label %146

146:                                              ; preds = %140, %142
  %147 = phi i32 [ %143, %142 ], [ %1, %140 ]
  br label %148

148:                                              ; preds = %146, %148
  %149 = phi i32 [ %159, %148 ], [ 1, %146 ]
  %150 = phi i64 [ %155, %148 ], [ 0, %146 ]
  %151 = phi i32 [ %157, %148 ], [ %147, %146 ]
  %152 = srem i32 %151, 10
  %153 = trunc i32 %152 to i8
  %154 = add nsw i8 %153, 48
  %155 = add nuw i64 %150, 1
  %156 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 %150
  store i8 %154, ptr %156, align 1, !tbaa !19
  %157 = udiv i32 %151, 10
  %158 = icmp sgt i32 %151, 9
  %159 = add nuw i32 %149, 1
  br i1 %158, label %148, label %160

160:                                              ; preds = %148
  %161 = sext i32 %149 to i64
  br label %162

162:                                              ; preds = %160, %162
  %163 = phi i64 [ %161, %160 ], [ %164, %162 ]
  %164 = add nsw i64 %163, -1
  %165 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 %164
  %166 = load i8, ptr %165, align 1, !tbaa !19
  %167 = sext i8 %166 to i32
  %168 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %169 = tail call i32 @putc(i32 noundef %167, ptr noundef %168)
  %170 = and i64 %164, 4294967295
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %162

172:                                              ; preds = %162
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #11
  %173 = load i32, ptr %11, align 8
  %174 = and i32 %173, 4194304
  %175 = icmp eq i32 %174, 0
  %176 = select i1 %175, ptr @.str.176, ptr @.str.175
  br label %249

177:                                              ; preds = %123
  store i32 %134, ptr @currenty, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #11
  %178 = icmp sgt i32 %1, -1
  br i1 %178, label %183, label %179

179:                                              ; preds = %177
  %180 = sub nsw i32 0, %1
  %181 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %182 = tail call i32 @putc(i32 noundef 45, ptr noundef %181)
  br label %183

183:                                              ; preds = %177, %179
  %184 = phi i32 [ %180, %179 ], [ %1, %177 ]
  br label %185

185:                                              ; preds = %183, %185
  %186 = phi i32 [ %196, %185 ], [ 1, %183 ]
  %187 = phi i64 [ %192, %185 ], [ 0, %183 ]
  %188 = phi i32 [ %194, %185 ], [ %184, %183 ]
  %189 = srem i32 %188, 10
  %190 = trunc i32 %189 to i8
  %191 = add nsw i8 %190, 48
  %192 = add nuw i64 %187, 1
  %193 = getelementptr inbounds [20 x i8], ptr %5, i64 0, i64 %187
  store i8 %191, ptr %193, align 1, !tbaa !19
  %194 = udiv i32 %188, 10
  %195 = icmp sgt i32 %188, 9
  %196 = add nuw i32 %186, 1
  br i1 %195, label %185, label %197

197:                                              ; preds = %185
  %198 = sext i32 %186 to i64
  br label %199

199:                                              ; preds = %197, %199
  %200 = phi i64 [ %198, %197 ], [ %201, %199 ]
  %201 = add nsw i64 %200, -1
  %202 = getelementptr inbounds [20 x i8], ptr %5, i64 0, i64 %201
  %203 = load i8, ptr %202, align 1, !tbaa !19
  %204 = sext i8 %203 to i32
  %205 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %206 = tail call i32 @putc(i32 noundef %204, ptr noundef %205)
  %207 = and i64 %201, 4294967295
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %199

209:                                              ; preds = %199
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #11
  %210 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %211 = tail call i32 @putc(i32 noundef 32, ptr noundef %210)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #11
  %212 = load i32, ptr @currenty, align 4, !tbaa !9
  %213 = icmp sgt i32 %212, -1
  br i1 %213, label %218, label %214

214:                                              ; preds = %209
  %215 = sub nsw i32 0, %212
  %216 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %217 = tail call i32 @putc(i32 noundef 45, ptr noundef %216)
  br label %218

218:                                              ; preds = %209, %214
  %219 = phi i32 [ %215, %214 ], [ %212, %209 ]
  br label %220

220:                                              ; preds = %218, %220
  %221 = phi i32 [ %231, %220 ], [ 1, %218 ]
  %222 = phi i64 [ %227, %220 ], [ 0, %218 ]
  %223 = phi i32 [ %229, %220 ], [ %219, %218 ]
  %224 = srem i32 %223, 10
  %225 = trunc i32 %224 to i8
  %226 = add nsw i8 %225, 48
  %227 = add nuw i64 %222, 1
  %228 = getelementptr inbounds [20 x i8], ptr %6, i64 0, i64 %222
  store i8 %226, ptr %228, align 1, !tbaa !19
  %229 = udiv i32 %223, 10
  %230 = icmp sgt i32 %223, 9
  %231 = add nuw i32 %221, 1
  br i1 %230, label %220, label %232

232:                                              ; preds = %220
  %233 = sext i32 %221 to i64
  br label %234

234:                                              ; preds = %232, %234
  %235 = phi i64 [ %233, %232 ], [ %236, %234 ]
  %236 = add nsw i64 %235, -1
  %237 = getelementptr inbounds [20 x i8], ptr %6, i64 0, i64 %236
  %238 = load i8, ptr %237, align 1, !tbaa !19
  %239 = sext i8 %238 to i32
  %240 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %241 = tail call i32 @putc(i32 noundef %239, ptr noundef %240)
  %242 = and i64 %236, 4294967295
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %234

244:                                              ; preds = %234
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #11
  %245 = load i32, ptr %11, align 8
  %246 = and i32 %245, 4194304
  %247 = icmp eq i32 %246, 0
  %248 = select i1 %247, ptr @.str.178, ptr @.str.177
  store i32 1, ptr @cpexists, align 4, !tbaa !9
  br label %249

249:                                              ; preds = %244, %172
  %250 = phi ptr [ %176, %172 ], [ %248, %244 ]
  %251 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %252 = tail call i32 @putc(i32 noundef 40, ptr noundef %251)
  %253 = load i8, ptr %60, align 1, !tbaa !19
  %254 = zext i8 %253 to i64
  %255 = getelementptr inbounds i16, ptr %131, i64 %254
  %256 = load i16, ptr %255, align 2, !tbaa !18
  %257 = icmp eq i16 %256, 0
  br i1 %257, label %341, label %258

258:                                              ; preds = %249
  %259 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %260 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %259, ptr noundef nonnull @.str.179, ptr noundef nonnull %250)
  %261 = load i8, ptr %60, align 1, !tbaa !19
  %262 = zext i8 %261 to i64
  %263 = getelementptr inbounds i16, ptr %131, i64 %262
  %264 = load i16, ptr %263, align 2, !tbaa !18
  %265 = zext i16 %264 to i64
  %266 = getelementptr inbounds %struct.composite_rec, ptr %129, i64 %265
  %267 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %268 = load i8, ptr %266, align 2, !tbaa !28
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %292, label %270

270:                                              ; preds = %258
  %271 = load i32, ptr %11, align 8
  %272 = and i32 %271, 4194304
  %273 = icmp eq i32 %272, 0
  %274 = select i1 %273, ptr @.str.188, ptr @.str.187
  br label %275

275:                                              ; preds = %275, %270
  %276 = phi i8 [ %268, %270 ], [ %287, %275 ]
  %277 = phi ptr [ %266, %270 ], [ %286, %275 ]
  %278 = zext i8 %276 to i32
  %279 = getelementptr inbounds %struct.composite_rec, ptr %277, i64 0, i32 1
  %280 = load i16, ptr %279, align 2, !tbaa !30
  %281 = sext i16 %280 to i32
  %282 = getelementptr inbounds %struct.composite_rec, ptr %277, i64 0, i32 2
  %283 = load i16, ptr %282, align 2, !tbaa !31
  %284 = sext i16 %283 to i32
  %285 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %267, ptr noundef nonnull @.str.186, i32 noundef %281, i32 noundef %284, i32 noundef %278, ptr noundef nonnull %274)
  %286 = getelementptr inbounds %struct.composite_rec, ptr %277, i64 1
  %287 = load i8, ptr %286, align 2, !tbaa !28
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %289, label %275

289:                                              ; preds = %275
  %290 = load i8, ptr %60, align 1, !tbaa !19
  %291 = zext i8 %290 to i64
  br label %292

292:                                              ; preds = %289, %258
  %293 = phi i64 [ %291, %289 ], [ %262, %258 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #11
  %294 = load ptr, ptr @finfo, align 8, !tbaa !5
  %295 = load i32, ptr %11, align 8
  %296 = and i32 %295, 4095
  %297 = zext nneg i32 %296 to i64
  %298 = getelementptr inbounds %struct.font_rec, ptr %294, i64 %297
  %299 = load ptr, ptr %298, align 8, !tbaa !32
  %300 = getelementptr inbounds %struct.metrics, ptr %299, i64 %293, i32 3
  %301 = load i16, ptr %300, align 2, !tbaa !33
  %302 = sext i16 %301 to i32
  %303 = icmp sgt i16 %301, -1
  br i1 %303, label %308, label %304

304:                                              ; preds = %292
  %305 = sub nsw i32 0, %302
  %306 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %307 = tail call i32 @putc(i32 noundef 45, ptr noundef %306)
  br label %308

308:                                              ; preds = %292, %304
  %309 = phi i32 [ %305, %304 ], [ %302, %292 ]
  br label %310

310:                                              ; preds = %308, %310
  %311 = phi i32 [ %321, %310 ], [ 1, %308 ]
  %312 = phi i64 [ %317, %310 ], [ 0, %308 ]
  %313 = phi i32 [ %319, %310 ], [ %309, %308 ]
  %314 = urem i32 %313, 10
  %315 = trunc i32 %314 to i8
  %316 = or disjoint i8 %315, 48
  %317 = add nuw i64 %312, 1
  %318 = getelementptr inbounds [20 x i8], ptr %7, i64 0, i64 %312
  store i8 %316, ptr %318, align 1, !tbaa !19
  %319 = udiv i32 %313, 10
  %320 = icmp ult i32 %313, 10
  %321 = add nuw i32 %311, 1
  br i1 %320, label %322, label %310

322:                                              ; preds = %310
  %323 = sext i32 %311 to i64
  br label %324

324:                                              ; preds = %322, %324
  %325 = phi i64 [ %323, %322 ], [ %326, %324 ]
  %326 = add nsw i64 %325, -1
  %327 = getelementptr inbounds [20 x i8], ptr %7, i64 0, i64 %326
  %328 = load i8, ptr %327, align 1, !tbaa !19
  %329 = sext i8 %328 to i32
  %330 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %331 = tail call i32 @putc(i32 noundef %329, ptr noundef %330)
  %332 = and i64 %326, 4294967295
  %333 = icmp eq i64 %332, 0
  br i1 %333, label %334, label %324

334:                                              ; preds = %324
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #11
  %335 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %336 = tail call i32 @putc(i32 noundef 40, ptr noundef %335)
  %337 = load i32, ptr %11, align 8
  %338 = and i32 %337, 4194304
  %339 = icmp eq i32 %338, 0
  %340 = select i1 %339, ptr @.str.181, ptr @.str.180
  br label %347

341:                                              ; preds = %249
  %342 = getelementptr inbounds [0 x ptr], ptr @EightBitToPrintForm, i64 0, i64 %254
  %343 = load ptr, ptr %342, align 8, !tbaa !5
  %344 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %345 = tail call i32 @fputs(ptr noundef %343, ptr noundef %344)
  %346 = load i32, ptr %11, align 8
  br label %347

347:                                              ; preds = %341, %334
  %348 = phi i32 [ %337, %334 ], [ %346, %341 ]
  %349 = phi ptr [ %340, %334 ], [ %250, %341 ]
  %350 = load ptr, ptr @finfo, align 8, !tbaa !5
  %351 = and i32 %348, 4095
  %352 = zext nneg i32 %351 to i64
  %353 = getelementptr inbounds %struct.font_rec, ptr %350, i64 %352, i32 5
  %354 = load ptr, ptr %353, align 8, !tbaa !35
  %355 = getelementptr inbounds %struct.word_type, ptr %354, i64 0, i32 3, i32 1, i64 4
  %356 = load i8, ptr %355, align 4
  %357 = and i8 %356, 127
  %358 = zext nneg i8 %357 to i64
  %359 = getelementptr inbounds [0 x ptr], ptr @MapTable, i64 0, i64 %358
  %360 = load ptr, ptr %359, align 8, !tbaa !5
  %361 = getelementptr inbounds %struct.mapvec, ptr %360, i64 0, i32 7, i64 2
  %362 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4, i64 1
  %363 = load i8, ptr %362, align 1, !tbaa !19
  %364 = icmp eq i8 %363, 0
  br i1 %364, label %522, label %365

365:                                              ; preds = %347, %517
  %366 = phi i8 [ %520, %517 ], [ %363, %347 ]
  %367 = phi ptr [ %519, %517 ], [ %362, %347 ]
  %368 = phi ptr [ %518, %517 ], [ %349, %347 ]
  %369 = getelementptr inbounds i8, ptr %367, i64 -1
  %370 = load i8, ptr %369, align 1, !tbaa !19
  %371 = zext i8 %370 to i64
  %372 = getelementptr inbounds i8, ptr %361, i64 %371
  %373 = load i8, ptr %372, align 1, !tbaa !19
  %374 = zext i8 %366 to i64
  %375 = getelementptr inbounds i8, ptr %361, i64 %374
  %376 = load i8, ptr %375, align 1, !tbaa !19
  %377 = load ptr, ptr @finfo, align 8, !tbaa !5
  %378 = load i32, ptr %11, align 8
  %379 = and i32 %378, 4095
  %380 = zext nneg i32 %379 to i64
  %381 = getelementptr inbounds %struct.font_rec, ptr %377, i64 %380, i32 9
  %382 = load ptr, ptr %381, align 8, !tbaa !36
  %383 = zext i8 %373 to i64
  %384 = getelementptr inbounds i16, ptr %382, i64 %383
  %385 = load i16, ptr %384, align 2, !tbaa !18
  %386 = icmp eq i16 %385, 0
  br i1 %386, label %423, label %387

387:                                              ; preds = %365
  %388 = getelementptr inbounds %struct.font_rec, ptr %377, i64 %380, i32 10
  %389 = load ptr, ptr %388, align 8, !tbaa !37
  %390 = zext i16 %385 to i64
  br label %391

391:                                              ; preds = %391, %387
  %392 = phi i64 [ %396, %391 ], [ %390, %387 ]
  %393 = getelementptr inbounds i8, ptr %389, i64 %392
  %394 = load i8, ptr %393, align 1, !tbaa !19
  %395 = icmp ugt i8 %394, %376
  %396 = add nuw i64 %392, 1
  br i1 %395, label %391, label %397

397:                                              ; preds = %391
  %398 = icmp eq i8 %394, %376
  br i1 %398, label %399, label %423

399:                                              ; preds = %397
  %400 = getelementptr inbounds %struct.font_rec, ptr %377, i64 %380, i32 12
  %401 = load ptr, ptr %400, align 8, !tbaa !38
  %402 = getelementptr inbounds %struct.font_rec, ptr %377, i64 %380, i32 11
  %403 = load ptr, ptr %402, align 8, !tbaa !39
  %404 = getelementptr inbounds i8, ptr %403, i64 %392
  %405 = load i8, ptr %404, align 1, !tbaa !19
  %406 = zext i8 %405 to i64
  %407 = getelementptr inbounds i16, ptr %401, i64 %406
  %408 = load i16, ptr %407, align 2, !tbaa !18
  %409 = icmp eq i16 %408, 0
  br i1 %409, label %423, label %410

410:                                              ; preds = %399
  %411 = sext i16 %408 to i32
  %412 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %413 = sub nsw i32 0, %411
  %414 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %412, ptr noundef nonnull @.str.182, ptr noundef %368, i32 noundef %413)
  %415 = load i32, ptr @wordcount, align 4, !tbaa !9
  %416 = add nsw i32 %415, 1
  store i32 %416, ptr @wordcount, align 4, !tbaa !9
  %417 = load i32, ptr %11, align 8
  %418 = and i32 %417, 4194304
  %419 = icmp eq i32 %418, 0
  %420 = select i1 %419, ptr @.str.184, ptr @.str.183
  %421 = load i8, ptr %367, align 1, !tbaa !19
  %422 = zext i8 %421 to i64
  br label %423

423:                                              ; preds = %397, %365, %410, %399
  %424 = phi i64 [ %374, %397 ], [ %374, %365 ], [ %422, %410 ], [ %374, %399 ]
  %425 = phi ptr [ %368, %397 ], [ %368, %365 ], [ %420, %410 ], [ %368, %399 ]
  %426 = getelementptr inbounds i16, ptr %131, i64 %424
  %427 = load i16, ptr %426, align 2, !tbaa !18
  %428 = icmp eq i16 %427, 0
  br i1 %428, label %512, label %429

429:                                              ; preds = %423
  %430 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %431 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %430, ptr noundef nonnull @.str.179, ptr noundef %425)
  %432 = load i8, ptr %367, align 1, !tbaa !19
  %433 = zext i8 %432 to i64
  %434 = getelementptr inbounds i16, ptr %131, i64 %433
  %435 = load i16, ptr %434, align 2, !tbaa !18
  %436 = zext i16 %435 to i64
  %437 = getelementptr inbounds %struct.composite_rec, ptr %129, i64 %436
  %438 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %439 = load i8, ptr %437, align 2, !tbaa !28
  %440 = icmp eq i8 %439, 0
  br i1 %440, label %463, label %441

441:                                              ; preds = %429
  %442 = load i32, ptr %11, align 8
  %443 = and i32 %442, 4194304
  %444 = icmp eq i32 %443, 0
  %445 = select i1 %444, ptr @.str.188, ptr @.str.187
  br label %446

446:                                              ; preds = %446, %441
  %447 = phi i8 [ %439, %441 ], [ %458, %446 ]
  %448 = phi ptr [ %437, %441 ], [ %457, %446 ]
  %449 = zext i8 %447 to i32
  %450 = getelementptr inbounds %struct.composite_rec, ptr %448, i64 0, i32 1
  %451 = load i16, ptr %450, align 2, !tbaa !30
  %452 = sext i16 %451 to i32
  %453 = getelementptr inbounds %struct.composite_rec, ptr %448, i64 0, i32 2
  %454 = load i16, ptr %453, align 2, !tbaa !31
  %455 = sext i16 %454 to i32
  %456 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %438, ptr noundef nonnull @.str.186, i32 noundef %452, i32 noundef %455, i32 noundef %449, ptr noundef nonnull %445)
  %457 = getelementptr inbounds %struct.composite_rec, ptr %448, i64 1
  %458 = load i8, ptr %457, align 2, !tbaa !28
  %459 = icmp eq i8 %458, 0
  br i1 %459, label %460, label %446

460:                                              ; preds = %446
  %461 = load i8, ptr %367, align 1, !tbaa !19
  %462 = zext i8 %461 to i64
  br label %463

463:                                              ; preds = %460, %429
  %464 = phi i64 [ %462, %460 ], [ %433, %429 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #11
  %465 = load ptr, ptr @finfo, align 8, !tbaa !5
  %466 = load i32, ptr %11, align 8
  %467 = and i32 %466, 4095
  %468 = zext nneg i32 %467 to i64
  %469 = getelementptr inbounds %struct.font_rec, ptr %465, i64 %468
  %470 = load ptr, ptr %469, align 8, !tbaa !32
  %471 = getelementptr inbounds %struct.metrics, ptr %470, i64 %464, i32 3
  %472 = load i16, ptr %471, align 2, !tbaa !33
  %473 = sext i16 %472 to i32
  %474 = icmp sgt i16 %472, -1
  br i1 %474, label %479, label %475

475:                                              ; preds = %463
  %476 = sub nsw i32 0, %473
  %477 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %478 = tail call i32 @putc(i32 noundef 45, ptr noundef %477)
  br label %479

479:                                              ; preds = %463, %475
  %480 = phi i32 [ %476, %475 ], [ %473, %463 ]
  br label %481

481:                                              ; preds = %479, %481
  %482 = phi i32 [ %492, %481 ], [ 1, %479 ]
  %483 = phi i64 [ %488, %481 ], [ 0, %479 ]
  %484 = phi i32 [ %490, %481 ], [ %480, %479 ]
  %485 = urem i32 %484, 10
  %486 = trunc i32 %485 to i8
  %487 = or disjoint i8 %486, 48
  %488 = add nuw i64 %483, 1
  %489 = getelementptr inbounds [20 x i8], ptr %8, i64 0, i64 %483
  store i8 %487, ptr %489, align 1, !tbaa !19
  %490 = udiv i32 %484, 10
  %491 = icmp ult i32 %484, 10
  %492 = add nuw i32 %482, 1
  br i1 %491, label %493, label %481

493:                                              ; preds = %481
  %494 = sext i32 %482 to i64
  br label %495

495:                                              ; preds = %493, %495
  %496 = phi i64 [ %494, %493 ], [ %497, %495 ]
  %497 = add nsw i64 %496, -1
  %498 = getelementptr inbounds [20 x i8], ptr %8, i64 0, i64 %497
  %499 = load i8, ptr %498, align 1, !tbaa !19
  %500 = sext i8 %499 to i32
  %501 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %502 = tail call i32 @putc(i32 noundef %500, ptr noundef %501)
  %503 = and i64 %497, 4294967295
  %504 = icmp eq i64 %503, 0
  br i1 %504, label %505, label %495

505:                                              ; preds = %495
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #11
  %506 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %507 = tail call i32 @putc(i32 noundef 40, ptr noundef %506)
  %508 = load i32, ptr %11, align 8
  %509 = and i32 %508, 4194304
  %510 = icmp eq i32 %509, 0
  %511 = select i1 %510, ptr @.str.181, ptr @.str.180
  br label %517

512:                                              ; preds = %423
  %513 = getelementptr inbounds [0 x ptr], ptr @EightBitToPrintForm, i64 0, i64 %424
  %514 = load ptr, ptr %513, align 8, !tbaa !5
  %515 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %516 = tail call i32 @fputs(ptr noundef %514, ptr noundef %515)
  br label %517

517:                                              ; preds = %505, %512
  %518 = phi ptr [ %511, %505 ], [ %425, %512 ]
  %519 = getelementptr inbounds i8, ptr %367, i64 1
  %520 = load i8, ptr %519, align 1, !tbaa !19
  %521 = icmp eq i8 %520, 0
  br i1 %521, label %522, label %365

522:                                              ; preds = %517, %347
  %523 = phi ptr [ %349, %347 ], [ %518, %517 ]
  %524 = load i32, ptr @wordcount, align 4, !tbaa !9
  %525 = add nsw i32 %524, 1
  store i32 %525, ptr @wordcount, align 4, !tbaa !9
  %526 = icmp sgt i32 %524, 3
  %527 = load ptr, ptr @out_fp, align 8, !tbaa !5
  br i1 %526, label %528, label %530

528:                                              ; preds = %522
  %529 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %527, ptr noundef nonnull @.str.185, ptr noundef %523)
  store i32 0, ptr @wordcount, align 4, !tbaa !9
  br label %532

530:                                              ; preds = %522
  %531 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %527, ptr noundef nonnull @.str.179, ptr noundef %523)
  br label %532

532:                                              ; preds = %530, %528
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintPlainGraphic(ptr nocapture readnone %0, i32 %1, i32 %2, ptr nocapture readnone %3) #2 {
  %5 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %6 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef %5, ptr noundef nonnull @.str.189) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintUnderline(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = load i32, ptr @currentcolour, align 4, !tbaa !9
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %22, label %8

8:                                                ; preds = %5
  store i32 %1, ptr @currentcolour, align 4, !tbaa !9
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %12 = tail call ptr @ColourCommand(i32 noundef %1) #11
  %13 = tail call i32 @fputs(ptr %12, ptr %11)
  %14 = load i32, ptr @wordcount, align 4, !tbaa !9
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @wordcount, align 4, !tbaa !9
  %16 = icmp sgt i32 %14, 3
  %17 = load ptr, ptr @out_fp, align 8, !tbaa !5
  br i1 %16, label %18, label %20

18:                                               ; preds = %10
  %19 = tail call i32 @putc(i32 noundef 10, ptr noundef %17)
  store i32 0, ptr @wordcount, align 4, !tbaa !9
  br label %22

20:                                               ; preds = %10
  %21 = tail call i32 @putc(i32 noundef 32, ptr noundef %17)
  br label %22

22:                                               ; preds = %8, %20, %18, %5
  %23 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %24 = load ptr, ptr @finfo, align 8, !tbaa !5
  %25 = zext i32 %0 to i64
  %26 = getelementptr inbounds %struct.font_rec, ptr %24, i64 %25, i32 7
  %27 = load i16, ptr %26, align 8, !tbaa !40
  %28 = sext i16 %27 to i32
  %29 = sub nsw i32 %4, %28
  %30 = getelementptr inbounds %struct.font_rec, ptr %24, i64 %25, i32 8
  %31 = load i16, ptr %30, align 2, !tbaa !41
  %32 = sext i16 %31 to i32
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.190, i32 noundef %2, i32 noundef %3, i32 noundef %29, i32 noundef %32)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @PS_CoordRotate(i32 noundef %0) #0 {
  %2 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %3 = sitofp i32 %0 to float
  %4 = fmul float %3, 7.812500e-03
  %5 = fpext float %4 to double
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.191, double noundef %5)
  store i32 0, ptr @cpexists, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_LinkSource(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = load ptr, ptr @out_fp, align 8, !tbaa !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) @ConvertToPDFName.buff, ptr noundef nonnull align 1 dereferenceable(5) @.str.29, i64 5, i1 false) #11
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @ConvertToPDFName.buff) #12
  %8 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds i8, ptr @ConvertToPDFName.buff, i64 %7
  %10 = load i8, ptr %8, align 1, !tbaa !19
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  br label %14

14:                                               ; preds = %23, %12
  %15 = phi i8 [ %10, %12 ], [ %35, %23 ]
  %16 = phi ptr [ %9, %12 ], [ %34, %23 ]
  %17 = phi ptr [ %8, %12 ], [ %33, %23 ]
  %18 = phi i64 [ %7, %12 ], [ %32, %23 ]
  %19 = icmp slt i64 %18, 199
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 49, i32 noundef 12, ptr noundef nonnull @.str.30, i32 noundef 1, ptr noundef nonnull %13, ptr noundef nonnull %8) #11
  %22 = load i8, ptr %17, align 1, !tbaa !19
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi i8 [ %22, %20 ], [ %15, %14 ]
  %25 = and i8 %24, -33
  %26 = add i8 %25, -65
  %27 = icmp ult i8 %26, 26
  %28 = add i8 %24, -48
  %29 = icmp ult i8 %28, 10
  %30 = or i1 %29, %27
  %31 = select i1 %30, i8 %24, i8 95
  %32 = add nsw i64 %18, 1
  store i8 %31, ptr %16, align 1, !tbaa !19
  %33 = getelementptr inbounds i8, ptr %17, i64 1
  %34 = getelementptr inbounds i8, ptr @ConvertToPDFName.buff, i64 %32
  %35 = load i8, ptr %33, align 1, !tbaa !19
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %14

37:                                               ; preds = %23, %5
  %38 = phi ptr [ %9, %5 ], [ %34, %23 ]
  store i8 0, ptr %38, align 1, !tbaa !19
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.192, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull @ConvertToPDFName.buff)
  %40 = load i8, ptr @zz_lengths, align 1, !tbaa !19
  %41 = zext i8 %40 to i32
  store i32 %41, ptr @zz_size, align 4, !tbaa !9
  %42 = zext i8 %40 to i64
  %43 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %48 = tail call ptr @GetMemory(i32 noundef %41, ptr noundef %47) #11
  br label %51

49:                                               ; preds = %37
  store ptr %44, ptr @zz_hold, align 8, !tbaa !5
  %50 = load ptr, ptr %44, align 8, !tbaa !19
  store ptr %50, ptr %43, align 8, !tbaa !5
  br label %51

51:                                               ; preds = %46, %49
  %52 = phi ptr [ %48, %46 ], [ %44, %49 ]
  %53 = getelementptr inbounds %struct.word_type, ptr %52, i64 0, i32 1
  store i8 0, ptr %53, align 8, !tbaa !19
  %54 = getelementptr inbounds [2 x %struct.LIST], ptr %52, i64 0, i64 1, i32 1
  store ptr %52, ptr %54, align 8, !tbaa !19
  %55 = getelementptr inbounds [2 x %struct.LIST], ptr %52, i64 0, i64 1
  store ptr %52, ptr %55, align 8, !tbaa !19
  %56 = getelementptr inbounds %struct.LIST, ptr %52, i64 0, i32 1
  store ptr %52, ptr %56, align 8, !tbaa !19
  store ptr %52, ptr %52, align 8, !tbaa !19
  store ptr %52, ptr @xx_link, align 8, !tbaa !5
  store ptr %52, ptr @zz_res, align 8, !tbaa !5
  %57 = load ptr, ptr @link_source_list, align 8, !tbaa !5
  store ptr %57, ptr @zz_hold, align 8, !tbaa !5
  %58 = icmp eq ptr %57, null
  br i1 %58, label %70, label %59

59:                                               ; preds = %51
  %60 = load ptr, ptr %57, align 8, !tbaa !19
  store ptr %60, ptr @zz_tmp, align 8, !tbaa !5
  %61 = load ptr, ptr %52, align 8, !tbaa !19
  store ptr %61, ptr %57, align 8, !tbaa !19
  %62 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %63 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %64 = load ptr, ptr %63, align 8, !tbaa !19
  %65 = getelementptr inbounds %struct.LIST, ptr %64, i64 0, i32 1
  store ptr %62, ptr %65, align 8, !tbaa !19
  %66 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %66, ptr %63, align 8, !tbaa !19
  %67 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %68 = getelementptr inbounds %struct.LIST, ptr %66, i64 0, i32 1
  store ptr %67, ptr %68, align 8, !tbaa !19
  %69 = load ptr, ptr @xx_link, align 8, !tbaa !5
  br label %70

70:                                               ; preds = %51, %59
  %71 = phi ptr [ %52, %51 ], [ %69, %59 ]
  store ptr %71, ptr @zz_res, align 8, !tbaa !5
  store ptr %0, ptr @zz_hold, align 8, !tbaa !5
  %72 = icmp eq ptr %0, null
  %73 = icmp eq ptr %71, null
  %74 = select i1 %72, i1 true, i1 %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !19
  store ptr %77, ptr @zz_tmp, align 8, !tbaa !5
  %78 = getelementptr inbounds [2 x %struct.LIST], ptr %71, i64 0, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !19
  store ptr %79, ptr %76, align 8, !tbaa !19
  %80 = getelementptr inbounds [2 x %struct.LIST], ptr %79, i64 0, i64 1, i32 1
  store ptr %0, ptr %80, align 8, !tbaa !19
  store ptr %77, ptr %78, align 8, !tbaa !19
  %81 = getelementptr inbounds [2 x %struct.LIST], ptr %77, i64 0, i64 1, i32 1
  store ptr %71, ptr %81, align 8, !tbaa !19
  br label %82

82:                                               ; preds = %70, %75
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_LinkDest(ptr noundef %0, i32 %1, i32 %2, i32 %3, i32 %4) #2 {
  %6 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr @link_dest_tab, align 8, !tbaa !5
  %8 = load i8, ptr %6, align 1, !tbaa !19
  %9 = zext i8 %8 to i32
  br label %10

10:                                               ; preds = %10, %5
  %11 = phi i32 [ %9, %5 ], [ %17, %10 ]
  %12 = phi ptr [ %6, %5 ], [ %13, %10 ]
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !19
  %15 = icmp eq i8 %14, 0
  %16 = zext i8 %14 to i32
  %17 = add nuw nsw i32 %11, %16
  br i1 %15, label %18, label %10

18:                                               ; preds = %10
  %19 = load i32, ptr %7, align 8, !tbaa !20
  %20 = srem i32 %11, %19
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds %struct.anon.14, ptr %7, i64 0, i32 2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %41, label %25

25:                                               ; preds = %18, %37
  %26 = phi ptr [ %28, %37 ], [ %23, %18 ]
  %27 = getelementptr inbounds %struct.LIST, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !19
  %29 = icmp eq ptr %28, %23
  br i1 %29, label %41, label %30

30:                                               ; preds = %25, %30
  %31 = phi ptr [ %33, %30 ], [ %28, %25 ]
  %32 = getelementptr inbounds [2 x %struct.LIST], ptr %31, i64 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !19
  %34 = getelementptr inbounds %struct.word_type, ptr %33, i64 0, i32 1
  %35 = load i8, ptr %34, align 8, !tbaa !19
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %30, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.word_type, ptr %33, i64 0, i32 4
  %39 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %38) #12
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %74, label %25

41:                                               ; preds = %25, %18
  %42 = load ptr, ptr @out_fp, align 8, !tbaa !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) @ConvertToPDFName.buff, ptr noundef nonnull align 1 dereferenceable(5) @.str.29, i64 5, i1 false) #11
  %43 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @ConvertToPDFName.buff) #12
  %44 = getelementptr inbounds i8, ptr @ConvertToPDFName.buff, i64 %43
  %45 = icmp eq i8 %8, 0
  br i1 %45, label %71, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  br label %48

48:                                               ; preds = %57, %46
  %49 = phi i8 [ %8, %46 ], [ %69, %57 ]
  %50 = phi ptr [ %44, %46 ], [ %68, %57 ]
  %51 = phi ptr [ %6, %46 ], [ %67, %57 ]
  %52 = phi i64 [ %43, %46 ], [ %66, %57 ]
  %53 = icmp slt i64 %52, 199
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 49, i32 noundef 12, ptr noundef nonnull @.str.30, i32 noundef 1, ptr noundef nonnull %47, ptr noundef nonnull %6) #11
  %56 = load i8, ptr %51, align 1, !tbaa !19
  br label %57

57:                                               ; preds = %54, %48
  %58 = phi i8 [ %56, %54 ], [ %49, %48 ]
  %59 = and i8 %58, -33
  %60 = add i8 %59, -65
  %61 = icmp ult i8 %60, 26
  %62 = add i8 %58, -48
  %63 = icmp ult i8 %62, 10
  %64 = or i1 %63, %61
  %65 = select i1 %64, i8 %58, i8 95
  %66 = add nsw i64 %52, 1
  store i8 %65, ptr %50, align 1, !tbaa !19
  %67 = getelementptr inbounds i8, ptr %51, i64 1
  %68 = getelementptr inbounds i8, ptr @ConvertToPDFName.buff, i64 %66
  %69 = load i8, ptr %67, align 1, !tbaa !19
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %48

71:                                               ; preds = %57, %41
  %72 = phi ptr [ %44, %41 ], [ %68, %57 ]
  store i8 0, ptr %72, align 1, !tbaa !19
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.193, ptr noundef nonnull @ConvertToPDFName.buff)
  tail call fastcc void @ltab_insert(ptr noundef %0, ptr noundef nonnull @link_dest_tab)
  br label %79

74:                                               ; preds = %37
  %75 = getelementptr inbounds %struct.word_type, ptr %33, i64 0, i32 1
  %76 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %77 = tail call ptr @EchoFilePos(ptr noundef nonnull %75) #11
  %78 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 49, i32 noundef 13, ptr noundef nonnull @.str.194, i32 noundef 2, ptr noundef nonnull %76, ptr noundef nonnull %6, ptr noundef %77) #11
  br label %79

79:                                               ; preds = %74, %71
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @MapEnsurePrinted(i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @MapEncodingName(i32 noundef) local_unnamed_addr #4

declare ptr @TimeString() local_unnamed_addr #4

declare zeroext i16 @FirstFile(i32 noundef) local_unnamed_addr #4

declare ptr @OpenFile(i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @PosOfFile(i16 noundef zeroext) local_unnamed_addr #4

declare ptr @FileName(i16 noundef zeroext) local_unnamed_addr #4

declare zeroext i16 @NextFile(i16 noundef zeroext) local_unnamed_addr #4

declare void @MapPrintEncodings(...) local_unnamed_addr #4

declare void @FontPrintPageResources(ptr noundef) local_unnamed_addr #4

declare void @FontPrintPageSetup(ptr noundef) local_unnamed_addr #4

declare void @FontAdvanceCurrentPage() local_unnamed_addr #4

declare i32 @FontNeeded(ptr noundef) local_unnamed_addr #4

declare void @MapPrintPSResources(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @ltab_insert(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #2 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.anon.14, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !42
  %7 = load i32, ptr %4, align 8, !tbaa !20
  %8 = add nsw i32 %7, -1
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %47

10:                                               ; preds = %2
  %11 = shl nsw i32 %7, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = or disjoint i64 %13, 8
  %15 = tail call noalias ptr @malloc(i64 noundef %14) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %19 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 43, i32 noundef 1, ptr noundef nonnull @.str.38, i32 noundef 1, ptr noundef %18) #11
  br label %20

20:                                               ; preds = %17, %10
  store i32 %11, ptr %15, align 8, !tbaa !20
  %21 = getelementptr inbounds %struct.anon.14, ptr %15, i64 0, i32 1
  store i32 0, ptr %21, align 4, !tbaa !42
  %22 = icmp sgt i32 %7, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr i8, ptr %15, i64 8
  %25 = zext nneg i32 %11 to i64
  %26 = shl nuw nsw i64 %25, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %24, i8 0, i64 %26, i1 false), !tbaa !5
  br label %27

27:                                               ; preds = %20, %23
  store ptr %15, ptr %3, align 8, !tbaa !5
  %28 = load i32, ptr %4, align 8, !tbaa !20
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %45, label %30

30:                                               ; preds = %27, %38
  %31 = phi i32 [ %39, %38 ], [ %28, %27 ]
  %32 = phi i64 [ %40, %38 ], [ 1, %27 ]
  %33 = getelementptr inbounds %struct.anon.14, ptr %4, i64 0, i32 2, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  call fastcc void @ltab_insert(ptr noundef nonnull %34, ptr noundef nonnull %3)
  %37 = load i32, ptr %4, align 8, !tbaa !20
  br label %38

38:                                               ; preds = %36, %30
  %39 = phi i32 [ %37, %36 ], [ %31, %30 ]
  %40 = add nuw nsw i64 %32, 1
  %41 = sext i32 %39 to i64
  %42 = icmp slt i64 %32, %41
  br i1 %42, label %30, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %3, align 8, !tbaa !5
  br label %45

45:                                               ; preds = %43, %27
  %46 = phi ptr [ %44, %43 ], [ %15, %27 ]
  tail call void @free(ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  store ptr %46, ptr %1, align 8, !tbaa !5
  br label %47

47:                                               ; preds = %45, %2
  %48 = phi ptr [ %46, %45 ], [ %4, %2 ]
  %49 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %50 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4, i64 1
  %51 = load i8, ptr %49, align 1, !tbaa !19
  %52 = zext i8 %51 to i32
  %53 = load i8, ptr %50, align 1, !tbaa !19
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %47, %55
  %56 = phi i8 [ %62, %55 ], [ %53, %47 ]
  %57 = phi ptr [ %59, %55 ], [ %50, %47 ]
  %58 = phi i32 [ %61, %55 ], [ %52, %47 ]
  %59 = getelementptr inbounds i8, ptr %57, i64 1
  %60 = zext i8 %56 to i32
  %61 = add nuw nsw i32 %58, %60
  %62 = load i8, ptr %59, align 1, !tbaa !19
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %55

64:                                               ; preds = %55, %47
  %65 = phi i32 [ %52, %47 ], [ %61, %55 ]
  %66 = load i32, ptr %48, align 8, !tbaa !20
  %67 = srem i32 %65, %66
  %68 = zext nneg i32 %67 to i64
  %69 = getelementptr inbounds %struct.anon.14, ptr %48, i64 0, i32 2, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !5
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %95

72:                                               ; preds = %64
  %73 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !19
  %74 = zext i8 %73 to i32
  store i32 %74, ptr @zz_size, align 4, !tbaa !9
  %75 = zext i8 %73 to i64
  %76 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !5
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %81 = tail call ptr @GetMemory(i32 noundef %74, ptr noundef %80) #11
  store ptr %81, ptr @zz_hold, align 8, !tbaa !5
  br label %84

82:                                               ; preds = %72
  store ptr %77, ptr @zz_hold, align 8, !tbaa !5
  %83 = load ptr, ptr %77, align 8, !tbaa !19
  store ptr %83, ptr %76, align 8, !tbaa !5
  br label %84

84:                                               ; preds = %79, %82
  %85 = phi ptr [ %81, %79 ], [ %77, %82 ]
  %86 = getelementptr inbounds %struct.word_type, ptr %85, i64 0, i32 1
  store i8 17, ptr %86, align 8, !tbaa !19
  %87 = getelementptr inbounds [2 x %struct.LIST], ptr %85, i64 0, i64 1, i32 1
  store ptr %85, ptr %87, align 8, !tbaa !19
  %88 = getelementptr inbounds [2 x %struct.LIST], ptr %85, i64 0, i64 1
  store ptr %85, ptr %88, align 8, !tbaa !19
  %89 = getelementptr inbounds %struct.LIST, ptr %85, i64 0, i32 1
  store ptr %85, ptr %89, align 8, !tbaa !19
  store ptr %85, ptr %85, align 8, !tbaa !19
  %90 = load ptr, ptr %1, align 8, !tbaa !5
  %91 = getelementptr inbounds %struct.anon.14, ptr %90, i64 0, i32 2, i64 %68
  store ptr %85, ptr %91, align 8, !tbaa !5
  %92 = load ptr, ptr %1, align 8, !tbaa !5
  %93 = getelementptr inbounds %struct.anon.14, ptr %92, i64 0, i32 2, i64 %68
  %94 = load ptr, ptr %93, align 8, !tbaa !5
  br label %95

95:                                               ; preds = %84, %64
  %96 = phi ptr [ %94, %84 ], [ %70, %64 ]
  %97 = getelementptr inbounds %struct.LIST, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !19
  %99 = icmp eq ptr %98, %96
  br i1 %99, label %123, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  br label %102

102:                                              ; preds = %100, %119
  %103 = phi ptr [ %98, %100 ], [ %121, %119 ]
  br label %104

104:                                              ; preds = %102, %104
  %105 = phi ptr [ %107, %104 ], [ %103, %102 ]
  %106 = getelementptr inbounds [2 x %struct.LIST], ptr %105, i64 0, i64 1
  %107 = load ptr, ptr %106, align 8, !tbaa !19
  %108 = getelementptr inbounds %struct.word_type, ptr %107, i64 0, i32 1
  %109 = load i8, ptr %108, align 8, !tbaa !19
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %104, label %111

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.word_type, ptr %107, i64 0, i32 4
  %113 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(1) %112) #12
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.word_type, ptr %107, i64 0, i32 1
  %117 = tail call ptr @EchoFilePos(ptr noundef nonnull %116) #11
  %118 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 43, i32 noundef 2, ptr noundef nonnull @.str.195, i32 noundef 2, ptr noundef nonnull %101, ptr noundef nonnull %49, ptr noundef %117) #11
  br label %119

119:                                              ; preds = %111, %115
  %120 = getelementptr inbounds %struct.LIST, ptr %103, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !19
  %122 = icmp eq ptr %121, %96
  br i1 %122, label %123, label %102

123:                                              ; preds = %119, %95
  %124 = load i8, ptr @zz_lengths, align 1, !tbaa !19
  %125 = zext i8 %124 to i32
  store i32 %125, ptr @zz_size, align 4, !tbaa !9
  %126 = zext i8 %124 to i64
  %127 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !5
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %132 = tail call ptr @GetMemory(i32 noundef %125, ptr noundef %131) #11
  store ptr %132, ptr @zz_hold, align 8, !tbaa !5
  br label %135

133:                                              ; preds = %123
  store ptr %128, ptr @zz_hold, align 8, !tbaa !5
  %134 = load ptr, ptr %128, align 8, !tbaa !19
  store ptr %134, ptr %127, align 8, !tbaa !5
  br label %135

135:                                              ; preds = %130, %133
  %136 = phi ptr [ %132, %130 ], [ %128, %133 ]
  %137 = getelementptr inbounds %struct.word_type, ptr %136, i64 0, i32 1
  store i8 0, ptr %137, align 8, !tbaa !19
  %138 = getelementptr inbounds [2 x %struct.LIST], ptr %136, i64 0, i64 1, i32 1
  store ptr %136, ptr %138, align 8, !tbaa !19
  %139 = getelementptr inbounds [2 x %struct.LIST], ptr %136, i64 0, i64 1
  store ptr %136, ptr %139, align 8, !tbaa !19
  %140 = getelementptr inbounds %struct.LIST, ptr %136, i64 0, i32 1
  store ptr %136, ptr %140, align 8, !tbaa !19
  store ptr %136, ptr %136, align 8, !tbaa !19
  store ptr %136, ptr @xx_link, align 8, !tbaa !5
  store ptr %136, ptr @zz_res, align 8, !tbaa !5
  %141 = load ptr, ptr %1, align 8, !tbaa !5
  %142 = getelementptr inbounds %struct.anon.14, ptr %141, i64 0, i32 2, i64 %68
  %143 = load ptr, ptr %142, align 8, !tbaa !5
  store ptr %143, ptr @zz_hold, align 8, !tbaa !5
  %144 = icmp eq ptr %143, null
  br i1 %144, label %156, label %145

145:                                              ; preds = %135
  %146 = load ptr, ptr %143, align 8, !tbaa !19
  store ptr %146, ptr @zz_tmp, align 8, !tbaa !5
  %147 = load ptr, ptr %136, align 8, !tbaa !19
  store ptr %147, ptr %143, align 8, !tbaa !19
  %148 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %149 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %150 = load ptr, ptr %149, align 8, !tbaa !19
  %151 = getelementptr inbounds %struct.LIST, ptr %150, i64 0, i32 1
  store ptr %148, ptr %151, align 8, !tbaa !19
  %152 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %152, ptr %149, align 8, !tbaa !19
  %153 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %154 = getelementptr inbounds %struct.LIST, ptr %152, i64 0, i32 1
  store ptr %153, ptr %154, align 8, !tbaa !19
  %155 = load ptr, ptr @xx_link, align 8, !tbaa !5
  br label %156

156:                                              ; preds = %135, %145
  %157 = phi ptr [ %136, %135 ], [ %155, %145 ]
  store ptr %157, ptr @zz_res, align 8, !tbaa !5
  store ptr %0, ptr @zz_hold, align 8, !tbaa !5
  %158 = icmp eq ptr %0, null
  %159 = icmp eq ptr %157, null
  %160 = select i1 %158, i1 true, i1 %159
  br i1 %160, label %168, label %161

161:                                              ; preds = %156
  %162 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %163 = load ptr, ptr %162, align 8, !tbaa !19
  store ptr %163, ptr @zz_tmp, align 8, !tbaa !5
  %164 = getelementptr inbounds [2 x %struct.LIST], ptr %157, i64 0, i64 1
  %165 = load ptr, ptr %164, align 8, !tbaa !19
  store ptr %165, ptr %162, align 8, !tbaa !19
  %166 = getelementptr inbounds [2 x %struct.LIST], ptr %165, i64 0, i64 1, i32 1
  store ptr %0, ptr %166, align 8, !tbaa !19
  store ptr %163, ptr %164, align 8, !tbaa !19
  %167 = getelementptr inbounds [2 x %struct.LIST], ptr %163, i64 0, i64 1, i32 1
  store ptr %157, ptr %167, align 8, !tbaa !19
  br label %168

168:                                              ; preds = %156, %161
  ret void
}

declare ptr @EchoFilePos(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @PS_LinkCheck() #2 {
  %1 = load ptr, ptr @link_source_list, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.LIST, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %60, label %5

5:                                                ; preds = %0, %55
  %6 = phi ptr [ %57, %55 ], [ %3, %0 ]
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi ptr [ %10, %7 ], [ %6, %5 ]
  %9 = getelementptr inbounds [2 x %struct.LIST], ptr %8, i64 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  %11 = getelementptr inbounds %struct.word_type, ptr %10, i64 0, i32 1
  %12 = load i8, ptr %11, align 8, !tbaa !19
  switch i8 %12, label %13 [
    i8 0, label %7
    i8 11, label %16
    i8 12, label %16
  ]

13:                                               ; preds = %7
  %14 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %15 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef %14, ptr noundef nonnull @.str.196) #11
  br label %16

16:                                               ; preds = %7, %7, %13
  %17 = getelementptr inbounds %struct.word_type, ptr %10, i64 0, i32 1
  %18 = getelementptr inbounds %struct.word_type, ptr %10, i64 0, i32 4
  %19 = load ptr, ptr @link_dest_tab, align 8, !tbaa !5
  %20 = load i8, ptr %18, align 1, !tbaa !19
  %21 = zext i8 %20 to i32
  br label %22

22:                                               ; preds = %22, %16
  %23 = phi i32 [ %21, %16 ], [ %29, %22 ]
  %24 = phi ptr [ %18, %16 ], [ %25, %22 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !19
  %27 = icmp eq i8 %26, 0
  %28 = zext i8 %26 to i32
  %29 = add nuw nsw i32 %23, %28
  br i1 %27, label %30, label %22

30:                                               ; preds = %22
  %31 = load i32, ptr %19, align 8, !tbaa !20
  %32 = srem i32 %23, %31
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds %struct.anon.14, ptr %19, i64 0, i32 2, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = icmp eq ptr %35, null
  br i1 %36, label %53, label %37

37:                                               ; preds = %30, %49
  %38 = phi ptr [ %40, %49 ], [ %35, %30 ]
  %39 = getelementptr inbounds %struct.LIST, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !19
  %41 = icmp eq ptr %40, %35
  br i1 %41, label %53, label %42

42:                                               ; preds = %37, %42
  %43 = phi ptr [ %45, %42 ], [ %40, %37 ]
  %44 = getelementptr inbounds [2 x %struct.LIST], ptr %43, i64 0, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !19
  %46 = getelementptr inbounds %struct.word_type, ptr %45, i64 0, i32 1
  %47 = load i8, ptr %46, align 8, !tbaa !19
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %42, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.word_type, ptr %45, i64 0, i32 4
  %51 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) %50) #12
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %37

53:                                               ; preds = %37, %30
  %54 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 49, i32 noundef 14, ptr noundef nonnull @.str.197, i32 noundef 2, ptr noundef nonnull %17, ptr noundef nonnull %18) #11
  br label %55

55:                                               ; preds = %49, %53
  %56 = getelementptr inbounds %struct.LIST, ptr %6, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !19
  %58 = load ptr, ptr @link_source_list, align 8, !tbaa !5
  %59 = icmp eq ptr %57, %58
  br i1 %59, label %60, label %5

60:                                               ; preds = %55, %0
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind allocsize(0) }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !10, i64 0}
!12 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !13, i64 16}
!13 = !{!"short", !7, i64 0}
!14 = !{!12, !10, i64 4}
!15 = !{!12, !10, i64 8}
!16 = !{!12, !10, i64 12}
!17 = !{!12, !13, i64 16}
!18 = !{!13, !13, i64 0}
!19 = !{!7, !7, i64 0}
!20 = !{!21, !10, i64 0}
!21 = !{!"", !10, i64 0, !10, i64 4, !7, i64 8}
!22 = !{!23, !6, i64 24}
!23 = !{!"mapvec", !6, i64 0, !13, i64 8, !10, i64 12, !10, i64 16, !6, i64 24, !7, i64 32, !7, i64 2080, !7, i64 2433}
!24 = !{!25, !6, i64 8}
!25 = !{!"font_rec", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !10, i64 32, !6, i64 40, !6, i64 48, !13, i64 56, !13, i64 58, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88}
!26 = !{!25, !6, i64 24}
!27 = !{!25, !6, i64 16}
!28 = !{!29, !7, i64 0}
!29 = !{!"composite_rec", !7, i64 0, !13, i64 2, !13, i64 4}
!30 = !{!29, !13, i64 2}
!31 = !{!29, !13, i64 4}
!32 = !{!25, !6, i64 0}
!33 = !{!34, !13, i64 6}
!34 = !{!"metrics", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !13, i64 8}
!35 = !{!25, !6, i64 40}
!36 = !{!25, !6, i64 64}
!37 = !{!25, !6, i64 72}
!38 = !{!25, !6, i64 88}
!39 = !{!25, !6, i64 80}
!40 = !{!25, !13, i64 56}
!41 = !{!25, !13, i64 58}
!42 = !{!21, !10, i64 4}
