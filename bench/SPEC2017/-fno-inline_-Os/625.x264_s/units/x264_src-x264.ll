; ModuleID = 'x264_src/x264.c'
source_filename = "x264_src/x264.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cli_input_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.option = type { ptr, i32, ptr, i32 }
%struct.cli_output_t = type { ptr, ptr, ptr, ptr, ptr }
%struct.x264_level_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cli_pulldown_t = type { i32, [24 x i8], float }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], ptr, ptr, i32, i32, ptr, %struct.anon.0, %struct.anon.1, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, float, float, float, i32, float, i32, i32, i32, ptr, i32, ptr, float, float, float, ptr, i32, ptr }
%struct.cli_opt_t = type { i32, i32, ptr, ptr, ptr, ptr, double, i32 }
%struct.cli_input_opt_t = type { ptr, ptr, ptr, i32 }
%struct.video_info_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x264_picture_t = type { i32, i32, i32, i32, i64, i64, ptr, %struct.x264_image_t, %struct.x264_hrd_t, ptr }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x ptr] }
%struct.x264_hrd_t = type { double, double, double, double }
%struct.x264_nal_t = type { i32, i32, i32, ptr }

@input = dso_local local_unnamed_addr global %struct.cli_input_t zeroinitializer, align 8
@seek_val = dso_local local_unnamed_addr global i32 0, align 4
@demuxer_names = internal constant [4 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr null], align 16
@muxer_names = internal constant [5 x ptr] [ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr null], align 16
@optind = external local_unnamed_addr global i32, align 4
@short_options = internal global [30 x i8] c"8A:B:b:f:hI:i:m:o:p:q:r:t:Vvw\00", align 16
@long_options = internal global [142 x %struct.option] [%struct.option { ptr @.str.28, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.29, i32 0, ptr null, i32 263 }, %struct.option { ptr @.str.30, i32 0, ptr null, i32 268 }, %struct.option { ptr @.str.31, i32 0, ptr null, i32 86 }, %struct.option { ptr @.str.32, i32 1, ptr null, i32 278 }, %struct.option { ptr @.str.33, i32 1, ptr null, i32 264 }, %struct.option { ptr @.str.34, i32 1, ptr null, i32 265 }, %struct.option { ptr @.str.35, i32 1, ptr null, i32 266 }, %struct.option { ptr @.str.36, i32 0, ptr null, i32 267 }, %struct.option { ptr @.str.37, i32 1, ptr null, i32 66 }, %struct.option { ptr @.str.38, i32 1, ptr null, i32 98 }, %struct.option { ptr @.str.39, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.40, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.41, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.42, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.43, i32 1, ptr null, i32 105 }, %struct.option { ptr @.str.44, i32 1, ptr null, i32 73 }, %struct.option { ptr @.str.45, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.46, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.47, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.48, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.49, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.50, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.51, i32 1, ptr null, i32 102 }, %struct.option { ptr @.str.52, i32 0, ptr null, i32 273 }, %struct.option { ptr @.str.53, i32 0, ptr null, i32 273 }, %struct.option { ptr @.str.54, i32 0, ptr null, i32 273 }, %struct.option { ptr @.str.55, i32 0, ptr null, i32 273 }, %struct.option { ptr @.str.56, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.57, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.58, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.59, i32 1, ptr null, i32 113 }, %struct.option { ptr @.str.60, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.61, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.62, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.63, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.64, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.65, i32 1, ptr null, i32 114 }, %struct.option { ptr @.str.66, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.67, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.68, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.69, i32 1, ptr null, i32 269 }, %struct.option { ptr @.str.70, i32 1, ptr null, i32 256 }, %struct.option { ptr @.str.71, i32 1, ptr null, i32 257 }, %struct.option { ptr @.str.11, i32 1, ptr null, i32 111 }, %struct.option { ptr @.str.72, i32 1, ptr null, i32 270 }, %struct.option { ptr @.str.73, i32 1, ptr null, i32 271 }, %struct.option { ptr @.str.74, i32 1, ptr null, i32 270 }, %struct.option { ptr @.str.75, i32 1, ptr null, i32 271 }, %struct.option { ptr @.str.76, i32 1, ptr null, i32 272 }, %struct.option { ptr @.str.77, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.78, i32 1, ptr null, i32 65 }, %struct.option { ptr @.str.79, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.80, i32 0, ptr null, i32 119 }, %struct.option { ptr @.str.81, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.82, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.83, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.84, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.85, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.86, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.87, i32 1, ptr null, i32 109 }, %struct.option { ptr @.str.88, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.89, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.90, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.91, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.92, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.93, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.94, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.95, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.96, i32 1, ptr null, i32 116 }, %struct.option { ptr @.str.97, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.98, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.99, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.100, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.101, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.102, i32 1, ptr null, i32 48 }, %struct.option { ptr @.str.103, i32 1, ptr null, i32 48 }, %struct.option { ptr @.str.104, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.105, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.106, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.107, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.108, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.109, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.110, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.111, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.112, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.113, i32 1, ptr null, i32 112 }, %struct.option { ptr @.str.114, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.115, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.116, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.117, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.118, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.119, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.120, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.121, i32 1, ptr null, i32 258 }, %struct.option { ptr @.str.122, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.123, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.124, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.125, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.126, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.127, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.128, i32 0, ptr null, i32 259 }, %struct.option { ptr @.str.129, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.130, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.131, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.132, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.133, i32 0, ptr null, i32 260 }, %struct.option { ptr @.str.134, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.135, i32 0, ptr null, i32 261 }, %struct.option { ptr @.str.136, i32 0, ptr null, i32 262 }, %struct.option { ptr @.str.137, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.138, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.139, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.140, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.141, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.142, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.143, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.144, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.145, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.146, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.147, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.148, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.149, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.150, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.151, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.152, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.153, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.154, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.155, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.156, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.157, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.158, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.159, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.160, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.161, i32 1, ptr null, i32 274 }, %struct.option { ptr @.str.162, i32 1, ptr null, i32 275 }, %struct.option { ptr @.str.163, i32 1, ptr null, i32 276 }, %struct.option { ptr @.str.164, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.165, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.166, i32 1, ptr null, i32 277 }, %struct.option { ptr @.str.167, i32 0, ptr null, i32 0 }, %struct.option zeroinitializer], align 16
@optarg = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"placebo\00", align 1
@tga_dump_rate = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"x264 [error]: can't open qpfile `%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"x264 [warning]: not compiled with visualization support\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"x264 [error]: can't open `%s'\0A\00", align 1
@pulldown_names = internal unnamed_addr constant [8 x ptr] [ptr @.str.323, ptr @.str.357, ptr @.str.358, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @.str.362, ptr null], align 16
@.str.8 = private unnamed_addr constant [41 x i8] c"x264 [error]: invalid argument: %s = %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"x264 [error]: No %s file. Run x264 --help for a list of options.\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@output = internal unnamed_addr global %struct.cli_output_t zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [47 x i8] c"x264 [error]: could not open output file `%s'\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"x264 [error]: could not open input file `%s'\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"%s [info]: %dx%d%c %d:%d @ %d/%d fps (%cfr)\0A\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"x264 [error]: --fps + --tcfile-in is incompatible.\0A\00", align 1
@timecode_input = external local_unnamed_addr global %struct.cli_input_t, align 8
@.str.16 = private unnamed_addr constant [37 x i8] c"x264 [error]: timecode input failed\0A\00", align 1
@.str.17 = private unnamed_addr constant [57 x i8] c"x264 [error]: --timebase is incompatible with cfr input\0A\00", align 1
@.str.18 = private unnamed_addr constant [149 x i8] c"x264 [warning]: input appears to be interlaced, enabling %cff interlaced mode.\0A                If you want otherwise, use --no-interlaced or --%cff\0A\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"%lu/%lu\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"x264 [error]: invalid argument: timebase = %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [60 x i8] c"x264 [error]: timebase you specified exceeds H.264 maximum\0A\00", align 1
@x264_levels = external local_unnamed_addr constant [0 x %struct.x264_level_t], align 4
@.str.22 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"yuv\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"y4m\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"mkv\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"flv\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"longhelp\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"fullhelp\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"dumpyuv\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"preset\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"tune\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"slow-firstpass\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"bframes\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"b-adapt\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"no-b-adapt\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"b-bias\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"b-pyramid\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"min-keyint\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"keyint\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"intra-refresh\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"scenecut\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"no-scenecut\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"nf\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"no-deblock\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"deblock\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"tff\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"bff\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"no-interlaced\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"constrained-intra\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"cabac\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"no-cabac\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"qp\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"qpmin\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"qpmax\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"qpstep\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"crf\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"rc-lookahead\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"asm\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"no-asm\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"sar\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"fps\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"frames\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"muxer\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"demuxer\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"analyse\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"partitions\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"direct\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"weightb\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"no-weightb\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"weightp\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"me\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"merange\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"mvrange\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"mvrange-thread\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"subme\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"psy-rd\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"no-psy\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"psy\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"mixed-refs\00", align 1
@.str.92 = private unnamed_addr constant [14 x i8] c"no-mixed-refs\00", align 1
@.str.93 = private unnamed_addr constant [13 x i8] c"no-chroma-me\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"8x8dct\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"no-8x8dct\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"trellis\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"fast-pskip\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"no-fast-pskip\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"no-dct-decimate\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"aq-strength\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"aq-mode\00", align 1
@.str.102 = private unnamed_addr constant [15 x i8] c"deadzone-inter\00", align 1
@.str.103 = private unnamed_addr constant [15 x i8] c"deadzone-intra\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"ratetol\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"vbv-maxrate\00", align 1
@.str.107 = private unnamed_addr constant [12 x i8] c"vbv-bufsize\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"vbv-init\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"crf-max\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"ipratio\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"pbratio\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c"chroma-qp-offset\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"qcomp\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"mbtree\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"no-mbtree\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"qblur\00", align 1
@.str.119 = private unnamed_addr constant [9 x i8] c"cplxblur\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"zones\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"qpfile\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@.str.123 = private unnamed_addr constant [15 x i8] c"sliced-threads\00", align 1
@.str.124 = private unnamed_addr constant [18 x i8] c"no-sliced-threads\00", align 1
@.str.125 = private unnamed_addr constant [15 x i8] c"slice-max-size\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"slice-max-mbs\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"slices\00", align 1
@.str.128 = private unnamed_addr constant [13 x i8] c"thread-input\00", align 1
@.str.129 = private unnamed_addr constant [15 x i8] c"sync-lookahead\00", align 1
@.str.130 = private unnamed_addr constant [18 x i8] c"non-deterministic\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"psnr\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"ssim\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.134 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.135 = private unnamed_addr constant [12 x i8] c"no-progress\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"visualize\00", align 1
@.str.137 = private unnamed_addr constant [9 x i8] c"dump-yuv\00", align 1
@.str.138 = private unnamed_addr constant [7 x i8] c"sps-id\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"aud\00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"nr\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"cqm\00", align 1
@.str.142 = private unnamed_addr constant [8 x i8] c"cqmfile\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"cqm4\00", align 1
@.str.144 = private unnamed_addr constant [6 x i8] c"cqm4i\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"cqm4iy\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"cqm4ic\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c"cqm4p\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"cqm4py\00", align 1
@.str.149 = private unnamed_addr constant [7 x i8] c"cqm4pc\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c"cqm8\00", align 1
@.str.151 = private unnamed_addr constant [6 x i8] c"cqm8i\00", align 1
@.str.152 = private unnamed_addr constant [6 x i8] c"cqm8p\00", align 1
@.str.153 = private unnamed_addr constant [9 x i8] c"overscan\00", align 1
@.str.154 = private unnamed_addr constant [12 x i8] c"videoformat\00", align 1
@.str.155 = private unnamed_addr constant [10 x i8] c"fullrange\00", align 1
@.str.156 = private unnamed_addr constant [10 x i8] c"colorprim\00", align 1
@.str.157 = private unnamed_addr constant [9 x i8] c"transfer\00", align 1
@.str.158 = private unnamed_addr constant [12 x i8] c"colormatrix\00", align 1
@.str.159 = private unnamed_addr constant [10 x i8] c"chromaloc\00", align 1
@.str.160 = private unnamed_addr constant [10 x i8] c"force-cfr\00", align 1
@.str.161 = private unnamed_addr constant [10 x i8] c"tcfile-in\00", align 1
@.str.162 = private unnamed_addr constant [11 x i8] c"tcfile-out\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c"timebase\00", align 1
@.str.164 = private unnamed_addr constant [11 x i8] c"pic-struct\00", align 1
@.str.165 = private unnamed_addr constant [8 x i8] c"nal-hrd\00", align 1
@.str.166 = private unnamed_addr constant [9 x i8] c"pulldown\00", align 1
@.str.167 = private unnamed_addr constant [16 x i8] c"fake-interlaced\00", align 1
@.str.168 = private unnamed_addr constant [597 x i8] c"x264 core:%d%s\0ASyntax: x264 [options] -o outfile infile [widthxheight]\0A\0AInfile can be raw YUV 4:2:0 (in which case resolution is required),\0A  or YUV4MPEG 4:2:0 (*.y4m),\0A  or Avisynth if compiled with support (%s).\0A  or libav* formats if compiled with lavf support (%s) or ffms support (%s).\0AOutfile type is selected by filename:\0A .264 -> Raw bytestream\0A .mkv -> Matroska\0A .flv -> Flash Video\0A .mp4 -> MP4 if compiled with GPAC support (%s)\0A\0AOptions:\0A\0A  -h, --help                  List basic options\0A      --longhelp              List more options\0A      --fullhelp              List all options\0A\0A\00", align 1
@.str.169 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.170 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.197 = private unnamed_addr constant [53 x i8] c"  -I, --keyint <integer>      Maximum GOP size [%d]\0A\00", align 1
@.str.200 = private unnamed_addr constant [78 x i8] c"      --scenecut <integer>    How aggressively to insert extra I-frames [%d]\0A\00", align 1
@.str.202 = private unnamed_addr constant [71 x i8] c"  -b, --bframes <integer>     Number of B-frames between I and P [%d]\0A\00", align 1
@.str.203 = private unnamed_addr constant [315 x i8] c"      --b-adapt <integer>     Adaptive B-frame decision method [%d]\0A                                  Higher values may lower threading efficiency.\0A                                  - 0: Disabled\0A                                  - 1: Fast\0A                                  - 2: Optimal (slow with high --bframes)\0A\00", align 1
@.str.204 = private unnamed_addr constant [75 x i8] c"      --b-bias <integer>      Influences how often B-frames are used [%d]\0A\00", align 1
@.str.205 = private unnamed_addr constant [274 x i8] c"      --b-pyramid <string>    Keep some B-frames as references [%s]\0A                                  - none: Disabled\0A                                  - strict: Strictly hierarchical pyramid\0A                                  - normal: Non-strict (not Blu-ray compatible)\0A\00", align 1
@x264_b_pyramid_names = internal constant [4 x ptr] [ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr null], align 16
@.str.207 = private unnamed_addr constant [63 x i8] c"  -r, --ref <integer>         Number of reference frames [%d]\0A\00", align 1
@.str.209 = private unnamed_addr constant [62 x i8] c"  -f, --deblock <alpha:beta>  Loop filter parameters [%d:%d]\0A\00", align 1
@.str.222 = private unnamed_addr constant [75 x i8] c"      --crf <float>           Quality-based VBR (0-51, 0=lossless) [%.1f]\0A\00", align 1
@.str.223 = private unnamed_addr constant [78 x i8] c"      --rc-lookahead <integer> Number of frames for frametype lookahead [%d]\0A\00", align 1
@.str.224 = private unnamed_addr constant [63 x i8] c"      --vbv-maxrate <integer> Max local bitrate (kbit/s) [%d]\0A\00", align 1
@.str.225 = private unnamed_addr constant [70 x i8] c"      --vbv-bufsize <integer> Set size of the VBV buffer (kbit) [%d]\0A\00", align 1
@.str.226 = private unnamed_addr constant [67 x i8] c"      --vbv-init <float>      Initial VBV buffer occupancy [%.1f]\0A\00", align 1
@.str.228 = private unnamed_addr constant [47 x i8] c"      --qpmin <integer>       Set min QP [%d]\0A\00", align 1
@.str.229 = private unnamed_addr constant [47 x i8] c"      --qpmax <integer>       Set max QP [%d]\0A\00", align 1
@.str.230 = private unnamed_addr constant [52 x i8] c"      --qpstep <integer>      Set max QP step [%d]\0A\00", align 1
@.str.231 = private unnamed_addr constant [75 x i8] c"      --ratetol <float>       Tolerance of ABR ratecontrol and VBV [%.1f]\0A\00", align 1
@.str.232 = private unnamed_addr constant [64 x i8] c"      --ipratio <float>       QP factor between I and P [%.2f]\0A\00", align 1
@.str.233 = private unnamed_addr constant [64 x i8] c"      --pbratio <float>       QP factor between P and B [%.2f]\0A\00", align 1
@.str.234 = private unnamed_addr constant [80 x i8] c"      --chroma-qp-offset <integer>  QP difference between chroma and luma [%d]\0A\00", align 1
@.str.235 = private unnamed_addr constant [234 x i8] c"      --aq-mode <integer>     AQ method [%d]\0A                                  - 0: Disabled\0A                                  - 1: Variance AQ (complexity mask)\0A                                  - 2: Auto-variance AQ (experimental)\0A\00", align 1
@.str.236 = private unnamed_addr constant [126 x i8] c"      --aq-strength <float>   Reduces blocking and blurring in flat and\0A                              textured areas. [%.1f]\0A\00", align 1
@.str.239 = private unnamed_addr constant [64 x i8] c"      --stats <string>        Filename for 2 pass stats [\22%s\22]\0A\00", align 1
@.str.241 = private unnamed_addr constant [59 x i8] c"      --qcomp <float>         QP curve compression [%.2f]\0A\00", align 1
@.str.242 = private unnamed_addr constant [91 x i8] c"      --cplxblur <float>      Reduce fluctuations in QP (before curve compression) [%.1f]\0A\00", align 1
@.str.243 = private unnamed_addr constant [90 x i8] c"      --qblur <float>         Reduce fluctuations in QP (after curve compression) [%.1f]\0A\00", align 1
@.str.249 = private unnamed_addr constant [130 x i8] c"      --direct <string>       Direct MV prediction mode [\22%s\22]\0A                                  - none, spatial, temporal, auto\0A\00", align 1
@x264_direct_pred_names = internal constant [5 x ptr] [ptr @.str.323, ptr @.str.326, ptr @.str.327, ptr @.str.22, ptr null], align 16
@.str.251 = private unnamed_addr constant [223 x i8] c"      --weightp <integer>     Weighted prediction for P-frames [%d]\0A                                  - 0: Disabled\0A                                  - 1: Blind offset\0A                                  - 2: Smart analysis\0A\00", align 1
@.str.252 = private unnamed_addr constant [77 x i8] c"      --me <string>           Integer pixel motion estimation method [\22%s\22]\0A\00", align 1
@x264_motion_est_names = internal constant [6 x ptr] [ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr null], align 16
@.str.255 = private unnamed_addr constant [71 x i8] c"      --merange <integer>     Maximum motion vector search range [%d]\0A\00", align 1
@.str.258 = private unnamed_addr constant [81 x i8] c"  -m, --subme <integer>       Subpixel motion estimation and mode decision [%d]\0A\00", align 1
@.str.261 = private unnamed_addr constant [223 x i8] c"      --psy-rd                Strength of psychovisual optimization [\22%.1f:%.1f\22]\0A                                  #1: RD (requires subme>=6)\0A                                  #2: Trellis (requires trellis, experimental)\0A\00", align 1
@.str.266 = private unnamed_addr constant [274 x i8] c"  -t, --trellis <integer>     Trellis RD quantization. Requires CABAC. [%d]\0A                                  - 0: disabled\0A                                  - 1: enabled only on the final encode of a MB\0A                                  - 2: enabled on all mode decisions\0A\00", align 1
@.str.269 = private unnamed_addr constant [52 x i8] c"      --nr <integer>          Noise reduction [%d]\0A\00", align 1
@.str.270 = private unnamed_addr constant [89 x i8] c"      --deadzone-inter <int>  Set the size of the inter luma quantization deadzone [%d]\0A\00", align 1
@.str.271 = private unnamed_addr constant [89 x i8] c"      --deadzone-intra <int>  Set the size of the intra luma quantization deadzone [%d]\0A\00", align 1
@.str.283 = private unnamed_addr constant [122 x i8] c"      --overscan <string>     Specify crop overscan setting [\22%s\22]\0A                                  - undef, show, crop\0A\00", align 1
@x264_overscan_names = internal constant [4 x ptr] [ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr null], align 16
@.str.284 = private unnamed_addr constant [135 x i8] c"      --videoformat <string>  Specify video format [\22%s\22]\0A                                  - component, pal, ntsc, secam, mac, undef\0A\00", align 1
@x264_vidformat_names = internal constant [7 x ptr] [ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.333, ptr null], align 16
@.str.285 = private unnamed_addr constant [117 x i8] c"      --fullrange <string>    Specify full range samples setting [\22%s\22]\0A                                  - off, on\0A\00", align 1
@x264_fullrange_names = internal constant [3 x ptr] [ptr @.str.341, ptr @.str.342, ptr null], align 16
@.str.286 = private unnamed_addr constant [191 x i8] c"      --colorprim <string>    Specify color primaries [\22%s\22]\0A                                  - undef, bt709, bt470m, bt470bg\0A                                    smpte170m, smpte240m, film\0A\00", align 1
@x264_colorprim_names = internal constant [10 x ptr] [ptr @.str.169, ptr @.str.343, ptr @.str.333, ptr @.str.169, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr null], align 16
@.str.287 = private unnamed_addr constant [219 x i8] c"      --transfer <string>     Specify transfer characteristics [\22%s\22]\0A                                  - undef, bt709, bt470m, bt470bg, linear,\0A                                    log100, log316, smpte170m, smpte240m\0A\00", align 1
@x264_transfer_names = internal constant [12 x ptr] [ptr @.str.169, ptr @.str.343, ptr @.str.333, ptr @.str.169, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.349, ptr @.str.350, ptr @.str.351, ptr null], align 16
@.str.288 = private unnamed_addr constant [199 x i8] c"      --colormatrix <string>  Specify color matrix setting [\22%s\22]\0A                                  - undef, bt709, fcc, bt470bg\0A                                    smpte170m, smpte240m, GBR, YCgCo\0A\00", align 1
@x264_colmatrix_names = internal constant [10 x ptr] [ptr @.str.352, ptr @.str.343, ptr @.str.333, ptr @.str.169, ptr @.str.353, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.354, ptr null], align 16
@.str.289 = private unnamed_addr constant [76 x i8] c"      --chromaloc <integer>   Specify chroma sample location (0 to 5) [%d]\0A\00", align 1
@.str.294 = private unnamed_addr constant [109 x i8] c"      --muxer <string>        Specify output container format [\22%s\22]\0A                                  - %s\0A\00", align 1
@.str.295 = private unnamed_addr constant [108 x i8] c"      --demuxer <string>      Specify input container format [\22%s\22]\0A                                  - %s\0A\00", align 1
@.str.316 = private unnamed_addr constant [63 x i8] c"      --sps-id <integer>      Set SPS and PPS id numbers [%d]\0A\00", align 1
@.str.322 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.323 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.324 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.325 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.326 = private unnamed_addr constant [8 x i8] c"spatial\00", align 1
@.str.327 = private unnamed_addr constant [9 x i8] c"temporal\00", align 1
@.str.328 = private unnamed_addr constant [4 x i8] c"dia\00", align 1
@.str.329 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@.str.330 = private unnamed_addr constant [4 x i8] c"umh\00", align 1
@.str.331 = private unnamed_addr constant [4 x i8] c"esa\00", align 1
@.str.332 = private unnamed_addr constant [5 x i8] c"tesa\00", align 1
@.str.333 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.334 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.335 = private unnamed_addr constant [5 x i8] c"crop\00", align 1
@.str.336 = private unnamed_addr constant [10 x i8] c"component\00", align 1
@.str.337 = private unnamed_addr constant [4 x i8] c"pal\00", align 1
@.str.338 = private unnamed_addr constant [5 x i8] c"ntsc\00", align 1
@.str.339 = private unnamed_addr constant [6 x i8] c"secam\00", align 1
@.str.340 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.341 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.342 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.343 = private unnamed_addr constant [6 x i8] c"bt709\00", align 1
@.str.344 = private unnamed_addr constant [7 x i8] c"bt470m\00", align 1
@.str.345 = private unnamed_addr constant [8 x i8] c"bt470bg\00", align 1
@.str.346 = private unnamed_addr constant [10 x i8] c"smpte170m\00", align 1
@.str.347 = private unnamed_addr constant [10 x i8] c"smpte240m\00", align 1
@.str.348 = private unnamed_addr constant [5 x i8] c"film\00", align 1
@.str.349 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.350 = private unnamed_addr constant [7 x i8] c"log100\00", align 1
@.str.351 = private unnamed_addr constant [7 x i8] c"log316\00", align 1
@.str.352 = private unnamed_addr constant [4 x i8] c"GBR\00", align 1
@.str.353 = private unnamed_addr constant [4 x i8] c"fcc\00", align 1
@.str.354 = private unnamed_addr constant [6 x i8] c"YCgCo\00", align 1
@.str.356 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.357 = private unnamed_addr constant [3 x i8] c"22\00", align 1
@.str.358 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@.str.359 = private unnamed_addr constant [3 x i8] c"64\00", align 1
@.str.360 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.361 = private unnamed_addr constant [7 x i8] c"triple\00", align 1
@.str.362 = private unnamed_addr constant [5 x i8] c"euro\00", align 1
@.str.363 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.364 = private unnamed_addr constant [4 x i8] c"mp4\00", align 1
@.str.365 = private unnamed_addr constant [52 x i8] c"x264 [error]: not compiled with MP4 output support\0A\00", align 1
@mkv_output = external local_unnamed_addr constant %struct.cli_output_t, align 8
@flv_output = external local_unnamed_addr constant %struct.cli_output_t, align 8
@raw_output = external local_unnamed_addr constant %struct.cli_output_t, align 8
@.str.366 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.367 = private unnamed_addr constant [4 x i8] c"avs\00", align 1
@.str.368 = private unnamed_addr constant [4 x i8] c"d2v\00", align 1
@.str.369 = private unnamed_addr constant [4 x i8] c"dga\00", align 1
@.str.370 = private unnamed_addr constant [51 x i8] c"x264 [error]: not compiled with AVS input support\0A\00", align 1
@y4m_input = external local_unnamed_addr constant %struct.cli_input_t, align 8
@yuv_input = external local_unnamed_addr constant %struct.cli_input_t, align 8
@.str.371 = private unnamed_addr constant [62 x i8] c"x264 [error]: could not open input file `%s' via any method!\0A\00", align 1
@b_ctrl_c = internal unnamed_addr global i1 false, align 4
@.str.372 = private unnamed_addr constant [57 x i8] c"x264 [error]: unsupported framerate for chosen pulldown\0A\00", align 1
@.str.373 = private unnamed_addr constant [40 x i8] c"x264 [error]: x264_encoder_open failed\0A\00", align 1
@.str.374 = private unnamed_addr constant [39 x i8] c"x264 [error]: can't set outfile param\0A\00", align 1
@.str.375 = private unnamed_addr constant [29 x i8] c"x264 [error]: malloc failed\0A\00", align 1
@.str.376 = private unnamed_addr constant [44 x i8] c"x264 [error]: ticks_per_frame invalid: %ld\0A\00", align 1
@.str.377 = private unnamed_addr constant [43 x i8] c"x264 [error]: x264_encoder_headers failed\0A\00", align 1
@.str.378 = private unnamed_addr constant [22 x i8] c"# timecode format v2\0A\00", align 1
@pulldown_frame_duration = internal unnamed_addr constant [10 x float] [float 0.000000e+00, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float 1.000000e+00, float 1.500000e+00, float 1.500000e+00, float 2.000000e+00, float 3.000000e+00], align 16
@.str.379 = private unnamed_addr constant [69 x i8] c"x264 [warning]: non-strictly-monotonic pts at frame %d (%ld <= %ld)\0A\00", align 1
@.str.380 = private unnamed_addr constant [78 x i8] c"x264 [warning]: too many nonmonotonic pts warnings, suppressing further ones\0A\00", align 1
@.str.381 = private unnamed_addr constant [6 x i8] c"%.6f\0A\00", align 1
@.str.382 = private unnamed_addr constant [57 x i8] c"x264 [warning]: %d suppressed nonmonotonic pts warnings\0A\00", align 1
@.str.383 = private unnamed_addr constant [81 x i8] c"                                                                               \0D\00", align 1
@.str.384 = private unnamed_addr constant [44 x i8] c"aborted at input frame %d, output frame %d\0A\00", align 1
@.str.385 = private unnamed_addr constant [40 x i8] c"encoded %d frames, %.2f fps, %.2f kb/s\0A\00", align 1
@pulldown_values = internal unnamed_addr constant <{ %struct.cli_pulldown_t, { i32, <{ i8, [23 x i8] }>, float }, { i32, <{ i8, i8, i8, i8, [20 x i8] }>, float }, { i32, <{ i8, i8, [22 x i8] }>, float }, { i32, <{ i8, [23 x i8] }>, float }, { i32, <{ i8, [23 x i8] }>, float }, %struct.cli_pulldown_t }> <{ %struct.cli_pulldown_t zeroinitializer, { i32, <{ i8, [23 x i8] }>, float } { i32 1, <{ i8, [23 x i8] }> <{ i8 4, [23 x i8] zeroinitializer }>, float 1.000000e+00 }, { i32, <{ i8, i8, i8, i8, [20 x i8] }>, float } { i32 4, <{ i8, i8, i8, i8, [20 x i8] }> <{ i8 6, i8 5, i8 7, i8 4, [20 x i8] zeroinitializer }>, float 1.250000e+00 }, { i32, <{ i8, i8, [22 x i8] }>, float } { i32 2, <{ i8, i8, [22 x i8] }> <{ i8 8, i8 9, [22 x i8] zeroinitializer }>, float 1.000000e+00 }, { i32, <{ i8, [23 x i8] }>, float } { i32 1, <{ i8, [23 x i8] }> <{ i8 8, [23 x i8] zeroinitializer }>, float 2.000000e+00 }, { i32, <{ i8, [23 x i8] }>, float } { i32 1, <{ i8, [23 x i8] }> <{ i8 9, [23 x i8] zeroinitializer }>, float 3.000000e+00 }, %struct.cli_pulldown_t { i32 24, [24 x i8] c"\06\05\05\05\05\05\05\05\05\05\05\05\07\04\04\04\04\04\04\04\04\04\04\04", float 0x3FF0AAAAA0000000 } }>, align 16
@.str.387 = private unnamed_addr constant [10 x i8] c"%d %c %d\0A\00", align 1
@.str.388 = private unnamed_addr constant [47 x i8] c"x264 [error]: can't parse qpfile for frame %d\0A\00", align 1
@.str.389 = private unnamed_addr constant [42 x i8] c"x264 [error]: x264_encoder_encode failed\0A\00", align 1
@str = private unnamed_addr constant [12 x i8] c"x264 0.96.x\00", align 1
@str.390 = private unnamed_addr constant [15 x i8] c"Example usage:\00", align 1
@str.391 = private unnamed_addr constant [29 x i8] c"      Constant quality mode:\00", align 1
@str.392 = private unnamed_addr constant [46 x i8] c"            x264 --crf 24 -o <output> <input>\00", align 1
@str.393 = private unnamed_addr constant [43 x i8] c"      Two-pass with a bitrate of 1000kbps:\00", align 1
@str.394 = private unnamed_addr constant [61 x i8] c"            x264 --pass 1 --bitrate 1000 -o <output> <input>\00", align 1
@str.395 = private unnamed_addr constant [61 x i8] c"            x264 --pass 2 --bitrate 1000 -o <output> <input>\00", align 1
@str.396 = private unnamed_addr constant [16 x i8] c"      Lossless:\00", align 1
@str.397 = private unnamed_addr constant [45 x i8] c"            x264 --crf 0 -o <output> <input>\00", align 1
@str.398 = private unnamed_addr constant [60 x i8] c"      Maximum PSNR at the cost of speed and visual quality:\00", align 1
@str.399 = private unnamed_addr constant [66 x i8] c"            x264 --preset placebo --tune psnr -o <output> <input>\00", align 1
@str.400 = private unnamed_addr constant [59 x i8] c"      Constant bitrate at 1000kbps with a 2 second-buffer:\00", align 1
@str.401 = private unnamed_addr constant [71 x i8] c"            x264 --vbv-bufsize 2000 --bitrate 1000 -o <output> <input>\00", align 1
@str.402 = private unnamed_addr constant [9 x i8] c"Presets:\00", align 1
@str.403 = private unnamed_addr constant [132 x i8] c"      --profile               Force the limits of an H.264 profile [high]\0A                                  Overrides all settings.\00", align 1
@str.404 = private unnamed_addr constant [55 x i8] c"                                  - baseline,main,high\00", align 1
@str.405 = private unnamed_addr constant [517 x i8] c"                                  - baseline:\0A                                    --no-8x8dct --bframes 0 --no-cabac\0A                                    --cqm flat --weightp 0\0A                                    No interlaced.\0A                                    No lossless.\0A                                  - main:\0A                                    --no-8x8dct --cqm flat\0A                                    No lossless.\0A                                  - high:\0A                                    No lossless.\00", align 1
@str.406 = private unnamed_addr constant [143 x i8] c"      --preset                Use a preset to select encoding settings [medium]\0A                                  Overridden by user settings.\00", align 1
@str.407 = private unnamed_addr constant [149 x i8] c"                                  - ultrafast,superfast,veryfast,faster,fast\0A                                  - medium,slow,slower,veryslow,placebo\00", align 1
@str.408 = private unnamed_addr constant [2442 x i8] c"                                  - ultrafast:\0A                                    --no-8x8dct --aq-mode 0 --b-adapt 0\0A                                    --bframes 0 --no-cabac --no-deblock\0A                                    --no-mbtree --me dia --no-mixed-refs\0A                                    --partitions none --ref 1 --scenecut 0\0A                                    --subme 0 --trellis 0 --no-weightb\0A                                    --weightp 0\0A                                  - superfast:\0A                                    --no-mbtree --me dia --no-mixed-refs\0A                                    --partitions i8x8,i4x4 --ref 1\0A                                    --subme 1 --trellis 0 --weightp 0\0A                                  - veryfast:\0A                                    --no-mbtree --no-mixed-refs --ref 1\0A                                    --subme 2 --trellis 0 --weightp 0\0A                                  - faster:\0A                                    --no-mixed-refs --rc-lookahead 20\0A                                    --ref 2 --subme 4 --weightp 1\0A                                  - fast:\0A                                    --rc-lookahead 30 --ref 2 --subme 6\0A                                  - medium:\0A                                    Default settings apply.\0A                                  - slow:\0A                                    --b-adapt 2 --direct auto --me umh\0A                                    --rc-lookahead 50 --ref 5 --subme 8\0A                                  - slower:\0A                                    --b-adapt 2 --direct auto --me umh\0A                                    --partitions all --rc-lookahead 60\0A                                    --ref 8 --subme 9 --trellis 2\0A                                  - veryslow:\0A                                    --b-adapt 2 --bframes 8 --direct auto\0A                                    --me umh --merange 24 --partitions all\0A                                    --ref 16 --subme 10 --trellis 2\0A                                    --rc-lookahead 60\0A                                  - placebo:\0A                                    --bframes 16 --b-adapt 2 --direct auto\0A                                    --slow-firstpass --no-fast-pskip\0A                                    --me tesa --merange 24 --partitions all\0A                                    --rc-lookahead 60 --ref 16 --subme 10\0A                                    --trellis 2\00", align 1
@str.409 = private unnamed_addr constant [339 x i8] c"      --tune                  Tune the settings for a particular type of source\0A                              or situation\0A                                  Overridden by user settings.\0A                                  Multiple tunings are separated by commas.\0A                                  Only one psy tuning can be used at a time.\00", align 1
@str.410 = private unnamed_addr constant [215 x i8] c"                                  - psy tunings: film,animation,grain,\0A                                                 stillimage,psnr,ssim\0A                                  - other tunings: fastdecode,zerolatency\00", align 1
@str.411 = private unnamed_addr constant [1557 x i8] c"                                  - film (psy tuning):\0A                                    --deblock -1:-1 --psy-rd <unset>:0.15\0A                                  - animation (psy tuning):\0A                                    --bframes {+2} --deblock 1:1\0A                                    --psy-rd 0.4:<unset> --aq-strength 0.6\0A                                    --ref {Double if >1 else 1}\0A                                  - grain (psy tuning):\0A                                    --aq-strength 0.5 --no-dct-decimate\0A                                    --deadzone-inter 6 --deadzone-intra 6\0A                                    --deblock -2:-2 --ipratio 1.1 \0A                                    --pbratio 1.1 --psy-rd <unset>:0.25\0A                                    --qcomp 0.8\0A                                  - stillimage (psy tuning):\0A                                    --aq-strength 1.2 --deblock -3:-3\0A                                    --psy-rd 2.0:0.7\0A                                  - psnr (psy tuning):\0A                                    --aq-mode 0 --no-psy\0A                                  - ssim (psy tuning):\0A                                    --aq-mode 2 --no-psy\0A                                  - fastdecode:\0A                                    --no-cabac --no-deblock --no-weightb\0A                                    --weightp 0\0A                                  - zerolatency:\0A                                    --bframes 0 --force-cfr --rc-lookahead 0\0A                                    --sync-lookahead 0 --sliced-threads\00", align 1
@str.412 = private unnamed_addr constant [72 x i8] c"      --slow-firstpass        Don't force faster settings with --pass 1\00", align 1
@str.413 = private unnamed_addr constant [286 x i8] c"      --slow-firstpass        Don't force these faster settings with --pass 1:\0A                                  --no-8x8dct --me dia --partitions none\0A                                  --ref 1 --subme {2 if >2 else unchanged}\0A                                  --trellis 0 --fast-pskip\00", align 1
@str.414 = private unnamed_addr constant [20 x i8] c"Frame-type options:\00", align 1
@str.415 = private unnamed_addr constant [54 x i8] c"  -i, --min-keyint <integer>  Minimum GOP size [auto]\00", align 1
@str.416 = private unnamed_addr constant [64 x i8] c"      --no-scenecut           Disable adaptive I-frame decision\00", align 1
@str.417 = private unnamed_addr constant [79 x i8] c"      --intra-refresh         Use Periodic Intra Refresh instead of IDR frames\00", align 1
@str.418 = private unnamed_addr constant [44 x i8] c"      --no-cabac              Disable CABAC\00", align 1
@str.419 = private unnamed_addr constant [50 x i8] c"      --no-deblock            Disable loop filter\00", align 1
@str.420 = private unnamed_addr constant [57 x i8] c"      --slices <integer>      Number of slices per frame\00", align 1
@str.421 = private unnamed_addr constant [157 x i8] c"      --slices <integer>      Number of slices per frame; forces rectangular\0A                              slices and is overridden by other slicing options\00", align 1
@str.422 = private unnamed_addr constant [71 x i8] c"      --slice-max-size <integer> Limit the size of each slice in bytes\00", align 1
@str.423 = private unnamed_addr constant [76 x i8] c"      --slice-max-mbs <integer> Limit the size of each slice in macroblocks\00", align 1
@str.424 = private unnamed_addr constant [71 x i8] c"      --tff                   Enable interlaced mode (top field first)\00", align 1
@str.425 = private unnamed_addr constant [74 x i8] c"      --bff                   Enable interlaced mode (bottom field first)\00", align 1
@str.426 = private unnamed_addr constant [67 x i8] c"      --constrained-intra     Enable constrained intra prediction.\00", align 1
@str.427 = private unnamed_addr constant [165 x i8] c"      --pulldown <string>     Use soft pulldown to change frame rate\0A                                  - none, 22, 32, 64, double, triple, euro (requires cfr input)\00", align 1
@str.428 = private unnamed_addr constant [225 x i8] c"      --fake-interlaced       Flag stream as interlaced but encode progressive.\0A                              Makes it possible to encode 25p and 30p Blu-Ray\0A                              streams. Ignored in interlaced mode.\00", align 1
@str.429 = private unnamed_addr constant [13 x i8] c"Ratecontrol:\00", align 1
@str.430 = private unnamed_addr constant [67 x i8] c"  -q, --qp <integer>          Force constant QP (0-51, 0=lossless)\00", align 1
@str.431 = private unnamed_addr constant [51 x i8] c"  -B, --bitrate <integer>     Set bitrate (kbit/s)\00", align 1
@str.432 = private unnamed_addr constant [127 x i8] c"      --crf-max <float>       With CRF+VBV, limit RF to this value\0A                                  May cause VBV underflows!\00", align 1
@str.433 = private unnamed_addr constant [209 x i8] c"  -p, --pass <integer>        Enable multipass ratecontrol\0A                                  - 1: First pass, creates stats file\0A                                  - 2: Last pass, does not overwrite stats file\00", align 1
@str.434 = private unnamed_addr constant [71 x i8] c"                                  - 3: Nth pass, overwrites stats file\00", align 1
@str.435 = private unnamed_addr constant [59 x i8] c"      --no-mbtree             Disable mb-tree ratecontrol.\00", align 1
@str.436 = private unnamed_addr constant [77 x i8] c"      --zones <zone0>/<zone1>/...  Tweak the bitrate of regions of the video\00", align 1
@str.437 = private unnamed_addr constant [313 x i8] c"                              Each zone is of the form\0A                                  <start frame>,<end frame>,<option>\0A                                  where <option> is either\0A                                      q=<integer> (force QP)\0A                                  or  b=<float> (bitrate multiplier)\00", align 1
@str.438 = private unnamed_addr constant [299 x i8] c"      --qpfile <string>       Force frametypes and QPs for some or all frames\0A                              Format of each line: framenumber frametype QP\0A                              QP of -1 lets x264 choose. Frametypes: I,i,P,B,b.\0A                              QPs are restricted by qpmin/qpmax.\00", align 1
@str.439 = private unnamed_addr constant [10 x i8] c"Analysis:\00", align 1
@str.440 = private unnamed_addr constant [268 x i8] c"  -A, --partitions <string>   Partitions to consider [\22p8x8,b8x8,i8x8,i4x4\22]\0A                                  - p8x8, p4x4, b8x8, i8x8, i4x4\0A                                  - none, all\0A                                  (p4x4 requires p8x8. i8x8 requires --8x8dct.)\00", align 1
@str.441 = private unnamed_addr constant [71 x i8] c"      --no-weightb            Disable weighted prediction for B-frames\00", align 1
@str.442 = private unnamed_addr constant [50 x i8] c"                                  - dia, hex, umh\00", align 1
@str.443 = private unnamed_addr constant [345 x i8] c"                                  - dia: diamond search, radius 1 (fast)\0A                                  - hex: hexagonal search, radius 2\0A                                  - umh: uneven multi-hexagon search\0A                                  - esa: exhaustive search\0A                                  - tesa: hadamard exhaustive search (slow)\00", align 1
@str.444 = private unnamed_addr constant [71 x i8] c"      --mvrange <integer>     Maximum motion vector length [-1 (auto)]\00", align 1
@str.445 = private unnamed_addr constant [73 x i8] c"      --mvrange-thread <int>  Minimum buffer between threads [-1 (auto)]\00", align 1
@str.446 = private unnamed_addr constant [69 x i8] c"                                  decision quality: 1=fast, 10=best.\00", align 1
@str.447 = private unnamed_addr constant [626 x i8] c"                                  - 0: fullpel only (not recommended)\0A                                  - 1: SAD mode decision, one qpel iteration\0A                                  - 2: SATD mode decision\0A                                  - 3-5: Progressively more qpel\0A                                  - 6: RD mode decision for I/P-frames\0A                                  - 7: RD mode decision for all frames\0A                                  - 8: RD refinement for I/P-frames\0A                                  - 9: RD refinement for all frames\0A                                  - 10: QP-RD - requires trellis=2, aq-mode>0\00", align 1
@str.448 = private unnamed_addr constant [125 x i8] c"      --no-psy                Disable all visual optimizations that worsen\0A                              both PSNR and SSIM.\00", align 1
@str.449 = private unnamed_addr constant [79 x i8] c"      --no-mixed-refs         Don't decide references on a per partition basis\00", align 1
@str.450 = private unnamed_addr constant [65 x i8] c"      --no-chroma-me          Ignore chroma in motion estimation\00", align 1
@str.451 = private unnamed_addr constant [70 x i8] c"      --no-8x8dct             Disable adaptive spatial transform size\00", align 1
@str.452 = private unnamed_addr constant [72 x i8] c"      --no-fast-pskip         Disables early SKIP detection on P-frames\00", align 1
@str.453 = private unnamed_addr constant [76 x i8] c"      --no-dct-decimate       Disables coefficient thresholding on P-frames\00", align 1
@str.454 = private unnamed_addr constant [75 x i8] c"                                  Deadzones should be in the range 0 - 32.\00", align 1
@str.455 = private unnamed_addr constant [107 x i8] c"      --cqm <string>          Preset quant matrices [\22flat\22]\0A                                  - jvt, flat\00", align 1
@str.456 = private unnamed_addr constant [83 x i8] c"      --cqmfile <string>      Read custom quant matrices from a JM-compatible file\00", align 1
@str.457 = private unnamed_addr constant [70 x i8] c"                                  Overrides any other --cqm* options.\00", align 1
@str.458 = private unnamed_addr constant [136 x i8] c"      --cqm4 <list>           Set all 4x4 quant matrices\0A                                  Takes a comma-separated list of 16 integers.\00", align 1
@str.459 = private unnamed_addr constant [136 x i8] c"      --cqm8 <list>           Set all 8x8 quant matrices\0A                                  Takes a comma-separated list of 64 integers.\00", align 1
@str.460 = private unnamed_addr constant [111 x i8] c"      --cqm4i, --cqm4p, --cqm8i, --cqm8p\0A                              Set both luma and chroma quant matrices\00", align 1
@str.461 = private unnamed_addr constant [105 x i8] c"      --cqm4iy, --cqm4ic, --cqm4py, --cqm4pc\0A                              Set individual quant matrices\00", align 1
@str.462 = private unnamed_addr constant [32 x i8] c"Video Usability Info (Annex E):\00", align 1
@str.463 = private unnamed_addr constant [75 x i8] c"The VUI settings are not used by the encoder but are merely suggestions to\00", align 1
@str.464 = private unnamed_addr constant [75 x i8] c"the playback equipment. See doc/vui.txt for details. Use at your own risk.\00", align 1
@str.465 = private unnamed_addr constant [153 x i8] c"      --nal-hrd <string>      Signal HRD information (requires vbv-bufsize)\0A                                  - none, vbr, cbr (cbr not allowed in .mp4)\00", align 1
@str.466 = private unnamed_addr constant [69 x i8] c"      --pic-struct            Force pic_struct in Picture Timing SEI\00", align 1
@str.467 = private unnamed_addr constant [14 x i8] c"Input/Output:\00", align 1
@str.468 = private unnamed_addr constant [50 x i8] c"  -o, --output                Specify output file\00", align 1
@str.469 = private unnamed_addr constant [60 x i8] c"      --index <string>        Filename for input index file\00", align 1
@str.470 = private unnamed_addr constant [58 x i8] c"      --sar width:height      Specify Sample Aspect Ratio\00", align 1
@str.471 = private unnamed_addr constant [48 x i8] c"      --fps <float|rational>  Specify framerate\00", align 1
@str.472 = private unnamed_addr constant [52 x i8] c"      --seek <integer>        First frame to encode\00", align 1
@str.473 = private unnamed_addr constant [65 x i8] c"      --frames <integer>      Maximum number of frames to encode\00", align 1
@str.474 = private unnamed_addr constant [68 x i8] c"      --level <string>        Specify level (as defined by Annex A)\00", align 1
@str.475 = private unnamed_addr constant [57 x i8] c"  -v, --verbose               Print stats for each frame\00", align 1
@str.476 = private unnamed_addr constant [79 x i8] c"      --no-progress           Don't show the progress indicator while encoding\00", align 1
@str.477 = private unnamed_addr constant [41 x i8] c"      --quiet                 Quiet Mode\00", align 1
@str.478 = private unnamed_addr constant [54 x i8] c"      --psnr                  Enable PSNR computation\00", align 1
@str.479 = private unnamed_addr constant [54 x i8] c"      --ssim                  Enable SSIM computation\00", align 1
@str.480 = private unnamed_addr constant [65 x i8] c"      --threads <integer>     Force a specific number of threads\00", align 1
@str.481 = private unnamed_addr constant [73 x i8] c"      --sliced-threads        Low-latency but lower-efficiency threading\00", align 1
@str.482 = private unnamed_addr constant [61 x i8] c"      --thread-input          Run Avisynth in its own thread\00", align 1
@str.483 = private unnamed_addr constant [80 x i8] c"      --sync-lookahead <integer> Number of buffer frames for threaded lookahead\00", align 1
@str.484 = private unnamed_addr constant [92 x i8] c"      --non-deterministic     Slightly improve quality of SMP, at the cost of repeatability\00", align 1
@str.485 = private unnamed_addr constant [53 x i8] c"      --asm <integer>         Override CPU detection\00", align 1
@str.486 = private unnamed_addr constant [60 x i8] c"      --no-asm                Disable all CPU optimizations\00", align 1
@str.487 = private unnamed_addr constant [75 x i8] c"      --visualize             Show MB types overlayed on the encoded video\00", align 1
@str.488 = private unnamed_addr constant [56 x i8] c"      --dump-yuv <string>     Save reconstructed frames\00", align 1
@str.489 = private unnamed_addr constant [57 x i8] c"      --aud                   Use access unit delimiters\00", align 1
@str.490 = private unnamed_addr constant [76 x i8] c"      --force-cfr             Force constant framerate timestamp generation\00", align 1
@str.491 = private unnamed_addr constant [76 x i8] c"      --tcfile-in <string>    Force timestamp generation with timecode file\00", align 1
@str.492 = private unnamed_addr constant [76 x i8] c"      --tcfile-out <string>   Output timecode v2 file from input timestamps\00", align 1
@str.493 = private unnamed_addr constant [232 x i8] c"      --timebase <int/int>    Specify timebase numerator and denominator\0A                 <integer>    Specify timebase numerator for input timecode file\0A                              or specify timebase denominator for other input\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.x264_param_t, align 8
  %4 = alloca %struct.cli_opt_t, align 8
  call void @llvm.lifetime.start.p0(i64 704, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #25
  %5 = call fastcc i32 @Parse(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = call ptr @signal(i32 noundef 2, ptr noundef nonnull @SigIntHandler) #27
  %9 = call fastcc i32 @Encode(ptr noundef nonnull %3, ptr noundef nonnull %4) #26, !range !35
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi i32 [ %9, %7 ], [ -1, %2 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 704, ptr nonnull %3) #25
  ret i32 %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @Parse(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !36 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.x264_param_t, align 8
  %8 = alloca %struct.cli_input_opt_t, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.video_info_t, align 4
  %11 = alloca [5 x i8], align 1
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store ptr @.str.22, ptr %5, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  store ptr @.str.22, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 704, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #25
  call void @x264_param_default(ptr noundef nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  store i32 1, ptr %3, align 8, !tbaa !41
  store i32 0, ptr @optind, align 4, !tbaa !45
  br label %14

14:                                               ; preds = %21, %4
  %15 = phi ptr [ %22, %21 ], [ null, %4 ]
  %16 = phi ptr [ %18, %21 ], [ null, %4 ]
  br label %17

17:                                               ; preds = %14, %23
  %18 = phi ptr [ %16, %14 ], [ %24, %23 ]
  br label %19

19:                                               ; preds = %17, %19
  %20 = call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @short_options, ptr noundef nonnull @long_options, ptr noundef null) #27
  switch i32 %20, label %19 [
    i32 -1, label %25
    i32 265, label %21
    i32 266, label %23
    i32 63, label %431
  ]

21:                                               ; preds = %19
  %22 = load ptr, ptr @optarg, align 8, !tbaa !37
  br label %14

23:                                               ; preds = %19
  %24 = load ptr, ptr @optarg, align 8, !tbaa !37
  br label %17

25:                                               ; preds = %19
  %26 = icmp eq ptr %15, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %25
  %28 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(8) @.str) #28
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi i32 [ 1, %25 ], [ %30, %27 ]
  %33 = call i32 @x264_param_default_preset(ptr noundef %2, ptr noundef %15, ptr noundef %18) #27
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %431, label %35

35:                                               ; preds = %31
  store i32 0, ptr @optind, align 4, !tbaa !45
  %36 = getelementptr inbounds %struct.cli_opt_t, ptr %3, i64 0, i32 7
  %37 = getelementptr inbounds %struct.cli_input_opt_t, ptr %8, i64 0, i32 2
  %38 = getelementptr inbounds %struct.cli_opt_t, ptr %3, i64 0, i32 5
  %39 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 47
  %40 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 38
  %41 = getelementptr inbounds %struct.cli_opt_t, ptr %3, i64 0, i32 4
  %42 = getelementptr inbounds %struct.cli_input_opt_t, ptr %8, i64 0, i32 3
  %43 = getelementptr inbounds %struct.cli_opt_t, ptr %3, i64 0, i32 1
  %44 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 9
  br label %45

45:                                               ; preds = %163, %35
  %46 = phi i32 [ %32, %35 ], [ %164, %163 ]
  %47 = phi i32 [ 0, %35 ], [ %165, %163 ]
  %48 = phi i32 [ 0, %35 ], [ %166, %163 ]
  %49 = phi i32 [ 0, %35 ], [ %167, %163 ]
  %50 = phi ptr [ null, %35 ], [ %168, %163 ]
  %51 = phi ptr [ null, %35 ], [ %169, %163 ]
  %52 = phi ptr [ null, %35 ], [ %170, %163 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #25
  store i32 -1, ptr %9, align 4, !tbaa !45
  %53 = call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @short_options, ptr noundef nonnull @long_options, ptr noundef nonnull %9) #27
  switch i32 %53, label %119 [
    i32 -1, label %171
    i32 104, label %54
    i32 263, label %55
    i32 268, label %56
    i32 86, label %57
    i32 278, label %59
    i32 256, label %63
    i32 257, label %67
    i32 111, label %71
    i32 270, label %73
    i32 271, label %77
    i32 272, label %81
    i32 258, label %83
    i32 259, label %163
    i32 260, label %91
    i32 118, label %92
    i32 261, label %93
    i32 262, label %94
    i32 266, label %163
    i32 265, label %163
    i32 264, label %97
    i32 267, label %99
    i32 114, label %100
    i32 269, label %101
    i32 273, label %102
    i32 274, label %103
    i32 275, label %105
    i32 276, label %113
    i32 277, label %115
  ]

54:                                               ; preds = %45
  call fastcc void @Help(ptr noundef nonnull %7, i32 noundef 0) #26
  call void @exit(i32 noundef 0) #29
  unreachable

55:                                               ; preds = %45
  call fastcc void @Help(ptr noundef nonnull %7, i32 noundef 1) #26
  call void @exit(i32 noundef 0) #29
  unreachable

56:                                               ; preds = %45
  call fastcc void @Help(ptr noundef nonnull %7, i32 noundef 2) #26
  call void @exit(i32 noundef 0) #29
  unreachable

57:                                               ; preds = %45
  %58 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @exit(i32 noundef 0) #29
  unreachable

59:                                               ; preds = %45
  %60 = load ptr, ptr @optarg, align 8, !tbaa !37
  %61 = call i32 @atoi(ptr nocapture noundef %60) #28
  %62 = call i32 @llvm.smax.i32(i32 %61, i32 1)
  store i32 %62, ptr @tga_dump_rate, align 4, !tbaa !45
  br label %163

63:                                               ; preds = %45
  %64 = load ptr, ptr @optarg, align 8, !tbaa !37
  %65 = call i32 @atoi(ptr nocapture noundef %64) #28
  %66 = call i32 @llvm.smax.i32(i32 %65, i32 0)
  store i32 %66, ptr %44, align 4, !tbaa !46
  br label %163

67:                                               ; preds = %45
  %68 = load ptr, ptr @optarg, align 8, !tbaa !37
  %69 = call i32 @atoi(ptr nocapture noundef %68) #28
  %70 = call i32 @llvm.smax.i32(i32 %69, i32 0)
  store i32 %70, ptr %42, align 8, !tbaa !52
  store i32 %70, ptr %43, align 4, !tbaa !54
  store i32 %70, ptr @seek_val, align 4, !tbaa !45
  br label %163

71:                                               ; preds = %45
  %72 = load ptr, ptr @optarg, align 8, !tbaa !37
  br label %163

73:                                               ; preds = %45
  %74 = load ptr, ptr @optarg, align 8, !tbaa !37
  %75 = call fastcc i32 @parse_enum_name(ptr noundef %74, ptr noundef nonnull @muxer_names, ptr noundef nonnull %6) #26, !range !35
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %162, label %163

77:                                               ; preds = %45
  %78 = load ptr, ptr @optarg, align 8, !tbaa !37
  %79 = call fastcc i32 @parse_enum_name(ptr noundef %78, ptr noundef nonnull @demuxer_names, ptr noundef nonnull %5) #26, !range !35
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %162, label %163

81:                                               ; preds = %45
  %82 = load ptr, ptr @optarg, align 8, !tbaa !37
  store ptr %82, ptr %8, align 8, !tbaa !55
  br label %163

83:                                               ; preds = %45
  %84 = load ptr, ptr @optarg, align 8, !tbaa !37
  %85 = call noalias ptr @fopen(ptr noundef %84, ptr noundef nonnull @.str.2) #26
  store ptr %85, ptr %41, align 8, !tbaa !56
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %163

87:                                               ; preds = %83
  %88 = load ptr, ptr @stderr, align 8, !tbaa !37
  %89 = load ptr, ptr @optarg, align 8, !tbaa !37
  %90 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %88, ptr noundef nonnull @.str.3, ptr noundef %89) #30
  br label %162

91:                                               ; preds = %45
  store i32 -1, ptr %40, align 8, !tbaa !57
  br label %163

92:                                               ; preds = %45
  store i32 3, ptr %40, align 8, !tbaa !57
  br label %163

93:                                               ; preds = %45
  store i32 0, ptr %3, align 8, !tbaa !41
  br label %163

94:                                               ; preds = %45
  %95 = load ptr, ptr @stderr, align 8, !tbaa !37
  %96 = call i64 @fwrite(ptr nonnull @.str.5, i64 56, i64 1, ptr %95) #31
  br label %163

97:                                               ; preds = %45
  %98 = load ptr, ptr @optarg, align 8, !tbaa !37
  br label %163

99:                                               ; preds = %45
  br label %163

100:                                              ; preds = %45
  br label %119

101:                                              ; preds = %45
  store i32 0, ptr %39, align 8, !tbaa !58
  br label %119

102:                                              ; preds = %45
  br label %119

103:                                              ; preds = %45
  %104 = load ptr, ptr @optarg, align 8, !tbaa !37
  br label %163

105:                                              ; preds = %45
  %106 = load ptr, ptr @optarg, align 8, !tbaa !37
  %107 = call noalias ptr @fopen(ptr noundef %106, ptr noundef nonnull @.str.6) #26
  store ptr %107, ptr %38, align 8, !tbaa !59
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %163

109:                                              ; preds = %105
  %110 = load ptr, ptr @stderr, align 8, !tbaa !37
  %111 = load ptr, ptr @optarg, align 8, !tbaa !37
  %112 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.7, ptr noundef %111) #30
  br label %162

