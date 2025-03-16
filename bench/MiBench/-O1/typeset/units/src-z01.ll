; ModuleID = 'src/z01.c'
source_filename = "src/z01.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }
%struct.back_end_rec = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@MemCheck = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [8 x i8] c"LOUTLIB\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"/usr/staff/jeff/lout.lib\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"unable to initialize locale\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"%s/%s/%s/LC_MESSAGES/errors.%s\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"src/locale\00", align 1
@MsgCat = dso_local local_unnamed_addr global ptr null, align 8
@TotalWordCount = dso_local local_unnamed_addr global i32 0, align 4
@PS_BackEnd = external local_unnamed_addr global ptr, align 8
@BackEnd = dso_local local_unnamed_addr global ptr null, align 8
@PlainCharWidth = external local_unnamed_addr global i32, align 4
@PlainCharHeight = external local_unnamed_addr global i32, align 4
@PlainFormFeed = external local_unnamed_addr global i32, align 4
@InitializeAll = dso_local local_unnamed_addr global i32 0, align 4
@UseCollate = dso_local local_unnamed_addr global i32 0, align 4
@AllowCrossDb = dso_local local_unnamed_addr global i32 0, align 4
@InMemoryDbIndexes = dso_local local_unnamed_addr global i32 0, align 4
@Encapsulated = external local_unnamed_addr global i32, align 4
@SafeExecution = dso_local local_unnamed_addr global i32 0, align 4
@Kern = dso_local local_unnamed_addr global i32 0, align 4
@AltErrorFormat = dso_local local_unnamed_addr global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"lout\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@CommandOptions = dso_local local_unnamed_addr global ptr null, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"usage: -o <filename>\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c".lt\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"-o: output file name %s ends with %s\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"usage: -c <filename>\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"usage: -e <filename>\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"EPS\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"usage: -EPS\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"usage: -D <directoryname>\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"usage: -C <directoryname>\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"usage: -F <directoryname>\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"usage: -H <directoryname>\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"usage: -I <directoryname>\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"usage: -i <filename>\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"two -h options illegal\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"usage: -h <filename>\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c".lh\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.26 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"Basser Lout Version 3.24 (October 2000)\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"%-28s %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"Basser Lout written by:\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"Jeffrey H. Kingston (jeff@cs.usyd.edu.au)\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"Free source available from:\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"ftp://ftp.cs.usyd.edu.au/jeff/lout\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"%-28s %s %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"This executable compiled:\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"10:30:34\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"Mar 16 2025\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"%-28s %s%s%s\0A\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"System include directory:\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"src/include\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"System database directory:\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"src/data\00", align 1
@.str.43 = private unnamed_addr constant [54 x i8] c"Database index files created afresh automatically:%s\0A\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c" yes\00", align 1
@.str.45 = private unnamed_addr constant [51 x i8] c"Safe execution (disabling system()) is default:%s\0A\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c" no\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c"strcoll() used for sorting by default:%s\0A\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"PDF compression on:%s\0A\00", align 1
@.str.49 = private unnamed_addr constant [46 x i8] c"Debugging (-d, -dd, -ddd flags) available:%s\0A\00", align 1
@.str.51 = private unnamed_addr constant [48 x i8] c"Basser Lout comes with ABSOLUTELY NO WARRANTY.\0A\00", align 1
@.str.52 = private unnamed_addr constant [47 x i8] c"This is free software, and you are welcome to\0A\00", align 1
@.str.53 = private unnamed_addr constant [48 x i8] c"redistribute it under certain conditions.  For\0A\00", align 1
@.str.54 = private unnamed_addr constant [49 x i8] c"details on both points, consult the GNU General\0A\00", align 1
@.str.55 = private unnamed_addr constant [50 x i8] c"Public License (distributed with this software).\0A\00", align 1
@PDF_BackEnd = external local_unnamed_addr global ptr, align 8
@.str.56 = private unnamed_addr constant [4 x i8] c"PDF\00", align 1
@Plain_BackEnd = external local_unnamed_addr global ptr, align 8
@.str.57 = private unnamed_addr constant [9 x i8] c"%f%c%f%c\00", align 1
@.str.58 = private unnamed_addr constant [32 x i8] c"usage: lout -%c<length><length>\00", align 1
@.str.59 = private unnamed_addr constant [38 x i8] c"lout -%c: units must be c, i, p, or m\00", align 1
@.str.60 = private unnamed_addr constant [33 x i8] c"%s - debug flags not implemented\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"-m%ld\00", align 1
@.str.62 = private unnamed_addr constant [30 x i8] c"checking memory location %ld\0A\00", align 1
@.str.63 = private unnamed_addr constant [31 x i8] c"standard input specified twice\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"%[^{ ] { %[^}] }\00", align 1
@.str.65 = private unnamed_addr constant [32 x i8] c"error in command-line option %s\00", align 1
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@.str.66 = private unnamed_addr constant [29 x i8] c"unknown command line flag %s\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"unable to initialize collation\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.68 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.69 = private unnamed_addr constant [27 x i8] c"cannot open output file %s\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"src/font\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"src/hyph\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"src/maps\00", align 1
@StartSym = dso_local local_unnamed_addr global ptr null, align 8
@.str.73 = private unnamed_addr constant [7 x i8] c"\\Start\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"@Galley\00", align 1
@GalleySym = dso_local local_unnamed_addr global ptr null, align 8
@.str.75 = private unnamed_addr constant [13 x i8] c"@ForceGalley\00", align 1
@ForceGalleySym = dso_local local_unnamed_addr global ptr null, align 8
@.str.76 = private unnamed_addr constant [8 x i8] c"@LInput\00", align 1
@InputSym = dso_local local_unnamed_addr global ptr null, align 8
@.str.77 = private unnamed_addr constant [7 x i8] c"\\Print\00", align 1
@PrintSym = dso_local local_unnamed_addr global ptr null, align 8
@.str.78 = private unnamed_addr constant [10 x i8] c"@FilterIn\00", align 1
@FilterInSym = dso_local local_unnamed_addr global ptr null, align 8
@.str.79 = private unnamed_addr constant [11 x i8] c"@FilterOut\00", align 1
@FilterOutSym = dso_local local_unnamed_addr global ptr null, align 8
@.str.80 = private unnamed_addr constant [11 x i8] c"@FilterErr\00", align 1
@FilterErrSym = dso_local local_unnamed_addr global ptr null, align 8
@.str.81 = private unnamed_addr constant [9 x i8] c"@OptGall\00", align 1
@OptGallSym = dso_local local_unnamed_addr global ptr null, align 8
@.str.82 = private unnamed_addr constant [10 x i8] c"@Verbatim\00", align 1
@VerbatimSym = dso_local local_unnamed_addr global ptr null, align 8
@.str.83 = private unnamed_addr constant [13 x i8] c"@RawVerbatim\00", align 1
@RawVerbatimSym = dso_local local_unnamed_addr global ptr null, align 8
@.str.84 = private unnamed_addr constant [7 x i8] c"@Begin\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"@End\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"@LEnv\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"@@A\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"@@B\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"@@C\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"@@D\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"@@E\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"@LClos\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"@@V\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"@LUse\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"@LEO\00", align 1
@.str.96 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.97 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"@Include\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"@SysInclude\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"@PrependGraphic\00", align 1
@.str.101 = private unnamed_addr constant [19 x i8] c"@SysPrependGraphic\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"@Database\00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"@SysDatabase\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"@Use\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"@NotRevealed\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"@Case\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"@Yield\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"@BackEnd\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"@Char\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"@Font\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"@Space\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"@YUnit\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"@ZUnit\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"@Break\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"@Underline\00", align 1
@.str.116 = private unnamed_addr constant [11 x i8] c"@SetColour\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"@SetColor\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"@Outline\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"@Language\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"@CurrLang\00", align 1
@.str.121 = private unnamed_addr constant [12 x i8] c"@CurrFamily\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"@CurrFace\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"@CurrYUnit\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"@CurrZUnit\00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"@Common\00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"@Rump\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"@Meld\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"@Insert\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"@OneOf\00", align 1
@.str.130 = private unnamed_addr constant [6 x i8] c"@Next\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"@Plus\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"@Minus\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"@Open\00", align 1
@.str.134 = private unnamed_addr constant [8 x i8] c"@Tagged\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"@Wide\00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"@High\00", align 1
@.str.137 = private unnamed_addr constant [8 x i8] c"@HShift\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"@VShift\00", align 1
@.str.139 = private unnamed_addr constant [22 x i8] c"@BeginHeaderComponent\00", align 1
@.str.140 = private unnamed_addr constant [20 x i8] c"@EndHeaderComponent\00", align 1
@.str.141 = private unnamed_addr constant [20 x i8] c"@SetHeaderComponent\00", align 1
@.str.142 = private unnamed_addr constant [22 x i8] c"@ClearHeaderComponent\00", align 1
@.str.143 = private unnamed_addr constant [8 x i8] c"@OneCol\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"@OneRow\00", align 1
@.str.145 = private unnamed_addr constant [8 x i8] c"@HScale\00", align 1
@.str.146 = private unnamed_addr constant [8 x i8] c"@VScale\00", align 1
@.str.147 = private unnamed_addr constant [8 x i8] c"@HCover\00", align 1
@.str.148 = private unnamed_addr constant [8 x i8] c"@VCover\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"@KernShrink\00", align 1
@.str.150 = private unnamed_addr constant [7 x i8] c"@Scale\00", align 1
@.str.151 = private unnamed_addr constant [11 x i8] c"@HContract\00", align 1
@.str.152 = private unnamed_addr constant [11 x i8] c"@VContract\00", align 1
@.str.153 = private unnamed_addr constant [10 x i8] c"@HLimited\00", align 1
@.str.154 = private unnamed_addr constant [10 x i8] c"@VLimited\00", align 1
@.str.155 = private unnamed_addr constant [9 x i8] c"@HExpand\00", align 1
@.str.156 = private unnamed_addr constant [9 x i8] c"@VExpand\00", align 1
@.str.157 = private unnamed_addr constant [13 x i8] c"@StartHVSpan\00", align 1
@.str.158 = private unnamed_addr constant [12 x i8] c"@StartHSpan\00", align 1
@.str.159 = private unnamed_addr constant [12 x i8] c"@StartVSpan\00", align 1
@.str.160 = private unnamed_addr constant [7 x i8] c"@HSpan\00", align 1
@.str.161 = private unnamed_addr constant [7 x i8] c"@VSpan\00", align 1
@.str.162 = private unnamed_addr constant [9 x i8] c"@PAdjust\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c"@HAdjust\00", align 1
@.str.164 = private unnamed_addr constant [9 x i8] c"@VAdjust\00", align 1
@.str.165 = private unnamed_addr constant [8 x i8] c"@Rotate\00", align 1
@.str.166 = private unnamed_addr constant [12 x i8] c"@Background\00", align 1
@.str.167 = private unnamed_addr constant [16 x i8] c"@IncludeGraphic\00", align 1
@.str.168 = private unnamed_addr constant [19 x i8] c"@SysIncludeGraphic\00", align 1
@.str.169 = private unnamed_addr constant [14 x i8] c"@PlainGraphic\00", align 1
@.str.170 = private unnamed_addr constant [9 x i8] c"@Graphic\00", align 1
@.str.171 = private unnamed_addr constant [12 x i8] c"@LinkSource\00", align 1
@.str.172 = private unnamed_addr constant [10 x i8] c"@LinkDest\00", align 1
@.str.173 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.174 = private unnamed_addr constant [4 x i8] c"&&&\00", align 1
@.str.175 = private unnamed_addr constant [6 x i8] c"@Null\00", align 1
@.str.176 = private unnamed_addr constant [11 x i8] c"@PageLabel\00", align 1
@.str.177 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.178 = private unnamed_addr constant [4 x i8] c"^//\00", align 1
@.str.179 = private unnamed_addr constant [3 x i8] c"^/\00", align 1
@.str.180 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.181 = private unnamed_addr constant [4 x i8] c"^||\00", align 1
@.str.182 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.183 = private unnamed_addr constant [3 x i8] c"^|\00", align 1
@.str.184 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.185 = private unnamed_addr constant [3 x i8] c"^&\00", align 1
@.str.186 = private unnamed_addr constant [31 x i8] c"total of all words printed: %d\00", align 1
@.str.187 = private unnamed_addr constant [27 x i8] c"usage:  lout options files\00", align 1
@.str.188 = private unnamed_addr constant [62 x i8] c"  -s              suppress access to cross reference database\00", align 1
@.str.189 = private unnamed_addr constant [55 x i8] c"  -EPS            EPS (Encapsulated PostScript) output\00", align 1
@.str.190 = private unnamed_addr constant [62 x i8] c"  -PDF or -Z      PDF (Adobe Portable Document Format) output\00", align 1
@.str.191 = private unnamed_addr constant [58 x i8] c"  -p              plain text output instead of PostScript\00", align 1
@.str.192 = private unnamed_addr constant [64 x i8] c"  -P              like -p but with form-feed char between pages\00", align 1
@.str.193 = private unnamed_addr constant [62 x i8] c"  -S              safe execution (disable calls to system(3))\00", align 1
@.str.194 = private unnamed_addr constant [62 x i8] c"  -U              unsafe execution (allow calls to system(3))\00", align 1
@.str.195 = private unnamed_addr constant [66 x i8] c"  -l              ASCII collation order when sorting indexes etc.\00", align 1
@.str.196 = private unnamed_addr constant [67 x i8] c"  -L              locale collation order when sorting indexes etc.\00", align 1
@.str.197 = private unnamed_addr constant [51 x i8] c"  -o file         output to file instead of stdout\00", align 1
@.str.198 = private unnamed_addr constant [59 x i8] c"  -e file         error messages to file instead of stderr\00", align 1
@.str.199 = private unnamed_addr constant [63 x i8] c"  -a              alternative error format:  file:line:col ...\00", align 1
@.str.200 = private unnamed_addr constant [56 x i8] c"  -w              print total number of words in output\00", align 1
@.str.201 = private unnamed_addr constant [61 x i8] c"  -i file         like @SysInclude { file }; not recommended\00", align 1
@.str.202 = private unnamed_addr constant [60 x i8] c"  -I directory    add directory to include file search path\00", align 1
@.str.203 = private unnamed_addr constant [56 x i8] c"  -C directory    add directory to LCM file search path\00", align 1
@.str.204 = private unnamed_addr constant [65 x i8] c"  -F directory    add directory to font metrics file search path\00", align 1
@.str.205 = private unnamed_addr constant [64 x i8] c"  -H directory    add directory to hyphenation file search path\00", align 1
@.str.206 = private unnamed_addr constant [61 x i8] c"  -D directory    add directory to database file search path\00", align 1
@.str.207 = private unnamed_addr constant [67 x i8] c"  --option{value} set option e.g. --'@InitialFont{Times Base 10p}'\00", align 1
@.str.208 = private unnamed_addr constant [63 x i8] c"  -c file         use file.li instead of lout.li for crossrefs\00", align 1
@.str.209 = private unnamed_addr constant [63 x i8] c"  -M              save memory (don't read in database indexes)\00", align 1
@.str.210 = private unnamed_addr constant [57 x i8] c"  -x              initializing run, not for ordinary use\00", align 1
@.str.211 = private unnamed_addr constant [62 x i8] c"  -u              print this usage message on stderr and exit\00", align 1
@.str.212 = private unnamed_addr constant [62 x i8] c"  -V              print version and configuration information\00", align 1
@.str.213 = private unnamed_addr constant [54 x i8] c"  -               a file name denoting standard input\00", align 1
@.str.214 = private unnamed_addr constant [3 x i8] c"pa\00", align 1
@.str.215 = private unnamed_addr constant [3 x i8] c"pb\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca [512 x i8], align 16
  %6 = alloca [512 x i8], align 16
  %7 = alloca [512 x i8], align 16
  %8 = alloca [512 x i8], align 16
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %8) #10
  %13 = tail call ptr @getenv(ptr noundef nonnull @.str) #10
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr @.str.1, ptr %13
  %16 = tail call ptr @setlocale(i32 noundef 5, ptr noundef nonnull @.str.2) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %20 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 6, ptr noundef nonnull @.str.3, i32 noundef 2, ptr noundef %19) #10
  br label %21