113:                                              ; preds = %45
  %114 = load ptr, ptr @optarg, align 8, !tbaa !37
  store ptr %114, ptr %37, align 8, !tbaa !60
  br label %163

115:                                              ; preds = %45
  %116 = load ptr, ptr @optarg, align 8, !tbaa !37
  %117 = call fastcc i32 @parse_enum_value(ptr noundef %116, ptr noundef nonnull %36) #26
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %162, label %163

119:                                              ; preds = %45, %102, %101, %100
  %120 = phi i32 [ %47, %102 ], [ %47, %101 ], [ 1, %100 ], [ %47, %45 ]
  %121 = phi i32 [ %48, %102 ], [ 1, %101 ], [ %48, %100 ], [ %48, %45 ]
  %122 = phi i32 [ 1, %102 ], [ %49, %101 ], [ %49, %100 ], [ %49, %45 ]
  %123 = load i32, ptr %9, align 4, !tbaa !45
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %119
  %126 = load ptr, ptr @long_options, align 16, !tbaa !61
  %127 = icmp eq ptr %126, null
  br i1 %127, label %162, label %128

128:                                              ; preds = %125, %135
  %129 = phi i64 [ %136, %135 ], [ 0, %125 ]
  %130 = getelementptr inbounds [142 x %struct.option], ptr @long_options, i64 0, i64 %129, i32 3
  %131 = load i32, ptr %130, align 8, !tbaa !63
  %132 = icmp eq i32 %131, %53
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = trunc i64 %129 to i32
  store i32 %134, ptr %9, align 4, !tbaa !45
  br label %140

135:                                              ; preds = %128
  %136 = add nuw i64 %129, 1
  %137 = getelementptr inbounds [142 x %struct.option], ptr @long_options, i64 0, i64 %136
  %138 = load ptr, ptr %137, align 16, !tbaa !61
  %139 = icmp eq ptr %138, null
  br i1 %139, label %162, label %128, !llvm.loop !64

140:                                              ; preds = %119, %133
  %141 = phi i32 [ %123, %119 ], [ %134, %133 ]
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [142 x %struct.option], ptr @long_options, i64 0, i64 %142
  %144 = load ptr, ptr %143, align 16, !tbaa !61
  %145 = load ptr, ptr @optarg, align 8, !tbaa !37
  %146 = call i32 @x264_param_parse(ptr noundef %2, ptr noundef %144, ptr noundef %145) #27
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %163, label %148

148:                                              ; preds = %140
  %149 = load i32, ptr %9, align 4, !tbaa !45
  %150 = icmp sgt i32 %149, 0
  %151 = zext nneg i32 %149 to i64
  %152 = getelementptr inbounds [142 x %struct.option], ptr @long_options, i64 0, i64 %151
  %153 = load i32, ptr @optind, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr ptr, ptr %1, i64 %154
  %156 = getelementptr ptr, ptr %155, i64 -2
  %157 = select i1 %150, ptr %152, ptr %156
  %158 = load ptr, ptr %157, align 8, !tbaa !37
  %159 = load ptr, ptr @stderr, align 8, !tbaa !37
  %160 = load ptr, ptr @optarg, align 8, !tbaa !37
  %161 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %159, ptr noundef nonnull @.str.8, ptr noundef %158, ptr noundef %160) #30
  br label %162