21:                                               ; preds = %18, %2
  %22 = phi ptr [ @.str.4, %18 ], [ %16, %2 ]
  %23 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull %15, ptr noundef nonnull @.str.6, ptr noundef nonnull %22, ptr noundef nonnull %22) #10
  %24 = call ptr @catopen(ptr noundef nonnull %8, i32 noundef 0) #10
  store ptr %24, ptr @MsgCat, align 8, !tbaa !5
  store i32 0, ptr @TotalWordCount, align 4, !tbaa !9
  %25 = load ptr, ptr @PS_BackEnd, align 8, !tbaa !5
  store ptr %25, ptr @BackEnd, align 8, !tbaa !5
  store i32 144, ptr @PlainCharWidth, align 4, !tbaa !9
  store i32 240, ptr @PlainCharHeight, align 4, !tbaa !9
  store i32 0, ptr @PlainFormFeed, align 4, !tbaa !9
  store i32 0, ptr @InitializeAll, align 4, !tbaa !9
  store i32 1, ptr @UseCollate, align 4, !tbaa !9
  store i32 1, ptr @AllowCrossDb, align 4, !tbaa !9
  store i32 1, ptr @InMemoryDbIndexes, align 4, !tbaa !9
  store i32 0, ptr @Encapsulated, align 4, !tbaa !9
  store i32 0, ptr @SafeExecution, align 4, !tbaa !9
  store i32 1, ptr @Kern, align 4, !tbaa !9
  call void @MemInit() #10
  call void @InitSym() #10
  call void @LexInit() #10
  call void @InitFiles() #10
  %26 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %27 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.2, ptr noundef %26) #10
  call void @AddToPath(i32 noundef 0, ptr noundef %27) #10
  %28 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %29 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.2, ptr noundef %28) #10
  call void @AddToPath(i32 noundef 3, ptr noundef %29) #10
  %30 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %31 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.2, ptr noundef %30) #10
  call void @AddToPath(i32 noundef 1, ptr noundef %31) #10
  store i32 0, ptr @AltErrorFormat, align 4, !tbaa !9
  %32 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !11
  %33 = zext i8 %32 to i32
  store i32 %33, ptr @zz_size, align 4, !tbaa !9
  %34 = zext i8 %32 to i64
  %35 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %21
  %39 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %40 = call ptr @GetMemory(i32 noundef %33, ptr noundef %39) #10
  store ptr %40, ptr @zz_hold, align 8, !tbaa !5
  br label %45

41:                                               ; preds = %21
  store ptr %36, ptr @zz_hold, align 8, !tbaa !5
  %42 = load ptr, ptr %36, align 8, !tbaa !11
  %43 = zext i8 %32 to i64
  %44 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %43
  store ptr %42, ptr %44, align 8, !tbaa !5
  br label %45

45:                                               ; preds = %38, %41
  %46 = phi ptr [ %40, %38 ], [ %36, %41 ]
  %47 = getelementptr inbounds %struct.word_type, ptr %46, i64 0, i32 1
  store i8 17, ptr %47, align 8, !tbaa !11
  %48 = getelementptr inbounds [2 x %struct.LIST], ptr %46, i64 0, i64 1, i32 1
  store ptr %46, ptr %48, align 8, !tbaa !11
  %49 = getelementptr inbounds [2 x %struct.LIST], ptr %46, i64 0, i64 1
  store ptr %46, ptr %49, align 8, !tbaa !11
  %50 = getelementptr inbounds %struct.LIST, ptr %46, i64 0, i32 1
  store ptr %46, ptr %50, align 8, !tbaa !11
  store ptr %46, ptr %46, align 8, !tbaa !11
  store ptr %46, ptr @CommandOptions, align 8, !tbaa !5
  %51 = icmp sgt i32 %0, 1
  br i1 %51, label %52, label %777

52:                                               ; preds = %45
  %53 = add nsw i32 %0, -1
  br label %54

54:                                               ; preds = %52, %765
  %55 = phi i32 [ 0, %52 ], [ %771, %765 ]
  %56 = phi ptr [ @.str.8, %52 ], [ %770, %765 ]
  %57 = phi ptr [ @.str.7, %52 ], [ %769, %765 ]
  %58 = phi i32 [ 0, %52 ], [ %768, %765 ]
  %59 = phi i32 [ 0, %52 ], [ %767, %765 ]
  %60 = phi i32 [ 1, %52 ], [ %772, %765 ]
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds ptr, ptr %1, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !5
  %64 = load i8, ptr %63, align 1, !tbaa !11
  %65 = icmp eq i8 %64, 45
  br i1 %65, label %66, label %748

66:                                               ; preds = %54
  %67 = getelementptr inbounds i8, ptr %63, i64 1
  %68 = load i8, ptr %67, align 1, !tbaa !11
  switch i8 %68, label %743 [
    i8 111, label %69
    i8 115, label %93
    i8 77, label %94
    i8 107, label %95
    i8 108, label %96
    i8 76, label %97
    i8 99, label %98
    i8 101, label %114
    i8 97, label %133
    i8 69, label %134
    i8 68, label %141
    i8 67, label %164
    i8 70, label %185
    i8 72, label %206
    i8 73, label %227
    i8 105, label %250
    i8 104, label %282
    i8 86, label %312
    i8 119, label %765
    i8 90, label %347
    i8 80, label %349
    i8 112, label %355
    i8 120, label %422
    i8 117, label %423
    i8 100, label %425
    i8 109, label %428
    i8 0, label %434
    i8 45, label %442
    i8 83, label %741
    i8 85, label %742
  ]

69:                                               ; preds = %66
  %70 = getelementptr inbounds i8, ptr %63, i64 2
  %71 = load i8, ptr %70, align 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = icmp slt i32 %60, %53
  br i1 %74, label %75, label %82

75:                                               ; preds = %73
  %76 = add nsw i32 %60, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds ptr, ptr %1, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !5
  %80 = load i8, ptr %79, align 1, !tbaa !11
  %81 = icmp eq i8 %80, 45
  br i1 %81, label %82, label %85

82:                                               ; preds = %75, %73
  %83 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %84 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 7, ptr noundef nonnull @.str.10, i32 noundef 1, ptr noundef %83) #10
  br label %85

85:                                               ; preds = %75, %69, %82
  %86 = phi ptr [ null, %82 ], [ %70, %69 ], [ %79, %75 ]
  %87 = phi i32 [ %60, %82 ], [ %60, %69 ], [ %76, %75 ]
  %88 = call i32 @StringEndsWith(ptr noundef %86, ptr noundef nonnull @.str.11) #10
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %765, label %90

90:                                               ; preds = %85
  %91 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %92 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 28, ptr noundef nonnull @.str.12, i32 noundef 1, ptr noundef %91, ptr noundef %86, ptr noundef nonnull @.str.11) #10
  br label %765

93:                                               ; preds = %66
  store i32 0, ptr @AllowCrossDb, align 4, !tbaa !9
  br label %765

94:                                               ; preds = %66
  store i32 0, ptr @InMemoryDbIndexes, align 4, !tbaa !9
  br label %765

95:                                               ; preds = %66
  store i32 0, ptr @Kern, align 4, !tbaa !9
  br label %765

96:                                               ; preds = %66
  store i32 0, ptr @UseCollate, align 4, !tbaa !9
  br label %765

97:                                               ; preds = %66
  store i32 1, ptr @UseCollate, align 4, !tbaa !9
  br label %765

98:                                               ; preds = %66
  %99 = getelementptr inbounds i8, ptr %63, i64 2
  %100 = load i8, ptr %99, align 1
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %765

102:                                              ; preds = %98
  %103 = icmp slt i32 %60, %53
  br i1 %103, label %104, label %111

104:                                              ; preds = %102
  %105 = add nsw i32 %60, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds ptr, ptr %1, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !5
  %109 = load i8, ptr %108, align 1, !tbaa !11
  %110 = icmp eq i8 %109, 45
  br i1 %110, label %111, label %765

111:                                              ; preds = %104, %102
  %112 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %113 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 8, ptr noundef nonnull @.str.13, i32 noundef 1, ptr noundef %112) #10
  br label %765

114:                                              ; preds = %66
  %115 = getelementptr inbounds i8, ptr %63, i64 2
  %116 = load i8, ptr %115, align 1
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %114
  %119 = icmp slt i32 %60, %53
  br i1 %119, label %120, label %127

120:                                              ; preds = %118
  %121 = add nsw i32 %60, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds ptr, ptr %1, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !5
  %125 = load i8, ptr %124, align 1, !tbaa !11
  %126 = icmp eq i8 %125, 45
  br i1 %126, label %127, label %130

127:                                              ; preds = %120, %118
  %128 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %129 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef 1, ptr noundef %128) #10
  br label %130

130:                                              ; preds = %120, %114, %127
  %131 = phi ptr [ null, %127 ], [ %115, %114 ], [ %124, %120 ]
  %132 = phi i32 [ %60, %127 ], [ %60, %114 ], [ %121, %120 ]
  call void @ErrorInit(ptr noundef %131) #10
  br label %765

133:                                              ; preds = %66
  store i32 1, ptr @AltErrorFormat, align 4, !tbaa !9
  br label %765

134:                                              ; preds = %66
  %135 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %67, ptr noundef nonnull dereferenceable(4) @.str.15) #11
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %139 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 10, ptr noundef nonnull @.str.16, i32 noundef 1, ptr noundef %138) #10
  br label %140

140:                                              ; preds = %137, %134
  store i32 1, ptr @Encapsulated, align 4, !tbaa !9
  br label %765

141:                                              ; preds = %66
  %142 = getelementptr inbounds i8, ptr %63, i64 2
  %143 = load i8, ptr %142, align 1
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %141
  %146 = icmp slt i32 %60, %53
  br i1 %146, label %147, label %154

147:                                              ; preds = %145
  %148 = add nsw i32 %60, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds ptr, ptr %1, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !5
  %152 = load i8, ptr %151, align 1, !tbaa !11
  %153 = icmp eq i8 %152, 45
  br i1 %153, label %154, label %157

154:                                              ; preds = %147, %145
  %155 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %156 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 11, ptr noundef nonnull @.str.17, i32 noundef 1, ptr noundef %155) #10
  br label %157

157:                                              ; preds = %147, %141, %154
  %158 = phi ptr [ null, %154 ], [ %142, %141 ], [ %151, %147 ]
  %159 = phi i32 [ %60, %154 ], [ %60, %141 ], [ %148, %147 ]
  %160 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %161 = call ptr @MakeWord(i32 noundef 11, ptr noundef %158, ptr noundef %160) #10
  call void @AddToPath(i32 noundef 3, ptr noundef %161) #10
  %162 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %163 = call ptr @MakeWord(i32 noundef 11, ptr noundef %158, ptr noundef %162) #10
  call void @AddToPath(i32 noundef 4, ptr noundef %163) #10
  br label %765

164:                                              ; preds = %66
  %165 = getelementptr inbounds i8, ptr %63, i64 2
  %166 = load i8, ptr %165, align 1
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %180

168:                                              ; preds = %164
  %169 = icmp slt i32 %60, %53
  br i1 %169, label %170, label %177

170:                                              ; preds = %168
  %171 = add nsw i32 %60, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds ptr, ptr %1, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !5
  %175 = load i8, ptr %174, align 1, !tbaa !11
  %176 = icmp eq i8 %175, 45
  br i1 %176, label %177, label %180

177:                                              ; preds = %170, %168
  %178 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %179 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 12, ptr noundef nonnull @.str.18, i32 noundef 1, ptr noundef %178) #10
  br label %180

180:                                              ; preds = %170, %164, %177
  %181 = phi ptr [ null, %177 ], [ %165, %164 ], [ %174, %170 ]
  %182 = phi i32 [ %60, %177 ], [ %60, %164 ], [ %171, %170 ]
  %183 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %184 = call ptr @MakeWord(i32 noundef 11, ptr noundef %181, ptr noundef %183) #10
  call void @AddToPath(i32 noundef 7, ptr noundef %184) #10
  br label %765

185:                                              ; preds = %66
  %186 = getelementptr inbounds i8, ptr %63, i64 2
  %187 = load i8, ptr %186, align 1
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %185
  %190 = icmp slt i32 %60, %53
  br i1 %190, label %191, label %198

191:                                              ; preds = %189
  %192 = add nsw i32 %60, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds ptr, ptr %1, i64 %193
  %195 = load ptr, ptr %194, align 8, !tbaa !5
  %196 = load i8, ptr %195, align 1, !tbaa !11
  %197 = icmp eq i8 %196, 45
  br i1 %197, label %198, label %201

198:                                              ; preds = %191, %189
  %199 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %200 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 13, ptr noundef nonnull @.str.19, i32 noundef 1, ptr noundef %199) #10
  br label %201

201:                                              ; preds = %191, %185, %198
  %202 = phi ptr [ null, %198 ], [ %186, %185 ], [ %195, %191 ]
  %203 = phi i32 [ %60, %198 ], [ %60, %185 ], [ %192, %191 ]
  %204 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %205 = call ptr @MakeWord(i32 noundef 11, ptr noundef %202, ptr noundef %204) #10
  call void @AddToPath(i32 noundef 5, ptr noundef %205) #10
  br label %765

206:                                              ; preds = %66
  %207 = getelementptr inbounds i8, ptr %63, i64 2
  %208 = load i8, ptr %207, align 1
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %210, label %222

210:                                              ; preds = %206
  %211 = icmp slt i32 %60, %53
  br i1 %211, label %212, label %219

212:                                              ; preds = %210
  %213 = add nsw i32 %60, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds ptr, ptr %1, i64 %214
  %216 = load ptr, ptr %215, align 8, !tbaa !5
  %217 = load i8, ptr %216, align 1, !tbaa !11
  %218 = icmp eq i8 %217, 45
  br i1 %218, label %219, label %222

219:                                              ; preds = %212, %210
  %220 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %221 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 14, ptr noundef nonnull @.str.20, i32 noundef 1, ptr noundef %220) #10
  br label %222

222:                                              ; preds = %212, %206, %219
  %223 = phi ptr [ null, %219 ], [ %207, %206 ], [ %216, %212 ]
  %224 = phi i32 [ %60, %219 ], [ %60, %206 ], [ %213, %212 ]
  %225 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %226 = call ptr @MakeWord(i32 noundef 11, ptr noundef %223, ptr noundef %225) #10
  call void @AddToPath(i32 noundef 6, ptr noundef %226) #10
  br label %765

227:                                              ; preds = %66
  %228 = getelementptr inbounds i8, ptr %63, i64 2
  %229 = load i8, ptr %228, align 1
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %231, label %243

231:                                              ; preds = %227
  %232 = icmp slt i32 %60, %53
  br i1 %232, label %233, label %240

233:                                              ; preds = %231
  %234 = add nsw i32 %60, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds ptr, ptr %1, i64 %235
  %237 = load ptr, ptr %236, align 8, !tbaa !5
  %238 = load i8, ptr %237, align 1, !tbaa !11
  %239 = icmp eq i8 %238, 45
  br i1 %239, label %240, label %243

240:                                              ; preds = %233, %231
  %241 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %242 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 15, ptr noundef nonnull @.str.21, i32 noundef 1, ptr noundef %241) #10
  br label %243

243:                                              ; preds = %233, %227, %240
  %244 = phi ptr [ null, %240 ], [ %228, %227 ], [ %237, %233 ]
  %245 = phi i32 [ %60, %240 ], [ %60, %227 ], [ %234, %233 ]
  %246 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %247 = call ptr @MakeWord(i32 noundef 11, ptr noundef %244, ptr noundef %246) #10
  call void @AddToPath(i32 noundef 1, ptr noundef %247) #10
  %248 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %249 = call ptr @MakeWord(i32 noundef 11, ptr noundef %244, ptr noundef %248) #10
  call void @AddToPath(i32 noundef 2, ptr noundef %249) #10
  br label %765

250:                                              ; preds = %66
  %251 = getelementptr inbounds i8, ptr %63, i64 2
  %252 = load i8, ptr %251, align 1
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %254, label %266

254:                                              ; preds = %250
  %255 = icmp slt i32 %60, %53
  br i1 %255, label %256, label %263

256:                                              ; preds = %254
  %257 = add nsw i32 %60, 1
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds ptr, ptr %1, i64 %258
  %260 = load ptr, ptr %259, align 8, !tbaa !5
  %261 = load i8, ptr %260, align 1, !tbaa !11
  %262 = icmp eq i8 %261, 45
  br i1 %262, label %263, label %266

263:                                              ; preds = %256, %254
  %264 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %265 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 16, ptr noundef nonnull @.str.22, i32 noundef 1, ptr noundef %264) #10
  unreachable

266:                                              ; preds = %256, %250
  %267 = phi ptr [ %251, %250 ], [ %260, %256 ]
  %268 = phi i32 [ %60, %250 ], [ %257, %256 ]
  %269 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %267) #11
  %270 = trunc i64 %269 to i32
  %271 = add i32 %270, -3
  %272 = icmp sgt i32 %271, -1
  br i1 %272, label %273, label %279

273:                                              ; preds = %266
  %274 = zext nneg i32 %271 to i64
  %275 = getelementptr inbounds i8, ptr %267, i64 %274
  %276 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %275, ptr noundef nonnull dereferenceable(4) @.str.11) #11
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %273
  store i8 0, ptr %275, align 1
  br label %279