162:                                              ; preds = %73, %77, %115, %125, %135, %148, %109, %87
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #25
  br label %431

163:                                              ; preds = %83, %45, %45, %45, %59, %63, %67, %71, %73, %77, %81, %91, %92, %93, %94, %97, %99, %103, %105, %113, %115, %140
  %164 = phi i32 [ %46, %140 ], [ %46, %83 ], [ %46, %45 ], [ %46, %45 ], [ %46, %45 ], [ %46, %59 ], [ %46, %63 ], [ %46, %67 ], [ %46, %71 ], [ %46, %73 ], [ %46, %77 ], [ %46, %81 ], [ %46, %91 ], [ %46, %92 ], [ %46, %93 ], [ %46, %94 ], [ %46, %97 ], [ 0, %99 ], [ %46, %103 ], [ %46, %105 ], [ %46, %113 ], [ %46, %115 ]
  %165 = phi i32 [ %120, %140 ], [ %47, %83 ], [ %47, %45 ], [ %47, %45 ], [ %47, %45 ], [ %47, %59 ], [ %47, %63 ], [ %47, %67 ], [ %47, %71 ], [ %47, %73 ], [ %47, %77 ], [ %47, %81 ], [ %47, %91 ], [ %47, %92 ], [ %47, %93 ], [ %47, %94 ], [ %47, %97 ], [ %47, %99 ], [ %47, %103 ], [ %47, %105 ], [ %47, %113 ], [ %47, %115 ]
  %166 = phi i32 [ %121, %140 ], [ %48, %83 ], [ %48, %45 ], [ %48, %45 ], [ %48, %45 ], [ %48, %59 ], [ %48, %63 ], [ %48, %67 ], [ %48, %71 ], [ %48, %73 ], [ %48, %77 ], [ %48, %81 ], [ %48, %91 ], [ %48, %92 ], [ %48, %93 ], [ %48, %94 ], [ %48, %97 ], [ %48, %99 ], [ %48, %103 ], [ %48, %105 ], [ %48, %113 ], [ %48, %115 ]
  %167 = phi i32 [ %122, %140 ], [ %49, %83 ], [ %49, %45 ], [ %49, %45 ], [ %49, %45 ], [ %49, %59 ], [ %49, %63 ], [ %49, %67 ], [ %49, %71 ], [ %49, %73 ], [ %49, %77 ], [ %49, %81 ], [ %49, %91 ], [ %49, %92 ], [ %49, %93 ], [ %49, %94 ], [ %49, %97 ], [ %49, %99 ], [ %49, %103 ], [ %49, %105 ], [ %49, %113 ], [ %49, %115 ]
  %168 = phi ptr [ %50, %140 ], [ %50, %83 ], [ %50, %45 ], [ %50, %45 ], [ %50, %45 ], [ %50, %59 ], [ %50, %63 ], [ %50, %67 ], [ %50, %71 ], [ %50, %73 ], [ %50, %77 ], [ %50, %81 ], [ %50, %91 ], [ %50, %92 ], [ %50, %93 ], [ %50, %94 ], [ %98, %97 ], [ %50, %99 ], [ %50, %103 ], [ %50, %105 ], [ %50, %113 ], [ %50, %115 ]
  %169 = phi ptr [ %51, %140 ], [ %51, %83 ], [ %51, %45 ], [ %51, %45 ], [ %51, %45 ], [ %51, %59 ], [ %51, %63 ], [ %51, %67 ], [ %51, %71 ], [ %51, %73 ], [ %51, %77 ], [ %51, %81 ], [ %51, %91 ], [ %51, %92 ], [ %51, %93 ], [ %51, %94 ], [ %51, %97 ], [ %51, %99 ], [ %104, %103 ], [ %51, %105 ], [ %51, %113 ], [ %51, %115 ]
  %170 = phi ptr [ %52, %140 ], [ %52, %83 ], [ %52, %45 ], [ %52, %45 ], [ %52, %45 ], [ %52, %59 ], [ %52, %63 ], [ %52, %67 ], [ %72, %71 ], [ %52, %73 ], [ %52, %77 ], [ %52, %81 ], [ %52, %91 ], [ %52, %92 ], [ %52, %93 ], [ %52, %94 ], [ %52, %97 ], [ %52, %99 ], [ %52, %103 ], [ %52, %105 ], [ %52, %113 ], [ %52, %115 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #25
  br label %45

171:                                              ; preds = %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #25
  %172 = icmp eq i32 %46, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %171
  call void @x264_param_apply_fastfirstpass(ptr noundef %2) #27
  br label %174

174:                                              ; preds = %173, %171
  %175 = call i32 @x264_param_apply_profile(ptr noundef %2, ptr noundef %50) #27
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %431, label %177

177:                                              ; preds = %174
  %178 = load i32, ptr @optind, align 4, !tbaa !45
  %179 = icmp slt i32 %178, %0
  %180 = icmp ne ptr %52, null
  %181 = select i1 %179, i1 %180, i1 false
  br i1 %181, label %186, label %182

182:                                              ; preds = %177
  %183 = load ptr, ptr @stderr, align 8, !tbaa !37
  %184 = select i1 %179, ptr @.str.11, ptr @.str.10
  %185 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %183, ptr noundef nonnull @.str.9, ptr noundef nonnull %184) #30
  br label %431

186:                                              ; preds = %177
  %187 = load ptr, ptr %6, align 8, !tbaa !37
  %188 = call fastcc i32 @select_output(ptr noundef %187, ptr noundef nonnull %52, ptr noundef %2) #26, !range !35
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %431

190:                                              ; preds = %186
  %191 = load ptr, ptr @output, align 8, !tbaa !66
  %192 = getelementptr inbounds %struct.cli_opt_t, ptr %3, i64 0, i32 3
  %193 = call i32 %191(ptr noundef nonnull %52, ptr noundef nonnull %192) #27
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %190
  %196 = load ptr, ptr @stderr, align 8, !tbaa !37
  %197 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %196, ptr noundef nonnull @.str.12, ptr noundef nonnull %52) #30
  br label %431

198:                                              ; preds = %190
  %199 = load i32, ptr @optind, align 4, !tbaa !45
  %200 = add nsw i32 %199, 1
  store i32 %200, ptr @optind, align 4, !tbaa !45
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds ptr, ptr %1, i64 %201
  %203 = load ptr, ptr %202, align 8, !tbaa !37
  %204 = icmp slt i32 %200, %0
  br i1 %204, label %205, label %210

205:                                              ; preds = %198
  %206 = add nsw i32 %199, 2
  store i32 %206, ptr @optind, align 4, !tbaa !45
  %207 = sext i32 %200 to i64
  %208 = getelementptr inbounds ptr, ptr %1, i64 %207
  %209 = load ptr, ptr %208, align 8, !tbaa !37
  br label %210

210:                                              ; preds = %198, %205
  %211 = phi ptr [ %209, %205 ], [ null, %198 ]
  %212 = getelementptr inbounds %struct.cli_input_opt_t, ptr %8, i64 0, i32 1
  store ptr %211, ptr %212, align 8, !tbaa !68
  %213 = getelementptr inbounds i8, ptr %10, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %213, i8 0, i64 36, i1 false)
  %214 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 7
  %215 = load i32, ptr %214, align 4, !tbaa !69
  store i32 %215, ptr %10, align 4, !tbaa !70
  %216 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 48
  %217 = getelementptr inbounds %struct.video_info_t, ptr %10, i64 0, i32 1
  %218 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 49
  %219 = getelementptr inbounds %struct.video_info_t, ptr %10, i64 0, i32 2
  %220 = load <2 x i32>, ptr %216, align 4, !tbaa !45
  store <2 x i32> %220, ptr %217, align 4, !tbaa !45
  %221 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 26
  %222 = load i32, ptr %221, align 8, !tbaa !72
  %223 = getelementptr inbounds %struct.video_info_t, ptr %10, i64 0, i32 4
  store i32 %222, ptr %223, align 4, !tbaa !73
  %224 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 11
  %225 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 11, i32 1
  %226 = getelementptr inbounds %struct.video_info_t, ptr %10, i64 0, i32 5
  %227 = getelementptr inbounds %struct.video_info_t, ptr %10, i64 0, i32 6
  %228 = load <2 x i32>, ptr %224, align 4, !tbaa !45
  %229 = shufflevector <2 x i32> %228, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %229, ptr %226, align 4, !tbaa !45
  %230 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 53
  %231 = load i32, ptr %230, align 8, !tbaa !74
  %232 = getelementptr inbounds %struct.video_info_t, ptr %10, i64 0, i32 7
  store i32 %231, ptr %232, align 4, !tbaa !75
  %233 = load i32, ptr %39, align 8, !tbaa !58
  %234 = getelementptr inbounds %struct.video_info_t, ptr %10, i64 0, i32 10
  store i32 %233, ptr %234, align 4, !tbaa !76
  %235 = load ptr, ptr %5, align 8, !tbaa !37
  %236 = getelementptr inbounds %struct.cli_opt_t, ptr %3, i64 0, i32 2
  %237 = call fastcc i32 @select_input(ptr noundef %235, ptr noundef nonnull %11, ptr noundef %203, ptr noundef nonnull %236, ptr noundef nonnull %10, ptr noundef nonnull %8) #26, !range !35
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %431

239:                                              ; preds = %210
  %240 = load ptr, ptr %236, align 8, !tbaa !77
  %241 = icmp eq ptr %240, null
  br i1 %241, label %242, label %249

242:                                              ; preds = %239
  %243 = load ptr, ptr @input, align 8, !tbaa !78
  %244 = call i32 %243(ptr noundef %203, ptr noundef nonnull %236, ptr noundef nonnull %10, ptr noundef nonnull %8) #27
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %242
  %247 = load ptr, ptr @stderr, align 8, !tbaa !37
  %248 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %247, ptr noundef nonnull @.str.13, ptr noundef %203) #30
  br label %431

249:                                              ; preds = %242, %239
  call void @x264_reduce_fraction(ptr noundef nonnull %226, ptr noundef nonnull %227) #27
  call void @x264_reduce_fraction(ptr noundef nonnull %217, ptr noundef nonnull %219) #27
  %250 = load i32, ptr %40, align 8, !tbaa !57
  %251 = icmp sgt i32 %250, 1
  br i1 %251, label %252, label %269

252:                                              ; preds = %249
  %253 = load ptr, ptr @stderr, align 8, !tbaa !37
  %254 = getelementptr inbounds %struct.video_info_t, ptr %10, i64 0, i32 11
  %255 = load i32, ptr %254, align 4, !tbaa !80
  %256 = getelementptr inbounds %struct.video_info_t, ptr %10, i64 0, i32 3
  %257 = load i32, ptr %256, align 4, !tbaa !81
  %258 = load i32, ptr %223, align 4, !tbaa !73
  %259 = icmp eq i32 %258, 0
  %260 = select i1 %259, i32 112, i32 105
  %261 = load i32, ptr %226, align 4, !tbaa !82
  %262 = load i32, ptr %227, align 4, !tbaa !83
  %263 = load i32, ptr %217, align 4, !tbaa !84
  %264 = load i32, ptr %219, align 4, !tbaa !85
  %265 = load i32, ptr %234, align 4, !tbaa !76
  %266 = icmp eq i32 %265, 0
  %267 = select i1 %266, i32 99, i32 118
  %268 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %253, ptr noundef nonnull @.str.14, ptr noundef nonnull %11, i32 noundef %255, i32 noundef %257, i32 noundef %260, i32 noundef %261, i32 noundef %262, i32 noundef %263, i32 noundef %264, i32 noundef %267) #30
  br label %269

269:                                              ; preds = %252, %249
  %270 = icmp eq ptr %51, null
  br i1 %270, label %285, label %271

271:                                              ; preds = %269
  %272 = icmp eq i32 %48, 0
  br i1 %272, label %276, label %273

273:                                              ; preds = %271
  %274 = load ptr, ptr @stderr, align 8, !tbaa !37
  %275 = call i64 @fwrite(ptr nonnull @.str.15, i64 51, i64 1, ptr %274) #31
  br label %431

276:                                              ; preds = %271
  %277 = load ptr, ptr @timecode_input, align 8, !tbaa !78
  %278 = call i32 %277(ptr noundef nonnull %51, ptr noundef nonnull %236, ptr noundef nonnull %10, ptr noundef nonnull %8) #27
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %283, label %280

280:                                              ; preds = %276
  %281 = load ptr, ptr @stderr, align 8, !tbaa !37
  %282 = call i64 @fwrite(ptr nonnull @.str.16, i64 36, i64 1, ptr %281) #31
  br label %431

283:                                              ; preds = %276
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @input, ptr noundef nonnull align 8 dereferenceable(56) @timecode_input, i64 56, i1 false), !tbaa.struct !86
  %284 = load i32, ptr %234, align 4, !tbaa !76
  br label %294

285:                                              ; preds = %269
  %286 = load i32, ptr %234, align 4, !tbaa !76
  %287 = icmp eq i32 %286, 0
  %288 = load ptr, ptr %37, align 8
  %289 = icmp ne ptr %288, null
  %290 = select i1 %287, i1 %289, i1 false
  br i1 %290, label %291, label %294

291:                                              ; preds = %285
  %292 = load ptr, ptr @stderr, align 8, !tbaa !37
  %293 = call i64 @fwrite(ptr nonnull @.str.17, i64 56, i64 1, ptr %292) #31
  br label %431

294:                                              ; preds = %285, %283
  %295 = phi i32 [ %286, %285 ], [ %284, %283 ]
  %296 = load i32, ptr %10, align 4, !tbaa !70
  store i32 %296, ptr %214, align 4, !tbaa !69
  %297 = getelementptr inbounds %struct.video_info_t, ptr %10, i64 0, i32 3
  %298 = load i32, ptr %297, align 4, !tbaa !81
  %299 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 6
  store i32 %298, ptr %299, align 8, !tbaa !87
  store i32 %295, ptr %39, align 8, !tbaa !58
  %300 = getelementptr inbounds %struct.video_info_t, ptr %10, i64 0, i32 11
  %301 = load i32, ptr %300, align 4, !tbaa !80
  %302 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 5
  store i32 %301, ptr %302, align 4, !tbaa !88
  %303 = icmp eq i32 %49, 0
  %304 = load i32, ptr %223, align 4
  %305 = icmp ne i32 %304, 0
  %306 = select i1 %303, i1 %305, i1 false
  br i1 %306, label %307, label %317

307:                                              ; preds = %294
  %308 = load ptr, ptr @stderr, align 8, !tbaa !37
  %309 = load i32, ptr %232, align 4, !tbaa !75
  %310 = icmp eq i32 %309, 0
  %311 = select i1 %310, i32 98, i32 116
  %312 = select i1 %310, i32 116, i32 98
  %313 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %308, ptr noundef nonnull @.str.18, i32 noundef %311, i32 noundef %312) #30
  store i32 1, ptr %221, align 8, !tbaa !72
  %314 = load i32, ptr %232, align 4, !tbaa !75
  %315 = icmp ne i32 %314, 0
  %316 = zext i1 %315 to i32
  store i32 %316, ptr %230, align 8, !tbaa !74
  br label %317

317:                                              ; preds = %307, %294
  %318 = icmp eq i32 %48, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %317
  %320 = load <2 x i32>, ptr %217, align 4, !tbaa !45
  store <2 x i32> %320, ptr %216, align 4, !tbaa !45
  br label %321

321:                                              ; preds = %319, %317
  %322 = load i32, ptr %39, align 8, !tbaa !58
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %328, label %324

324:                                              ; preds = %321
  %325 = getelementptr inbounds %struct.video_info_t, ptr %10, i64 0, i32 8
  %326 = load i32, ptr %325, align 4, !tbaa !89
  %327 = getelementptr inbounds %struct.video_info_t, ptr %10, i64 0, i32 9
  br label %330

328:                                              ; preds = %321
  %329 = load i32, ptr %218, align 8, !tbaa !90
  br label %330

330:                                              ; preds = %328, %324
  %331 = phi ptr [ %216, %328 ], [ %327, %324 ]
  %332 = phi i32 [ %329, %328 ], [ %326, %324 ]
  %333 = load i32, ptr %331, align 4, !tbaa !45
  %334 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 50
  store i32 %332, ptr %334, align 4
  %335 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 51
  store i32 %333, ptr %335, align 8
  %336 = load ptr, ptr %37, align 8
  %337 = icmp ne ptr %336, null
  %338 = select i1 %270, i1 %337, i1 false
  br i1 %338, label %339, label %379

339:                                              ; preds = %330
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #25
  %340 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %336, ptr noundef nonnull @.str.19, ptr noundef nonnull %12, ptr noundef nonnull %13) #27
  switch i32 %340, label %341 [
    i32 0, label %343
    i32 1, label %347
  ]

341:                                              ; preds = %339
  %342 = load i64, ptr %13, align 8
  br label %352

343:                                              ; preds = %339
  %344 = load ptr, ptr @stderr, align 8, !tbaa !37
  %345 = load ptr, ptr %37, align 8, !tbaa !60
  %346 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %344, ptr noundef nonnull @.str.20, ptr noundef %345) #30
  br label %429

347:                                              ; preds = %339
  %348 = load i32, ptr %334, align 4, !tbaa !91
  %349 = zext i32 %348 to i64
  store i64 %349, ptr %12, align 8, !tbaa !92
  %350 = load ptr, ptr %37, align 8, !tbaa !60
  %351 = call i64 @strtoul(ptr nocapture noundef %350, ptr noundef null, i32 noundef 10) #27
  store i64 %351, ptr %13, align 8, !tbaa !92
  br label %352

352:                                              ; preds = %341, %347
  %353 = phi i64 [ %342, %341 ], [ %351, %347 ]
  %354 = load i64, ptr %12, align 8, !tbaa !92
  %355 = icmp ugt i64 %354, 4294967295
  %356 = icmp ugt i64 %353, 4294967295
  %357 = select i1 %355, i1 true, i1 %356
  br i1 %357, label %358, label %361

358:                                              ; preds = %352
  %359 = load ptr, ptr @stderr, align 8, !tbaa !37
  %360 = call i64 @fwrite(ptr nonnull @.str.21, i64 59, i64 1, ptr %359) #31
  br label %429

361:                                              ; preds = %352
  %362 = uitofp i64 %353 to double
  %363 = load i32, ptr %335, align 8, !tbaa !94
  %364 = uitofp i32 %363 to double
  %365 = load i32, ptr %334, align 4, !tbaa !91
  %366 = uitofp i32 %365 to double
  %367 = uitofp i64 %354 to double
  %368 = insertelement <2 x double> poison, double %362, i64 0
  %369 = insertelement <2 x double> %368, double %366, i64 1
  %370 = insertelement <2 x double> poison, double %364, i64 0
  %371 = insertelement <2 x double> %370, double %367, i64 1
  %372 = fdiv <2 x double> %369, %371
  %373 = shufflevector <2 x double> %372, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %374 = fmul <2 x double> %372, %373
  %375 = extractelement <2 x double> %374, i64 0
  %376 = getelementptr inbounds %struct.cli_opt_t, ptr %3, i64 0, i32 6
  store double %375, ptr %376, align 8, !tbaa !95
  %377 = trunc i64 %354 to i32
  store i32 %377, ptr %334, align 4, !tbaa !91
  %378 = trunc i64 %353 to i32
  store i32 %378, ptr %335, align 8, !tbaa !94
  store i32 1, ptr %39, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #25
  br label %379

379:                                              ; preds = %361, %330
  %380 = load i32, ptr %225, align 4, !tbaa !96
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %385, label %382

382:                                              ; preds = %379
  %383 = load i32, ptr %224, align 4, !tbaa !97
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %388

385:                                              ; preds = %382, %379
  %386 = load <2 x i32>, ptr %226, align 4, !tbaa !45
  %387 = shufflevector <2 x i32> %386, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %387, ptr %224, align 4, !tbaa !45
  br label %388

388:                                              ; preds = %385, %382
  %389 = icmp eq i32 %47, 0
  br i1 %389, label %390, label %431

390:                                              ; preds = %388
  %391 = load i32, ptr %302, align 4, !tbaa !88
  %392 = add nsw i32 %391, 15
  %393 = ashr i32 %392, 4
  %394 = load i32, ptr %299, align 8, !tbaa !87
  %395 = add nsw i32 %394, 15
  %396 = ashr i32 %395, 4
  %397 = load i32, ptr @x264_levels, align 4, !tbaa !98
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %431, label %399

399:                                              ; preds = %390
  %400 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 8
  %401 = load i32, ptr %400, align 8, !tbaa !100
  br label %407

402:                                              ; preds = %407
  %403 = add nuw i64 %408, 1
  %404 = getelementptr inbounds [0 x %struct.x264_level_t], ptr @x264_levels, i64 0, i64 %403
  %405 = load i32, ptr %404, align 4, !tbaa !98
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %431, label %407, !llvm.loop !101

407:                                              ; preds = %399, %402
  %408 = phi i64 [ 0, %399 ], [ %403, %402 ]
  %409 = phi i32 [ %397, %399 ], [ %405, %402 ]
  %410 = icmp eq i32 %401, %409
  br i1 %410, label %411, label %402

411:                                              ; preds = %407
  %412 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 12
  %413 = mul i32 %393, 384
  %414 = mul i32 %413, %396
  %415 = getelementptr inbounds [0 x %struct.x264_level_t], ptr @x264_levels, i64 0, i64 %408, i32 3
  %416 = load i32, ptr %415, align 4, !tbaa !102
  %417 = load i32, ptr %412, align 8, !tbaa !103
  %418 = mul nsw i32 %414, %417
  %419 = icmp sgt i32 %418, %416
  %420 = icmp sgt i32 %417, 1
  %421 = and i1 %420, %419
  br i1 %421, label %422, label %431

422:                                              ; preds = %411, %422
  %423 = phi i32 [ %424, %422 ], [ %417, %411 ]
  %424 = add nsw i32 %423, -1
  %425 = mul nsw i32 %414, %424
  %426 = icmp sgt i32 %425, %416
  %427 = icmp ugt i32 %423, 2
  %428 = and i1 %427, %426
  br i1 %428, label %422, label %430, !llvm.loop !104

429:                                              ; preds = %343, %358
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #25
  br label %431

430:                                              ; preds = %422
  store i32 %424, ptr %412, align 8, !tbaa !103
  br label %431

431:                                              ; preds = %19, %402, %390, %411, %430, %162, %388, %429, %210, %186, %174, %31, %291, %280, %273, %246, %195, %182
  %432 = phi i32 [ -1, %195 ], [ -1, %273 ], [ -1, %280 ], [ -1, %291 ], [ -1, %246 ], [ -1, %182 ], [ -1, %31 ], [ -1, %174 ], [ -1, %186 ], [ -1, %210 ], [ -1, %429 ], [ 0, %388 ], [ -1, %162 ], [ 0, %430 ], [ 0, %411 ], [ 0, %390 ], [ 0, %402 ], [ -1, %19 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 704, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  ret i32 %432
}

; Function Attrs: nounwind optsize
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @SigIntHandler(i32 %0) #3 !PGOFuncName !105 {
  store i1 true, ptr @b_ctrl_c, align 4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @Encode(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !106 {
  %3 = alloca %struct.x264_picture_t, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store i64 0, ptr %4, align 8, !tbaa !92
  %7 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 51
  %8 = load i32, ptr %7, align 8, !tbaa !94
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 50
  %11 = load i32, ptr %10, align 4, !tbaa !91
  %12 = zext i32 %11 to i64
  %13 = tail call fastcc i64 @gcd(i64 noundef %12, i64 noundef %9) #26
  %14 = sdiv i64 %9, %13
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 38
  %17 = load i32, ptr %16, align 8, !tbaa !57
  %18 = icmp slt i32 %17, 3
  %19 = load i32, ptr %1, align 8, !tbaa !41
  %20 = and i32 %19, 1
  %21 = select i1 %18, i32 %20, i32 0
  store i32 %21, ptr %1, align 8, !tbaa !41
  %22 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 1), align 8, !tbaa !107
  %23 = getelementptr inbounds %struct.cli_opt_t, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !77
  %25 = tail call i32 %22(ptr noundef %24) #27
  %26 = getelementptr inbounds %struct.cli_opt_t, ptr %1, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !54
  %28 = sub nsw i32 %25, %27
  %29 = tail call i32 @llvm.smax.i32(i32 %28, i32 0)
  %30 = icmp slt i32 %28, 1
  %31 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 9
  %32 = load i32, ptr %31, align 4, !tbaa !46
  %33 = icmp slt i32 %32, %29
  %34 = select i1 %30, i1 true, i1 %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  store i32 %29, ptr %31, align 4, !tbaa !46
  br label %41

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 9
  %38 = icmp sgt i32 %32, 0
  %39 = select i1 %38, i32 %32, i32 %29
  store i32 %39, ptr %37, align 4, !tbaa !46
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %35, %36
  %42 = phi i32 [ %28, %35 ], [ %39, %36 ]
  %43 = udiv i32 %42, 1000
  %44 = tail call fastcc i32 @x264_clip3(i32 noundef %43) #26
  br label %45

45:                                               ; preds = %36, %41
  %46 = phi i1 [ false, %41 ], [ true, %36 ]
  %47 = phi i32 [ %42, %41 ], [ 0, %36 ]
  %48 = phi i32 [ %44, %41 ], [ 10, %36 ]
  %49 = getelementptr inbounds %struct.cli_opt_t, ptr %1, i64 0, i32 7
  %50 = load i32, ptr %49, align 8, !tbaa !108
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %79, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 47
  %54 = load i32, ptr %53, align 8, !tbaa !58
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 54
  store i32 1, ptr %57, align 4, !tbaa !109
  %58 = sext i32 %50 to i64
  %59 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 49
  %60 = load i32, ptr %59, align 8, !tbaa !90
  store i32 %60, ptr %10, align 4, !tbaa !91
  %61 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 48
  %62 = load i32, ptr %61, align 4, !tbaa !110
  %63 = uitofp i32 %62 to float
  %64 = getelementptr inbounds [7 x %struct.cli_pulldown_t], ptr @pulldown_values, i64 0, i64 %58, i32 2
  %65 = load float, ptr %64, align 4, !tbaa !111
  %66 = fmul float %65, %63
  %67 = fpext float %66 to double
  %68 = tail call double @fmod(double noundef %67, double noundef 1.000000e+00) #27
  %69 = fcmp une double %68, 0.000000e+00
  br i1 %69, label %70, label %73

70:                                               ; preds = %56
  %71 = load ptr, ptr @stderr, align 8, !tbaa !37
  %72 = tail call i64 @fwrite(ptr nonnull @.str.372, i64 56, i64 1, ptr %71) #31
  br label %484

73:                                               ; preds = %56
  %74 = getelementptr inbounds [7 x %struct.cli_pulldown_t], ptr @pulldown_values, i64 0, i64 %58
  %75 = load i32, ptr %61, align 4, !tbaa !110
  %76 = uitofp i32 %75 to float
  %77 = fmul float %65, %76
  %78 = fptoui float %77 to i32
  store i32 %78, ptr %7, align 8, !tbaa !94
  br label %79

79:                                               ; preds = %73, %52, %45
  %80 = phi ptr [ null, %52 ], [ %74, %73 ], [ null, %45 ]
  %81 = tail call ptr @x264_encoder_open_96(ptr noundef nonnull %0) #27
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load ptr, ptr @stderr, align 8, !tbaa !37
  %85 = tail call i64 @fwrite(ptr nonnull @.str.373, i64 39, i64 1, ptr %84) #31
  %86 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 6), align 8, !tbaa !113
  %87 = load ptr, ptr %23, align 8, !tbaa !77
  %88 = tail call i32 %86(ptr noundef %87) #27
  br label %484

89:                                               ; preds = %79
  tail call void @x264_encoder_parameters(ptr noundef nonnull %81, ptr noundef nonnull %0) #27
  %90 = load i32, ptr %7, align 8, !tbaa !94
  %91 = udiv i32 %90, %15
  %92 = load ptr, ptr getelementptr inbounds (%struct.cli_output_t, ptr @output, i64 0, i32 1), align 8, !tbaa !114
  %93 = getelementptr inbounds %struct.cli_opt_t, ptr %1, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !115
  %95 = tail call i32 %92(ptr noundef %94, ptr noundef nonnull %0) #27
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %89
  %98 = load ptr, ptr @stderr, align 8, !tbaa !37
  %99 = tail call i64 @fwrite(ptr nonnull @.str.374, i64 38, i64 1, ptr %98) #31
  %100 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 6), align 8, !tbaa !113
  %101 = load ptr, ptr %23, align 8, !tbaa !77
  %102 = tail call i32 %100(ptr noundef %101) #27
  %103 = load ptr, ptr getelementptr inbounds (%struct.cli_output_t, ptr @output, i64 0, i32 4), align 8, !tbaa !116
  %104 = load ptr, ptr %93, align 8, !tbaa !115
  %105 = tail call i32 %103(ptr noundef %104, i64 noundef -1, i64 noundef -1) #27
  br label %484

106:                                              ; preds = %89
  %107 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 2), align 8, !tbaa !117
  %108 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 7
  %109 = load i32, ptr %108, align 4, !tbaa !69
  %110 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  %111 = load i32, ptr %110, align 4, !tbaa !88
  %112 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  %113 = load i32, ptr %112, align 8, !tbaa !87
  %114 = call i32 %107(ptr noundef nonnull %3, i32 noundef %109, i32 noundef %111, i32 noundef %113) #27
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %106
  %117 = load ptr, ptr @stderr, align 8, !tbaa !37
  %118 = call i64 @fwrite(ptr nonnull @.str.375, i64 28, i64 1, ptr %117) #31
  br label %484

119:                                              ; preds = %106
  %120 = call i64 @x264_mdate() #27
  %121 = load i32, ptr %7, align 8, !tbaa !94
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 49
  %124 = load i32, ptr %123, align 8, !tbaa !90
  %125 = zext i32 %124 to i64
  %126 = mul nuw nsw i64 %125, %122
  %127 = load i32, ptr %10, align 4, !tbaa !91
  %128 = zext i32 %127 to i64
  %129 = udiv i64 %126, %128
  %130 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 48
  %131 = load i32, ptr %130, align 4, !tbaa !110
  %132 = zext i32 %131 to i64
  %133 = udiv i64 %129, %132
  %134 = icmp ult i64 %129, %132
  br i1 %134, label %135, label %138

135:                                              ; preds = %119
  %136 = load ptr, ptr @stderr, align 8, !tbaa !37
  %137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %136, ptr noundef nonnull @.str.376, i64 noundef %133) #30
  br label %484

138:                                              ; preds = %119
  %139 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 44
  %140 = load i32, ptr %139, align 4, !tbaa !118
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  %143 = call i32 @x264_encoder_headers(ptr noundef nonnull %81, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load ptr, ptr @stderr, align 8, !tbaa !37
  %147 = call i64 @fwrite(ptr nonnull @.str.377, i64 42, i64 1, ptr %146) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  br label %484

148:                                              ; preds = %142
  %149 = load ptr, ptr getelementptr inbounds (%struct.cli_output_t, ptr @output, i64 0, i32 2), align 8, !tbaa !119
  %150 = load ptr, ptr %93, align 8, !tbaa !115
  %151 = load ptr, ptr %5, align 8, !tbaa !37
  %152 = call i32 %149(ptr noundef %150, ptr noundef %151) #27
  %153 = zext nneg i32 %152 to i64
  %154 = icmp sgt i32 %152, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  br i1 %154, label %155, label %484

155:                                              ; preds = %148, %138
  %156 = phi i64 [ 0, %138 ], [ %153, %148 ]
  %157 = getelementptr inbounds %struct.cli_opt_t, ptr %1, i64 0, i32 5
  %158 = load ptr, ptr %157, align 8, !tbaa !59
  %159 = icmp eq ptr %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %155
  %161 = call i64 @fwrite(ptr nonnull @.str.378, i64 21, i64 1, ptr nonnull %158)
  br label %162

162:                                              ; preds = %160, %155
  %163 = load i1, ptr @b_ctrl_c, align 4
  %164 = xor i1 %163, true
  %165 = icmp sgt i32 %47, 0
  %166 = or i1 %46, %165
  %167 = and i1 %166, %164
  br i1 %167, label %168, label %328

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 47
  %170 = getelementptr inbounds %struct.x264_picture_t, ptr %3, i64 0, i32 4
  %171 = getelementptr inbounds %struct.x264_picture_t, ptr %3, i64 0, i32 2
  %172 = getelementptr inbounds %struct.cli_opt_t, ptr %1, i64 0, i32 6
  %173 = sext i32 %91 to i64
  %174 = getelementptr inbounds %struct.cli_opt_t, ptr %1, i64 0, i32 4
  %175 = getelementptr inbounds %struct.x264_picture_t, ptr %3, i64 0, i32 1
  %176 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 3), align 8, !tbaa !120
  %177 = load ptr, ptr %23, align 8, !tbaa !77
  %178 = load i32, ptr %26, align 4, !tbaa !54
  %179 = call i32 %176(ptr noundef nonnull %3, ptr noundef %177, i32 noundef %178) #27
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %189, label %318

181:                                              ; preds = %312
  %182 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 3), align 8, !tbaa !120
  %183 = load ptr, ptr %23, align 8, !tbaa !77
  %184 = load i32, ptr %26, align 4, !tbaa !54
  %185 = trunc i64 %295 to i32
  %186 = add nsw i32 %184, %185
  %187 = call i32 %182(ptr noundef nonnull %3, ptr noundef %183, i32 noundef %186) #27
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %318

189:                                              ; preds = %168, %181
  %190 = phi i32 [ %185, %181 ], [ 0, %168 ]
  %191 = phi i64 [ %284, %181 ], [ %156, %168 ]
  %192 = phi i32 [ %292, %181 ], [ 0, %168 ]
  %193 = phi i64 [ %294, %181 ], [ 0, %168 ]
  %194 = phi i32 [ %256, %181 ], [ 0, %168 ]
  %195 = phi i64 [ %255, %181 ], [ -1, %168 ]
  %196 = phi double [ %229, %181 ], [ 0.000000e+00, %168 ]
  %197 = phi i64 [ %295, %181 ], [ 0, %168 ]
  %198 = load i32, ptr %169, align 8, !tbaa !58
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %189
  %201 = load i64, ptr %170, align 8, !tbaa !121
  br label %219

202:                                              ; preds = %189
  store i64 %197, ptr %170, align 8, !tbaa !121
  %203 = load i32, ptr %49, align 8, !tbaa !108
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %219, label %205

205:                                              ; preds = %202
  %206 = load i32, ptr %80, align 4, !tbaa !125
  %207 = srem i32 %190, %206
  %208 = zext nneg i32 %207 to i64
  %209 = getelementptr inbounds %struct.cli_pulldown_t, ptr %80, i64 0, i32 1, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !126
  %211 = zext i8 %210 to i32
  store i32 %211, ptr %171, align 8, !tbaa !127
  %212 = fadd double %196, 5.000000e-01
  %213 = fptosi double %212 to i64
  store i64 %213, ptr %170, align 8, !tbaa !121
  %214 = zext i8 %210 to i64
  %215 = getelementptr inbounds [10 x float], ptr @pulldown_frame_duration, i64 0, i64 %214
  %216 = load float, ptr %215, align 4, !tbaa !128
  %217 = fpext float %216 to double
  %218 = fadd double %196, %217
  br label %227

219:                                              ; preds = %200, %202
  %220 = phi i64 [ %201, %200 ], [ %197, %202 ]
  %221 = load double, ptr %172, align 8, !tbaa !95
  %222 = fcmp une double %221, 0.000000e+00
  br i1 %222, label %223, label %227

223:                                              ; preds = %219
  %224 = sitofp i64 %220 to double
  %225 = call double @llvm.fmuladd.f64(double %224, double %221, double 5.000000e-01)
  %226 = fptosi double %225 to i64
  store i64 %226, ptr %170, align 8, !tbaa !121
  br label %227

227:                                              ; preds = %219, %223, %205
  %228 = phi i64 [ %226, %223 ], [ %220, %219 ], [ %213, %205 ]
  %229 = phi double [ %196, %223 ], [ %196, %219 ], [ %218, %205 ]
  %230 = mul nsw i64 %228, %173
  %231 = icmp sgt i64 %228, %195
  br i1 %231, label %254, label %232

232:                                              ; preds = %227
  %233 = load i32, ptr %16, align 8, !tbaa !57
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %235, label %250

235:                                              ; preds = %232
  %236 = icmp ugt i32 %233, 2
  %237 = icmp slt i32 %194, 3
  %238 = select i1 %236, i1 true, i1 %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %235
  %240 = load ptr, ptr @stderr, align 8, !tbaa !37
  %241 = mul nsw i64 %195, %173
  %242 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %240, ptr noundef nonnull @.str.379, i32 noundef %190, i64 noundef %230, i64 noundef %241) #30
  br label %248

243:                                              ; preds = %235
  %244 = icmp eq i32 %194, 3
  br i1 %244, label %245, label %248