279:                                              ; preds = %278, %273, %266
  %280 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %281 = call zeroext i16 @DefineFile(ptr noundef nonnull %267, ptr noundef nonnull @.str.2, ptr noundef %280, i32 noundef 0, i32 noundef 2) #10
  br label %765

282:                                              ; preds = %66
  %283 = call zeroext i16 @FirstFile(i32 noundef 7) #10
  %284 = icmp eq i16 %283, 0
  br i1 %284, label %288, label %285

285:                                              ; preds = %282
  %286 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %287 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 17, ptr noundef nonnull @.str.23, i32 noundef 1, ptr noundef %286) #10
  br label %288

288:                                              ; preds = %285, %282
  %289 = load ptr, ptr %62, align 8, !tbaa !5
  %290 = getelementptr inbounds i8, ptr %289, i64 2
  %291 = load i8, ptr %290, align 1
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %293, label %305

293:                                              ; preds = %288
  %294 = icmp slt i32 %60, %53
  br i1 %294, label %295, label %302

295:                                              ; preds = %293
  %296 = add nsw i32 %60, 1
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds ptr, ptr %1, i64 %297
  %299 = load ptr, ptr %298, align 8, !tbaa !5
  %300 = load i8, ptr %299, align 1, !tbaa !11
  %301 = icmp eq i8 %300, 45
  br i1 %301, label %302, label %305

302:                                              ; preds = %295, %293
  %303 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %304 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 18, ptr noundef nonnull @.str.24, i32 noundef 1, ptr noundef %303) #10
  br label %305

305:                                              ; preds = %295, %288, %302
  %306 = phi ptr [ null, %302 ], [ %290, %288 ], [ %299, %295 ]
  %307 = phi i32 [ %60, %302 ], [ %60, %288 ], [ %296, %295 ]
  %308 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %309 = call zeroext i16 @DefineFile(ptr noundef %306, ptr noundef nonnull @.str.2, ptr noundef %308, i32 noundef 7, i32 noundef 1) #10
  %310 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %311 = call zeroext i16 @DefineFile(ptr noundef %306, ptr noundef nonnull @.str.25, ptr noundef %310, i32 noundef 8, i32 noundef 1) #10
  br label %765

312:                                              ; preds = %66
  %313 = load ptr, ptr @stderr, align 8, !tbaa !5
  %314 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %313, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #12
  %315 = load ptr, ptr @stderr, align 8, !tbaa !5
  %316 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %315, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #12
  %317 = load ptr, ptr @stderr, align 8, !tbaa !5
  %318 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %317, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #12
  %319 = load ptr, ptr @stderr, align 8, !tbaa !5
  %320 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %319, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36) #12
  %321 = load ptr, ptr @stderr, align 8, !tbaa !5
  %322 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %321, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull %15, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #12
  %323 = load ptr, ptr @stderr, align 8, !tbaa !5
  %324 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %323, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.41, ptr noundef nonnull %15, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.42) #12
  %325 = load ptr, ptr @stderr, align 8, !tbaa !5
  %326 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %325, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #12
  %327 = load ptr, ptr @stderr, align 8, !tbaa !5
  %328 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %327, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46) #12
  %329 = load ptr, ptr @stderr, align 8, !tbaa !5
  %330 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %329, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.44) #12
  %331 = load ptr, ptr @stderr, align 8, !tbaa !5
  %332 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %331, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.46) #12
  %333 = load ptr, ptr @stderr, align 8, !tbaa !5
  %334 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %333, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.46) #12
  %335 = load ptr, ptr @stderr, align 8, !tbaa !5
  %336 = call i32 @fputc(i32 10, ptr %335)
  %337 = load ptr, ptr @stderr, align 8, !tbaa !5
  %338 = call i64 @fwrite(ptr nonnull @.str.51, i64 47, i64 1, ptr %337) #12
  %339 = load ptr, ptr @stderr, align 8, !tbaa !5
  %340 = call i64 @fwrite(ptr nonnull @.str.52, i64 46, i64 1, ptr %339) #12
  %341 = load ptr, ptr @stderr, align 8, !tbaa !5
  %342 = call i64 @fwrite(ptr nonnull @.str.53, i64 47, i64 1, ptr %341) #12
  %343 = load ptr, ptr @stderr, align 8, !tbaa !5
  %344 = call i64 @fwrite(ptr nonnull @.str.54, i64 48, i64 1, ptr %343) #12
  %345 = load ptr, ptr @stderr, align 8, !tbaa !5
  %346 = call i64 @fwrite(ptr nonnull @.str.55, i64 49, i64 1, ptr %345) #12
  call void @exit(i32 noundef 0) #13
  unreachable

347:                                              ; preds = %66
  %348 = load ptr, ptr @PDF_BackEnd, align 8, !tbaa !5
  store ptr %348, ptr @BackEnd, align 8, !tbaa !5
  br label %765

349:                                              ; preds = %66
  %350 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %67, ptr noundef nonnull dereferenceable(4) @.str.56) #11
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %354

352:                                              ; preds = %349
  %353 = load ptr, ptr @PDF_BackEnd, align 8, !tbaa !5
  store ptr %353, ptr @BackEnd, align 8, !tbaa !5
  br label %765

354:                                              ; preds = %349
  store i32 1, ptr @PlainFormFeed, align 4, !tbaa !9
  br label %355

355:                                              ; preds = %66, %354
  %356 = load ptr, ptr @Plain_BackEnd, align 8, !tbaa !5
  store ptr %356, ptr @BackEnd, align 8, !tbaa !5
  %357 = load ptr, ptr %62, align 8, !tbaa !5
  %358 = getelementptr inbounds i8, ptr %357, i64 2
  %359 = load i8, ptr %358, align 1, !tbaa !11
  %360 = icmp eq i8 %359, 0
  br i1 %360, label %765, label %361

361:                                              ; preds = %355
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #10
  %362 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %358, ptr noundef nonnull @.str.57, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %12) #10
  %363 = icmp eq i32 %362, 4
  br i1 %363, label %371, label %364

364:                                              ; preds = %361
  %365 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %366 = load ptr, ptr %62, align 8, !tbaa !5
  %367 = getelementptr inbounds i8, ptr %366, i64 1
  %368 = load i8, ptr %367, align 1, !tbaa !11
  %369 = sext i8 %368 to i32
  %370 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 19, ptr noundef nonnull @.str.58, i32 noundef 1, ptr noundef %365, i32 noundef %369) #10
  br label %371

371:                                              ; preds = %364, %361
  %372 = load i8, ptr %11, align 1, !tbaa !11
  switch i8 %372, label %389 [
    i8 99, label %373
    i8 105, label %377
    i8 112, label %381
    i8 109, label %385
  ]

373:                                              ; preds = %371
  %374 = load float, ptr %9, align 4, !tbaa !12
  %375 = fmul float %374, 5.670000e+02
  %376 = fptosi float %375 to i32
  store i32 %376, ptr @PlainCharWidth, align 4, !tbaa !9
  br label %396

377:                                              ; preds = %371
  %378 = load float, ptr %9, align 4, !tbaa !12
  %379 = fmul float %378, 1.440000e+03
  %380 = fptosi float %379 to i32
  store i32 %380, ptr @PlainCharWidth, align 4, !tbaa !9
  br label %396

381:                                              ; preds = %371
  %382 = load float, ptr %9, align 4, !tbaa !12
  %383 = fmul float %382, 2.000000e+01
  %384 = fptosi float %383 to i32
  store i32 %384, ptr @PlainCharWidth, align 4, !tbaa !9
  br label %396

385:                                              ; preds = %371
  %386 = load float, ptr %9, align 4, !tbaa !12
  %387 = fmul float %386, 1.200000e+02
  %388 = fptosi float %387 to i32
  store i32 %388, ptr @PlainCharWidth, align 4, !tbaa !9
  br label %396

389:                                              ; preds = %371
  %390 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %391 = load ptr, ptr %62, align 8, !tbaa !5
  %392 = getelementptr inbounds i8, ptr %391, i64 1
  %393 = load i8, ptr %392, align 1, !tbaa !11
  %394 = sext i8 %393 to i32
  %395 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 20, ptr noundef nonnull @.str.59, i32 noundef 1, ptr noundef %390, i32 noundef %394) #10
  br label %396

396:                                              ; preds = %389, %385, %381, %377, %373
  %397 = load i8, ptr %12, align 1, !tbaa !11
  switch i8 %397, label %414 [
    i8 99, label %398
    i8 105, label %402
    i8 112, label %406
    i8 109, label %410
  ]

398:                                              ; preds = %396
  %399 = load float, ptr %10, align 4, !tbaa !12
  %400 = fmul float %399, 5.670000e+02
  %401 = fptosi float %400 to i32
  store i32 %401, ptr @PlainCharHeight, align 4, !tbaa !9
  br label %421

402:                                              ; preds = %396
  %403 = load float, ptr %10, align 4, !tbaa !12
  %404 = fmul float %403, 1.440000e+03
  %405 = fptosi float %404 to i32
  store i32 %405, ptr @PlainCharHeight, align 4, !tbaa !9
  br label %421

406:                                              ; preds = %396
  %407 = load float, ptr %10, align 4, !tbaa !12
  %408 = fmul float %407, 2.000000e+01
  %409 = fptosi float %408 to i32
  store i32 %409, ptr @PlainCharHeight, align 4, !tbaa !9
  br label %421

410:                                              ; preds = %396
  %411 = load float, ptr %10, align 4, !tbaa !12
  %412 = fmul float %411, 1.200000e+02
  %413 = fptosi float %412 to i32
  store i32 %413, ptr @PlainCharHeight, align 4, !tbaa !9
  br label %421

414:                                              ; preds = %396
  %415 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %416 = load ptr, ptr %62, align 8, !tbaa !5
  %417 = getelementptr inbounds i8, ptr %416, i64 1
  %418 = load i8, ptr %417, align 1, !tbaa !11
  %419 = sext i8 %418 to i32
  %420 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 21, ptr noundef nonnull @.str.59, i32 noundef 1, ptr noundef %415, i32 noundef %419) #10
  br label %421

421:                                              ; preds = %414, %410, %406, %402, %398
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  br label %765

422:                                              ; preds = %66
  store i32 1, ptr @InitializeAll, align 4, !tbaa !9
  store i32 0, ptr @AllowCrossDb, align 4, !tbaa !9
  br label %765

423:                                              ; preds = %66
  %424 = load ptr, ptr @stderr, align 8, !tbaa !5
  call fastcc void @PrintUsage(ptr noundef %424)
  call void @exit(i32 noundef 0) #13
  unreachable

425:                                              ; preds = %66
  %426 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %427 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.60, i32 noundef 1, ptr noundef %426, ptr noundef nonnull %63) #10
  br label %765

428:                                              ; preds = %66
  %429 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %63, ptr noundef nonnull @.str.61, ptr noundef nonnull %4) #10
  %430 = load i64, ptr %4, align 8, !tbaa !14
  %431 = inttoptr i64 %430 to ptr
  store ptr %431, ptr @MemCheck, align 8, !tbaa !5
  %432 = load ptr, ptr @stderr, align 8, !tbaa !5
  %433 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %432, ptr noundef nonnull @.str.62, i64 noundef %430) #12
  br label %765

434:                                              ; preds = %66
  %435 = icmp eq i32 %59, 0
  br i1 %435, label %439, label %436

436:                                              ; preds = %434
  %437 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %438 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 23, ptr noundef nonnull @.str.63, i32 noundef 1, ptr noundef %437) #10
  br label %439

439:                                              ; preds = %436, %434
  %440 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %441 = call zeroext i16 @DefineFile(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, ptr noundef %440, i32 noundef 0, i32 noundef 0) #10
  br label %765

442:                                              ; preds = %66
  %443 = getelementptr inbounds i8, ptr %63, i64 2
  %444 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %443, ptr noundef nonnull @.str.64, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %445 = icmp ne i32 %444, 2
  %446 = load i8, ptr %5, align 16
  %447 = icmp eq i8 %446, 0
  %448 = select i1 %445, i1 true, i1 %447
  %449 = load i8, ptr %6, align 16
  %450 = icmp eq i8 %449, 0
  %451 = select i1 %448, i1 true, i1 %450
  br i1 %451, label %452, label %457

452:                                              ; preds = %442
  %453 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %454 = load ptr, ptr %62, align 8, !tbaa !5
  %455 = getelementptr inbounds i8, ptr %454, i64 2
  %456 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 24, ptr noundef nonnull @.str.65, i32 noundef 1, ptr noundef %453, ptr noundef nonnull %455) #10
  br label %457

457:                                              ; preds = %442, %452
  %458 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %459 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %5, ptr noundef %458) #10
  %460 = load i8, ptr @zz_lengths, align 1, !tbaa !11
  %461 = zext i8 %460 to i32
  store i32 %461, ptr @zz_size, align 4, !tbaa !9
  %462 = zext i8 %460 to i64
  %463 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %462
  %464 = load ptr, ptr %463, align 8, !tbaa !5
  %465 = icmp eq ptr %464, null
  br i1 %465, label %466, label %469

466:                                              ; preds = %457
  %467 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %468 = call ptr @GetMemory(i32 noundef %461, ptr noundef %467) #10
  br label %471

469:                                              ; preds = %457
  store ptr %464, ptr @zz_hold, align 8, !tbaa !5
  %470 = load ptr, ptr %464, align 8, !tbaa !11
  store ptr %470, ptr %463, align 8, !tbaa !5
  br label %471

471:                                              ; preds = %466, %469
  %472 = phi ptr [ %468, %466 ], [ %464, %469 ]
  %473 = getelementptr inbounds %struct.word_type, ptr %472, i64 0, i32 1
  store i8 0, ptr %473, align 8, !tbaa !11
  %474 = getelementptr inbounds [2 x %struct.LIST], ptr %472, i64 0, i64 1, i32 1
  store ptr %472, ptr %474, align 8, !tbaa !11
  %475 = getelementptr inbounds [2 x %struct.LIST], ptr %472, i64 0, i64 1
  store ptr %472, ptr %475, align 8, !tbaa !11
  %476 = getelementptr inbounds %struct.LIST, ptr %472, i64 0, i32 1
  store ptr %472, ptr %476, align 8, !tbaa !11
  store ptr %472, ptr %472, align 8, !tbaa !11
  store ptr %472, ptr @xx_link, align 8, !tbaa !5
  store ptr %472, ptr @zz_res, align 8, !tbaa !5
  %477 = load ptr, ptr @CommandOptions, align 8, !tbaa !5
  store ptr %477, ptr @zz_hold, align 8, !tbaa !5
  %478 = icmp eq ptr %477, null
  br i1 %478, label %490, label %479

479:                                              ; preds = %471
  %480 = load ptr, ptr %477, align 8, !tbaa !11
  store ptr %480, ptr @zz_tmp, align 8, !tbaa !5
  %481 = load ptr, ptr %472, align 8, !tbaa !11
  store ptr %481, ptr %477, align 8, !tbaa !11
  %482 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %483 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %484 = load ptr, ptr %483, align 8, !tbaa !11
  %485 = getelementptr inbounds %struct.LIST, ptr %484, i64 0, i32 1
  store ptr %482, ptr %485, align 8, !tbaa !11
  %486 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %486, ptr %483, align 8, !tbaa !11
  %487 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %488 = getelementptr inbounds %struct.LIST, ptr %486, i64 0, i32 1
  store ptr %487, ptr %488, align 8, !tbaa !11
  %489 = load ptr, ptr @xx_link, align 8, !tbaa !5
  br label %490

490:                                              ; preds = %471, %479
  %491 = phi ptr [ %472, %471 ], [ %489, %479 ]
  store ptr %491, ptr @zz_res, align 8, !tbaa !5
  store ptr %459, ptr @zz_hold, align 8, !tbaa !5
  %492 = icmp eq ptr %459, null
  %493 = icmp eq ptr %491, null
  %494 = select i1 %492, i1 true, i1 %493
  br i1 %494, label %502, label %495

495:                                              ; preds = %490
  %496 = getelementptr inbounds [2 x %struct.LIST], ptr %459, i64 0, i64 1
  %497 = load ptr, ptr %496, align 8, !tbaa !11
  store ptr %497, ptr @zz_tmp, align 8, !tbaa !5
  %498 = getelementptr inbounds [2 x %struct.LIST], ptr %491, i64 0, i64 1
  %499 = load ptr, ptr %498, align 8, !tbaa !11
  store ptr %499, ptr %496, align 8, !tbaa !11
  %500 = getelementptr inbounds [2 x %struct.LIST], ptr %499, i64 0, i64 1, i32 1
  store ptr %459, ptr %500, align 8, !tbaa !11
  store ptr %497, ptr %498, align 8, !tbaa !11
  %501 = getelementptr inbounds [2 x %struct.LIST], ptr %497, i64 0, i64 1, i32 1
  store ptr %491, ptr %501, align 8, !tbaa !11
  br label %502