245:                                              ; preds = %243
  %246 = load ptr, ptr @stderr, align 8, !tbaa !37
  %247 = call i64 @fwrite(ptr nonnull @.str.380, i64 77, i64 1, ptr %246) #31
  br label %248

248:                                              ; preds = %243, %245, %239
  %249 = add nsw i32 %194, 1
  br label %250

250:                                              ; preds = %248, %232
  %251 = phi i32 [ %249, %248 ], [ %194, %232 ]
  %252 = add nsw i64 %195, %133
  store i64 %252, ptr %170, align 8, !tbaa !121
  %253 = mul nsw i64 %252, %173
  br label %254

254:                                              ; preds = %250, %227
  %255 = phi i64 [ %252, %250 ], [ %228, %227 ]
  %256 = phi i32 [ %251, %250 ], [ %194, %227 ]
  %257 = phi i64 [ %253, %250 ], [ %230, %227 ]
  %258 = load ptr, ptr %157, align 8, !tbaa !59
  %259 = icmp eq ptr %258, null
  br i1 %259, label %270, label %260

260:                                              ; preds = %254
  %261 = sitofp i64 %257 to double
  %262 = load i32, ptr %10, align 4, !tbaa !91
  %263 = uitofp i32 %262 to double
  %264 = load i32, ptr %7, align 8, !tbaa !94
  %265 = uitofp i32 %264 to double
  %266 = fdiv double %263, %265
  %267 = fmul double %266, %261
  %268 = fmul double %267, 1.000000e+03
  %269 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %258, ptr noundef nonnull @.str.381, double noundef %268) #26
  br label %270

270:                                              ; preds = %260, %254
  %271 = load ptr, ptr %174, align 8, !tbaa !56
  %272 = icmp eq ptr %271, null
  br i1 %272, label %276, label %273

273:                                              ; preds = %270
  %274 = load i32, ptr %26, align 4, !tbaa !54
  %275 = add nsw i32 %274, %190
  call fastcc void @parse_qpfile(ptr noundef nonnull %1, ptr noundef nonnull %3, i32 noundef %275) #26
  br label %277

276:                                              ; preds = %270
  store i32 0, ptr %3, align 8, !tbaa !129
  store i32 0, ptr %175, align 4, !tbaa !130
  br label %277

277:                                              ; preds = %276, %273
  %278 = load i64, ptr %4, align 8, !tbaa !92
  %279 = load ptr, ptr %93, align 8, !tbaa !115
  %280 = call fastcc i32 @Encode_frame(ptr noundef nonnull %81, ptr noundef %279, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %484, label %282

282:                                              ; preds = %277
  %283 = zext nneg i32 %280 to i64
  %284 = add nuw nsw i64 %191, %283
  %285 = icmp eq i32 %280, 0
  br i1 %285, label %291, label %286

286:                                              ; preds = %282
  %287 = add nsw i32 %192, 1
  %288 = icmp eq i32 %192, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %286
  %290 = load i64, ptr %4, align 8, !tbaa !92
  br label %291

291:                                              ; preds = %286, %289, %282
  %292 = phi i32 [ 1, %289 ], [ %287, %286 ], [ %192, %282 ]
  %293 = phi i64 [ %290, %289 ], [ %278, %286 ], [ %278, %282 ]
  %294 = phi i64 [ %290, %289 ], [ %193, %286 ], [ %193, %282 ]
  %295 = add nuw i64 %197, 1
  %296 = trunc i64 %295 to i32
  %297 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 4), align 8, !tbaa !131
  %298 = icmp eq ptr %297, null
  br i1 %298, label %303, label %299

299:                                              ; preds = %291
  %300 = load ptr, ptr %23, align 8, !tbaa !77
  %301 = call i32 %297(ptr noundef nonnull %3, ptr noundef %300) #27
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %318

303:                                              ; preds = %299, %291
  %304 = load i32, ptr %1, align 8, !tbaa !41
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %312, label %306

306:                                              ; preds = %303
  %307 = srem i32 %292, %48
  %308 = icmp eq i32 %307, 0
  %309 = icmp ne i32 %292, 0
  %310 = and i1 %309, %308
  br i1 %310, label %311, label %312

311:                                              ; preds = %306
  call fastcc void @Print_status() #26
  br label %312

312:                                              ; preds = %303, %306, %311
  %313 = load i1, ptr @b_ctrl_c, align 4
  %314 = xor i1 %313, true
  %315 = icmp sgt i32 %47, %296
  %316 = or i1 %46, %315
  %317 = select i1 %314, i1 %316, i1 false
  br i1 %317, label %181, label %318

318:                                              ; preds = %181, %312, %299, %168
  %319 = phi i64 [ %156, %168 ], [ %284, %299 ], [ %284, %312 ], [ %284, %181 ]
  %320 = phi i32 [ 0, %168 ], [ %292, %299 ], [ %292, %312 ], [ %292, %181 ]
  %321 = phi i64 [ 0, %168 ], [ %293, %299 ], [ %293, %312 ], [ %293, %181 ]
  %322 = phi i64 [ 0, %168 ], [ %294, %299 ], [ %294, %312 ], [ %294, %181 ]
  %323 = phi i32 [ 0, %168 ], [ %256, %299 ], [ %256, %312 ], [ %256, %181 ]
  %324 = phi i64 [ -1, %168 ], [ %255, %299 ], [ %255, %312 ], [ %255, %181 ]
  %325 = phi i64 [ -1, %168 ], [ %195, %299 ], [ %195, %312 ], [ %195, %181 ]
  %326 = phi i32 [ 0, %168 ], [ %185, %181 ], [ %296, %312 ], [ %296, %299 ]
  %327 = load i1, ptr @b_ctrl_c, align 4
  br i1 %327, label %374, label %329

328:                                              ; preds = %162
  br i1 %163, label %396, label %329

329:                                              ; preds = %318, %328
  %330 = phi i32 [ %326, %318 ], [ 0, %328 ]
  %331 = phi i64 [ %325, %318 ], [ -1, %328 ]
  %332 = phi i64 [ %324, %318 ], [ -1, %328 ]
  %333 = phi i32 [ %323, %318 ], [ 0, %328 ]
  %334 = phi i64 [ %322, %318 ], [ 0, %328 ]
  %335 = phi i64 [ %321, %318 ], [ 0, %328 ]
  %336 = phi i32 [ %320, %318 ], [ 0, %328 ]
  %337 = phi i64 [ %319, %318 ], [ %156, %328 ]
  %338 = call i32 @x264_encoder_delayed_frames(ptr noundef nonnull %81) #27
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %374, label %343

340:                                              ; preds = %372
  %341 = call i32 @x264_encoder_delayed_frames(ptr noundef nonnull %81) #27
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %374, label %343, !llvm.loop !132

343:                                              ; preds = %329, %340
  %344 = phi i64 [ %353, %340 ], [ %337, %329 ]
  %345 = phi i32 [ %361, %340 ], [ %336, %329 ]
  %346 = phi i64 [ %363, %340 ], [ %334, %329 ]
  %347 = load i64, ptr %4, align 8, !tbaa !92
  %348 = load ptr, ptr %93, align 8, !tbaa !115
  %349 = call fastcc i32 @Encode_frame(ptr noundef nonnull %81, ptr noundef %348, ptr noundef null, ptr noundef nonnull %4) #26
  %350 = icmp slt i32 %349, 0
  br i1 %350, label %484, label %351

351:                                              ; preds = %343
  %352 = zext nneg i32 %349 to i64
  %353 = add nsw i64 %344, %352
  %354 = icmp eq i32 %349, 0
  br i1 %354, label %360, label %355

355:                                              ; preds = %351
  %356 = add nsw i32 %345, 1
  %357 = icmp eq i32 %345, 0
  br i1 %357, label %358, label %360

358:                                              ; preds = %355
  %359 = load i64, ptr %4, align 8, !tbaa !92
  br label %360

360:                                              ; preds = %355, %358, %351
  %361 = phi i32 [ 1, %358 ], [ %356, %355 ], [ %345, %351 ]
  %362 = phi i64 [ %359, %358 ], [ %347, %355 ], [ %347, %351 ]
  %363 = phi i64 [ %359, %358 ], [ %346, %355 ], [ %346, %351 ]
  %364 = load i32, ptr %1, align 8, !tbaa !41
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %372, label %366

366:                                              ; preds = %360
  %367 = srem i32 %361, %48
  %368 = icmp eq i32 %367, 0
  %369 = icmp ne i32 %361, 0
  %370 = and i1 %369, %368
  br i1 %370, label %371, label %372

371:                                              ; preds = %366
  call fastcc void @Print_status() #26
  br label %372

372:                                              ; preds = %371, %366, %360
  %373 = load i1, ptr @b_ctrl_c, align 4
  br i1 %373, label %374, label %340, !llvm.loop !132

374:                                              ; preds = %372, %340, %329, %318
  %375 = phi i32 [ %326, %318 ], [ %330, %329 ], [ %330, %340 ], [ %330, %372 ]
  %376 = phi i64 [ %325, %318 ], [ %331, %329 ], [ %331, %340 ], [ %331, %372 ]
  %377 = phi i64 [ %324, %318 ], [ %332, %329 ], [ %332, %340 ], [ %332, %372 ]
  %378 = phi i32 [ %323, %318 ], [ %333, %329 ], [ %333, %340 ], [ %333, %372 ]
  %379 = phi i64 [ %319, %318 ], [ %337, %329 ], [ %353, %340 ], [ %353, %372 ]
  %380 = phi i32 [ %320, %318 ], [ %336, %329 ], [ %361, %340 ], [ %361, %372 ]
  %381 = phi i64 [ %321, %318 ], [ %335, %329 ], [ %362, %340 ], [ %362, %372 ]
  %382 = phi i64 [ %322, %318 ], [ %334, %329 ], [ %363, %340 ], [ %363, %372 ]
  %383 = icmp sgt i32 %378, 2
  br i1 %383, label %384, label %391

384:                                              ; preds = %374
  %385 = load i32, ptr %16, align 8, !tbaa !57
  %386 = icmp slt i32 %385, 3
  br i1 %386, label %387, label %391

387:                                              ; preds = %384
  %388 = load ptr, ptr @stderr, align 8, !tbaa !37
  %389 = add nsw i32 %378, -3
  %390 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %388, ptr noundef nonnull @.str.382, i32 noundef %389) #30
  br label %391

391:                                              ; preds = %387, %384, %374
  %392 = icmp eq i32 %380, 1
  br i1 %392, label %393, label %396

393:                                              ; preds = %391
  %394 = load i32, ptr %123, align 8, !tbaa !90
  %395 = uitofp i32 %394 to double
  br label %421

396:                                              ; preds = %328, %391
  %397 = phi i32 [ %375, %391 ], [ 0, %328 ]
  %398 = phi i64 [ %376, %391 ], [ -1, %328 ]
  %399 = phi i64 [ %377, %391 ], [ -1, %328 ]
  %400 = phi i64 [ %379, %391 ], [ %156, %328 ]
  %401 = phi i32 [ %380, %391 ], [ 0, %328 ]
  %402 = phi i64 [ %381, %391 ], [ 0, %328 ]
  %403 = phi i64 [ %382, %391 ], [ 0, %328 ]
  %404 = load i1, ptr @b_ctrl_c, align 4
  br i1 %404, label %405, label %414

405:                                              ; preds = %396
  %406 = load i64, ptr %4, align 8, !tbaa !92
  %407 = shl nsw i64 %406, 1
  %408 = add i64 %403, %402
  %409 = sub i64 %407, %408
  %410 = sitofp i64 %409 to double
  %411 = load i32, ptr %10, align 4, !tbaa !91
  %412 = uitofp i32 %411 to double
  %413 = fmul double %412, %410
  br label %421

414:                                              ; preds = %396
  %415 = shl nsw i64 %399, 1
  %416 = sub nsw i64 %415, %398
  %417 = sitofp i64 %416 to double
  %418 = load i32, ptr %10, align 4, !tbaa !91
  %419 = uitofp i32 %418 to double
  %420 = fmul double %417, %419
  br label %421

421:                                              ; preds = %405, %414, %393
  %422 = phi ptr [ %7, %405 ], [ %7, %414 ], [ %130, %393 ]
  %423 = phi double [ %413, %405 ], [ %420, %414 ], [ %395, %393 ]
  %424 = phi i32 [ %397, %405 ], [ %397, %414 ], [ %375, %393 ]
  %425 = phi i64 [ %398, %405 ], [ %398, %414 ], [ %376, %393 ]
  %426 = phi i64 [ %399, %405 ], [ %399, %414 ], [ %377, %393 ]
  %427 = phi i64 [ %400, %405 ], [ %400, %414 ], [ %379, %393 ]
  %428 = phi i32 [ %401, %405 ], [ %401, %414 ], [ 1, %393 ]
  %429 = load i32, ptr %422, align 4, !tbaa !45
  %430 = uitofp i32 %429 to double
  %431 = fdiv double %423, %430
  %432 = load i32, ptr %49, align 8, !tbaa !108
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %438, label %434

434:                                              ; preds = %421
  %435 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 47
  %436 = load i32, ptr %435, align 8, !tbaa !58
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %441, label %438

438:                                              ; preds = %434, %421
  %439 = sitofp i32 %91 to double
  %440 = fmul double %431, %439
  br label %441

441:                                              ; preds = %438, %434
  %442 = phi double [ %440, %438 ], [ %431, %434 ]
  %443 = call i64 @x264_mdate() #27
  %444 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 5), align 8, !tbaa !133
  call void %444(ptr noundef nonnull %3) #27
  %445 = load i32, ptr %1, align 8, !tbaa !41
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %450, label %447

447:                                              ; preds = %441
  %448 = load ptr, ptr @stderr, align 8, !tbaa !37
  %449 = call i64 @fwrite(ptr nonnull @.str.383, i64 80, i64 1, ptr %448) #31
  br label %450

450:                                              ; preds = %447, %441
  call void @x264_encoder_close(ptr noundef nonnull %81) #27
  %451 = load ptr, ptr @stderr, align 8, !tbaa !37
  %452 = call i32 @fputc(i32 10, ptr %451)
  %453 = load i1, ptr @b_ctrl_c, align 4
  br i1 %453, label %454, label %459

454:                                              ; preds = %450
  %455 = load ptr, ptr @stderr, align 8, !tbaa !37
  %456 = load i32, ptr %26, align 4, !tbaa !54
  %457 = add nsw i32 %456, %424
  %458 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %455, ptr noundef nonnull @.str.384, i32 noundef %457, i32 noundef %428) #30
  br label %459

459:                                              ; preds = %454, %450
  %460 = load ptr, ptr %157, align 8, !tbaa !59
  %461 = icmp eq ptr %460, null
  br i1 %461, label %464, label %462

462:                                              ; preds = %459
  %463 = call i32 @fclose(ptr noundef nonnull %460) #26
  store ptr null, ptr %157, align 8, !tbaa !59
  br label %464

464:                                              ; preds = %462, %459
  %465 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 6), align 8, !tbaa !113
  %466 = load ptr, ptr %23, align 8, !tbaa !77
  %467 = call i32 %465(ptr noundef %466) #27
  %468 = load ptr, ptr getelementptr inbounds (%struct.cli_output_t, ptr @output, i64 0, i32 4), align 8, !tbaa !116
  %469 = load ptr, ptr %93, align 8, !tbaa !115
  %470 = call i32 %468(ptr noundef %469, i64 noundef %426, i64 noundef %425) #27
  %471 = icmp sgt i32 %428, 0
  br i1 %471, label %472, label %484

472:                                              ; preds = %464
  %473 = sitofp i32 %428 to double
  %474 = fmul double %473, 1.000000e+06
  %475 = sub nsw i64 %443, %120
  %476 = sitofp i64 %475 to double
  %477 = fdiv double %474, %476
  %478 = load ptr, ptr @stderr, align 8, !tbaa !37
  %479 = sitofp i64 %427 to double
  %480 = fmul double %479, 8.000000e+00
  %481 = fmul double %442, 1.000000e+03
  %482 = fdiv double %480, %481
  %483 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %478, ptr noundef nonnull @.str.385, i32 noundef %428, double noundef %477, double noundef %482) #30
  br label %484

484:                                              ; preds = %277, %343, %145, %464, %472, %148, %135, %116, %97, %83, %70
  %485 = phi i32 [ -1, %83 ], [ -1, %97 ], [ -1, %116 ], [ -1, %135 ], [ -1, %148 ], [ -1, %70 ], [ 0, %472 ], [ 0, %464 ], [ -1, %145 ], [ -1, %343 ], [ -1, %277 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #25
  ret i32 %485
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @x264_param_default(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @x264_param_default_preset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @Help(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !PGOFuncName !134 {
  %3 = alloca [50 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %3) #25
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.168, i32 noundef 96, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.170) #26
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.390)
  %6 = tail call i32 @putchar(i32 10)
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.391)
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.392)
  %9 = tail call i32 @putchar(i32 10)
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.393)
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.394)
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.395)
  %13 = tail call i32 @putchar(i32 10)
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.396)
  %15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.397)
  %16 = tail call i32 @putchar(i32 10)
  %17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.398)
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.399)
  %19 = tail call i32 @putchar(i32 10)
  %20 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.400)
  %21 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.401)
  %22 = tail call i32 @putchar(i32 10)
  %23 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.402)
  %24 = tail call i32 @putchar(i32 10)
  %25 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.403)
  %26 = icmp eq i32 %1, 2
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.405)
  %29 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.406)
  %30 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.408)
  %31 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.409)
  %32 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.411)
  br label %40

33:                                               ; preds = %2
  %34 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.404)
  %35 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.406)
  %36 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.407)
  %37 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.409)
  %38 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.410)
  %39 = icmp sgt i32 %1, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33, %27
  %41 = phi ptr [ @str.413, %27 ], [ @str.412, %33 ]
  %42 = tail call i32 @puts(ptr nonnull dereferenceable(1) %41)
  br label %43

43:                                               ; preds = %40, %33
  %44 = tail call i32 @putchar(i32 10)
  %45 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.414)
  %46 = tail call i32 @putchar(i32 10)
  %47 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 13
  %48 = load i32, ptr %47, align 4, !tbaa !135
  %49 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.197, i32 noundef %48) #26
  br i1 %26, label %50, label %57

50:                                               ; preds = %43
  %51 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.415)
  %52 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.416)
  %53 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 15
  %54 = load i32, ptr %53, align 4, !tbaa !136
  %55 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.200, i32 noundef %54) #26
  %56 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.417)
  br label %59

57:                                               ; preds = %43
  %58 = icmp sgt i32 %1, 0
  br i1 %58, label %59, label %96

59:                                               ; preds = %57, %50
  %60 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  %61 = load i32, ptr %60, align 4, !tbaa !137
  %62 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.202, i32 noundef %61) #26
  %63 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 18
  %64 = load i32, ptr %63, align 8, !tbaa !138
  %65 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.203, i32 noundef %64) #26
  br i1 %26, label %66, label %70

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 19
  %68 = load i32, ptr %67, align 4, !tbaa !139
  %69 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.204, i32 noundef %68) #26
  br label %70

70:                                               ; preds = %59, %66
  %71 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 20
  %72 = load i32, ptr %71, align 8, !tbaa !140
  %73 = tail call fastcc ptr @strtable_lookup(ptr noundef nonnull @x264_b_pyramid_names, i32 noundef %72) #26
  %74 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.205, ptr noundef %73) #26
  %75 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.418)
  %76 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  %77 = load i32, ptr %76, align 8, !tbaa !103
  %78 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.207, i32 noundef %77) #26
  %79 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.419)
  %80 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 22
  %81 = load i32, ptr %80, align 8, !tbaa !141
  %82 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 23
  %83 = load i32, ptr %82, align 4, !tbaa !142
  %84 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.209, i32 noundef %81, i32 noundef %83) #26
  br i1 %26, label %85, label %90

85:                                               ; preds = %70
  %86 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.421)
  %87 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.422)
  %88 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.423)
  %89 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.424)
  br label %90

90:                                               ; preds = %70, %85
  %91 = phi ptr [ @str.425, %85 ], [ @str.420, %70 ]
  %92 = phi ptr [ @str.426, %85 ], [ @str.424, %70 ]
  %93 = phi ptr [ @str.427, %85 ], [ @str.425, %70 ]
  %94 = phi ptr [ @str.428, %85 ], [ @str.427, %70 ]
  %95 = tail call i32 @puts(ptr nonnull dereferenceable(1) %91)
  br label %96

96:                                               ; preds = %90, %57
  %97 = phi ptr [ @str.424, %57 ], [ %92, %90 ]
  %98 = phi ptr [ @str.425, %57 ], [ %93, %90 ]
  %99 = phi ptr [ @str.427, %57 ], [ %94, %90 ]
  %100 = phi i1 [ false, %57 ], [ true, %90 ]
  %101 = tail call i32 @puts(ptr nonnull dereferenceable(1) %97)
  %102 = tail call i32 @puts(ptr nonnull dereferenceable(1) %98)
  %103 = tail call i32 @puts(ptr nonnull dereferenceable(1) %99)
  %104 = tail call i32 @putchar(i32 10)
  %105 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.429)
  %106 = tail call i32 @putchar(i32 10)
  br i1 %100, label %107, label %117

107:                                              ; preds = %96
  %108 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.430)
  %109 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.431)
  %110 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 6
  %111 = load float, ptr %110, align 8, !tbaa !143
  %112 = fpext float %111 to double
  %113 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.222, double noundef %112) #26
  %114 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  %115 = load i32, ptr %114, align 4, !tbaa !144
  %116 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.223, i32 noundef %115) #26
  br label %123

117:                                              ; preds = %96
  %118 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.431)
  %119 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 6
  %120 = load float, ptr %119, align 8, !tbaa !143
  %121 = fpext float %120 to double
  %122 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.222, double noundef %121) #26
  br label %123

123:                                              ; preds = %117, %107
  %124 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 9
  %125 = load i32, ptr %124, align 4, !tbaa !145
  %126 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.224, i32 noundef %125) #26
  %127 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 10
  %128 = load i32, ptr %127, align 8, !tbaa !146
  %129 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.225, i32 noundef %128) #26
  br i1 %26, label %130, label %163

130:                                              ; preds = %123
  %131 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 11
  %132 = load float, ptr %131, align 4, !tbaa !147
  %133 = fpext float %132 to double
  %134 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.226, double noundef %133) #26
  %135 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.432)
  %136 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 2
  %137 = load i32, ptr %136, align 8, !tbaa !148
  %138 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.228, i32 noundef %137) #26
  %139 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 3
  %140 = load i32, ptr %139, align 4, !tbaa !149
  %141 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.229, i32 noundef %140) #26
  %142 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 4
  %143 = load i32, ptr %142, align 8, !tbaa !150
  %144 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.230, i32 noundef %143) #26
  %145 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 8
  %146 = load float, ptr %145, align 8, !tbaa !151
  %147 = fpext float %146 to double
  %148 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.231, double noundef %147) #26
  %149 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 12
  %150 = load float, ptr %149, align 8, !tbaa !152
  %151 = fpext float %150 to double
  %152 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.232, double noundef %151) #26
  %153 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 13
  %154 = load float, ptr %153, align 4, !tbaa !153
  %155 = fpext float %154 to double
  %156 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.233, double noundef %155) #26
  %157 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 6
  %158 = load i32, ptr %157, align 8, !tbaa !154
  %159 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, i32 noundef %158) #26
  %160 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 14
  %161 = load i32, ptr %160, align 8, !tbaa !155
  %162 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.235, i32 noundef %161) #26
  br i1 %100, label %170, label %177

163:                                              ; preds = %123
  br i1 %100, label %170, label %164

164:                                              ; preds = %163
  %165 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.433)
  %166 = tail call i32 @putchar(i32 10)
  %167 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.467)
  %168 = tail call i32 @putchar(i32 10)
  %169 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.468)
  br label %353

170:                                              ; preds = %163, %130
  %171 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 15
  %172 = load float, ptr %171, align 4, !tbaa !156
  %173 = fpext float %172 to double
  %174 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.236, double noundef %173) #26
  %175 = tail call i32 @putchar(i32 10)
  %176 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.433)
  br i1 %26, label %184, label %180

177:                                              ; preds = %130
  %178 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.433)
  %179 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.434)
  br label %189

180:                                              ; preds = %170
  %181 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 19
  %182 = load ptr, ptr %181, align 8, !tbaa !157
  %183 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.239, ptr noundef %182) #26
  br label %206

184:                                              ; preds = %170
  %185 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.434)
  %186 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 19
  %187 = load ptr, ptr %186, align 8, !tbaa !157
  %188 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.239, ptr noundef %187) #26
  br label %189

189:                                              ; preds = %177, %184
  %190 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.435)
  %191 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 22
  %192 = load float, ptr %191, align 8, !tbaa !158
  %193 = fpext float %192 to double
  %194 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.241, double noundef %193) #26
  %195 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 24
  %196 = load float, ptr %195, align 8, !tbaa !159
  %197 = fpext float %196 to double
  %198 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.242, double noundef %197) #26
  %199 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 23
  %200 = load float, ptr %199, align 4, !tbaa !160
  %201 = fpext float %200 to double
  %202 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.243, double noundef %201) #26
  %203 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.436)
  %204 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.437)
  %205 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.438)
  br i1 %100, label %206, label %215

206:                                              ; preds = %180, %189
  %207 = tail call i32 @putchar(i32 10)
  %208 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.439)
  %209 = tail call i32 @putchar(i32 10)
  %210 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.440)
  %211 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  %212 = load i32, ptr %211, align 4, !tbaa !161
  %213 = tail call fastcc ptr @strtable_lookup(ptr noundef nonnull @x264_direct_pred_names, i32 noundef %212) #26
  %214 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.249, ptr noundef %213) #26
  br i1 %26, label %217, label %233

215:                                              ; preds = %189
  %216 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.441)
  br label %226

217:                                              ; preds = %206
  %218 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.441)
  %219 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  %220 = load i32, ptr %219, align 4, !tbaa !162
  %221 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.251, i32 noundef %220) #26
  %222 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  %223 = load i32, ptr %222, align 4, !tbaa !163
  %224 = tail call fastcc ptr @strtable_lookup(ptr noundef nonnull @x264_motion_est_names, i32 noundef %223) #26
  %225 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.252, ptr noundef %224) #26
  br label %226

226:                                              ; preds = %217, %215
  %227 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.443)
  %228 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 8
  %229 = load i32, ptr %228, align 8, !tbaa !164
  %230 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.255, i32 noundef %229) #26
  %231 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.444)
  %232 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.445)
  br i1 %100, label %247, label %242

233:                                              ; preds = %206
  %234 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  %235 = load i32, ptr %234, align 4, !tbaa !162
  %236 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.251, i32 noundef %235) #26
  %237 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  %238 = load i32, ptr %237, align 4, !tbaa !163
  %239 = tail call fastcc ptr @strtable_lookup(ptr noundef nonnull @x264_motion_est_names, i32 noundef %238) #26
  %240 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.252, ptr noundef %239) #26
  %241 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.442)
  br label %247

242:                                              ; preds = %226
  %243 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.447)
  %244 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.448)
  %245 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.449)
  %246 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.450)
  br label %268

247:                                              ; preds = %226, %233
  %248 = phi ptr [ @str.446, %233 ], [ @str.447, %226 ]
  %249 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  %250 = load i32, ptr %249, align 4, !tbaa !165
  %251 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.258, i32 noundef %250) #26
  %252 = tail call i32 @puts(ptr nonnull dereferenceable(1) %248)
  %253 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 18
  %254 = load float, ptr %253, align 8, !tbaa !166
  %255 = fpext float %254 to double
  %256 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 19
  %257 = load float, ptr %256, align 4, !tbaa !167
  %258 = fpext float %257 to double
  %259 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.261, double noundef %255, double noundef %258) #26
  br i1 %26, label %260, label %284

260:                                              ; preds = %247
  %261 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.448)
  %262 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.449)
  %263 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.450)
  %264 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.451)
  %265 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  %266 = load i32, ptr %265, align 8, !tbaa !168
  %267 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.266, i32 noundef %266) #26
  br label %268

268:                                              ; preds = %260, %242
  %269 = phi i1 [ true, %260 ], [ false, %242 ]
  %270 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.452)
  %271 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.453)
  br i1 %269, label %272, label %297

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 17
  %274 = load i32, ptr %273, align 4, !tbaa !169
  %275 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.269, i32 noundef %274) #26
  %276 = tail call i32 @putchar(i32 10)
  %277 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 21
  %278 = load i32, ptr %277, align 4, !tbaa !45
  %279 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.270, i32 noundef %278) #26
  %280 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 21, i64 1
  %281 = load i32, ptr %280, align 4, !tbaa !45
  %282 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.271, i32 noundef %281) #26
  %283 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.454)
  br label %305

284:                                              ; preds = %247
  %285 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.451)
  %286 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  %287 = load i32, ptr %286, align 8, !tbaa !168
  %288 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.266, i32 noundef %287) #26
  %289 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 17
  %290 = load i32, ptr %289, align 4, !tbaa !169
  %291 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.269, i32 noundef %290) #26
  %292 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.456)
  %293 = tail call i32 @putchar(i32 10)
  %294 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.467)
  %295 = tail call i32 @putchar(i32 10)
  %296 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.468)
  br label %360

297:                                              ; preds = %268
  %298 = tail call i32 @putchar(i32 10)
  %299 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 21
  %300 = load i32, ptr %299, align 4, !tbaa !45
  %301 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.270, i32 noundef %300) #26
  %302 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 21, i64 1
  %303 = load i32, ptr %302, align 4, !tbaa !45
  %304 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.271, i32 noundef %303) #26
  br label %305

305:                                              ; preds = %297, %272
  %306 = phi ptr [ @str.454, %297 ], [ @str.455, %272 ]
  %307 = phi ptr [ @str.455, %297 ], [ @str.456, %272 ]
  %308 = tail call i32 @puts(ptr nonnull dereferenceable(1) %306)
  %309 = tail call i32 @puts(ptr nonnull dereferenceable(1) %307)
  %310 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.457)
  %311 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.458)
  %312 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.459)
  %313 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.460)
  %314 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.461)
  %315 = tail call i32 @putchar(i32 10)
  %316 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.462)
  %317 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.463)
  %318 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.464)
  %319 = tail call i32 @putchar(i32 10)
  %320 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 2
  %321 = load i32, ptr %320, align 4, !tbaa !170
  %322 = tail call fastcc ptr @strtable_lookup(ptr noundef nonnull @x264_overscan_names, i32 noundef %321) #26
  %323 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.283, ptr noundef %322) #26
  %324 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 3
  %325 = load i32, ptr %324, align 4, !tbaa !171
  %326 = tail call fastcc ptr @strtable_lookup(ptr noundef nonnull @x264_vidformat_names, i32 noundef %325) #26
  %327 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.284, ptr noundef %326) #26
  %328 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 4
  %329 = load i32, ptr %328, align 4, !tbaa !172
  %330 = tail call fastcc ptr @strtable_lookup(ptr noundef nonnull @x264_fullrange_names, i32 noundef %329) #26
  %331 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.285, ptr noundef %330) #26
  %332 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 5
  %333 = load i32, ptr %332, align 4, !tbaa !173
  %334 = tail call fastcc ptr @strtable_lookup(ptr noundef nonnull @x264_colorprim_names, i32 noundef %333) #26
  %335 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.286, ptr noundef %334) #26
  %336 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 6
  %337 = load i32, ptr %336, align 4, !tbaa !174
  %338 = tail call fastcc ptr @strtable_lookup(ptr noundef nonnull @x264_transfer_names, i32 noundef %337) #26
  %339 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.287, ptr noundef %338) #26
  %340 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 7
  %341 = load i32, ptr %340, align 4, !tbaa !175
  %342 = tail call fastcc ptr @strtable_lookup(ptr noundef nonnull @x264_colmatrix_names, i32 noundef %341) #26
  %343 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.288, ptr noundef %342) #26
  %344 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 8
  %345 = load i32, ptr %344, align 4, !tbaa !176
  %346 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.289, i32 noundef %345) #26
  %347 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.465)
  %348 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.466)
  %349 = tail call i32 @putchar(i32 10)
  %350 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.467)
  %351 = tail call i32 @putchar(i32 10)
  %352 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.468)
  br i1 %269, label %360, label %353

353:                                              ; preds = %164, %305
  %354 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.470)
  %355 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.471)
  %356 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.472)
  %357 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.473)
  %358 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.474)
  %359 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.477)
  br label %378

360:                                              ; preds = %284, %305
  %361 = call fastcc ptr @stringify_names(ptr noundef nonnull %3, ptr noundef nonnull @muxer_names) #26
  %362 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.294, ptr noundef nonnull @.str.22, ptr noundef nonnull %3) #26
  %363 = call fastcc ptr @stringify_names(ptr noundef nonnull %3, ptr noundef nonnull @demuxer_names) #26
  %364 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.295, ptr noundef nonnull @.str.22, ptr noundef nonnull %3) #26
  %365 = call i32 @puts(ptr nonnull dereferenceable(1) @str.469)
  %366 = call i32 @puts(ptr nonnull dereferenceable(1) @str.470)
  %367 = call i32 @puts(ptr nonnull dereferenceable(1) @str.471)
  %368 = call i32 @puts(ptr nonnull dereferenceable(1) @str.472)
  %369 = call i32 @puts(ptr nonnull dereferenceable(1) @str.473)
  %370 = call i32 @puts(ptr nonnull dereferenceable(1) @str.474)
  %371 = call i32 @putchar(i32 10)
  %372 = call i32 @puts(ptr nonnull dereferenceable(1) @str.475)
  %373 = call i32 @puts(ptr nonnull dereferenceable(1) @str.476)
  %374 = call i32 @puts(ptr nonnull dereferenceable(1) @str.477)
  %375 = call i32 @puts(ptr nonnull dereferenceable(1) @str.478)
  %376 = call i32 @puts(ptr nonnull dereferenceable(1) @str.479)
  %377 = call i32 @puts(ptr nonnull dereferenceable(1) @str.480)
  br label %378

378:                                              ; preds = %353, %360
  br i1 %26, label %379, label %396

379:                                              ; preds = %378
  %380 = call i32 @puts(ptr nonnull dereferenceable(1) @str.481)
  %381 = call i32 @puts(ptr nonnull dereferenceable(1) @str.482)
  %382 = call i32 @puts(ptr nonnull dereferenceable(1) @str.483)
  %383 = call i32 @puts(ptr nonnull dereferenceable(1) @str.484)
  %384 = call i32 @puts(ptr nonnull dereferenceable(1) @str.485)
  %385 = call i32 @puts(ptr nonnull dereferenceable(1) @str.486)
  %386 = call i32 @puts(ptr nonnull dereferenceable(1) @str.487)
  %387 = call i32 @puts(ptr nonnull dereferenceable(1) @str.488)
  %388 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 46
  %389 = load i32, ptr %388, align 4, !tbaa !177
  %390 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.316, i32 noundef %389) #26
  %391 = call i32 @puts(ptr nonnull dereferenceable(1) @str.489)
  %392 = call i32 @puts(ptr nonnull dereferenceable(1) @str.490)
  %393 = call i32 @puts(ptr nonnull dereferenceable(1) @str.491)
  %394 = call i32 @puts(ptr nonnull dereferenceable(1) @str.492)
  %395 = call i32 @puts(ptr nonnull dereferenceable(1) @str.493)
  br label %396

396:                                              ; preds = %378, %379
  %397 = call i32 @putchar(i32 10)
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @parse_enum_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 !PGOFuncName !178 {
  %4 = load ptr, ptr %1, align 8, !tbaa !37
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %11

6:                                                ; preds = %11
  %7 = add nuw i64 %12, 1
  %8 = getelementptr inbounds ptr, ptr %1, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !37
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11, !llvm.loop !179

11:                                               ; preds = %3, %6
  %12 = phi i64 [ %7, %6 ], [ 0, %3 ]
  %13 = phi ptr [ %9, %6 ], [ %4, %3 ]
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %13) #28
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %6

16:                                               ; preds = %11
  store ptr %13, ptr %2, align 8, !tbaa !37
  br label %17

17:                                               ; preds = %6, %3, %16
  %18 = phi i32 [ 0, %16 ], [ -1, %3 ], [ -1, %6 ]
  ret i32 %18
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @parse_enum_value(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #11 !PGOFuncName !180 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.323) #28
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %14

5:                                                ; preds = %14
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %18) #28
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14, !llvm.loop !181

8:                                                ; preds = %5
  %9 = icmp eq ptr %18, null
  %10 = trunc i64 %16 to i32
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i32 [ %10, %8 ], [ 0, %2 ]
  %13 = phi i1 [ %9, %8 ], [ false, %2 ]
  store i32 %12, ptr %1, align 4, !tbaa !45
  br label %22

14:                                               ; preds = %2, %5
  %15 = phi i64 [ %16, %5 ], [ 0, %2 ]
  %16 = add nuw nsw i64 %15, 1
  %17 = getelementptr inbounds ptr, ptr @pulldown_names, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !37
  %19 = icmp eq i64 %16, 7
  br i1 %19, label %20, label %5, !llvm.loop !181

20:                                               ; preds = %14
  %21 = icmp eq ptr %18, null
  br label %22

22:                                               ; preds = %20, %11
  %23 = phi i1 [ %13, %11 ], [ %21, %20 ]
  %24 = sext i1 %23 to i32
  ret i32 %24
}

; Function Attrs: optsize
declare i32 @x264_param_parse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @x264_param_apply_fastfirstpass(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @x264_param_apply_profile(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @select_output(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 !PGOFuncName !182 {
  %4 = tail call fastcc ptr @get_filename_extension(ptr noundef %1) #26
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.363) #28
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.22) #28
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %3
  br label %11

11:                                               ; preds = %10, %7
  %12 = phi ptr [ %0, %10 ], [ %4, %7 ]
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(4) @.str.364) #28
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load ptr, ptr @stderr, align 8, !tbaa !37
  %17 = tail call i64 @fwrite(ptr nonnull @.str.365, i64 51, i64 1, ptr %16) #31
  br label %33

18:                                               ; preds = %11
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(4) @.str.26) #28
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @output, ptr noundef nonnull align 8 dereferenceable(40) @mkv_output, i64 40, i1 false), !tbaa.struct !183
  %22 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 45
  store i32 0, ptr %22, align 8, !tbaa !184
  %23 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 52
  store i32 0, ptr %23, align 4, !tbaa !185
  %24 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 44
  store i32 0, ptr %24, align 4, !tbaa !118
  br label %33

25:                                               ; preds = %18
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(4) @.str.27) #28
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @output, ptr noundef nonnull align 8 dereferenceable(40) @flv_output, i64 40, i1 false), !tbaa.struct !183
  %29 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 45
  store i32 0, ptr %29, align 8, !tbaa !184
  %30 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 52
  store i32 1, ptr %30, align 4, !tbaa !185
  %31 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 44
  store i32 0, ptr %31, align 4, !tbaa !118
  br label %33

32:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @output, ptr noundef nonnull align 8 dereferenceable(40) @raw_output, i64 40, i1 false), !tbaa.struct !183
  br label %33

33:                                               ; preds = %28, %32, %21, %15
  %34 = phi i32 [ -1, %15 ], [ 0, %21 ], [ 0, %32 ], [ 0, %28 ]
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @select_input(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !186 {
  %7 = tail call fastcc ptr @get_filename_extension(ptr noundef %2) #26
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(2) @.str.363) #28
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.22) #28
  %10 = icmp eq i32 %9, 0
  %11 = icmp eq i32 %8, 0
  %12 = select i1 %11, i1 %10, i1 false
  %13 = select i1 %12, ptr @.str.23, ptr %7
  br i1 %11, label %19, label %14

14:                                               ; preds = %6
  %15 = tail call noalias ptr @fopen(ptr noundef %2, ptr noundef nonnull @.str.366) #26
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @fclose(ptr noundef nonnull %15) #26
  br label %19