502:                                              ; preds = %490, %495
  %503 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !11
  %504 = zext i8 %503 to i32
  store i32 %504, ptr @zz_size, align 4, !tbaa !9
  %505 = zext i8 %503 to i64
  %506 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %505
  %507 = load ptr, ptr %506, align 8, !tbaa !5
  %508 = icmp eq ptr %507, null
  br i1 %508, label %509, label %512

509:                                              ; preds = %502
  %510 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %511 = call ptr @GetMemory(i32 noundef %504, ptr noundef %510) #10
  store ptr %511, ptr @zz_hold, align 8, !tbaa !5
  br label %514

512:                                              ; preds = %502
  store ptr %507, ptr @zz_hold, align 8, !tbaa !5
  %513 = load ptr, ptr %507, align 8, !tbaa !11
  store ptr %513, ptr %506, align 8, !tbaa !5
  br label %514

514:                                              ; preds = %509, %512
  %515 = phi ptr [ %511, %509 ], [ %507, %512 ]
  %516 = getelementptr inbounds %struct.word_type, ptr %515, i64 0, i32 1
  store i8 17, ptr %516, align 8, !tbaa !11
  %517 = getelementptr inbounds [2 x %struct.LIST], ptr %515, i64 0, i64 1
  %518 = getelementptr inbounds [2 x %struct.LIST], ptr %515, i64 0, i64 1, i32 1
  store ptr %515, ptr %518, align 8, !tbaa !11
  store ptr %515, ptr %517, align 8, !tbaa !11
  %519 = getelementptr inbounds %struct.LIST, ptr %515, i64 0, i32 1
  store ptr %515, ptr %519, align 8, !tbaa !11
  store ptr %515, ptr %515, align 8, !tbaa !11
  %520 = load i8, ptr @zz_lengths, align 1, !tbaa !11
  %521 = zext i8 %520 to i32
  store i32 %521, ptr @zz_size, align 4, !tbaa !9
  %522 = zext i8 %520 to i64
  %523 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %522
  %524 = load ptr, ptr %523, align 8, !tbaa !5
  %525 = icmp eq ptr %524, null
  br i1 %525, label %526, label %529

526:                                              ; preds = %514
  %527 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %528 = call ptr @GetMemory(i32 noundef %521, ptr noundef %527) #10
  br label %531

529:                                              ; preds = %514
  store ptr %524, ptr @zz_hold, align 8, !tbaa !5
  %530 = load ptr, ptr %524, align 8, !tbaa !11
  store ptr %530, ptr %523, align 8, !tbaa !5
  br label %531

531:                                              ; preds = %526, %529
  %532 = phi ptr [ %528, %526 ], [ %524, %529 ]
  %533 = getelementptr inbounds %struct.word_type, ptr %532, i64 0, i32 1
  store i8 0, ptr %533, align 8, !tbaa !11
  %534 = getelementptr inbounds [2 x %struct.LIST], ptr %532, i64 0, i64 1, i32 1
  store ptr %532, ptr %534, align 8, !tbaa !11
  %535 = getelementptr inbounds [2 x %struct.LIST], ptr %532, i64 0, i64 1
  store ptr %532, ptr %535, align 8, !tbaa !11
  %536 = getelementptr inbounds %struct.LIST, ptr %532, i64 0, i32 1
  store ptr %532, ptr %536, align 8, !tbaa !11
  store ptr %532, ptr %532, align 8, !tbaa !11
  store ptr %532, ptr @xx_link, align 8, !tbaa !5
  store ptr %532, ptr @zz_res, align 8, !tbaa !5
  %537 = load ptr, ptr @CommandOptions, align 8, !tbaa !5
  store ptr %537, ptr @zz_hold, align 8, !tbaa !5
  %538 = icmp eq ptr %537, null
  br i1 %538, label %539, label %540

539:                                              ; preds = %531
  store ptr %515, ptr @zz_hold, align 8, !tbaa !5
  br label %555

540:                                              ; preds = %531
  %541 = load ptr, ptr %537, align 8, !tbaa !11
  store ptr %541, ptr @zz_tmp, align 8, !tbaa !5
  %542 = load ptr, ptr %532, align 8, !tbaa !11
  store ptr %542, ptr %537, align 8, !tbaa !11
  %543 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %544 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %545 = load ptr, ptr %544, align 8, !tbaa !11
  %546 = getelementptr inbounds %struct.LIST, ptr %545, i64 0, i32 1
  store ptr %543, ptr %546, align 8, !tbaa !11
  %547 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %547, ptr %544, align 8, !tbaa !11
  %548 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %549 = getelementptr inbounds %struct.LIST, ptr %547, i64 0, i32 1
  store ptr %548, ptr %549, align 8, !tbaa !11
  %550 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %550, ptr @zz_res, align 8, !tbaa !5
  store ptr %515, ptr @zz_hold, align 8, !tbaa !5
  %551 = icmp eq ptr %550, null
  br i1 %551, label %563, label %552

552:                                              ; preds = %540
  %553 = getelementptr inbounds [2 x %struct.LIST], ptr %550, i64 0, i64 1
  %554 = load ptr, ptr %553, align 8, !tbaa !11
  br label %555

555:                                              ; preds = %552, %539
  %556 = phi ptr [ %532, %539 ], [ %554, %552 ]
  %557 = phi ptr [ %532, %539 ], [ %550, %552 ]
  %558 = load ptr, ptr %517, align 8, !tbaa !11
  store ptr %558, ptr @zz_tmp, align 8, !tbaa !5
  %559 = getelementptr inbounds [2 x %struct.LIST], ptr %557, i64 0, i64 1
  store ptr %556, ptr %517, align 8, !tbaa !11
  %560 = load ptr, ptr %559, align 8, !tbaa !11
  %561 = getelementptr inbounds [2 x %struct.LIST], ptr %560, i64 0, i64 1, i32 1
  store ptr %515, ptr %561, align 8, !tbaa !11
  store ptr %558, ptr %559, align 8, !tbaa !11
  %562 = getelementptr inbounds [2 x %struct.LIST], ptr %558, i64 0, i64 1, i32 1
  store ptr %557, ptr %562, align 8, !tbaa !11
  br label %563

563:                                              ; preds = %540, %555
  br label %564

564:                                              ; preds = %563, %686
  %565 = phi ptr [ %688, %686 ], [ %6, %563 ]
  %566 = phi i32 [ %687, %686 ], [ 0, %563 ]
  %567 = load i8, ptr %565, align 1, !tbaa !11
  switch i8 %567, label %682 [
    i8 0, label %689
    i8 32, label %568
    i8 9, label %568
    i8 10, label %568
    i8 123, label %568
    i8 125, label %568
  ]

568:                                              ; preds = %564, %564, %564, %564, %564
  %569 = icmp sgt i32 %566, 0
  br i1 %569, label %570, label %686

570:                                              ; preds = %568
  %571 = zext nneg i32 %566 to i64
  %572 = getelementptr inbounds [512 x i8], ptr %7, i64 0, i64 %571
  store i8 0, ptr %572, align 1, !tbaa !11
  %573 = load ptr, ptr %519, align 8, !tbaa !11
  %574 = icmp eq ptr %573, %515
  br i1 %574, label %642, label %575

575:                                              ; preds = %570
  %576 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 1), align 1, !tbaa !11
  %577 = zext i8 %576 to i32
  store i32 %577, ptr @zz_size, align 4, !tbaa !9
  %578 = zext i8 %576 to i64
  %579 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %578
  %580 = load ptr, ptr %579, align 8, !tbaa !5
  %581 = icmp eq ptr %580, null
  br i1 %581, label %582, label %585

582:                                              ; preds = %575
  %583 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %584 = call ptr @GetMemory(i32 noundef %577, ptr noundef %583) #10
  store ptr %584, ptr @zz_hold, align 8, !tbaa !5
  br label %587

585:                                              ; preds = %575
  store ptr %580, ptr @zz_hold, align 8, !tbaa !5
  %586 = load ptr, ptr %580, align 8, !tbaa !11
  store ptr %586, ptr %579, align 8, !tbaa !5
  br label %587

587:                                              ; preds = %582, %585
  %588 = phi ptr [ %584, %582 ], [ %580, %585 ]
  %589 = getelementptr inbounds %struct.word_type, ptr %588, i64 0, i32 1
  store i8 1, ptr %589, align 8, !tbaa !11
  %590 = getelementptr inbounds [2 x %struct.LIST], ptr %588, i64 0, i64 1
  %591 = getelementptr inbounds [2 x %struct.LIST], ptr %588, i64 0, i64 1, i32 1
  store ptr %588, ptr %591, align 8, !tbaa !11
  store ptr %588, ptr %590, align 8, !tbaa !11
  %592 = getelementptr inbounds %struct.LIST, ptr %588, i64 0, i32 1
  store ptr %588, ptr %592, align 8, !tbaa !11
  store ptr %588, ptr %588, align 8, !tbaa !11
  %593 = getelementptr inbounds i8, ptr %588, i64 41
  store i8 1, ptr %593, align 1, !tbaa !11
  %594 = getelementptr inbounds i8, ptr %588, i64 42
  store i8 0, ptr %594, align 2, !tbaa !11
  %595 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %596 = getelementptr inbounds %struct.FILE_POS, ptr %595, i64 0, i32 2
  %597 = load i16, ptr %596, align 2, !tbaa !16
  %598 = getelementptr inbounds %struct.word_type, ptr %588, i64 0, i32 1, i32 0, i32 2
  store i16 %597, ptr %598, align 2, !tbaa !11
  %599 = getelementptr inbounds %struct.FILE_POS, ptr %595, i64 0, i32 3
  %600 = load i32, ptr %599, align 4
  %601 = and i32 %600, 1048575
  %602 = getelementptr inbounds %struct.word_type, ptr %588, i64 0, i32 1, i32 0, i32 3
  %603 = load i32, ptr %602, align 4
  %604 = and i32 %603, -1048576
  %605 = or disjoint i32 %604, %601
  store i32 %605, ptr %602, align 4
  %606 = load i32, ptr %599, align 4
  %607 = and i32 %606, -1048576
  %608 = or disjoint i32 %607, %601
  store i32 %608, ptr %602, align 4
  %609 = load i8, ptr @zz_lengths, align 1, !tbaa !11
  %610 = zext i8 %609 to i32
  store i32 %610, ptr @zz_size, align 4, !tbaa !9
  %611 = zext i8 %609 to i64
  %612 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %611
  %613 = load ptr, ptr %612, align 8, !tbaa !5
  %614 = icmp eq ptr %613, null
  br i1 %614, label %615, label %617

615:                                              ; preds = %587
  %616 = call ptr @GetMemory(i32 noundef %610, ptr noundef nonnull %595) #10
  br label %619

617:                                              ; preds = %587
  store ptr %613, ptr @zz_hold, align 8, !tbaa !5
  %618 = load ptr, ptr %613, align 8, !tbaa !11
  store ptr %618, ptr %612, align 8, !tbaa !5
  br label %619

619:                                              ; preds = %615, %617
  %620 = phi ptr [ %616, %615 ], [ %613, %617 ]
  %621 = getelementptr inbounds %struct.word_type, ptr %620, i64 0, i32 1
  store i8 0, ptr %621, align 8, !tbaa !11
  %622 = getelementptr inbounds [2 x %struct.LIST], ptr %620, i64 0, i64 1, i32 1
  store ptr %620, ptr %622, align 8, !tbaa !11
  %623 = getelementptr inbounds [2 x %struct.LIST], ptr %620, i64 0, i64 1
  store ptr %620, ptr %623, align 8, !tbaa !11
  %624 = getelementptr inbounds %struct.LIST, ptr %620, i64 0, i32 1
  store ptr %620, ptr %624, align 8, !tbaa !11
  store ptr %620, ptr %620, align 8, !tbaa !11
  store ptr %620, ptr @xx_link, align 8, !tbaa !5
  store ptr %620, ptr @zz_res, align 8, !tbaa !5
  store ptr %515, ptr @zz_hold, align 8, !tbaa !5
  %625 = load ptr, ptr %515, align 8, !tbaa !11
  store ptr %625, ptr @zz_tmp, align 8, !tbaa !5
  %626 = load ptr, ptr %620, align 8, !tbaa !11
  store ptr %626, ptr %515, align 8, !tbaa !11
  %627 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %628 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %629 = load ptr, ptr %628, align 8, !tbaa !11
  %630 = getelementptr inbounds %struct.LIST, ptr %629, i64 0, i32 1
  store ptr %627, ptr %630, align 8, !tbaa !11
  %631 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %631, ptr %628, align 8, !tbaa !11
  %632 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %633 = getelementptr inbounds %struct.LIST, ptr %631, i64 0, i32 1
  store ptr %632, ptr %633, align 8, !tbaa !11
  %634 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %634, ptr @zz_res, align 8, !tbaa !5
  store ptr %588, ptr @zz_hold, align 8, !tbaa !5
  %635 = icmp eq ptr %634, null
  br i1 %635, label %642, label %636

636:                                              ; preds = %619
  %637 = load ptr, ptr %590, align 8, !tbaa !11
  store ptr %637, ptr @zz_tmp, align 8, !tbaa !5
  %638 = getelementptr inbounds [2 x %struct.LIST], ptr %634, i64 0, i64 1
  %639 = load ptr, ptr %638, align 8, !tbaa !11
  store ptr %639, ptr %590, align 8, !tbaa !11
  %640 = getelementptr inbounds [2 x %struct.LIST], ptr %639, i64 0, i64 1, i32 1
  store ptr %588, ptr %640, align 8, !tbaa !11
  store ptr %637, ptr %638, align 8, !tbaa !11
  %641 = getelementptr inbounds [2 x %struct.LIST], ptr %637, i64 0, i64 1, i32 1
  store ptr %634, ptr %641, align 8, !tbaa !11
  br label %642

642:                                              ; preds = %636, %619, %570
  %643 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %644 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %7, ptr noundef %643) #10
  %645 = load i8, ptr @zz_lengths, align 1, !tbaa !11
  %646 = zext i8 %645 to i32
  store i32 %646, ptr @zz_size, align 4, !tbaa !9
  %647 = zext i8 %645 to i64
  %648 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %647
  %649 = load ptr, ptr %648, align 8, !tbaa !5
  %650 = icmp eq ptr %649, null
  br i1 %650, label %651, label %654

651:                                              ; preds = %642
  %652 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %653 = call ptr @GetMemory(i32 noundef %646, ptr noundef %652) #10
  br label %656

654:                                              ; preds = %642
  store ptr %649, ptr @zz_hold, align 8, !tbaa !5
  %655 = load ptr, ptr %649, align 8, !tbaa !11
  store ptr %655, ptr %648, align 8, !tbaa !5
  br label %656

656:                                              ; preds = %651, %654
  %657 = phi ptr [ %653, %651 ], [ %649, %654 ]
  %658 = getelementptr inbounds %struct.word_type, ptr %657, i64 0, i32 1
  store i8 0, ptr %658, align 8, !tbaa !11
  %659 = getelementptr inbounds [2 x %struct.LIST], ptr %657, i64 0, i64 1, i32 1
  store ptr %657, ptr %659, align 8, !tbaa !11
  %660 = getelementptr inbounds [2 x %struct.LIST], ptr %657, i64 0, i64 1
  store ptr %657, ptr %660, align 8, !tbaa !11
  %661 = getelementptr inbounds %struct.LIST, ptr %657, i64 0, i32 1
  store ptr %657, ptr %661, align 8, !tbaa !11
  store ptr %657, ptr %657, align 8, !tbaa !11
  store ptr %657, ptr @xx_link, align 8, !tbaa !5
  store ptr %657, ptr @zz_res, align 8, !tbaa !5
  store ptr %515, ptr @zz_hold, align 8, !tbaa !5
  %662 = load ptr, ptr %515, align 8, !tbaa !11
  store ptr %662, ptr @zz_tmp, align 8, !tbaa !5
  %663 = load ptr, ptr %657, align 8, !tbaa !11
  store ptr %663, ptr %515, align 8, !tbaa !11
  %664 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %665 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %666 = load ptr, ptr %665, align 8, !tbaa !11
  %667 = getelementptr inbounds %struct.LIST, ptr %666, i64 0, i32 1
  store ptr %664, ptr %667, align 8, !tbaa !11
  %668 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %668, ptr %665, align 8, !tbaa !11
  %669 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %670 = getelementptr inbounds %struct.LIST, ptr %668, i64 0, i32 1
  store ptr %669, ptr %670, align 8, !tbaa !11
  %671 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %671, ptr @zz_res, align 8, !tbaa !5
  store ptr %644, ptr @zz_hold, align 8, !tbaa !5
  %672 = icmp eq ptr %644, null
  %673 = icmp eq ptr %671, null
  %674 = select i1 %672, i1 true, i1 %673
  br i1 %674, label %686, label %675