19:                                               ; preds = %14, %17, %6
  %20 = select i1 %10, ptr %13, ptr %0
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(4) @.str.367) #28
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(4) @.str.368) #28
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(4) @.str.369) #28
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26, %23, %19
  %30 = load ptr, ptr @stderr, align 8, !tbaa !37
  %31 = tail call i64 @fwrite(ptr nonnull @.str.370, i64 50, i64 1, ptr %30) #31
  br label %56

32:                                               ; preds = %26
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(4) @.str.24) #28
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @input, ptr noundef nonnull align 8 dereferenceable(56) @y4m_input, i64 56, i1 false), !tbaa.struct !86
  br label %53

36:                                               ; preds = %32
  %37 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(4) @.str.23) #28
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @input, ptr noundef nonnull align 8 dereferenceable(56) @yuv_input, i64 56, i1 false), !tbaa.struct !86
  br label %53

40:                                               ; preds = %36
  br i1 %10, label %41, label %46

41:                                               ; preds = %40
  %42 = load ptr, ptr @yuv_input, align 8, !tbaa !78
  %43 = tail call i32 %42(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #27
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @input, ptr noundef nonnull align 8 dereferenceable(56) @yuv_input, i64 56, i1 false), !tbaa.struct !86
  br label %46

46:                                               ; preds = %45, %41, %40
  %47 = phi ptr [ %13, %41 ], [ @.str.23, %45 ], [ %0, %40 ]
  %48 = load ptr, ptr %3, align 8, !tbaa !37
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load ptr, ptr @stderr, align 8, !tbaa !37
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.371, ptr noundef %2) #30
  br label %56

53:                                               ; preds = %35, %46, %39
  %54 = phi ptr [ %47, %46 ], [ %20, %39 ], [ %20, %35 ]
  %55 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %54) #27
  br label %56

56:                                               ; preds = %53, %50, %29
  %57 = phi i32 [ 0, %53 ], [ -1, %50 ], [ -1, %29 ]
  ret i32 %57
}

; Function Attrs: optsize
declare void @x264_reduce_fraction(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc ptr @strtable_lookup(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #14 !PGOFuncName !187 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i64 [ %8, %3 ], [ 0, %2 ]
  %5 = getelementptr inbounds ptr, ptr %0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = icmp eq ptr %6, null
  %8 = add nuw i64 %4, 1
  br i1 %7, label %9, label %3, !llvm.loop !188

9:                                                ; preds = %3
  %10 = trunc i64 %4 to i32
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = zext nneg i32 %1 to i64
  %14 = getelementptr inbounds ptr, ptr %0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !37
  br label %16

16:                                               ; preds = %9, %12
  %17 = phi ptr [ %15, %12 ], [ @.str.322, %9 ]
  ret ptr %17
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @stringify_names(ptr noundef returned %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !PGOFuncName !189 {
  store i8 0, ptr %0, align 1, !tbaa !126
  %3 = load ptr, ptr %1, align 8, !tbaa !37
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %2, %14
  %6 = phi i64 [ %10, %14 ], [ 0, %2 ]
  %7 = phi ptr [ %22, %14 ], [ %3, %2 ]
  %8 = phi ptr [ %21, %14 ], [ %0, %2 ]
  %9 = tail call ptr @stpcpy(ptr nonnull %8, ptr nonnull %7)
  %10 = add nuw nsw i64 %6, 1
  %11 = getelementptr inbounds ptr, ptr %1, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !37
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %5
  %15 = ptrtoint ptr %9 to i64
  %16 = ptrtoint ptr %8 to i64
  %17 = sub i64 %15, %16
  %18 = shl i64 %17, 32
  %19 = ashr exact i64 %18, 32
  %20 = getelementptr inbounds i8, ptr %8, i64 %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %20, ptr noundef nonnull align 1 dereferenceable(3) @.str.356, i64 3, i1 false)
  %21 = getelementptr inbounds i8, ptr %20, i64 2
  %22 = load ptr, ptr %11, align 8, !tbaa !37
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %5, !llvm.loop !190

24:                                               ; preds = %5, %14, %2
  ret ptr %0
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_filename_extension(ptr noundef readonly %0) unnamed_addr #16 !PGOFuncName !191 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28
  %3 = getelementptr inbounds i8, ptr %0, i64 %2
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %3, %1 ], [ %10, %4 ]
  %6 = load i8, ptr %5, align 1, !tbaa !126
  %7 = icmp ne i8 %6, 46
  %8 = icmp ugt ptr %5, %0
  %9 = and i1 %8, %7
  %10 = getelementptr inbounds i8, ptr %5, i64 -1
  br i1 %9, label %4, label %11, !llvm.loop !192

11:                                               ; preds = %4
  %12 = icmp eq i8 %6, 46
  %13 = zext i1 %12 to i64
  %14 = getelementptr inbounds i8, ptr %5, i64 %13
  ret ptr %14
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i64 @gcd(i64 noundef %0, i64 noundef %1) unnamed_addr #18 !PGOFuncName !193 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i64 [ %0, %2 ], [ %5, %3 ]
  %5 = phi i64 [ %1, %2 ], [ %6, %3 ]
  %6 = urem i64 %4, %5
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %3

8:                                                ; preds = %3
  ret i64 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @x264_clip3(i32 noundef %0) unnamed_addr #19 !PGOFuncName !194 {
  %2 = tail call i32 @llvm.smin.i32(i32 %0, i32 10)
  %3 = tail call i32 @llvm.smax.i32(i32 %2, i32 1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #20

; Function Attrs: optsize
declare ptr @x264_encoder_open_96(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @x264_encoder_parameters(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @x264_mdate() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @x264_encoder_headers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #21

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @parse_qpfile(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !195 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 -1, ptr %4, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #25
  %7 = icmp sgt i32 %2, -1
  br i1 %7, label %8, label %48

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cli_opt_t, ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %struct.x264_picture_t, ptr %1, i64 0, i32 1
  br label %11

11:                                               ; preds = %8, %27
  %12 = load ptr, ptr %9, align 8, !tbaa !56
  %13 = call i64 @ftell(ptr noundef %12) #26
  %14 = load ptr, ptr %9, align 8, !tbaa !56
  %15 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %14, ptr noundef nonnull @.str.387, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %5) #27
  %16 = load i32, ptr %4, align 4, !tbaa !45
  %17 = icmp sgt i32 %16, %2
  %18 = icmp eq i32 %15, -1
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  store i32 0, ptr %1, align 8, !tbaa !129
  store i32 0, ptr %10, align 4, !tbaa !130
  %21 = load ptr, ptr %9, align 8, !tbaa !56
  %22 = call i32 @fseek(ptr noundef %21, i64 noundef %13, i32 noundef 0) #26
  br label %48

23:                                               ; preds = %11
  %24 = icmp slt i32 %16, %2
  %25 = icmp eq i32 %15, 3
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %36
  br i1 %24, label %11, label %48, !llvm.loop !196

28:                                               ; preds = %23
  %29 = load i32, ptr %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %10, align 4, !tbaa !130
  %31 = load i8, ptr %6, align 1, !tbaa !126
  switch i8 %31, label %43 [
    i8 73, label %36
    i8 105, label %32
    i8 80, label %33
    i8 66, label %34
    i8 98, label %35
  ]

32:                                               ; preds = %28
  br label %36

33:                                               ; preds = %28
  br label %36

34:                                               ; preds = %28
  br label %36

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %28, %32, %34, %35, %33
  %37 = phi i32 [ 2, %32 ], [ 4, %34 ], [ 5, %35 ], [ 3, %33 ], [ 1, %28 ]
  store i32 %37, ptr %1, align 8, !tbaa !129
  %38 = icmp ne i32 %15, 3
  %39 = icmp slt i32 %29, -1
  %40 = select i1 %38, i1 true, i1 %39
  %41 = icmp sgt i32 %29, 51
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %43, label %27

43:                                               ; preds = %28, %36
  %44 = load ptr, ptr @stderr, align 8, !tbaa !37
  %45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.388, i32 noundef %2) #30
  %46 = load ptr, ptr %9, align 8, !tbaa !56
  %47 = call i32 @fclose(ptr noundef %46) #26
  store ptr null, ptr %9, align 8, !tbaa !56
  store i32 0, ptr %1, align 8, !tbaa !129
  store i32 0, ptr %10, align 4, !tbaa !130
  br label %48

48:                                               ; preds = %27, %3, %43, %20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @Encode_frame(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !197 {
  %5 = alloca %struct.x264_picture_t, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #25
  %8 = call i32 @x264_encoder_encode(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %2, ptr noundef nonnull %5) #27
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = load ptr, ptr @stderr, align 8, !tbaa !37
  %12 = call i64 @fwrite(ptr nonnull @.str.389, i64 41, i64 1, ptr %11) #31
  br label %23

13:                                               ; preds = %4
  %14 = icmp eq i32 %8, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr getelementptr inbounds (%struct.cli_output_t, ptr @output, i64 0, i32 3), align 8, !tbaa !198
  %17 = load ptr, ptr %6, align 8, !tbaa !37
  %18 = getelementptr inbounds %struct.x264_nal_t, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !199
  %20 = call i32 %16(ptr noundef %1, ptr noundef %19, i32 noundef %8, ptr noundef nonnull %5) #27
  %21 = getelementptr inbounds %struct.x264_picture_t, ptr %5, i64 0, i32 5
  %22 = load i64, ptr %21, align 8, !tbaa !201
  store i64 %22, ptr %3, align 8, !tbaa !92
  br label %23

23:                                               ; preds = %13, %15, %10
  %24 = phi i32 [ -1, %10 ], [ %20, %15 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #25
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @Print_status() unnamed_addr #0 !PGOFuncName !202 {
  %1 = tail call i64 @x264_mdate() #27
  ret void
}

; Function Attrs: optsize
declare i32 @x264_encoder_delayed_frames(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @x264_encoder_close(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @x264_encoder_encode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias nocapture readonly) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nofree nounwind }
attributes #23 = { nofree nounwind willreturn memory(argmem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind }
attributes #26 = { optsize }
attributes #27 = { nounwind optsize }
attributes #28 = { nounwind optsize willreturn memory(read) }
attributes #29 = { noreturn nounwind optsize }
attributes #30 = { cold optsize }
attributes #31 = { cold }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 5602379}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 2}
!14 = !{i32 100000, i64 1843200, i32 2}
!15 = !{i32 200000, i64 1843200, i32 2}
!16 = !{i32 300000, i64 1843200, i32 2}
!17 = !{i32 400000, i64 1843200, i32 2}
!18 = !{i32 500000, i64 1843200, i32 2}
!19 = !{i32 600000, i64 1843200, i32 2}
!20 = !{i32 700000, i64 921600, i32 4}
!21 = !{i32 800000, i64 921600, i32 4}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 720, i32 8}
!27 = !{i32 999990, i64 21, i32 9}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{i32 -1, i32 1}
!36 = !{!"x264.c:Parse"}
!37 = !{!38, !38, i64 0}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!42, !43, i64 0}
!42 = !{!"", !43, i64 0, !43, i64 4, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !44, i64 40, !43, i64 48}
!43 = !{!"int", !39, i64 0}
!44 = !{!"double", !39, i64 0}
!45 = !{!43, !43, i64 0}
!46 = !{!47, !43, i64 36}
!47 = !{!"x264_param_t", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !48, i64 44, !43, i64 80, !43, i64 84, !43, i64 88, !43, i64 92, !43, i64 96, !43, i64 100, !43, i64 104, !43, i64 108, !43, i64 112, !43, i64 116, !43, i64 120, !43, i64 124, !43, i64 128, !43, i64 132, !43, i64 136, !43, i64 140, !43, i64 144, !38, i64 152, !39, i64 160, !39, i64 176, !39, i64 192, !39, i64 208, !39, i64 224, !39, i64 288, !38, i64 352, !38, i64 360, !43, i64 368, !43, i64 372, !38, i64 376, !49, i64 384, !51, i64 488, !43, i64 632, !43, i64 636, !43, i64 640, !43, i64 644, !43, i64 648, !43, i64 652, !43, i64 656, !43, i64 660, !43, i64 664, !43, i64 668, !43, i64 672, !43, i64 676, !43, i64 680, !43, i64 684, !43, i64 688, !43, i64 692, !38, i64 696}
!48 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32}
!49 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !43, i64 64, !43, i64 68, !50, i64 72, !50, i64 76, !43, i64 80, !39, i64 84, !43, i64 92, !43, i64 96}
!50 = !{!"float", !39, i64 0}
!51 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !50, i64 24, !50, i64 28, !50, i64 32, !43, i64 36, !43, i64 40, !50, i64 44, !50, i64 48, !50, i64 52, !43, i64 56, !50, i64 60, !43, i64 64, !43, i64 68, !43, i64 72, !38, i64 80, !43, i64 88, !38, i64 96, !50, i64 104, !50, i64 108, !50, i64 112, !38, i64 120, !43, i64 128, !38, i64 136}
!52 = !{!53, !43, i64 24}
!53 = !{!"", !38, i64 0, !38, i64 8, !38, i64 16, !43, i64 24}
!54 = !{!42, !43, i64 4}
!55 = !{!53, !38, i64 0}
!56 = !{!42, !38, i64 24}
!57 = !{!47, !43, i64 368}
!58 = !{!47, !43, i64 648}
!59 = !{!42, !38, i64 32}
!60 = !{!53, !38, i64 16}
!61 = !{!62, !38, i64 0}
!62 = !{!"option", !38, i64 0, !43, i64 8, !38, i64 16, !43, i64 24}
!63 = !{!62, !43, i64 24}
!64 = distinct !{!64, !65}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!67, !38, i64 0}
!67 = !{!"", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32}
!68 = !{!53, !38, i64 8}
!69 = !{!47, !43, i64 28}
!70 = !{!71, !43, i64 0}
!71 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!72 = !{!47, !43, i64 136}
!73 = !{!71, !43, i64 16}
!74 = !{!47, !43, i64 672}
!75 = !{!71, !43, i64 28}
!76 = !{!71, !43, i64 40}
!77 = !{!42, !38, i64 8}
!78 = !{!79, !38, i64 0}
!79 = !{!"", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48}
!80 = !{!71, !43, i64 44}
!81 = !{!71, !43, i64 12}
!82 = !{!71, !43, i64 20}
!83 = !{!71, !43, i64 24}
!84 = !{!71, !43, i64 4}
!85 = !{!71, !43, i64 8}
!86 = !{i64 0, i64 8, !37, i64 8, i64 8, !37, i64 16, i64 8, !37, i64 24, i64 8, !37, i64 32, i64 8, !37, i64 40, i64 8, !37, i64 48, i64 8, !37}
!87 = !{!47, !43, i64 24}
!88 = !{!47, !43, i64 20}
!89 = !{!71, !43, i64 32}
!90 = !{!47, !43, i64 656}
!91 = !{!47, !43, i64 660}
!92 = !{!93, !93, i64 0}
!93 = !{!"long", !39, i64 0}
!94 = !{!47, !43, i64 664}
!95 = !{!42, !44, i64 40}
!96 = !{!47, !43, i64 48}
!97 = !{!47, !43, i64 44}
!98 = !{!99, !43, i64 0}
!99 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48}
!100 = !{!47, !43, i64 32}
!101 = distinct !{!101, !65}
!102 = !{!99, !43, i64 12}
!103 = !{!47, !43, i64 80}
!104 = distinct !{!104, !65}
!105 = !{!"x264.c:SigIntHandler"}
!106 = !{!"x264.c:Encode"}
!107 = !{!79, !38, i64 8}
!108 = !{!42, !43, i64 48}
!109 = !{!47, !43, i64 676}
!110 = !{!47, !43, i64 652}
!111 = !{!112, !50, i64 28}
!112 = !{!"", !43, i64 0, !39, i64 4, !50, i64 28}
!113 = !{!79, !38, i64 48}
!114 = !{!67, !38, i64 8}
!115 = !{!42, !38, i64 16}
!116 = !{!67, !38, i64 32}
!117 = !{!79, !38, i64 16}
!118 = !{!47, !43, i64 636}
!119 = !{!67, !38, i64 16}
!120 = !{!79, !38, i64 24}
!121 = !{!122, !93, i64 16}
!122 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !93, i64 16, !93, i64 24, !38, i64 32, !123, i64 40, !124, i64 96, !38, i64 128}
!123 = !{!"", !43, i64 0, !43, i64 4, !39, i64 8, !39, i64 24}
!124 = !{!"", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24}
!125 = !{!112, !43, i64 0}
!126 = !{!39, !39, i64 0}
!127 = !{!122, !43, i64 8}
!128 = !{!50, !50, i64 0}
!129 = !{!122, !43, i64 0}
!130 = !{!122, !43, i64 4}
!131 = !{!79, !38, i64 32}
!132 = distinct !{!132, !65}
!133 = !{!79, !38, i64 40}
!134 = !{!"x264.c:Help"}
!135 = !{!47, !43, i64 84}
!136 = !{!47, !43, i64 92}
!137 = !{!47, !43, i64 100}
!138 = !{!47, !43, i64 104}
!139 = !{!47, !43, i64 108}
!140 = !{!47, !43, i64 112}
!141 = !{!47, !43, i64 120}
!142 = !{!47, !43, i64 124}
!143 = !{!47, !50, i64 512}
!144 = !{!47, !43, i64 556}
!145 = !{!47, !43, i64 524}
!146 = !{!47, !43, i64 528}
!147 = !{!47, !50, i64 532}
!148 = !{!47, !43, i64 496}
!149 = !{!47, !43, i64 500}
!150 = !{!47, !43, i64 504}
!151 = !{!47, !50, i64 520}
!152 = !{!47, !50, i64 536}
!153 = !{!47, !50, i64 540}
!154 = !{!47, !43, i64 408}
!155 = !{!47, !43, i64 544}
!156 = !{!47, !50, i64 548}
!157 = !{!47, !38, i64 568}
!158 = !{!47, !50, i64 592}
!159 = !{!47, !50, i64 600}
!160 = !{!47, !50, i64 596}
!161 = !{!47, !43, i64 404}
!162 = !{!47, !43, i64 396}
!163 = !{!47, !43, i64 412}
!164 = !{!47, !43, i64 416}
!165 = !{!47, !43, i64 428}
!166 = !{!47, !50, i64 456}
!167 = !{!47, !50, i64 460}
!168 = !{!47, !43, i64 440}
!169 = !{!47, !43, i64 452}
!170 = !{!47, !43, i64 52}
!171 = !{!47, !43, i64 56}
!172 = !{!47, !43, i64 60}
!173 = !{!47, !43, i64 64}
!174 = !{!47, !43, i64 68}
!175 = !{!47, !43, i64 72}
!176 = !{!47, !43, i64 76}
!177 = !{!47, !43, i64 644}
!178 = !{!"x264.c:parse_enum_name"}
!179 = distinct !{!179, !65}
!180 = !{!"x264.c:parse_enum_value"}
!181 = distinct !{!181, !65}
!182 = !{!"x264.c:select_output"}
!183 = !{i64 0, i64 8, !37, i64 8, i64 8, !37, i64 16, i64 8, !37, i64 24, i64 8, !37, i64 32, i64 8, !37}
!184 = !{!47, !43, i64 640}
!185 = !{!47, !43, i64 668}
!186 = !{!"x264.c:select_input"}
!187 = !{!"x264.c:strtable_lookup"}
!188 = distinct !{!188, !65}
!189 = !{!"x264.c:stringify_names"}
!190 = distinct !{!190, !65}
!191 = !{!"x264.c:get_filename_extension"}
!192 = distinct !{!192, !65}
!193 = !{!"x264.c:gcd"}
!194 = !{!"x264.c:x264_clip3"}
!195 = !{!"x264.c:parse_qpfile"}
!196 = distinct !{!196, !65}
!197 = !{!"x264.c:Encode_frame"}
!198 = !{!67, !38, i64 24}
!199 = !{!200, !38, i64 16}
!200 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !38, i64 16}
!201 = !{!122, !93, i64 24}
!202 = !{!"x264.c:Print_status"}