675:                                              ; preds = %656
  %676 = getelementptr inbounds [2 x %struct.LIST], ptr %644, i64 0, i64 1
  %677 = load ptr, ptr %676, align 8, !tbaa !11
  store ptr %677, ptr @zz_tmp, align 8, !tbaa !5
  %678 = getelementptr inbounds [2 x %struct.LIST], ptr %671, i64 0, i64 1
  %679 = load ptr, ptr %678, align 8, !tbaa !11
  store ptr %679, ptr %676, align 8, !tbaa !11
  %680 = getelementptr inbounds [2 x %struct.LIST], ptr %679, i64 0, i64 1, i32 1
  store ptr %644, ptr %680, align 8, !tbaa !11
  store ptr %677, ptr %678, align 8, !tbaa !11
  %681 = getelementptr inbounds [2 x %struct.LIST], ptr %677, i64 0, i64 1, i32 1
  store ptr %671, ptr %681, align 8, !tbaa !11
  br label %686

682:                                              ; preds = %564
  %683 = add nsw i32 %566, 1
  %684 = sext i32 %566 to i64
  %685 = getelementptr inbounds [512 x i8], ptr %7, i64 0, i64 %684
  store i8 %567, ptr %685, align 1, !tbaa !11
  br label %686

686:                                              ; preds = %675, %656, %682, %568
  %687 = phi i32 [ %683, %682 ], [ %566, %568 ], [ 0, %656 ], [ 0, %675 ]
  %688 = getelementptr inbounds i8, ptr %565, i64 1
  br label %564

689:                                              ; preds = %564
  %690 = icmp sgt i32 %566, 0
  br i1 %690, label %691, label %733

691:                                              ; preds = %689
  %692 = zext nneg i32 %566 to i64
  %693 = getelementptr inbounds [512 x i8], ptr %7, i64 0, i64 %692
  store i8 0, ptr %693, align 1, !tbaa !11
  %694 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %695 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %7, ptr noundef %694) #10
  %696 = load i8, ptr @zz_lengths, align 1, !tbaa !11
  %697 = zext i8 %696 to i32
  store i32 %697, ptr @zz_size, align 4, !tbaa !9
  %698 = zext i8 %696 to i64
  %699 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %698
  %700 = load ptr, ptr %699, align 8, !tbaa !5
  %701 = icmp eq ptr %700, null
  br i1 %701, label %702, label %705

702:                                              ; preds = %691
  %703 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %704 = call ptr @GetMemory(i32 noundef %697, ptr noundef %703) #10
  br label %707

705:                                              ; preds = %691
  store ptr %700, ptr @zz_hold, align 8, !tbaa !5
  %706 = load ptr, ptr %700, align 8, !tbaa !11
  store ptr %706, ptr %699, align 8, !tbaa !5
  br label %707

707:                                              ; preds = %702, %705
  %708 = phi ptr [ %704, %702 ], [ %700, %705 ]
  %709 = getelementptr inbounds %struct.word_type, ptr %708, i64 0, i32 1
  store i8 0, ptr %709, align 8, !tbaa !11
  %710 = getelementptr inbounds [2 x %struct.LIST], ptr %708, i64 0, i64 1, i32 1
  store ptr %708, ptr %710, align 8, !tbaa !11
  %711 = getelementptr inbounds [2 x %struct.LIST], ptr %708, i64 0, i64 1
  store ptr %708, ptr %711, align 8, !tbaa !11
  %712 = getelementptr inbounds %struct.LIST, ptr %708, i64 0, i32 1
  store ptr %708, ptr %712, align 8, !tbaa !11
  store ptr %708, ptr %708, align 8, !tbaa !11
  store ptr %708, ptr @xx_link, align 8, !tbaa !5
  store ptr %708, ptr @zz_res, align 8, !tbaa !5
  store ptr %515, ptr @zz_hold, align 8, !tbaa !5
  %713 = load ptr, ptr %515, align 8, !tbaa !11
  store ptr %713, ptr @zz_tmp, align 8, !tbaa !5
  %714 = load ptr, ptr %708, align 8, !tbaa !11
  store ptr %714, ptr %515, align 8, !tbaa !11
  %715 = load ptr, ptr @zz_hold, align 8, !tbaa !5
  %716 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %717 = load ptr, ptr %716, align 8, !tbaa !11
  %718 = getelementptr inbounds %struct.LIST, ptr %717, i64 0, i32 1
  store ptr %715, ptr %718, align 8, !tbaa !11
  %719 = load ptr, ptr @zz_tmp, align 8, !tbaa !5
  store ptr %719, ptr %716, align 8, !tbaa !11
  %720 = load ptr, ptr @zz_res, align 8, !tbaa !5
  %721 = getelementptr inbounds %struct.LIST, ptr %719, i64 0, i32 1
  store ptr %720, ptr %721, align 8, !tbaa !11
  %722 = load ptr, ptr @xx_link, align 8, !tbaa !5
  store ptr %722, ptr @zz_res, align 8, !tbaa !5
  store ptr %695, ptr @zz_hold, align 8, !tbaa !5
  %723 = icmp eq ptr %695, null
  %724 = icmp eq ptr %722, null
  %725 = select i1 %723, i1 true, i1 %724
  br i1 %725, label %733, label %726

726:                                              ; preds = %707
  %727 = getelementptr inbounds [2 x %struct.LIST], ptr %695, i64 0, i64 1
  %728 = load ptr, ptr %727, align 8, !tbaa !11
  store ptr %728, ptr @zz_tmp, align 8, !tbaa !5
  %729 = getelementptr inbounds [2 x %struct.LIST], ptr %722, i64 0, i64 1
  %730 = load ptr, ptr %729, align 8, !tbaa !11
  store ptr %730, ptr %727, align 8, !tbaa !11
  %731 = getelementptr inbounds [2 x %struct.LIST], ptr %730, i64 0, i64 1, i32 1
  store ptr %695, ptr %731, align 8, !tbaa !11
  store ptr %728, ptr %729, align 8, !tbaa !11
  %732 = getelementptr inbounds [2 x %struct.LIST], ptr %728, i64 0, i64 1, i32 1
  store ptr %722, ptr %732, align 8, !tbaa !11
  br label %733

733:                                              ; preds = %707, %726, %689
  %734 = load ptr, ptr %519, align 8, !tbaa !11
  %735 = icmp eq ptr %734, %515
  br i1 %735, label %736, label %765

736:                                              ; preds = %733
  %737 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %738 = load ptr, ptr %62, align 8, !tbaa !5
  %739 = getelementptr inbounds i8, ptr %738, i64 2
  %740 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 25, ptr noundef nonnull @.str.65, i32 noundef 1, ptr noundef %737, ptr noundef nonnull %739) #10
  br label %765

741:                                              ; preds = %66
  store i32 1, ptr @SafeExecution, align 4, !tbaa !9
  br label %765

742:                                              ; preds = %66
  store i32 0, ptr @SafeExecution, align 4, !tbaa !9
  br label %765

743:                                              ; preds = %66
  %744 = load ptr, ptr @stderr, align 8, !tbaa !5
  call fastcc void @PrintUsage(ptr noundef %744)
  %745 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %746 = load ptr, ptr %62, align 8, !tbaa !5
  %747 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 26, ptr noundef nonnull @.str.66, i32 noundef 1, ptr noundef %745, ptr noundef %746) #10
  br label %765

748:                                              ; preds = %54
  %749 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %63) #11
  %750 = trunc i64 %749 to i32
  %751 = add i32 %750, -3
  %752 = icmp sgt i32 %751, -1
  br i1 %752, label %753, label %760

753:                                              ; preds = %748
  %754 = zext nneg i32 %751 to i64
  %755 = getelementptr inbounds i8, ptr %63, i64 %754
  %756 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %755, ptr noundef nonnull dereferenceable(4) @.str.11) #11
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %758, label %760

758:                                              ; preds = %753
  store i8 0, ptr %755, align 1
  %759 = load ptr, ptr %62, align 8, !tbaa !5
  br label %760

760:                                              ; preds = %758, %753, %748
  %761 = phi ptr [ %759, %758 ], [ %63, %753 ], [ %63, %748 ]
  %762 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %763 = call zeroext i16 @DefineFile(ptr noundef %761, ptr noundef nonnull @.str.2, ptr noundef %762, i32 noundef 0, i32 noundef 0) #10
  %764 = add nsw i32 %58, 1
  br label %765

765:                                              ; preds = %104, %98, %66, %760, %733, %736, %355, %421, %111, %85, %90, %743, %742, %741, %439, %428, %425, %422, %352, %347, %305, %279, %243, %222, %201, %180, %157, %140, %133, %130, %97, %96, %95, %94, %93
  %766 = phi i32 [ %60, %743 ], [ %60, %742 ], [ %60, %741 ], [ %60, %736 ], [ %60, %733 ], [ %60, %439 ], [ %60, %428 ], [ %60, %425 ], [ %60, %422 ], [ %60, %355 ], [ %60, %421 ], [ %60, %352 ], [ %60, %347 ], [ %60, %66 ], [ %307, %305 ], [ %268, %279 ], [ %245, %243 ], [ %224, %222 ], [ %203, %201 ], [ %182, %180 ], [ %159, %157 ], [ %60, %140 ], [ %60, %133 ], [ %132, %130 ], [ %60, %111 ], [ %60, %97 ], [ %60, %96 ], [ %60, %95 ], [ %60, %94 ], [ %60, %93 ], [ %87, %85 ], [ %87, %90 ], [ %60, %760 ], [ %60, %98 ], [ %105, %104 ]
  %767 = phi i32 [ %59, %743 ], [ %59, %742 ], [ %59, %741 ], [ %59, %736 ], [ %59, %733 ], [ 1, %439 ], [ %59, %428 ], [ %59, %425 ], [ %59, %422 ], [ %59, %355 ], [ %59, %421 ], [ %59, %352 ], [ %59, %347 ], [ %59, %66 ], [ %59, %305 ], [ %59, %279 ], [ %59, %243 ], [ %59, %222 ], [ %59, %201 ], [ %59, %180 ], [ %59, %157 ], [ %59, %140 ], [ %59, %133 ], [ %59, %130 ], [ %59, %111 ], [ %59, %97 ], [ %59, %96 ], [ %59, %95 ], [ %59, %94 ], [ %59, %93 ], [ %59, %85 ], [ %59, %90 ], [ %59, %760 ], [ %59, %98 ], [ %59, %104 ]
  %768 = phi i32 [ %58, %743 ], [ %58, %742 ], [ %58, %741 ], [ %58, %736 ], [ %58, %733 ], [ %58, %439 ], [ %58, %428 ], [ %58, %425 ], [ %58, %422 ], [ %58, %355 ], [ %58, %421 ], [ %58, %352 ], [ %58, %347 ], [ %58, %66 ], [ %58, %305 ], [ %58, %279 ], [ %58, %243 ], [ %58, %222 ], [ %58, %201 ], [ %58, %180 ], [ %58, %157 ], [ %58, %140 ], [ %58, %133 ], [ %58, %130 ], [ %58, %111 ], [ %58, %97 ], [ %58, %96 ], [ %58, %95 ], [ %58, %94 ], [ %58, %93 ], [ %58, %85 ], [ %58, %90 ], [ %764, %760 ], [ %58, %98 ], [ %58, %104 ]
  %769 = phi ptr [ %57, %743 ], [ %57, %742 ], [ %57, %741 ], [ %57, %736 ], [ %57, %733 ], [ %57, %439 ], [ %57, %428 ], [ %57, %425 ], [ %57, %422 ], [ %57, %355 ], [ %57, %421 ], [ %57, %352 ], [ %57, %347 ], [ %57, %66 ], [ %57, %305 ], [ %57, %279 ], [ %57, %243 ], [ %57, %222 ], [ %57, %201 ], [ %57, %180 ], [ %57, %157 ], [ %57, %140 ], [ %57, %133 ], [ %57, %130 ], [ null, %111 ], [ %57, %97 ], [ %57, %96 ], [ %57, %95 ], [ %57, %94 ], [ %57, %93 ], [ %57, %85 ], [ %57, %90 ], [ %57, %760 ], [ %99, %98 ], [ %108, %104 ]
  %770 = phi ptr [ %56, %743 ], [ %56, %742 ], [ %56, %741 ], [ %56, %736 ], [ %56, %733 ], [ %56, %439 ], [ %56, %428 ], [ %56, %425 ], [ %56, %422 ], [ %56, %355 ], [ %56, %421 ], [ %56, %352 ], [ %56, %347 ], [ %56, %66 ], [ %56, %305 ], [ %56, %279 ], [ %56, %243 ], [ %56, %222 ], [ %56, %201 ], [ %56, %180 ], [ %56, %157 ], [ %56, %140 ], [ %56, %133 ], [ %56, %130 ], [ %56, %111 ], [ %56, %97 ], [ %56, %96 ], [ %56, %95 ], [ %56, %94 ], [ %56, %93 ], [ %86, %85 ], [ %86, %90 ], [ %56, %760 ], [ %56, %98 ], [ %56, %104 ]
  %771 = phi i32 [ %55, %743 ], [ %55, %742 ], [ %55, %741 ], [ %55, %736 ], [ %55, %733 ], [ %55, %439 ], [ %55, %428 ], [ %55, %425 ], [ %55, %422 ], [ %55, %355 ], [ %55, %421 ], [ %55, %352 ], [ %55, %347 ], [ 1, %66 ], [ %55, %305 ], [ %55, %279 ], [ %55, %243 ], [ %55, %222 ], [ %55, %201 ], [ %55, %180 ], [ %55, %157 ], [ %55, %140 ], [ %55, %133 ], [ %55, %130 ], [ %55, %111 ], [ %55, %97 ], [ %55, %96 ], [ %55, %95 ], [ %55, %94 ], [ %55, %93 ], [ %55, %85 ], [ %55, %90 ], [ %55, %760 ], [ %55, %98 ], [ %55, %104 ]
  %772 = add nsw i32 %766, 1
  %773 = icmp slt i32 %772, %0
  br i1 %773, label %54, label %774

774:                                              ; preds = %765
  %775 = icmp eq i32 %768, 0
  %776 = icmp eq i32 %771, 0
  br label %777

777:                                              ; preds = %774, %45
  %778 = phi i1 [ true, %45 ], [ %775, %774 ]
  %779 = phi ptr [ @.str.7, %45 ], [ %769, %774 ]
  %780 = phi ptr [ @.str.8, %45 ], [ %770, %774 ]
  %781 = phi i1 [ true, %45 ], [ %776, %774 ]
  %782 = load i32, ptr @UseCollate, align 4, !tbaa !9
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %790, label %784

784:                                              ; preds = %777
  %785 = call ptr @setlocale(i32 noundef 3, ptr noundef nonnull @.str.2) #10
  %786 = icmp eq ptr %785, null
  br i1 %786, label %787, label %790

787:                                              ; preds = %784
  %788 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %789 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 30, ptr noundef nonnull @.str.67, i32 noundef 2, ptr noundef %788) #10
  br label %790

790:                                              ; preds = %784, %787, %777
  %791 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %780, ptr noundef nonnull dereferenceable(2) @.str.8) #11
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %793, label %795

793:                                              ; preds = %790
  %794 = load ptr, ptr @stdout, align 8, !tbaa !5
  br label %801

795:                                              ; preds = %790
  %796 = call noalias ptr @fopen(ptr noundef %780, ptr noundef nonnull @.str.68)
  %797 = icmp eq ptr %796, null
  br i1 %797, label %798, label %801

798:                                              ; preds = %795
  %799 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %800 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 27, ptr noundef nonnull @.str.69, i32 noundef 1, ptr noundef %799, ptr noundef %780) #10
  br label %801

801:                                              ; preds = %795, %798, %793
  %802 = phi ptr [ %794, %793 ], [ null, %798 ], [ %796, %795 ]
  call void @ColourInit() #10
  call void @LanguageInit() #10
  %803 = load ptr, ptr @BackEnd, align 8, !tbaa !5
  %804 = getelementptr inbounds %struct.back_end_rec, ptr %803, i64 0, i32 10
  %805 = load ptr, ptr %804, align 8, !tbaa !19
  call void %805(ptr noundef %802) #10
  %806 = call ptr @MakeWordThree(ptr noundef nonnull %15, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.70) #10
  call void @AddToPath(i32 noundef 5, ptr noundef %806) #10
  %807 = call ptr @MakeWordThree(ptr noundef nonnull %15, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.71) #10
  call void @AddToPath(i32 noundef 6, ptr noundef %807) #10
  %808 = call ptr @MakeWordThree(ptr noundef nonnull %15, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.72) #10
  call void @AddToPath(i32 noundef 7, ptr noundef %808) #10
  %809 = call ptr @MakeWordThree(ptr noundef nonnull %15, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.42) #10
  call void @AddToPath(i32 noundef 4, ptr noundef %809) #10
  %810 = call ptr @MakeWordThree(ptr noundef nonnull %15, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.42) #10
  call void @AddToPath(i32 noundef 3, ptr noundef %810) #10
  %811 = call ptr @MakeWordThree(ptr noundef nonnull %15, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #10
  call void @AddToPath(i32 noundef 2, ptr noundef %811) #10
  %812 = call ptr @MakeWordThree(ptr noundef nonnull %15, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #10
  call void @AddToPath(i32 noundef 1, ptr noundef %812) #10
  br i1 %778, label %813, label %816

813:                                              ; preds = %801
  %814 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %815 = call zeroext i16 @DefineFile(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, ptr noundef %814, i32 noundef 0, i32 noundef 0) #10
  br label %816

816:                                              ; preds = %813, %801
  store ptr null, ptr @StartSym, align 8, !tbaa !5
  %817 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %818 = call ptr @InsertSym(ptr noundef nonnull @.str.73, i8 noundef zeroext -113, ptr noundef %817, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null) #10
  store ptr %818, ptr @StartSym, align 8, !tbaa !5
  %819 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %820 = call ptr @InsertSym(ptr noundef nonnull @.str.74, i8 noundef zeroext -113, ptr noundef %819, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %818, ptr noundef null) #10
  store ptr %820, ptr @GalleySym, align 8, !tbaa !5
  %821 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %822 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %823 = call ptr @InsertSym(ptr noundef nonnull @.str.75, i8 noundef zeroext -113, ptr noundef %821, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %822, ptr noundef null) #10
  store ptr %823, ptr @ForceGalleySym, align 8, !tbaa !5
  %824 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %825 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %826 = call ptr @InsertSym(ptr noundef nonnull @.str.76, i8 noundef zeroext -113, ptr noundef %824, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %825, ptr noundef null) #10
  store ptr %826, ptr @InputSym, align 8, !tbaa !5
  %827 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %828 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %829 = call ptr @InsertSym(ptr noundef nonnull @.str.77, i8 noundef zeroext -113, ptr noundef %827, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %828, ptr noundef null) #10
  store ptr %829, ptr @PrintSym, align 8, !tbaa !5
  %830 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %831 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %832 = call ptr @InsertSym(ptr noundef nonnull @.str.78, i8 noundef zeroext -113, ptr noundef %830, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %831, ptr noundef null) #10
  store ptr %832, ptr @FilterInSym, align 8, !tbaa !5
  %833 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %834 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %835 = call ptr @InsertSym(ptr noundef nonnull @.str.79, i8 noundef zeroext -113, ptr noundef %833, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %834, ptr noundef null) #10
  store ptr %835, ptr @FilterOutSym, align 8, !tbaa !5
  %836 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %837 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %838 = call ptr @InsertSym(ptr noundef nonnull @.str.80, i8 noundef zeroext -113, ptr noundef %836, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %837, ptr noundef null) #10
  store ptr %838, ptr @FilterErrSym, align 8, !tbaa !5
  %839 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %840 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %841 = call ptr @InsertSym(ptr noundef nonnull @.str.81, i8 noundef zeroext -113, ptr noundef %839, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %840, ptr noundef null) #10
  %842 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %843 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %842, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %841, ptr noundef null) #10
  store ptr %841, ptr @OptGallSym, align 8, !tbaa !5
  %844 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %845 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %846 = call ptr @InsertSym(ptr noundef nonnull @.str.82, i8 noundef zeroext -113, ptr noundef %844, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 53, ptr noundef %845, ptr noundef null) #10
  %847 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %848 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %847, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %846, ptr noundef null) #10
  store ptr %846, ptr @VerbatimSym, align 8, !tbaa !5
  %849 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %850 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %851 = call ptr @InsertSym(ptr noundef nonnull @.str.83, i8 noundef zeroext -113, ptr noundef %849, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 54, ptr noundef %850, ptr noundef null) #10
  %852 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %853 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %852, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %851, ptr noundef null) #10
  store ptr %851, ptr @RawVerbatimSym, align 8, !tbaa !5
  %854 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %855 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %856 = call ptr @InsertSym(ptr noundef nonnull @.str.84, i8 noundef zeroext -113, ptr noundef %854, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 0, i32 noundef 104, ptr noundef %855, ptr noundef null) #10
  %857 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %858 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %859 = call ptr @InsertSym(ptr noundef nonnull @.str.85, i8 noundef zeroext -113, ptr noundef %857, i8 noundef zeroext 2, i32 noundef 0, i32 noundef 0, i32 noundef 105, ptr noundef %858, ptr noundef null) #10
  %860 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %861 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %862 = call ptr @InsertSym(ptr noundef nonnull @.str.86, i8 noundef zeroext -113, ptr noundef %860, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 82, ptr noundef %861, ptr noundef null) #10
  %863 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %864 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %865 = call ptr @InsertSym(ptr noundef nonnull @.str.87, i8 noundef zeroext -113, ptr noundef %863, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 83, ptr noundef %864, ptr noundef null) #10
  %866 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %867 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %868 = call ptr @InsertSym(ptr noundef nonnull @.str.88, i8 noundef zeroext -113, ptr noundef %866, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 84, ptr noundef %867, ptr noundef null) #10
  %869 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %870 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %871 = call ptr @InsertSym(ptr noundef nonnull @.str.89, i8 noundef zeroext -113, ptr noundef %869, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 85, ptr noundef %870, ptr noundef null) #10
  %872 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %873 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %874 = call ptr @InsertSym(ptr noundef nonnull @.str.90, i8 noundef zeroext -113, ptr noundef %872, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 86, ptr noundef %873, ptr noundef null) #10
  %875 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %876 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %877 = call ptr @InsertSym(ptr noundef nonnull @.str.91, i8 noundef zeroext -113, ptr noundef %875, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 87, ptr noundef %876, ptr noundef null) #10
  %878 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %879 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %880 = call ptr @InsertSym(ptr noundef nonnull @.str.92, i8 noundef zeroext -113, ptr noundef %878, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 88, ptr noundef %879, ptr noundef null) #10
  %881 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %882 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %883 = call ptr @InsertSym(ptr noundef nonnull @.str.93, i8 noundef zeroext -113, ptr noundef %881, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 89, ptr noundef %882, ptr noundef null) #10
  %884 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %885 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %886 = call ptr @InsertSym(ptr noundef nonnull @.str.94, i8 noundef zeroext -113, ptr noundef %884, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 90, ptr noundef %885, ptr noundef null) #10
  %887 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %888 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %889 = call ptr @InsertSym(ptr noundef nonnull @.str.95, i8 noundef zeroext -113, ptr noundef %887, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 91, ptr noundef %888, ptr noundef null) #10
  %890 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %891 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %892 = call ptr @InsertSym(ptr noundef nonnull @.str.96, i8 noundef zeroext -113, ptr noundef %890, i8 noundef zeroext 3, i32 noundef 0, i32 noundef 0, i32 noundef 102, ptr noundef %891, ptr noundef null) #10
  %893 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %894 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %895 = call ptr @InsertSym(ptr noundef nonnull @.str.97, i8 noundef zeroext -113, ptr noundef %893, i8 noundef zeroext 4, i32 noundef 0, i32 noundef 0, i32 noundef 103, ptr noundef %894, ptr noundef null) #10
  %896 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %897 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %898 = call ptr @InsertSym(ptr noundef nonnull @.str.98, i8 noundef zeroext -113, ptr noundef %896, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 112, ptr noundef %897, ptr noundef null) #10
  %899 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %900 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %901 = call ptr @InsertSym(ptr noundef nonnull @.str.99, i8 noundef zeroext -113, ptr noundef %899, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 113, ptr noundef %900, ptr noundef null) #10
  %902 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %903 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %904 = call ptr @InsertSym(ptr noundef nonnull @.str.100, i8 noundef zeroext -113, ptr noundef %902, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 114, ptr noundef %903, ptr noundef null) #10
  %905 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %906 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %907 = call ptr @InsertSym(ptr noundef nonnull @.str.101, i8 noundef zeroext -113, ptr noundef %905, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 115, ptr noundef %906, ptr noundef null) #10
  %908 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %909 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %910 = call ptr @InsertSym(ptr noundef nonnull @.str.102, i8 noundef zeroext -113, ptr noundef %908, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 116, ptr noundef %909, ptr noundef null) #10
  %911 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %912 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %913 = call ptr @InsertSym(ptr noundef nonnull @.str.103, i8 noundef zeroext -113, ptr noundef %911, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 117, ptr noundef %912, ptr noundef null) #10
  %914 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %915 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %916 = call ptr @InsertSym(ptr noundef nonnull @.str.104, i8 noundef zeroext -113, ptr noundef %914, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 106, ptr noundef %915, ptr noundef null) #10
  %917 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %918 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %919 = call ptr @InsertSym(ptr noundef nonnull @.str.105, i8 noundef zeroext -113, ptr noundef %917, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 107, ptr noundef %918, ptr noundef null) #10
  %920 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %921 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %922 = call ptr @InsertSym(ptr noundef nonnull @.str.106, i8 noundef zeroext -113, ptr noundef %920, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 52, ptr noundef %921, ptr noundef null) #10
  %923 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %924 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %923, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %922, ptr noundef null) #10
  %925 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %926 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %925, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %922, ptr noundef null) #10
  %927 = getelementptr inbounds i8, ptr %922, i64 41
  %928 = load i24, ptr %927, align 1
  %929 = or i24 %928, 16
  store i24 %929, ptr %927, align 1
  %930 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %931 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %932 = call ptr @InsertSym(ptr noundef nonnull @.str.107, i8 noundef zeroext -113, ptr noundef %930, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 55, ptr noundef %931, ptr noundef null) #10
  %933 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %934 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %933, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %932, ptr noundef null) #10
  %935 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %936 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %935, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %932, ptr noundef null) #10
  %937 = getelementptr inbounds i8, ptr %932, i64 41
  %938 = load i24, ptr %937, align 1
  %939 = or i24 %938, 16
  store i24 %939, ptr %937, align 1
  %940 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %941 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %942 = call ptr @InsertSym(ptr noundef nonnull @.str.108, i8 noundef zeroext -113, ptr noundef %940, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 56, ptr noundef %941, ptr noundef null) #10
  %943 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %944 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %945 = call ptr @InsertSym(ptr noundef nonnull @.str.109, i8 noundef zeroext -113, ptr noundef %943, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 58, ptr noundef %944, ptr noundef null) #10
  %946 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %947 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %946, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %945, ptr noundef null) #10
  %948 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %949 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %950 = call ptr @InsertSym(ptr noundef nonnull @.str.110, i8 noundef zeroext -113, ptr noundef %948, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 59, ptr noundef %949, ptr noundef null) #10
  %951 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %952 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %951, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %950, ptr noundef null) #10
  %953 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %954 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %953, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %950, ptr noundef null) #10
  %955 = getelementptr inbounds i8, ptr %950, i64 41
  %956 = load i24, ptr %955, align 1
  %957 = or i24 %956, 16
  store i24 %957, ptr %955, align 1
  %958 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %959 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %960 = call ptr @InsertSym(ptr noundef nonnull @.str.111, i8 noundef zeroext -113, ptr noundef %958, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 60, ptr noundef %959, ptr noundef null) #10
  %961 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %962 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %961, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %960, ptr noundef null) #10
  %963 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %964 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %963, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %960, ptr noundef null) #10
  %965 = getelementptr inbounds i8, ptr %960, i64 41
  %966 = load i24, ptr %965, align 1
  %967 = or i24 %966, 16
  store i24 %967, ptr %965, align 1
  %968 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %969 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %970 = call ptr @InsertSym(ptr noundef nonnull @.str.112, i8 noundef zeroext -113, ptr noundef %968, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 61, ptr noundef %969, ptr noundef null) #10
  %971 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %972 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %971, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %970, ptr noundef null) #10
  %973 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %974 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %973, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %970, ptr noundef null) #10
  %975 = getelementptr inbounds i8, ptr %970, i64 41
  %976 = load i24, ptr %975, align 1
  %977 = or i24 %976, 16
  store i24 %977, ptr %975, align 1
  %978 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %979 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %980 = call ptr @InsertSym(ptr noundef nonnull @.str.113, i8 noundef zeroext -113, ptr noundef %978, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 62, ptr noundef %979, ptr noundef null) #10
  %981 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %982 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %981, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %980, ptr noundef null) #10
  %983 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %984 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %983, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %980, ptr noundef null) #10
  %985 = getelementptr inbounds i8, ptr %980, i64 41
  %986 = load i24, ptr %985, align 1
  %987 = or i24 %986, 16
  store i24 %987, ptr %985, align 1
  %988 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %989 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %990 = call ptr @InsertSym(ptr noundef nonnull @.str.114, i8 noundef zeroext -113, ptr noundef %988, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 63, ptr noundef %989, ptr noundef null) #10
  %991 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %992 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %991, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %990, ptr noundef null) #10
  %993 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %994 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %993, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %990, ptr noundef null) #10
  %995 = getelementptr inbounds i8, ptr %990, i64 41
  %996 = load i24, ptr %995, align 1
  %997 = or i24 %996, 16
  store i24 %997, ptr %995, align 1
  %998 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %999 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1000 = call ptr @InsertSym(ptr noundef nonnull @.str.115, i8 noundef zeroext -113, ptr noundef %998, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 64, ptr noundef %999, ptr noundef null) #10
  %1001 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1002 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1001, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1000, ptr noundef null) #10
  %1003 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1004 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1005 = call ptr @InsertSym(ptr noundef nonnull @.str.116, i8 noundef zeroext -113, ptr noundef %1003, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 65, ptr noundef %1004, ptr noundef null) #10
  %1006 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1007 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1006, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1005, ptr noundef null) #10
  %1008 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1009 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1008, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1005, ptr noundef null) #10
  %1010 = getelementptr inbounds i8, ptr %1005, i64 41
  %1011 = load i24, ptr %1010, align 1
  %1012 = or i24 %1011, 16
  store i24 %1012, ptr %1010, align 1
  %1013 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1014 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1015 = call ptr @InsertSym(ptr noundef nonnull @.str.117, i8 noundef zeroext -113, ptr noundef %1013, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 65, ptr noundef %1014, ptr noundef null) #10
  %1016 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1017 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1016, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1015, ptr noundef null) #10
  %1018 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1019 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1018, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1015, ptr noundef null) #10
  %1020 = getelementptr inbounds i8, ptr %1015, i64 41
  %1021 = load i24, ptr %1020, align 1
  %1022 = or i24 %1021, 16
  store i24 %1022, ptr %1020, align 1
  %1023 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1024 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1025 = call ptr @InsertSym(ptr noundef nonnull @.str.118, i8 noundef zeroext -113, ptr noundef %1023, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 66, ptr noundef %1024, ptr noundef null) #10
  %1026 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1027 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1026, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1025, ptr noundef null) #10
  %1028 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1029 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1030 = call ptr @InsertSym(ptr noundef nonnull @.str.119, i8 noundef zeroext -113, ptr noundef %1028, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 67, ptr noundef %1029, ptr noundef null) #10
  %1031 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1032 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1031, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1030, ptr noundef null) #10
  %1033 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1034 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1033, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1030, ptr noundef null) #10
  %1035 = getelementptr inbounds i8, ptr %1030, i64 41
  %1036 = load i24, ptr %1035, align 1
  %1037 = or i24 %1036, 16
  store i24 %1037, ptr %1035, align 1
  %1038 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1039 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1040 = call ptr @InsertSym(ptr noundef nonnull @.str.120, i8 noundef zeroext -113, ptr noundef %1038, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 68, ptr noundef %1039, ptr noundef null) #10
  %1041 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1042 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1043 = call ptr @InsertSym(ptr noundef nonnull @.str.121, i8 noundef zeroext -113, ptr noundef %1041, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 69, ptr noundef %1042, ptr noundef null) #10
  %1044 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1045 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1046 = call ptr @InsertSym(ptr noundef nonnull @.str.122, i8 noundef zeroext -113, ptr noundef %1044, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 70, ptr noundef %1045, ptr noundef null) #10
  %1047 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1048 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1049 = call ptr @InsertSym(ptr noundef nonnull @.str.123, i8 noundef zeroext -113, ptr noundef %1047, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 71, ptr noundef %1048, ptr noundef null) #10
  %1050 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1051 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1052 = call ptr @InsertSym(ptr noundef nonnull @.str.124, i8 noundef zeroext -113, ptr noundef %1050, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 72, ptr noundef %1051, ptr noundef null) #10
  %1053 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1054 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1055 = call ptr @InsertSym(ptr noundef nonnull @.str.125, i8 noundef zeroext -113, ptr noundef %1053, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 73, ptr noundef %1054, ptr noundef null) #10
  %1056 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1057 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1056, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1055, ptr noundef null) #10
  %1058 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1059 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1058, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1055, ptr noundef null) #10
  %1060 = getelementptr inbounds i8, ptr %1055, i64 41
  %1061 = load i24, ptr %1060, align 1
  %1062 = or i24 %1061, 16
  store i24 %1062, ptr %1060, align 1
  %1063 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1064 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1065 = call ptr @InsertSym(ptr noundef nonnull @.str.126, i8 noundef zeroext -113, ptr noundef %1063, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 74, ptr noundef %1064, ptr noundef null) #10
  %1066 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1067 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1066, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1065, ptr noundef null) #10
  %1068 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1069 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1068, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1065, ptr noundef null) #10
  %1070 = getelementptr inbounds i8, ptr %1065, i64 41
  %1071 = load i24, ptr %1070, align 1
  %1072 = or i24 %1071, 16
  store i24 %1072, ptr %1070, align 1
  %1073 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1074 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1075 = call ptr @InsertSym(ptr noundef nonnull @.str.127, i8 noundef zeroext -113, ptr noundef %1073, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 75, ptr noundef %1074, ptr noundef null) #10
  %1076 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1077 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1076, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1075, ptr noundef null) #10
  %1078 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1079 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1078, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1075, ptr noundef null) #10
  %1080 = getelementptr inbounds i8, ptr %1075, i64 41
  %1081 = load i24, ptr %1080, align 1
  %1082 = or i24 %1081, 16
  store i24 %1082, ptr %1080, align 1
  %1083 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1084 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1085 = call ptr @InsertSym(ptr noundef nonnull @.str.128, i8 noundef zeroext -113, ptr noundef %1083, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 76, ptr noundef %1084, ptr noundef null) #10
  %1086 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1087 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1086, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1085, ptr noundef null) #10
  %1088 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1089 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1088, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1085, ptr noundef null) #10
  %1090 = getelementptr inbounds i8, ptr %1085, i64 41
  %1091 = load i24, ptr %1090, align 1
  %1092 = or i24 %1091, 16
  store i24 %1092, ptr %1090, align 1
  %1093 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1094 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1095 = call ptr @InsertSym(ptr noundef nonnull @.str.129, i8 noundef zeroext -113, ptr noundef %1093, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 77, ptr noundef %1094, ptr noundef null) #10
  %1096 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1097 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1096, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1095, ptr noundef null) #10
  %1098 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1099 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1100 = call ptr @InsertSym(ptr noundef nonnull @.str.130, i8 noundef zeroext -113, ptr noundef %1098, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 78, ptr noundef %1099, ptr noundef null) #10
  %1101 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1102 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1101, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1100, ptr noundef null) #10
  %1103 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1104 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1105 = call ptr @InsertSym(ptr noundef nonnull @.str.131, i8 noundef zeroext -113, ptr noundef %1103, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 79, ptr noundef %1104, ptr noundef null) #10
  %1106 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1107 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1106, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1105, ptr noundef null) #10
  %1108 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1109 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1108, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1105, ptr noundef null) #10
  %1110 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1111 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1112 = call ptr @InsertSym(ptr noundef nonnull @.str.132, i8 noundef zeroext -113, ptr noundef %1110, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 80, ptr noundef %1111, ptr noundef null) #10
  %1113 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1114 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1113, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1112, ptr noundef null) #10
  %1115 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1116 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1115, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1112, ptr noundef null) #10
  %1117 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1118 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1119 = call ptr @InsertSym(ptr noundef nonnull @.str.133, i8 noundef zeroext -113, ptr noundef %1117, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 92, ptr noundef %1118, ptr noundef null) #10
  %1120 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1121 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1120, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1119, ptr noundef null) #10
  %1122 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1123 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1122, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1119, ptr noundef null) #10
  %1124 = getelementptr inbounds i8, ptr %1119, i64 41
  %1125 = load i24, ptr %1124, align 1
  %1126 = or i24 %1125, 16
  store i24 %1126, ptr %1124, align 1
  %1127 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1128 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1129 = call ptr @InsertSym(ptr noundef nonnull @.str.134, i8 noundef zeroext -113, ptr noundef %1127, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 93, ptr noundef %1128, ptr noundef null) #10
  %1130 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1131 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1130, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1129, ptr noundef null) #10
  %1132 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1133 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1132, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1129, ptr noundef null) #10
  %1134 = getelementptr inbounds i8, ptr %1129, i64 41
  %1135 = load i24, ptr %1134, align 1
  %1136 = or i24 %1135, 16
  store i24 %1136, ptr %1134, align 1
  %1137 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1138 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1139 = call ptr @InsertSym(ptr noundef nonnull @.str.135, i8 noundef zeroext -113, ptr noundef %1137, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 26, ptr noundef %1138, ptr noundef null) #10
  %1140 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1141 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1140, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1139, ptr noundef null) #10
  %1142 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1143 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1142, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1139, ptr noundef null) #10
  %1144 = getelementptr inbounds i8, ptr %1139, i64 41
  %1145 = load i24, ptr %1144, align 1
  %1146 = or i24 %1145, 16
  store i24 %1146, ptr %1144, align 1
  %1147 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1148 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1149 = call ptr @InsertSym(ptr noundef nonnull @.str.136, i8 noundef zeroext -113, ptr noundef %1147, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 27, ptr noundef %1148, ptr noundef null) #10
  %1150 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1151 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1150, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1149, ptr noundef null) #10
  %1152 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1153 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1152, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1149, ptr noundef null) #10
  %1154 = getelementptr inbounds i8, ptr %1149, i64 41
  %1155 = load i24, ptr %1154, align 1
  %1156 = or i24 %1155, 16
  store i24 %1156, ptr %1154, align 1
  %1157 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1158 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1159 = call ptr @InsertSym(ptr noundef nonnull @.str.137, i8 noundef zeroext -113, ptr noundef %1157, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 28, ptr noundef %1158, ptr noundef null) #10
  %1160 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1161 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1160, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1159, ptr noundef null) #10
  %1162 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1163 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1162, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1159, ptr noundef null) #10
  %1164 = getelementptr inbounds i8, ptr %1159, i64 41
  %1165 = load i24, ptr %1164, align 1
  %1166 = or i24 %1165, 16
  store i24 %1166, ptr %1164, align 1
  %1167 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1168 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1169 = call ptr @InsertSym(ptr noundef nonnull @.str.138, i8 noundef zeroext -113, ptr noundef %1167, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 29, ptr noundef %1168, ptr noundef null) #10
  %1170 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1171 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1170, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1169, ptr noundef null) #10
  %1172 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1173 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1172, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1169, ptr noundef null) #10
  %1174 = getelementptr inbounds i8, ptr %1169, i64 41
  %1175 = load i24, ptr %1174, align 1
  %1176 = or i24 %1175, 16
  store i24 %1176, ptr %1174, align 1
  %1177 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1178 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1179 = call ptr @InsertSym(ptr noundef nonnull @.str.139, i8 noundef zeroext -113, ptr noundef %1177, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 20, ptr noundef %1178, ptr noundef null) #10
  %1180 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1181 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1180, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1179, ptr noundef null) #10
  %1182 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1183 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1182, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1179, ptr noundef null) #10
  %1184 = getelementptr inbounds i8, ptr %1179, i64 41
  %1185 = load i24, ptr %1184, align 1
  %1186 = or i24 %1185, 16
  store i24 %1186, ptr %1184, align 1
  %1187 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1188 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1189 = call ptr @InsertSym(ptr noundef nonnull @.str.140, i8 noundef zeroext -113, ptr noundef %1187, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 21, ptr noundef %1188, ptr noundef null) #10
  %1190 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1191 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1192 = call ptr @InsertSym(ptr noundef nonnull @.str.141, i8 noundef zeroext -113, ptr noundef %1190, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 22, ptr noundef %1191, ptr noundef null) #10
  %1193 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1194 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1193, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1192, ptr noundef null) #10
  %1195 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1196 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1195, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1192, ptr noundef null) #10
  %1197 = getelementptr inbounds i8, ptr %1192, i64 41
  %1198 = load i24, ptr %1197, align 1
  %1199 = or i24 %1198, 16
  store i24 %1199, ptr %1197, align 1
  %1200 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1201 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1202 = call ptr @InsertSym(ptr noundef nonnull @.str.142, i8 noundef zeroext -113, ptr noundef %1200, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 23, ptr noundef %1201, ptr noundef null) #10
  %1203 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1204 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1205 = call ptr @InsertSym(ptr noundef nonnull @.str.143, i8 noundef zeroext -113, ptr noundef %1203, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 24, ptr noundef %1204, ptr noundef null) #10
  %1206 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1207 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1206, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1205, ptr noundef null) #10
  %1208 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1209 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1210 = call ptr @InsertSym(ptr noundef nonnull @.str.144, i8 noundef zeroext -113, ptr noundef %1208, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 25, ptr noundef %1209, ptr noundef null) #10
  %1211 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1212 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1211, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1210, ptr noundef null) #10
  %1213 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1214 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1215 = call ptr @InsertSym(ptr noundef nonnull @.str.145, i8 noundef zeroext -113, ptr noundef %1213, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 30, ptr noundef %1214, ptr noundef null) #10
  %1216 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1217 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1216, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1215, ptr noundef null) #10
  %1218 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1219 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1220 = call ptr @InsertSym(ptr noundef nonnull @.str.146, i8 noundef zeroext -113, ptr noundef %1218, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 31, ptr noundef %1219, ptr noundef null) #10
  %1221 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1222 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1221, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1220, ptr noundef null) #10
  %1223 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1224 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1225 = call ptr @InsertSym(ptr noundef nonnull @.str.147, i8 noundef zeroext -113, ptr noundef %1223, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 32, ptr noundef %1224, ptr noundef null) #10
  %1226 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1227 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1226, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1225, ptr noundef null) #10
  %1228 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1229 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1230 = call ptr @InsertSym(ptr noundef nonnull @.str.148, i8 noundef zeroext -113, ptr noundef %1228, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 33, ptr noundef %1229, ptr noundef null) #10
  %1231 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1232 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1231, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1230, ptr noundef null) #10
  %1233 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1234 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1235 = call ptr @InsertSym(ptr noundef nonnull @.str.149, i8 noundef zeroext -113, ptr noundef %1233, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 35, ptr noundef %1234, ptr noundef null) #10
  %1236 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1237 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1236, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1235, ptr noundef null) #10
  %1238 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1239 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1238, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1235, ptr noundef null) #10
  %1240 = getelementptr inbounds i8, ptr %1235, i64 41
  %1241 = load i24, ptr %1240, align 1
  %1242 = or i24 %1241, 16
  store i24 %1242, ptr %1240, align 1
  %1243 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1244 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1245 = call ptr @InsertSym(ptr noundef nonnull @.str.150, i8 noundef zeroext -113, ptr noundef %1243, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 34, ptr noundef %1244, ptr noundef null) #10
  %1246 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1247 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1246, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1245, ptr noundef null) #10
  %1248 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1249 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1248, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1245, ptr noundef null) #10
  %1250 = getelementptr inbounds i8, ptr %1245, i64 41
  %1251 = load i24, ptr %1250, align 1
  %1252 = or i24 %1251, 16
  store i24 %1252, ptr %1250, align 1
  %1253 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1254 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1255 = call ptr @InsertSym(ptr noundef nonnull @.str.151, i8 noundef zeroext -113, ptr noundef %1253, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 36, ptr noundef %1254, ptr noundef null) #10
  %1256 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1257 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1256, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1255, ptr noundef null) #10
  %1258 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1259 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1260 = call ptr @InsertSym(ptr noundef nonnull @.str.152, i8 noundef zeroext -113, ptr noundef %1258, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 37, ptr noundef %1259, ptr noundef null) #10
  %1261 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1262 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1261, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1260, ptr noundef null) #10
  %1263 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1264 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1265 = call ptr @InsertSym(ptr noundef nonnull @.str.153, i8 noundef zeroext -113, ptr noundef %1263, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 38, ptr noundef %1264, ptr noundef null) #10
  %1266 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1267 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1266, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1265, ptr noundef null) #10
  %1268 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1269 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1270 = call ptr @InsertSym(ptr noundef nonnull @.str.154, i8 noundef zeroext -113, ptr noundef %1268, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 39, ptr noundef %1269, ptr noundef null) #10
  %1271 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1272 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1271, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1270, ptr noundef null) #10
  %1273 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1274 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1275 = call ptr @InsertSym(ptr noundef nonnull @.str.155, i8 noundef zeroext -113, ptr noundef %1273, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 40, ptr noundef %1274, ptr noundef null) #10
  %1276 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1277 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1276, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1275, ptr noundef null) #10
  %1278 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1279 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1280 = call ptr @InsertSym(ptr noundef nonnull @.str.156, i8 noundef zeroext -113, ptr noundef %1278, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 41, ptr noundef %1279, ptr noundef null) #10
  %1281 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1282 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1281, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1280, ptr noundef null) #10
  %1283 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1284 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1285 = call ptr @InsertSym(ptr noundef nonnull @.str.157, i8 noundef zeroext -113, ptr noundef %1283, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 44, ptr noundef %1284, ptr noundef null) #10
  %1286 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1287 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1286, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1285, ptr noundef null) #10
  %1288 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1289 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1290 = call ptr @InsertSym(ptr noundef nonnull @.str.158, i8 noundef zeroext -113, ptr noundef %1288, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 42, ptr noundef %1289, ptr noundef null) #10
  %1291 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1292 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1291, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1290, ptr noundef null) #10
  %1293 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1294 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1295 = call ptr @InsertSym(ptr noundef nonnull @.str.159, i8 noundef zeroext -113, ptr noundef %1293, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 43, ptr noundef %1294, ptr noundef null) #10
  %1296 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1297 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1296, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1295, ptr noundef null) #10
  %1298 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1299 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1300 = call ptr @InsertSym(ptr noundef nonnull @.str.160, i8 noundef zeroext -113, ptr noundef %1298, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 45, ptr noundef %1299, ptr noundef null) #10
  %1301 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1302 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1303 = call ptr @InsertSym(ptr noundef nonnull @.str.161, i8 noundef zeroext -113, ptr noundef %1301, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 46, ptr noundef %1302, ptr noundef null) #10
  %1304 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1305 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1306 = call ptr @InsertSym(ptr noundef nonnull @.str.162, i8 noundef zeroext -113, ptr noundef %1304, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 47, ptr noundef %1305, ptr noundef null) #10
  %1307 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1308 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1307, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1306, ptr noundef null) #10
  %1309 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1310 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1311 = call ptr @InsertSym(ptr noundef nonnull @.str.163, i8 noundef zeroext -113, ptr noundef %1309, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 48, ptr noundef %1310, ptr noundef null) #10
  %1312 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1313 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1312, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1311, ptr noundef null) #10
  %1314 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1315 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1316 = call ptr @InsertSym(ptr noundef nonnull @.str.164, i8 noundef zeroext -113, ptr noundef %1314, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 49, ptr noundef %1315, ptr noundef null) #10
  %1317 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1318 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1317, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1316, ptr noundef null) #10
  %1319 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1320 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1321 = call ptr @InsertSym(ptr noundef nonnull @.str.165, i8 noundef zeroext -113, ptr noundef %1319, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 50, ptr noundef %1320, ptr noundef null) #10
  %1322 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1323 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1322, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1321, ptr noundef null) #10
  %1324 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1325 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1324, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1321, ptr noundef null) #10
  %1326 = getelementptr inbounds i8, ptr %1321, i64 41
  %1327 = load i24, ptr %1326, align 1
  %1328 = or i24 %1327, 16
  store i24 %1328, ptr %1326, align 1
  %1329 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1330 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1331 = call ptr @InsertSym(ptr noundef nonnull @.str.166, i8 noundef zeroext -113, ptr noundef %1329, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 51, ptr noundef %1330, ptr noundef null) #10
  %1332 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1333 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1332, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1331, ptr noundef null) #10
  %1334 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1335 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1334, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1331, ptr noundef null) #10
  %1336 = getelementptr inbounds i8, ptr %1331, i64 41
  %1337 = load i24, ptr %1336, align 1
  %1338 = or i24 %1337, 16
  store i24 %1338, ptr %1336, align 1
  %1339 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1340 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1341 = call ptr @InsertSym(ptr noundef nonnull @.str.167, i8 noundef zeroext -113, ptr noundef %1339, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 94, ptr noundef %1340, ptr noundef null) #10
  %1342 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1343 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1342, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1341, ptr noundef null) #10
  %1344 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1345 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1346 = call ptr @InsertSym(ptr noundef nonnull @.str.168, i8 noundef zeroext -113, ptr noundef %1344, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 95, ptr noundef %1345, ptr noundef null) #10
  %1347 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1348 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1347, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1346, ptr noundef null) #10
  %1349 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1350 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1351 = call ptr @InsertSym(ptr noundef nonnull @.str.169, i8 noundef zeroext -113, ptr noundef %1349, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 96, ptr noundef %1350, ptr noundef null) #10
  %1352 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1353 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1352, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1351, ptr noundef null) #10
  %1354 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1355 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1354, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1351, ptr noundef null) #10
  %1356 = getelementptr inbounds i8, ptr %1351, i64 41
  %1357 = load i24, ptr %1356, align 1
  %1358 = or i24 %1357, 16
  store i24 %1358, ptr %1356, align 1
  %1359 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1360 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1361 = call ptr @InsertSym(ptr noundef nonnull @.str.170, i8 noundef zeroext -113, ptr noundef %1359, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 97, ptr noundef %1360, ptr noundef null) #10
  %1362 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1363 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1362, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1361, ptr noundef null) #10
  %1364 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1365 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1364, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1361, ptr noundef null) #10
  %1366 = getelementptr inbounds i8, ptr %1361, i64 41
  %1367 = load i24, ptr %1366, align 1
  %1368 = or i24 %1367, 16
  store i24 %1368, ptr %1366, align 1
  %1369 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1370 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1371 = call ptr @InsertSym(ptr noundef nonnull @.str.171, i8 noundef zeroext -113, ptr noundef %1369, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 98, ptr noundef %1370, ptr noundef null) #10
  %1372 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1373 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1372, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1371, ptr noundef null) #10
  %1374 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1375 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1374, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1371, ptr noundef null) #10
  %1376 = getelementptr inbounds i8, ptr %1371, i64 41
  %1377 = load i24, ptr %1376, align 1
  %1378 = or i24 %1377, 16
  store i24 %1378, ptr %1376, align 1
  %1379 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1380 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1381 = call ptr @InsertSym(ptr noundef nonnull @.str.172, i8 noundef zeroext -113, ptr noundef %1379, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 99, ptr noundef %1380, ptr noundef null) #10
  %1382 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1383 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1382, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1381, ptr noundef null) #10
  %1384 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1385 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1384, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1381, ptr noundef null) #10
  %1386 = getelementptr inbounds i8, ptr %1381, i64 41
  %1387 = load i24, ptr %1386, align 1
  %1388 = or i24 %1387, 16
  store i24 %1388, ptr %1386, align 1
  %1389 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1390 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1391 = call ptr @InsertSym(ptr noundef nonnull @.str.173, i8 noundef zeroext -113, ptr noundef %1389, i8 noundef zeroext 101, i32 noundef 0, i32 noundef 0, i32 noundef 6, ptr noundef %1390, ptr noundef null) #10
  %1392 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1393 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1392, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1391, ptr noundef null) #10
  %1394 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1395 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1394, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1391, ptr noundef null) #10
  %1396 = getelementptr inbounds i8, ptr %1391, i64 41
  %1397 = load i24, ptr %1396, align 1
  %1398 = or i24 %1397, 16
  store i24 %1398, ptr %1396, align 1
  %1399 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1400 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1401 = call ptr @InsertSym(ptr noundef nonnull @.str.174, i8 noundef zeroext -113, ptr noundef %1399, i8 noundef zeroext 101, i32 noundef 0, i32 noundef 0, i32 noundef 7, ptr noundef %1400, ptr noundef null) #10
  %1402 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1403 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1402, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1401, ptr noundef null) #10
  %1404 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1405 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1404, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1401, ptr noundef null) #10
  %1406 = getelementptr inbounds i8, ptr %1401, i64 41
  %1407 = load i24, ptr %1406, align 1
  %1408 = or i24 %1407, 16
  store i24 %1408, ptr %1406, align 1
  %1409 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1410 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1411 = call ptr @InsertSym(ptr noundef nonnull @.str.175, i8 noundef zeroext -113, ptr noundef %1409, i8 noundef zeroext 0, i32 noundef 1, i32 noundef 0, i32 noundef 5, ptr noundef %1410, ptr noundef null) #10
  %1412 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1413 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1414 = call ptr @InsertSym(ptr noundef nonnull @.str.176, i8 noundef zeroext -113, ptr noundef %1412, i8 noundef zeroext 100, i32 noundef 1, i32 noundef 0, i32 noundef 4, ptr noundef %1413, ptr noundef null) #10
  %1415 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1416 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1415, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1414, ptr noundef null) #10
  %1417 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1418 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1419 = call ptr @InsertSym(ptr noundef nonnull @.str.177, i8 noundef zeroext -113, ptr noundef %1417, i8 noundef zeroext 5, i32 noundef 0, i32 noundef 0, i32 noundef 19, ptr noundef %1418, ptr noundef null) #10
  %1420 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1421 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1420, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1419, ptr noundef null) #10
  %1422 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1423 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1422, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1419, ptr noundef null) #10
  %1424 = getelementptr inbounds i8, ptr %1419, i64 41
  %1425 = load i24, ptr %1424, align 1
  %1426 = and i24 %1425, -393233
  %1427 = or disjoint i24 %1426, 16
  store i24 %1427, ptr %1424, align 1
  %1428 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1429 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1430 = call ptr @InsertSym(ptr noundef nonnull @.str.178, i8 noundef zeroext -113, ptr noundef %1428, i8 noundef zeroext 5, i32 noundef 0, i32 noundef 0, i32 noundef 19, ptr noundef %1429, ptr noundef null) #10
  %1431 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1432 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1431, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1430, ptr noundef null) #10
  %1433 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1434 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1433, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1430, ptr noundef null) #10
  %1435 = getelementptr inbounds i8, ptr %1430, i64 41
  %1436 = load i24, ptr %1435, align 1
  %1437 = and i24 %1436, -393233
  %1438 = or disjoint i24 %1437, 131088
  store i24 %1438, ptr %1435, align 1
  %1439 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1440 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1441 = call ptr @InsertSym(ptr noundef nonnull @.str.39, i8 noundef zeroext -113, ptr noundef %1439, i8 noundef zeroext 5, i32 noundef 0, i32 noundef 0, i32 noundef 19, ptr noundef %1440, ptr noundef null) #10
  %1442 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1443 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1442, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1441, ptr noundef null) #10
  %1444 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1445 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1444, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1441, ptr noundef null) #10
  %1446 = getelementptr inbounds i8, ptr %1441, i64 41
  %1447 = load i24, ptr %1446, align 1
  %1448 = and i24 %1447, -393233
  %1449 = or disjoint i24 %1448, 262160
  store i24 %1449, ptr %1446, align 1
  %1450 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1451 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1452 = call ptr @InsertSym(ptr noundef nonnull @.str.179, i8 noundef zeroext -113, ptr noundef %1450, i8 noundef zeroext 5, i32 noundef 0, i32 noundef 0, i32 noundef 19, ptr noundef %1451, ptr noundef null) #10
  %1453 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1454 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1453, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1452, ptr noundef null) #10
  %1455 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1456 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1455, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1452, ptr noundef null) #10
  %1457 = getelementptr inbounds i8, ptr %1452, i64 41
  %1458 = load i24, ptr %1457, align 1
  %1459 = or i24 %1458, 393232
  store i24 %1459, ptr %1457, align 1
  %1460 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1461 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1462 = call ptr @InsertSym(ptr noundef nonnull @.str.180, i8 noundef zeroext -113, ptr noundef %1460, i8 noundef zeroext 6, i32 noundef 0, i32 noundef 0, i32 noundef 18, ptr noundef %1461, ptr noundef null) #10
  %1463 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1464 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1463, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1462, ptr noundef null) #10
  %1465 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1466 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1465, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1462, ptr noundef null) #10
  %1467 = getelementptr inbounds i8, ptr %1462, i64 41
  %1468 = load i24, ptr %1467, align 1
  %1469 = and i24 %1468, -393233
  %1470 = or disjoint i24 %1469, 16
  store i24 %1470, ptr %1467, align 1
  %1471 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1472 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1473 = call ptr @InsertSym(ptr noundef nonnull @.str.181, i8 noundef zeroext -113, ptr noundef %1471, i8 noundef zeroext 6, i32 noundef 0, i32 noundef 0, i32 noundef 18, ptr noundef %1472, ptr noundef null) #10
  %1474 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1475 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1474, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1473, ptr noundef null) #10
  %1476 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1477 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1476, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1473, ptr noundef null) #10
  %1478 = getelementptr inbounds i8, ptr %1473, i64 41
  %1479 = load i24, ptr %1478, align 1
  %1480 = and i24 %1479, -393233
  %1481 = or disjoint i24 %1480, 131088
  store i24 %1481, ptr %1478, align 1
  %1482 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1483 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1484 = call ptr @InsertSym(ptr noundef nonnull @.str.182, i8 noundef zeroext -113, ptr noundef %1482, i8 noundef zeroext 6, i32 noundef 0, i32 noundef 0, i32 noundef 18, ptr noundef %1483, ptr noundef null) #10
  %1485 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1486 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1485, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1484, ptr noundef null) #10
  %1487 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1488 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1487, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1484, ptr noundef null) #10
  %1489 = getelementptr inbounds i8, ptr %1484, i64 41
  %1490 = load i24, ptr %1489, align 1
  %1491 = and i24 %1490, -393233
  %1492 = or disjoint i24 %1491, 262160
  store i24 %1492, ptr %1489, align 1
  %1493 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1494 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1495 = call ptr @InsertSym(ptr noundef nonnull @.str.183, i8 noundef zeroext -113, ptr noundef %1493, i8 noundef zeroext 6, i32 noundef 0, i32 noundef 0, i32 noundef 18, ptr noundef %1494, ptr noundef null) #10
  %1496 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1497 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1496, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1495, ptr noundef null) #10
  %1498 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1499 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1498, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1495, ptr noundef null) #10
  %1500 = getelementptr inbounds i8, ptr %1495, i64 41
  %1501 = load i24, ptr %1500, align 1
  %1502 = or i24 %1501, 393232
  store i24 %1502, ptr %1500, align 1
  %1503 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1504 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1505 = call ptr @InsertSym(ptr noundef nonnull @.str.184, i8 noundef zeroext -113, ptr noundef %1503, i8 noundef zeroext 7, i32 noundef 0, i32 noundef 0, i32 noundef 17, ptr noundef %1504, ptr noundef null) #10
  %1506 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1507 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1506, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1505, ptr noundef null) #10
  %1508 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1509 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1508, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1505, ptr noundef null) #10
  %1510 = getelementptr inbounds i8, ptr %1505, i64 41
  %1511 = load i24, ptr %1510, align 1
  %1512 = and i24 %1511, -393233
  %1513 = or disjoint i24 %1512, 262160
  store i24 %1513, ptr %1510, align 1
  %1514 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1515 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1516 = call ptr @InsertSym(ptr noundef nonnull @.str.185, i8 noundef zeroext -113, ptr noundef %1514, i8 noundef zeroext 7, i32 noundef 0, i32 noundef 0, i32 noundef 17, ptr noundef %1515, ptr noundef null) #10
  %1517 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1518 = call ptr @InsertSym(ptr noundef nonnull @.str.214, i8 noundef zeroext -112, ptr noundef %1517, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1516, ptr noundef null) #10
  %1519 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1520 = call ptr @InsertSym(ptr noundef nonnull @.str.215, i8 noundef zeroext -110, ptr noundef %1519, i8 noundef zeroext 100, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1516, ptr noundef null) #10
  %1521 = getelementptr inbounds i8, ptr %1516, i64 41
  %1522 = load i24, ptr %1521, align 1
  %1523 = or i24 %1522, 393232
  store i24 %1523, ptr %1521, align 1
  call void @FontInit() #10
  call void @InitTime() #10
  call void @FilterInit() #10
  call void @EnvInit() #10
  %1524 = load ptr, ptr @StartSym, align 8, !tbaa !5
  call void @PushScope(ptr noundef %1524, i32 noundef 0, i32 noundef 0) #10
  %1525 = call zeroext i16 @FirstFile(i32 noundef 0) #10
  call void @LexPush(i16 noundef zeroext %1525, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 0) #10
  call void @InitParser(ptr noundef %779) #10
  %1526 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1527 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1528 = call ptr @NewToken(i8 noundef zeroext 104, ptr noundef %1526, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef %1527) #10
  store ptr %1528, ptr %3, align 8, !tbaa !5
  %1529 = load ptr, ptr @StartSym, align 8, !tbaa !5
  %1530 = call ptr @Parse(ptr noundef nonnull %3, ptr noundef %1529, i32 noundef 1, i32 noundef 1) #10
  %1531 = load ptr, ptr @CommandOptions, align 8, !tbaa !5
  %1532 = call i32 @DisposeObject(ptr noundef %1531) #10
  call void @TransferEnd(ptr noundef %1530) #10
  call void @TransferClose() #10
  %1533 = load ptr, ptr @BackEnd, align 8, !tbaa !5
  %1534 = getelementptr inbounds %struct.back_end_rec, ptr %1533, i64 0, i32 17
  %1535 = load ptr, ptr %1534, align 8, !tbaa !21
  call void %1535() #10
  %1536 = load ptr, ptr @BackEnd, align 8, !tbaa !5
  %1537 = getelementptr inbounds %struct.back_end_rec, ptr %1536, i64 0, i32 32
  %1538 = load ptr, ptr %1537, align 8, !tbaa !22
  call void (...) %1538() #10
  call void @CrossClose() #10
  call void @CloseFiles() #10
  call void @FilterScavenge(i32 noundef 1) #10
  br i1 %781, label %1543, label %1539

1539:                                             ; preds = %816
  %1540 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %1541 = load i32, ptr @TotalWordCount, align 4, !tbaa !9
  %1542 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 29, ptr noundef nonnull @.str.186, i32 noundef 2, ptr noundef %1540, i32 noundef %1541) #10
  br label %1543

1543:                                             ; preds = %1539, %816
  call void @CheckErrorBlocks() #10
  %1544 = load ptr, ptr @MsgCat, align 8, !tbaa !5
  %1545 = call i32 @catclose(ptr noundef %1544) #10
  call void @exit(i32 noundef 0) #13
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare ptr @catopen(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @MemInit() local_unnamed_addr #4

declare void @InitSym() local_unnamed_addr #4

declare void @LexInit() local_unnamed_addr #4

declare void @InitFiles() local_unnamed_addr #4

declare void @AddToPath(i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @StringEndsWith(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @ErrorInit(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

declare zeroext i16 @DefineFile(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i16 @FirstFile(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @PrintUsage(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2)
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.187)
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2)
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.188)
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.189)
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.190)
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.191)
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.192)
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.193)
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.194)
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.195)
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.196)
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.197)
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.198)
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.199)
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.200)
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.201)
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.202)
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.203)
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.204)
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.205)
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.206)
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.207)
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.208)
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.209)
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.210)
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.211)
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.212)
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.213)
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2)
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

declare void @ColourInit() local_unnamed_addr #4

declare void @LanguageInit() local_unnamed_addr #4

declare ptr @MakeWordThree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @FontInit() local_unnamed_addr #4

declare void @InitTime() local_unnamed_addr #4

declare void @FilterInit() local_unnamed_addr #4

declare void @EnvInit() local_unnamed_addr #4

declare void @PushScope(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @LexPush(i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @InitParser(ptr noundef) local_unnamed_addr #4

declare ptr @NewToken(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

declare ptr @Parse(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #4

declare void @TransferEnd(ptr noundef) local_unnamed_addr #4

declare void @TransferClose() local_unnamed_addr #4

declare void @CrossClose() local_unnamed_addr #4

declare void @CloseFiles() local_unnamed_addr #4

declare void @FilterScavenge(i32 noundef) local_unnamed_addr #4

declare void @CheckErrorBlocks() local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @catclose(ptr noundef) local_unnamed_addr #3

declare ptr @InsertSym(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #9

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }

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
!11 = !{!7, !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!17, !18, i64 2}
!17 = !{!"", !7, i64 0, !7, i64 1, !18, i64 2, !10, i64 4, !10, i64 6}
!18 = !{!"short", !7, i64 0}
!19 = !{!20, !6, i64 48}
!20 = !{!"back_end_rec", !10, i64 0, !6, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224}
!21 = !{!20, !6, i64 104}
!22 = !{!20, !6, i64 224}
