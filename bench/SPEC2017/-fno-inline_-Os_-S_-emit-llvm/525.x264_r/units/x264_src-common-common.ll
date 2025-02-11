; ModuleID = 'x264_src/common/common.c'
source_filename = "x264_src/common/common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.x264_cpu_name_t = type { [16 x i8], i32 }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], ptr, ptr, i32, i32, ptr, %struct.anon.0, %struct.anon.1, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, float, float, float, i32, float, i32, i32, i32, ptr, i32, ptr, float, float, float, ptr, i32, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.x264_picture_t = type { i32, i32, i32, i32, i64, i64, ptr, %struct.x264_image_t, %struct.x264_hrd_t, ptr }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x ptr] }
%struct.x264_hrd_t = type { double, double, double, double }
%struct.x264_nal_t = type { i32, i32, i32, ptr }

@.str = private unnamed_addr constant [15 x i8] c"x264_2pass.log\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"baseline\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"baseline profile doesn't support interlacing\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"baseline profile doesn't support fake interlacing\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"invalid profile: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"%s profile doesn't support lossless\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"no-\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"asm\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c",\00", align 1
@x264_cpu_names = external constant [0 x %struct.x264_cpu_name_t], align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"sliced-threads\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"sync-lookahead\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"deterministic\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"n-deterministic\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"level-idc\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"sar\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"%d/%d\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"overscan\00", align 1
@x264_overscan_names = internal constant [4 x ptr] [ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr null], align 16
@.str.26 = private unnamed_addr constant [12 x i8] c"videoformat\00", align 1
@x264_vidformat_names = internal constant [7 x ptr] [ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.235, ptr null], align 16
@.str.27 = private unnamed_addr constant [10 x i8] c"fullrange\00", align 1
@x264_fullrange_names = internal constant [3 x ptr] [ptr @.str.243, ptr @.str.244, ptr null], align 16
@.str.28 = private unnamed_addr constant [10 x i8] c"colorprim\00", align 1
@x264_colorprim_names = internal constant [10 x ptr] [ptr @.str.245, ptr @.str.246, ptr @.str.235, ptr @.str.245, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.224, ptr null], align 16
@.str.29 = private unnamed_addr constant [9 x i8] c"transfer\00", align 1
@x264_transfer_names = internal constant [12 x ptr] [ptr @.str.245, ptr @.str.246, ptr @.str.235, ptr @.str.245, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr null], align 16
@.str.30 = private unnamed_addr constant [12 x i8] c"colormatrix\00", align 1
@x264_colmatrix_names = internal constant [10 x ptr] [ptr @.str.254, ptr @.str.246, ptr @.str.235, ptr @.str.245, ptr @.str.255, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.256, ptr null], align 16
@.str.31 = private unnamed_addr constant [10 x i8] c"chromaloc\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"fps\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"%u/%u\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"frameref\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"keyint\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"min-keyint\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"keyint-min\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"scenecut\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"intra-refresh\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"bframes\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"b-adapt\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"b-bias\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"b-pyramid\00", align 1
@x264_b_pyramid_names = internal constant [4 x ptr] [ptr @.str.77, ptr @.str.257, ptr @.str.258, ptr null], align 16
@.str.45 = private unnamed_addr constant [3 x i8] c"nf\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"deblock\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"slice-max-size\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"slice-max-mbs\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"slices\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"cabac\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"cabac-idc\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"tff\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"bff\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"constrained-intra\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"cqm\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"flat\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"jvt\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"cqmfile\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"cqm4\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"cqm8\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"cqm4i\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"cqm4p\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"cqm4iy\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"cqm4ic\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"cqm4py\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"cqm4pc\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"cqm8i\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"cqm8p\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"dump-yuv\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"analyse\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"partitions\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"i4x4\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"i8x8\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"p8x8\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"p4x4\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"b8x8\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"8x8dct\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"weightb\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"weight-b\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"weightp\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"direct\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"direct-pred\00", align 1
@x264_direct_pred_names = internal constant [5 x ptr] [ptr @.str.77, ptr @.str.259, ptr @.str.260, ptr @.str.13, ptr null], align 16
@.str.90 = private unnamed_addr constant [17 x i8] c"chroma-qp-offset\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c"me\00", align 1
@x264_motion_est_names = internal constant [6 x ptr] [ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr null], align 16
@.str.92 = private unnamed_addr constant [8 x i8] c"merange\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"me-range\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"mvrange\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"mv-range\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"mvrange-thread\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"mv-range-thread\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"subme\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"subq\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"psy-rd\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"%f:%f\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"%f,%f\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"%f|%f\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"psy\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"chroma-me\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"mixed-refs\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"trellis\00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c"fast-pskip\00", align 1
@.str.110 = private unnamed_addr constant [13 x i8] c"dct-decimate\00", align 1
@.str.111 = private unnamed_addr constant [15 x i8] c"deadzone-inter\00", align 1
@.str.112 = private unnamed_addr constant [15 x i8] c"deadzone-intra\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"nr\00", align 1
@.str.114 = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"qp\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"qp_constant\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"crf\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"crf-max\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"rc-lookahead\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"qpmin\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"qp-min\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"qpmax\00", align 1
@.str.123 = private unnamed_addr constant [7 x i8] c"qp-max\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"qpstep\00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"qp-step\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"ratetol\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.128 = private unnamed_addr constant [12 x i8] c"vbv-maxrate\00", align 1
@.str.129 = private unnamed_addr constant [12 x i8] c"vbv-bufsize\00", align 1
@.str.130 = private unnamed_addr constant [9 x i8] c"vbv-init\00", align 1
@.str.131 = private unnamed_addr constant [8 x i8] c"ipratio\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"ip-factor\00", align 1
@.str.133 = private unnamed_addr constant [8 x i8] c"pbratio\00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c"pb-factor\00", align 1
@.str.135 = private unnamed_addr constant [8 x i8] c"aq-mode\00", align 1
@.str.136 = private unnamed_addr constant [12 x i8] c"aq-strength\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.139 = private unnamed_addr constant [6 x i8] c"qcomp\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"mbtree\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"qblur\00", align 1
@.str.142 = private unnamed_addr constant [9 x i8] c"cplxblur\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"cplx-blur\00", align 1
@.str.144 = private unnamed_addr constant [6 x i8] c"zones\00", align 1
@.str.145 = private unnamed_addr constant [5 x i8] c"psnr\00", align 1
@.str.146 = private unnamed_addr constant [5 x i8] c"ssim\00", align 1
@.str.147 = private unnamed_addr constant [4 x i8] c"aud\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"sps-id\00", align 1
@.str.149 = private unnamed_addr constant [14 x i8] c"global-header\00", align 1
@.str.150 = private unnamed_addr constant [15 x i8] c"repeat-headers\00", align 1
@.str.151 = private unnamed_addr constant [7 x i8] c"annexb\00", align 1
@.str.152 = private unnamed_addr constant [10 x i8] c"force-cfr\00", align 1
@.str.153 = private unnamed_addr constant [8 x i8] c"nal-hrd\00", align 1
@x264_nal_hrd_names = internal constant [4 x ptr] [ptr @.str.77, ptr @.str.266, ptr @.str.195, ptr null], align 16
@.str.154 = private unnamed_addr constant [11 x i8] c"pic-struct\00", align 1
@.str.155 = private unnamed_addr constant [16 x i8] c"fake-interlaced\00", align 1
@.str.156 = private unnamed_addr constant [26 x i8] c"malloc of size %d failed\0A\00", align 1
@.str.157 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.158 = private unnamed_addr constant [7 x i8] c"%dx%d \00", align 1
@.str.159 = private unnamed_addr constant [11 x i8] c"fps=%u/%u \00", align 1
@.str.160 = private unnamed_addr constant [16 x i8] c"timebase=%u/%u \00", align 1
@.str.161 = private unnamed_addr constant [9 x i8] c"cabac=%d\00", align 1
@.str.162 = private unnamed_addr constant [8 x i8] c" ref=%d\00", align 1
@.str.163 = private unnamed_addr constant [18 x i8] c" deblock=%d:%d:%d\00", align 1
@.str.164 = private unnamed_addr constant [17 x i8] c" analyse=%#x:%#x\00", align 1
@.str.165 = private unnamed_addr constant [7 x i8] c" me=%s\00", align 1
@.str.166 = private unnamed_addr constant [10 x i8] c" subme=%d\00", align 1
@.str.167 = private unnamed_addr constant [8 x i8] c" psy=%d\00", align 1
@.str.168 = private unnamed_addr constant [18 x i8] c" psy_rd=%.2f:%.2f\00", align 1
@.str.169 = private unnamed_addr constant [14 x i8] c" mixed_ref=%d\00", align 1
@.str.170 = private unnamed_addr constant [13 x i8] c" me_range=%d\00", align 1
@.str.171 = private unnamed_addr constant [14 x i8] c" chroma_me=%d\00", align 1
@.str.172 = private unnamed_addr constant [12 x i8] c" trellis=%d\00", align 1
@.str.173 = private unnamed_addr constant [11 x i8] c" 8x8dct=%d\00", align 1
@.str.174 = private unnamed_addr constant [8 x i8] c" cqm=%d\00", align 1
@.str.175 = private unnamed_addr constant [16 x i8] c" deadzone=%d,%d\00", align 1
@.str.176 = private unnamed_addr constant [15 x i8] c" fast_pskip=%d\00", align 1
@.str.177 = private unnamed_addr constant [21 x i8] c" chroma_qp_offset=%d\00", align 1
@.str.178 = private unnamed_addr constant [12 x i8] c" threads=%d\00", align 1
@.str.179 = private unnamed_addr constant [19 x i8] c" sliced_threads=%d\00", align 1
@.str.180 = private unnamed_addr constant [11 x i8] c" slices=%d\00", align 1
@.str.181 = private unnamed_addr constant [19 x i8] c" slice_max_size=%d\00", align 1
@.str.182 = private unnamed_addr constant [18 x i8] c" slice_max_mbs=%d\00", align 1
@.str.183 = private unnamed_addr constant [7 x i8] c" nr=%d\00", align 1
@.str.184 = private unnamed_addr constant [13 x i8] c" decimate=%d\00", align 1
@.str.185 = private unnamed_addr constant [15 x i8] c" interlaced=%s\00", align 1
@.str.186 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.187 = private unnamed_addr constant [22 x i8] c" constrained_intra=%d\00", align 1
@.str.188 = private unnamed_addr constant [12 x i8] c" bframes=%d\00", align 1
@.str.189 = private unnamed_addr constant [56 x i8] c" b_pyramid=%d b_adapt=%d b_bias=%d direct=%d weightb=%d\00", align 1
@.str.190 = private unnamed_addr constant [12 x i8] c" weightp=%d\00", align 1
@.str.191 = private unnamed_addr constant [54 x i8] c" keyint=%d keyint_min=%d scenecut=%d intra_refresh=%d\00", align 1
@.str.192 = private unnamed_addr constant [17 x i8] c" rc_lookahead=%d\00", align 1
@.str.193 = private unnamed_addr constant [17 x i8] c" rc=%s mbtree=%d\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"2pass\00", align 1
@.str.195 = private unnamed_addr constant [4 x i8] c"cbr\00", align 1
@.str.196 = private unnamed_addr constant [4 x i8] c"abr\00", align 1
@.str.197 = private unnamed_addr constant [4 x i8] c"cqp\00", align 1
@.str.198 = private unnamed_addr constant [10 x i8] c" crf=%.1f\00", align 1
@.str.199 = private unnamed_addr constant [25 x i8] c" bitrate=%d ratetol=%.1f\00", align 1
@.str.200 = private unnamed_addr constant [40 x i8] c" qcomp=%.2f qpmin=%d qpmax=%d qpstep=%d\00", align 1
@.str.201 = private unnamed_addr constant [26 x i8] c" cplxblur=%.1f qblur=%.1f\00", align 1
@.str.202 = private unnamed_addr constant [31 x i8] c" vbv_maxrate=%d vbv_bufsize=%d\00", align 1
@.str.203 = private unnamed_addr constant [14 x i8] c" crf_max=%.1f\00", align 1
@.str.204 = private unnamed_addr constant [7 x i8] c" qp=%d\00", align 1
@.str.205 = private unnamed_addr constant [15 x i8] c" ip_ratio=%.2f\00", align 1
@.str.206 = private unnamed_addr constant [15 x i8] c" pb_ratio=%.2f\00", align 1
@.str.207 = private unnamed_addr constant [7 x i8] c" aq=%d\00", align 1
@.str.208 = private unnamed_addr constant [6 x i8] c":%.2f\00", align 1
@.str.209 = private unnamed_addr constant [10 x i8] c" zones=%s\00", align 1
@.str.210 = private unnamed_addr constant [7 x i8] c" zones\00", align 1
@.str.211 = private unnamed_addr constant [12 x i8] c" nal_hrd=%s\00", align 1
@.str.212 = private unnamed_addr constant [10 x i8] c"ultrafast\00", align 1
@.str.213 = private unnamed_addr constant [10 x i8] c"superfast\00", align 1
@.str.214 = private unnamed_addr constant [9 x i8] c"veryfast\00", align 1
@.str.215 = private unnamed_addr constant [7 x i8] c"faster\00", align 1
@.str.216 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.217 = private unnamed_addr constant [7 x i8] c"medium\00", align 1
@.str.218 = private unnamed_addr constant [5 x i8] c"slow\00", align 1
@.str.219 = private unnamed_addr constant [7 x i8] c"slower\00", align 1
@.str.220 = private unnamed_addr constant [9 x i8] c"veryslow\00", align 1
@.str.221 = private unnamed_addr constant [8 x i8] c"placebo\00", align 1
@.str.222 = private unnamed_addr constant [21 x i8] c"invalid preset '%s'\0A\00", align 1
@.str.223 = private unnamed_addr constant [6 x i8] c",./-+\00", align 1
@.str.224 = private unnamed_addr constant [5 x i8] c"film\00", align 1
@.str.225 = private unnamed_addr constant [10 x i8] c"animation\00", align 1
@.str.226 = private unnamed_addr constant [6 x i8] c"grain\00", align 1
@.str.227 = private unnamed_addr constant [11 x i8] c"stillimage\00", align 1
@.str.228 = private unnamed_addr constant [11 x i8] c"fastdecode\00", align 1
@.str.229 = private unnamed_addr constant [12 x i8] c"zerolatency\00", align 1
@.str.230 = private unnamed_addr constant [7 x i8] c"touhou\00", align 1
@.str.231 = private unnamed_addr constant [19 x i8] c"invalid tune '%s'\0A\00", align 1
@.str.232 = private unnamed_addr constant [49 x i8] c"only 1 psy tuning can be used: ignoring tune %s\0A\00", align 1
@.str.233 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.234 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.235 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.236 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.237 = private unnamed_addr constant [5 x i8] c"crop\00", align 1
@.str.238 = private unnamed_addr constant [10 x i8] c"component\00", align 1
@.str.239 = private unnamed_addr constant [4 x i8] c"pal\00", align 1
@.str.240 = private unnamed_addr constant [5 x i8] c"ntsc\00", align 1
@.str.241 = private unnamed_addr constant [6 x i8] c"secam\00", align 1
@.str.242 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.243 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.244 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.245 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.246 = private unnamed_addr constant [6 x i8] c"bt709\00", align 1
@.str.247 = private unnamed_addr constant [7 x i8] c"bt470m\00", align 1
@.str.248 = private unnamed_addr constant [8 x i8] c"bt470bg\00", align 1
@.str.249 = private unnamed_addr constant [10 x i8] c"smpte170m\00", align 1
@.str.250 = private unnamed_addr constant [10 x i8] c"smpte240m\00", align 1
@.str.251 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.252 = private unnamed_addr constant [7 x i8] c"log100\00", align 1
@.str.253 = private unnamed_addr constant [7 x i8] c"log316\00", align 1
@.str.254 = private unnamed_addr constant [4 x i8] c"GBR\00", align 1
@.str.255 = private unnamed_addr constant [4 x i8] c"fcc\00", align 1
@.str.256 = private unnamed_addr constant [6 x i8] c"YCgCo\00", align 1
@.str.257 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.258 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.259 = private unnamed_addr constant [8 x i8] c"spatial\00", align 1
@.str.260 = private unnamed_addr constant [9 x i8] c"temporal\00", align 1
@.str.261 = private unnamed_addr constant [4 x i8] c"dia\00", align 1
@.str.262 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@.str.263 = private unnamed_addr constant [4 x i8] c"umh\00", align 1
@.str.264 = private unnamed_addr constant [4 x i8] c"esa\00", align 1
@.str.265 = private unnamed_addr constant [5 x i8] c"tesa\00", align 1
@.str.266 = private unnamed_addr constant [4 x i8] c"vbr\00", align 1
@.str.267 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.268 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.269 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.270 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.271 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.272 = private unnamed_addr constant [12 x i8] c"x264 [%s]: \00", align 1
@reltable.x264_log_default = private unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.267 to i64), i64 ptrtoint (ptr @reltable.x264_log_default to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.268 to i64), i64 ptrtoint (ptr @reltable.x264_log_default to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.269 to i64), i64 ptrtoint (ptr @reltable.x264_log_default to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.270 to i64), i64 ptrtoint (ptr @reltable.x264_log_default to i64)) to i32)], align 4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define dso_local noalias noundef ptr @spec_strdup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %3 = trunc i64 %2 to i32
  %4 = shl i64 %2, 32
  %5 = add i64 %4, 4294967296
  %6 = ashr exact i64 %5, 32
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #26
  %8 = icmp sgt i32 %3, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = and i64 %2, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %0, i64 %10, i1 false), !tbaa !5
  br label %11

11:                                               ; preds = %9, %1
  %12 = ashr exact i64 %4, 32
  %13 = getelementptr inbounds i8, ptr %7, i64 %12
  store i8 0, ptr %13, align 1, !tbaa !5
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_param_default(ptr noundef writeonly %0) local_unnamed_addr #4 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %0, i8 0, i64 704, i1 false)
  %2 = tail call i32 @x264_cpu_detect() #27
  store i32 %2, ptr %0, align 8, !tbaa !8
  %3 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 4, !tbaa !16
  %4 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 3
  %5 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 7
  store i32 1, ptr %5, align 4, !tbaa !17
  store <4 x i32> <i32 1, i32 -1, i32 0, i32 0>, ptr %4, align 4, !tbaa !18
  %6 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 3
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %6, align 4, !tbaa !18
  %7 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 7
  %8 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 48
  store i32 25, ptr %8, align 4, !tbaa !19
  %9 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 49
  store i32 1, ptr %9, align 8, !tbaa !20
  %10 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8
  store i32 -1, ptr %10, align 8, !tbaa !21
  %11 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 56
  store i32 0, ptr %11, align 4, !tbaa !22
  %12 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 57
  store i32 0, ptr %12, align 8, !tbaa !23
  %13 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 58
  store i32 0, ptr %13, align 4, !tbaa !24
  store <4 x i32> <i32 2, i32 0, i32 3, i32 250>, ptr %7, align 4, !tbaa !18
  %14 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 14
  store i32 0, ptr %14, align 8, !tbaa !25
  %15 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  %16 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 15
  store i32 40, ptr %16, align 4, !tbaa !26
  store <4 x i32> <i32 3, i32 1, i32 0, i32 2>, ptr %15, align 4, !tbaa !18
  %17 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 21
  store <4 x i32> <i32 1, i32 0, i32 0, i32 1>, ptr %17, align 4, !tbaa !18
  %18 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 25
  %19 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42
  %20 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 5
  store i32 0, ptr %20, align 4, !tbaa !27
  %21 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 8
  store float 1.000000e+00, ptr %21, align 8, !tbaa !28
  %22 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 9
  store i32 0, ptr %22, align 4, !tbaa !29
  %23 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 10
  store i32 0, ptr %23, align 8, !tbaa !30
  %24 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 11
  %25 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 6
  store float 2.300000e+01, ptr %25, align 8, !tbaa !31
  store <4 x i32> <i32 1, i32 23, i32 10, i32 51>, ptr %19, align 8, !tbaa !18
  %26 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 4
  store i32 4, ptr %26, align 8, !tbaa !32
  store <2 x float> <float 0x3FECCCCCC0000000, float 0x3FF6666660000000>, ptr %24, align 4, !tbaa !33
  %27 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 13
  store float 0x3FF4CCCCC0000000, ptr %27, align 4, !tbaa !34
  %28 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 14
  store i32 1, ptr %28, align 8, !tbaa !35
  %29 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 15
  store float 1.000000e+00, ptr %29, align 4, !tbaa !36
  %30 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  store i32 40, ptr %30, align 4, !tbaa !37
  %31 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 18
  store i32 0, ptr %31, align 8, !tbaa !38
  %32 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 19
  store ptr @.str, ptr %32, align 8, !tbaa !39
  %33 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  store i32 0, ptr %33, align 8, !tbaa !40
  %34 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 21
  store ptr @.str, ptr %34, align 8, !tbaa !41
  %35 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 22
  store <2 x float> <float 0x3FE3333340000000, float 5.000000e-01>, ptr %35, align 8, !tbaa !33
  %36 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 24
  store float 2.000000e+01, ptr %36, align 8, !tbaa !42
  %37 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 26
  store i32 0, ptr %37, align 8, !tbaa !43
  %38 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  store i32 1, ptr %38, align 8, !tbaa !44
  %39 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 36
  store ptr @x264_log_default, ptr %39, align 8, !tbaa !45
  %40 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 37
  store ptr null, ptr %40, align 8, !tbaa !46
  %41 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 38
  store i32 2, ptr %41, align 8, !tbaa !47
  %42 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41
  %43 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 18
  %44 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 20
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %43, align 8, !tbaa !33
  %45 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 8
  %46 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 12
  store <4 x i32> <i32 16, i32 -1, i32 -1, i32 7>, ptr %45, align 8, !tbaa !18
  %47 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 4
  store <4 x i32> <i32 1, i32 1, i32 0, i32 1>, ptr %47, align 8, !tbaa !18
  %48 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 16
  store i32 1, ptr %48, align 8, !tbaa !48
  store <4 x i32> <i32 3, i32 275, i32 1, i32 2>, ptr %42, align 8, !tbaa !18
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %46, align 8, !tbaa !18
  store <4 x i32> <i32 1, i32 21, i32 11, i32 0>, ptr %44, align 8, !tbaa !18
  %49 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 23
  store i32 0, ptr %49, align 8, !tbaa !49
  store <4 x i32> zeroinitializer, ptr %18, align 4, !tbaa !18
  %50 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 30
  %51 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %50, i8 16, i64 192, i1 false)
  store i32 1, ptr %51, align 4, !tbaa !50
  %52 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 45
  store i32 1, ptr %52, align 8, !tbaa !51
  %53 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 43
  store i32 0, ptr %53, align 8, !tbaa !52
  %54 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 47
  store i32 1, ptr %54, align 8, !tbaa !53
  %55 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 52
  %56 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 10
  store <4 x i32> zeroinitializer, ptr %56, align 8, !tbaa !18
  store <4 x i32> <i32 0, i32 1, i32 0, i32 0>, ptr %55, align 4, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare i32 @x264_cpu_detect() local_unnamed_addr #6

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal void @x264_log_default(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #7 {
  %5 = icmp ult i32 %1, 4
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = zext nneg i32 %1 to i64
  %8 = shl i64 %7, 2
  %9 = call ptr @llvm.load.relative.i64(ptr @reltable.x264_log_default, i64 %8)
  br label %10

10:                                               ; preds = %4, %6
  %11 = phi ptr [ %9, %6 ], [ @.str.271, %4 ]
  %12 = load ptr, ptr @stderr, align 8, !tbaa !54
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.272, ptr noundef nonnull %11) #28
  %14 = load ptr, ptr @stderr, align 8, !tbaa !54
  %15 = tail call i32 @vfprintf(ptr noundef %14, ptr noundef %2, ptr noundef %3) #28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @x264_param_default_preset(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #4 {
  tail call void @x264_param_default(ptr noundef %0) #29
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = tail call fastcc i32 @x264_param_apply_preset(ptr noundef %0, ptr noundef nonnull %1) #29, !range !55
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %5, %3
  %9 = icmp eq ptr %2, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = tail call fastcc i32 @x264_param_apply_tune(ptr noundef %0, ptr noundef nonnull %2) #29, !range !55
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %8
  br label %14

14:                                               ; preds = %10, %5, %13
  %15 = phi i32 [ 0, %13 ], [ -1, %5 ], [ -1, %10 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @x264_param_apply_preset(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.212) #25
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  store i32 1, ptr %6, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 15
  store i32 0, ptr %7, align 4, !tbaa !26
  %8 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 21
  store i32 0, ptr %8, align 4, !tbaa !57
  %9 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  store i32 0, ptr %9, align 8, !tbaa !58
  %10 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  store i32 0, ptr %10, align 4, !tbaa !59
  %11 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41
  %12 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  store i32 0, ptr %12, align 4, !tbaa !60
  %13 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  store i32 0, ptr %13, align 4, !tbaa !61
  %14 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 14
  store i32 0, ptr %14, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 13
  store i32 0, ptr %15, align 4, !tbaa !62
  %16 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  store i32 0, ptr %16, align 8, !tbaa !63
  %17 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 18
  store i32 0, ptr %17, align 8, !tbaa !64
  %18 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  store i32 0, ptr %18, align 8, !tbaa !44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  br label %119

19:                                               ; preds = %2
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.213) #25
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 1
  store i32 3, ptr %23, align 4, !tbaa !65
  %24 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  store i32 0, ptr %24, align 4, !tbaa !60
  %25 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  store i32 1, ptr %25, align 4, !tbaa !61
  %26 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  store i32 1, ptr %26, align 8, !tbaa !56
  %27 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 13
  store i32 0, ptr %27, align 4, !tbaa !62
  %28 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  store i32 0, ptr %28, align 8, !tbaa !63
  %29 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  store i32 0, ptr %29, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  store i32 0, ptr %30, align 4, !tbaa !66
  br label %119

31:                                               ; preds = %19
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.214) #25
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  store i32 1, ptr %35, align 4, !tbaa !60
  %36 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  store i32 2, ptr %36, align 4, !tbaa !61
  %37 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  store i32 1, ptr %37, align 8, !tbaa !56
  %38 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 13
  store i32 0, ptr %38, align 4, !tbaa !62
  %39 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  store i32 0, ptr %39, align 8, !tbaa !63
  %40 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  store i32 0, ptr %40, align 8, !tbaa !44
  %41 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  store i32 0, ptr %41, align 4, !tbaa !66
  br label %119

42:                                               ; preds = %31
  %43 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.215) #25
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 13
  store i32 0, ptr %46, align 4, !tbaa !62
  %47 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  store i32 2, ptr %47, align 8, !tbaa !56
  %48 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  store i32 4, ptr %48, align 4, !tbaa !61
  %49 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  store i32 1, ptr %49, align 4, !tbaa !66
  %50 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  store i32 20, ptr %50, align 4, !tbaa !37
  br label %119

51:                                               ; preds = %42
  %52 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.216) #25
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  store i32 2, ptr %55, align 8, !tbaa !56
  %56 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  store i32 6, ptr %56, align 4, !tbaa !61
  %57 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  store i32 30, ptr %57, align 4, !tbaa !37
  br label %119

58:                                               ; preds = %51
  %59 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.217) #25
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %119, label %61

61:                                               ; preds = %58
  %62 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.218) #25
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  store i32 2, ptr %65, align 4, !tbaa !60
  %66 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  store i32 8, ptr %66, align 4, !tbaa !61
  %67 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  store i32 5, ptr %67, align 8, !tbaa !56
  %68 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 18
  store i32 2, ptr %68, align 8, !tbaa !64
  %69 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  store i32 3, ptr %69, align 4, !tbaa !67
  %70 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  store i32 50, ptr %70, align 4, !tbaa !37
  br label %119

71:                                               ; preds = %61
  %72 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.219) #25
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  store i32 2, ptr %75, align 4, !tbaa !60
  %76 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  store i32 9, ptr %76, align 4, !tbaa !61
  %77 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  store i32 8, ptr %77, align 8, !tbaa !56
  %78 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 18
  store i32 2, ptr %78, align 8, !tbaa !64
  %79 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  store i32 3, ptr %79, align 4, !tbaa !67
  %80 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 1
  %81 = load i32, ptr %80, align 4, !tbaa !65
  %82 = or i32 %81, 32
  store i32 %82, ptr %80, align 4, !tbaa !65
  %83 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  store i32 2, ptr %83, align 8, !tbaa !63
  %84 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  store i32 60, ptr %84, align 4, !tbaa !37
  br label %119

85:                                               ; preds = %71
  %86 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.220) #25
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  store i32 2, ptr %89, align 4, !tbaa !60
  %90 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  store i32 10, ptr %90, align 4, !tbaa !61
  %91 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 8
  store i32 24, ptr %91, align 8, !tbaa !68
  %92 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  store i32 16, ptr %92, align 8, !tbaa !56
  %93 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 18
  store i32 2, ptr %93, align 8, !tbaa !64
  %94 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  store i32 3, ptr %94, align 4, !tbaa !67
  %95 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 1
  %96 = load i32, ptr %95, align 4, !tbaa !65
  %97 = or i32 %96, 32
  store i32 %97, ptr %95, align 4, !tbaa !65
  %98 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  store i32 2, ptr %98, align 8, !tbaa !63
  %99 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  store i32 8, ptr %99, align 4, !tbaa !59
  %100 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  store i32 60, ptr %100, align 4, !tbaa !37
  br label %119

101:                                              ; preds = %85
  %102 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.221) #25
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  store i32 4, ptr %105, align 4, !tbaa !60
  %106 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  store i32 10, ptr %106, align 4, !tbaa !61
  %107 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 8
  store i32 24, ptr %107, align 8, !tbaa !68
  %108 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  store i32 16, ptr %108, align 8, !tbaa !56
  %109 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 18
  store i32 2, ptr %109, align 8, !tbaa !64
  %110 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  store i32 3, ptr %110, align 4, !tbaa !67
  %111 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 1
  %112 = load i32, ptr %111, align 4, !tbaa !65
  %113 = or i32 %112, 32
  store i32 %113, ptr %111, align 4, !tbaa !65
  %114 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 15
  store i32 0, ptr %114, align 4, !tbaa !69
  %115 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  store i32 2, ptr %115, align 8, !tbaa !63
  %116 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  store i32 16, ptr %116, align 4, !tbaa !59
  %117 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  store i32 60, ptr %117, align 4, !tbaa !37
  br label %119

118:                                              ; preds = %101
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.222, ptr noundef %1) #29
  br label %119

119:                                              ; preds = %5, %34, %54, %64, %88, %104, %74, %58, %45, %22, %118
  %120 = phi i32 [ -1, %118 ], [ 0, %22 ], [ 0, %45 ], [ 0, %58 ], [ 0, %74 ], [ 0, %104 ], [ 0, %88 ], [ 0, %64 ], [ 0, %54 ], [ 0, %34 ], [ 0, %5 ]
  ret i32 %120
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @x264_param_apply_tune(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %4 = trunc i64 %3 to i32
  %5 = tail call ptr @x264_malloc(i32 noundef %4) #29
  %6 = icmp eq ptr %5, null
  br i1 %6, label %111, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #27
  %9 = tail call ptr @strtok(ptr noundef nonnull %5, ptr noundef nonnull @.str.223) #27
  %10 = icmp eq ptr %9, null
  br i1 %10, label %109, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  %13 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 22
  %14 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 23
  %15 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 19
  %16 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 15
  %17 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 1
  %18 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  %19 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 4
  %20 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  %21 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 2
  %22 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 47
  %23 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 21
  %24 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  %25 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 4
  %26 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  %27 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 14
  %28 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 20
  %29 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 18
  %30 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 16
  %31 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 12
  %32 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 21
  %33 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 21, i64 1
  %34 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 22
  br label %35

35:                                               ; preds = %11, %105
  %36 = phi i32 [ 0, %11 ], [ %106, %105 ]
  %37 = phi ptr [ %9, %11 ], [ %107, %105 ]
  %38 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(5) @.str.224, i64 noundef 4) #25
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = icmp eq i32 %36, 0
  br i1 %41, label %42, label %103

42:                                               ; preds = %40
  store i32 -1, ptr %13, align 8, !tbaa !70
  store i32 -1, ptr %14, align 4, !tbaa !71
  store float 0x3FC3333340000000, ptr %15, align 4, !tbaa !72
  br label %105

43:                                               ; preds = %35
  %44 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(10) @.str.225, i64 noundef 9) #25
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = icmp eq i32 %36, 0
  br i1 %47, label %48, label %103

48:                                               ; preds = %46
  %49 = load i32, ptr %12, align 8, !tbaa !56
  %50 = icmp sgt i32 %49, 1
  %51 = shl nuw nsw i32 %49, 1
  %52 = select i1 %50, i32 %51, i32 1
  store i32 %52, ptr %12, align 8, !tbaa !56
  store i32 1, ptr %13, align 8, !tbaa !70
  store i32 1, ptr %14, align 4, !tbaa !71
  store float 0x3FD99999A0000000, ptr %29, align 8, !tbaa !73
  store float 0x3FE3333340000000, ptr %16, align 4, !tbaa !36
  %53 = load i32, ptr %20, align 4, !tbaa !59
  %54 = add nsw i32 %53, 2
  store i32 %54, ptr %20, align 4, !tbaa !59
  br label %105

55:                                               ; preds = %43
  %56 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(6) @.str.226, i64 noundef 5) #25
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = icmp eq i32 %36, 0
  br i1 %59, label %60, label %103

60:                                               ; preds = %58
  store i32 -2, ptr %13, align 8, !tbaa !70
  store i32 -2, ptr %14, align 4, !tbaa !71
  store float 2.500000e-01, ptr %15, align 4, !tbaa !72
  store i32 0, ptr %30, align 8, !tbaa !48
  store <2 x float> <float 0x3FF19999A0000000, float 0x3FF19999A0000000>, ptr %31, align 8, !tbaa !33
  store float 5.000000e-01, ptr %16, align 4, !tbaa !36
  store i32 6, ptr %32, align 4, !tbaa !18
  store i32 6, ptr %33, align 4, !tbaa !18
  store float 0x3FE99999A0000000, ptr %34, align 8, !tbaa !74
  br label %105

61:                                               ; preds = %55
  %62 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(11) @.str.227, i64 noundef 5) #25
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = icmp eq i32 %36, 0
  br i1 %65, label %66, label %103

66:                                               ; preds = %64
  store i32 -3, ptr %13, align 8, !tbaa !70
  store i32 -3, ptr %14, align 4, !tbaa !71
  store <2 x float> <float 2.000000e+00, float 0x3FE6666660000000>, ptr %29, align 8, !tbaa !33
  store float 0x3FF3333340000000, ptr %16, align 4, !tbaa !36
  br label %105

67:                                               ; preds = %61
  %68 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(5) @.str.145, i64 noundef 4) #25
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = icmp eq i32 %36, 0
  br i1 %71, label %72, label %103

72:                                               ; preds = %70
  store i32 0, ptr %27, align 8, !tbaa !35
  store i32 0, ptr %28, align 8, !tbaa !75
  br label %105

73:                                               ; preds = %67
  %74 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(5) @.str.146, i64 noundef 4) #25
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = icmp eq i32 %36, 0
  br i1 %77, label %78, label %103

78:                                               ; preds = %76
  store i32 2, ptr %27, align 8, !tbaa !35
  store i32 0, ptr %28, align 8, !tbaa !75
  br label %105

79:                                               ; preds = %73
  %80 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(11) @.str.228, i64 noundef 10) #25
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 0, ptr %23, align 4, !tbaa !57
  store i32 0, ptr %24, align 8, !tbaa !58
  store i32 0, ptr %25, align 8, !tbaa !76
  store i32 0, ptr %26, align 4, !tbaa !66
  br label %105

83:                                               ; preds = %79
  %84 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(12) @.str.229, i64 noundef 11) #25
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 0, ptr %18, align 4, !tbaa !37
  store i32 0, ptr %19, align 8, !tbaa !77
  store i32 0, ptr %20, align 4, !tbaa !59
  store i32 1, ptr %21, align 8, !tbaa !78
  store i32 0, ptr %22, align 8, !tbaa !53
  br label %105

87:                                               ; preds = %83
  %88 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(7) @.str.230, i64 noundef 6) #25
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = icmp eq i32 %36, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %90
  %93 = load i32, ptr %12, align 8, !tbaa !56
  %94 = icmp sgt i32 %93, 1
  %95 = shl nuw nsw i32 %93, 1
  %96 = select i1 %94, i32 %95, i32 1
  store i32 %96, ptr %12, align 8, !tbaa !56
  store i32 -1, ptr %13, align 8, !tbaa !70
  store i32 -1, ptr %14, align 4, !tbaa !71
  store float 0x3FC99999A0000000, ptr %15, align 4, !tbaa !72
  store float 0x3FF4CCCCC0000000, ptr %16, align 4, !tbaa !36
  %97 = load i32, ptr %17, align 4, !tbaa !65
  %98 = and i32 %97, 16
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %92
  %101 = or i32 %97, 32
  store i32 %101, ptr %17, align 4, !tbaa !65
  br label %105

102:                                              ; preds = %87
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.231, ptr noundef nonnull %37) #29
  br label %109

103:                                              ; preds = %90, %76, %70, %64, %58, %46, %40
  %104 = add nsw i32 %36, 1
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.232, ptr noundef nonnull %37) #29
  br label %105

105:                                              ; preds = %42, %60, %72, %82, %100, %92, %86, %78, %66, %48, %103
  %106 = phi i32 [ %104, %103 ], [ 1, %100 ], [ 1, %92 ], [ %36, %86 ], [ %36, %82 ], [ 1, %78 ], [ 1, %72 ], [ 1, %66 ], [ 1, %60 ], [ 1, %48 ], [ 1, %42 ]
  %107 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.223) #27
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %35, !llvm.loop !79

109:                                              ; preds = %105, %7, %102
  %110 = phi i32 [ -1, %102 ], [ 0, %7 ], [ 0, %105 ]
  tail call void @x264_free(ptr noundef nonnull %5) #29
  br label %111

111:                                              ; preds = %109, %2
  %112 = phi i32 [ -1, %2 ], [ %110, %109 ]
  ret i32 %112
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @x264_param_apply_fastfirstpass(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 18
  %3 = load i32, ptr %2, align 8, !tbaa !38
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  %7 = load i32, ptr %6, align 8, !tbaa !40
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  store i32 1, ptr %10, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 2
  store i32 0, ptr %11, align 8, !tbaa !81
  %12 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 1
  store i32 0, ptr %12, align 4, !tbaa !65
  %13 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  store i32 0, ptr %13, align 4, !tbaa !60
  %14 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  %15 = load i32, ptr %14, align 4, !tbaa !61
  %16 = tail call i32 @llvm.smin.i32(i32 %15, i32 2)
  store i32 %16, ptr %14, align 4, !tbaa !61
  %17 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  store i32 0, ptr %17, align 8, !tbaa !63
  %18 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 15
  store i32 1, ptr %18, align 4, !tbaa !69
  br label %19

19:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @x264_param_apply_profile(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %44, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.1) #25
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 2
  store i32 0, ptr %8, align 8, !tbaa !81
  %9 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  store i32 0, ptr %9, align 8, !tbaa !58
  %10 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 0, ptr %10, align 8, !tbaa !82
  %11 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  store i32 0, ptr %11, align 4, !tbaa !59
  %12 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  store i32 0, ptr %12, align 4, !tbaa !66
  %13 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  %14 = load i32, ptr %13, align 8, !tbaa !83
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %7
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2) #29
  br label %44

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 55
  %19 = load i32, ptr %18, align 8, !tbaa !84
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.3) #29
  br label %32

22:                                               ; preds = %4
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.4) #25
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 2
  store i32 0, ptr %26, align 8, !tbaa !81
  %27 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 0, ptr %27, align 8, !tbaa !82
  br label %32

28:                                               ; preds = %22
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.5) #25
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull %1) #29
  br label %44

32:                                               ; preds = %25, %28, %17, %21
  %33 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42
  %34 = load i32, ptr %33, align 8, !tbaa !85
  switch i32 %34, label %44 [
    i32 0, label %35
    i32 1, label %39
  ]

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !86
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %44

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 6
  %41 = load float, ptr %40, align 8, !tbaa !31
  %42 = fcmp oeq float %41, 0.000000e+00
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %35
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull %1) #29
  br label %44

44:                                               ; preds = %32, %35, %39, %2, %43, %31, %16
  %45 = phi i32 [ -1, %31 ], [ -1, %43 ], [ -1, %16 ], [ 0, %2 ], [ 0, %39 ], [ 0, %35 ], [ 0, %32 ]
  ret i32 %45
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_log(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #4 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 38
  %8 = load i32, ptr %7, align 16, !tbaa !87
  %9 = icmp slt i32 %8, %1
  br i1 %9, label %17, label %11

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #30
  call void @llvm.va_start(ptr nonnull %4)
  call void @x264_log_default(ptr poison, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #29
  br label %16

11:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #30
  call void @llvm.va_start(ptr nonnull %4)
  %12 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 36
  %13 = load ptr, ptr %12, align 16, !tbaa !108
  %14 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 37
  %15 = load ptr, ptr %14, align 8, !tbaa !109
  call void %13(ptr noundef %15, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #27
  br label %16

16:                                               ; preds = %11, %10
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #30
  br label %17

17:                                               ; preds = %16, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @x264_param_parse(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #30
  store i32 0, ptr %4, align 4, !tbaa !18
  %5 = icmp eq ptr %2, null
  %6 = icmp eq ptr %1, null
  br i1 %6, label %1009, label %7

7:                                                ; preds = %3
  %8 = select i1 %5, ptr @.str.8, ptr %2
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = icmp eq i8 %9, 61
  %11 = zext i1 %10 to i64
  %12 = getelementptr inbounds i8, ptr %8, i64 %11
  %13 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 95) #25
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %7
  %16 = tail call ptr @spec_strdup(ptr noundef nonnull %1) #29
  %17 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %16, i32 noundef 95) #25
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15, %19
  %20 = phi ptr [ %21, %19 ], [ %17, %15 ]
  store i8 45, ptr %20, align 1, !tbaa !5
  %21 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %16, i32 noundef 95) #25
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %19, !llvm.loop !110

23:                                               ; preds = %19, %15, %7
  %24 = phi ptr [ null, %7 ], [ %16, %15 ], [ %16, %19 ]
  %25 = phi ptr [ %1, %7 ], [ %16, %15 ], [ %16, %19 ]
  %26 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(4) @.str.9, i64 noundef 3) #25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(3) @.str.10, i64 noundef 2) #25
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28, %23
  %32 = phi i64 [ 3, %23 ], [ 2, %28 ]
  %33 = getelementptr inbounds i8, ptr %25, i64 %32
  %34 = call fastcc i32 @x264_atobool(ptr noundef nonnull %12, ptr noundef nonnull %4) #29, !range !111
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, ptr @.str.8, ptr @.str.11
  br label %37

37:                                               ; preds = %31, %28
  %38 = phi ptr [ %12, %28 ], [ %36, %31 ]
  %39 = phi ptr [ %25, %28 ], [ %33, %31 ]
  %40 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(4) @.str.12) #25
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %98

42:                                               ; preds = %37
  %43 = tail call ptr @__ctype_b_loc() #31
  %44 = load ptr, ptr %43, align 8, !tbaa !54
  %45 = load i8, ptr %38, align 1, !tbaa !5
  %46 = sext i8 %45 to i64
  %47 = getelementptr inbounds i16, ptr %44, i64 %46
  %48 = load i16, ptr %47, align 2, !tbaa !112
  %49 = and i16 %48, 2048
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %42
  %52 = call fastcc i32 @x264_atoi(ptr noundef nonnull %38, ptr noundef nonnull %4) #29
  br label %62

53:                                               ; preds = %42
  %54 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(5) @.str.13) #25
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = call fastcc i32 @x264_atobool(ptr noundef nonnull %38, ptr noundef nonnull %4) #29, !range !111
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56, %53
  %60 = phi i32 [ 1, %56 ], [ 0, %53 ]
  %61 = tail call i32 @x264_cpu_detect() #27
  br label %62

62:                                               ; preds = %59, %56, %51
  %63 = phi i32 [ 0, %51 ], [ %60, %59 ], [ 1, %56 ]
  %64 = phi i32 [ %52, %51 ], [ %61, %59 ], [ 0, %56 ]
  store i32 %64, ptr %0, align 8, !tbaa !8
  %65 = load i32, ptr %4, align 4, !tbaa !18
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %997, label %67

67:                                               ; preds = %62
  %68 = tail call ptr @spec_strdup(ptr noundef nonnull %38) #29
  store i32 0, ptr %4, align 4, !tbaa !18
  store i32 0, ptr %0, align 8, !tbaa !8
  %69 = tail call ptr @strtok(ptr noundef %68, ptr noundef nonnull @.str.14) #27
  %70 = icmp eq ptr %69, null
  br i1 %70, label %97, label %71

71:                                               ; preds = %67
  %72 = load i32, ptr getelementptr inbounds ([0 x %struct.x264_cpu_name_t], ptr @x264_cpu_names, i64 0, i64 0, i32 1), align 4, !tbaa !114
  %73 = icmp eq i32 %72, 0
  br label %74

74:                                               ; preds = %71, %94
  %75 = phi ptr [ %69, %71 ], [ %95, %94 ]
  br i1 %73, label %93, label %76

76:                                               ; preds = %74
  %77 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull dereferenceable(1) @x264_cpu_names) #25
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %76, %85
  %80 = phi i64 [ %81, %85 ], [ 0, %76 ]
  %81 = add nuw i64 %80, 1
  %82 = getelementptr inbounds [0 x %struct.x264_cpu_name_t], ptr @x264_cpu_names, i64 0, i64 %81, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !114
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %93, label %85, !llvm.loop !116

85:                                               ; preds = %79
  %86 = getelementptr inbounds [0 x %struct.x264_cpu_name_t], ptr @x264_cpu_names, i64 0, i64 %81
  %87 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull dereferenceable(1) %86) #25
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %79, !llvm.loop !116

89:                                               ; preds = %85, %76
  %90 = phi i32 [ %72, %76 ], [ %83, %85 ]
  %91 = load i32, ptr %0, align 8, !tbaa !8
  %92 = or i32 %91, %90
  store i32 %92, ptr %0, align 8, !tbaa !8
  br label %94

93:                                               ; preds = %79, %74
  store i32 1, ptr %4, align 4, !tbaa !18
  br label %94

94:                                               ; preds = %89, %93
  %95 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.14) #27
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %74, !llvm.loop !117

97:                                               ; preds = %94, %67
  tail call void @free(ptr noundef %68) #27
  br label %997

98:                                               ; preds = %37
  %99 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(8) @.str.15) #25
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(5) @.str.13) #25
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  store i32 0, ptr %105, align 4, !tbaa !16
  br label %997

106:                                              ; preds = %101
  %107 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %108 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  store i32 %107, ptr %108, align 4, !tbaa !16
  br label %997

109:                                              ; preds = %98
  %110 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(15) @.str.16) #25
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %114 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 2
  store i32 %113, ptr %114, align 8, !tbaa !78
  br label %997

115:                                              ; preds = %109
  %116 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(15) @.str.17) #25
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %115
  %119 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(5) @.str.13) #25
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 4
  store i32 -1, ptr %122, align 8, !tbaa !77
  br label %997

123:                                              ; preds = %118
  %124 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %125 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 4
  store i32 %124, ptr %125, align 8, !tbaa !77
  br label %997

126:                                              ; preds = %115
  %127 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(14) @.str.18) #25
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(16) @.str.19) #25
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129, %126
  %133 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %134 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 3
  store i32 %133, ptr %134, align 4, !tbaa !118
  br label %997

135:                                              ; preds = %129
  %136 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(6) @.str.20) #25
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  %139 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(10) @.str.21) #25
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %138, %135
  %142 = call fastcc double @x264_atof(ptr noundef %38, ptr noundef nonnull %4) #29
  %143 = fcmp olt double %142, 6.000000e+00
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = call fastcc double @x264_atof(ptr noundef %38, ptr noundef nonnull %4) #29
  %146 = tail call double @llvm.fmuladd.f64(double %145, double 1.000000e+01, double 5.000000e-01)
  %147 = fptosi double %146 to i32
  %148 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8
  store i32 %147, ptr %148, align 8, !tbaa !21
  br label %997

149:                                              ; preds = %141
  %150 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %151 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8
  store i32 %150, ptr %151, align 8, !tbaa !21
  br label %997

152:                                              ; preds = %138
  %153 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(4) @.str.22) #25
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11
  %157 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 1
  %158 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %38, ptr noundef nonnull @.str.23, ptr noundef nonnull %157, ptr noundef nonnull %156) #27
  %159 = icmp eq i32 %158, 2
  br i1 %159, label %164, label %160

160:                                              ; preds = %155
  %161 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %38, ptr noundef nonnull @.str.24, ptr noundef nonnull %157, ptr noundef nonnull %156) #27
  %162 = icmp ne i32 %161, 2
  %163 = zext i1 %162 to i32
  br label %164

164:                                              ; preds = %160, %155
  %165 = phi i32 [ 0, %155 ], [ %163, %160 ]
  store i32 %165, ptr %4, align 4, !tbaa !18
  br label %997

166:                                              ; preds = %152
  %167 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(9) @.str.25) #25
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 2
  %171 = tail call fastcc i32 @parse_enum(ptr noundef %38, ptr noundef nonnull @x264_overscan_names, ptr noundef nonnull %170) #29, !range !55
  %172 = load i32, ptr %4, align 4, !tbaa !18
  %173 = or i32 %172, %171
  store i32 %173, ptr %4, align 4, !tbaa !18
  br label %997

174:                                              ; preds = %166
  %175 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(12) @.str.26) #25
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 3
  %179 = tail call fastcc i32 @parse_enum(ptr noundef %38, ptr noundef nonnull @x264_vidformat_names, ptr noundef nonnull %178) #29, !range !55
  %180 = load i32, ptr %4, align 4, !tbaa !18
  %181 = or i32 %180, %179
  store i32 %181, ptr %4, align 4, !tbaa !18
  br label %997

182:                                              ; preds = %174
  %183 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(10) @.str.27) #25
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 4
  %187 = tail call fastcc i32 @parse_enum(ptr noundef %38, ptr noundef nonnull @x264_fullrange_names, ptr noundef nonnull %186) #29, !range !55
  %188 = load i32, ptr %4, align 4, !tbaa !18
  %189 = or i32 %188, %187
  store i32 %189, ptr %4, align 4, !tbaa !18
  br label %997

190:                                              ; preds = %182
  %191 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(10) @.str.28) #25
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 5
  %195 = tail call fastcc i32 @parse_enum(ptr noundef %38, ptr noundef nonnull @x264_colorprim_names, ptr noundef nonnull %194) #29, !range !55
  %196 = load i32, ptr %4, align 4, !tbaa !18
  %197 = or i32 %196, %195
  store i32 %197, ptr %4, align 4, !tbaa !18
  br label %997

198:                                              ; preds = %190
  %199 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(9) @.str.29) #25
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 6
  %203 = tail call fastcc i32 @parse_enum(ptr noundef %38, ptr noundef nonnull @x264_transfer_names, ptr noundef nonnull %202) #29, !range !55
  %204 = load i32, ptr %4, align 4, !tbaa !18
  %205 = or i32 %204, %203
  store i32 %205, ptr %4, align 4, !tbaa !18
  br label %997

206:                                              ; preds = %198
  %207 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(12) @.str.30) #25
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 7
  %211 = tail call fastcc i32 @parse_enum(ptr noundef %38, ptr noundef nonnull @x264_colmatrix_names, ptr noundef nonnull %210) #29, !range !55
  %212 = load i32, ptr %4, align 4, !tbaa !18
  %213 = or i32 %212, %211
  store i32 %213, ptr %4, align 4, !tbaa !18
  br label %997

214:                                              ; preds = %206
  %215 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(10) @.str.31) #25
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %214
  %218 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %219 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 8
  store i32 %218, ptr %219, align 4, !tbaa !119
  %220 = icmp ugt i32 %218, 5
  %221 = zext i1 %220 to i32
  store i32 %221, ptr %4, align 4, !tbaa !18
  br label %997

222:                                              ; preds = %214
  %223 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(4) @.str.32) #25
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %237

225:                                              ; preds = %222
  %226 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 48
  %227 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 49
  %228 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %38, ptr noundef nonnull @.str.33, ptr noundef nonnull %226, ptr noundef nonnull %227) #27
  %229 = icmp eq i32 %228, 2
  br i1 %229, label %997, label %230

230:                                              ; preds = %225
  %231 = call fastcc double @x264_atof(ptr noundef %38, ptr noundef nonnull %4) #29
  %232 = fptrunc double %231 to float
  %233 = fmul float %232, 1.000000e+03
  %234 = fpext float %233 to double
  %235 = fadd double %234, 5.000000e-01
  %236 = fptosi double %235 to i32
  store i32 %236, ptr %226, align 4, !tbaa !19
  store i32 1000, ptr %227, align 8, !tbaa !20
  br label %997

237:                                              ; preds = %222
  %238 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(4) @.str.34) #25
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %237
  %241 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(9) @.str.35) #25
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %240, %237
  %244 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %245 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  store i32 %244, ptr %245, align 8, !tbaa !56
  br label %997

246:                                              ; preds = %240
  %247 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(7) @.str.36) #25
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %246
  %250 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %251 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 13
  store i32 %250, ptr %251, align 4, !tbaa !120
  %252 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 14
  %253 = load i32, ptr %252, align 8, !tbaa !25
  %254 = icmp sgt i32 %253, %250
  br i1 %254, label %255, label %997

255:                                              ; preds = %249
  store i32 %250, ptr %252, align 8, !tbaa !25
  br label %997

256:                                              ; preds = %246
  %257 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(11) @.str.37) #25
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %262, label %259

259:                                              ; preds = %256
  %260 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(11) @.str.38) #25
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %269

262:                                              ; preds = %259, %256
  %263 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %264 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 14
  store i32 %263, ptr %264, align 8, !tbaa !25
  %265 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 13
  %266 = load i32, ptr %265, align 4, !tbaa !120
  %267 = icmp slt i32 %266, %263
  br i1 %267, label %268, label %997

268:                                              ; preds = %262
  store i32 %263, ptr %265, align 4, !tbaa !120
  br label %997

269:                                              ; preds = %259
  %270 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(9) @.str.39) #25
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %280

272:                                              ; preds = %269
  %273 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %274 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 15
  store i32 %273, ptr %274, align 4, !tbaa !26
  %275 = load i32, ptr %4, align 4, !tbaa !18
  %276 = or i32 %275, %273
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %997, label %278

278:                                              ; preds = %272
  store i32 0, ptr %4, align 4, !tbaa !18
  %279 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  store i32 %279, ptr %274, align 4, !tbaa !26
  br label %997

280:                                              ; preds = %269
  %281 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(14) @.str.40) #25
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %280
  %284 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %285 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 16
  store i32 %284, ptr %285, align 8, !tbaa !121
  br label %997

286:                                              ; preds = %280
  %287 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(8) @.str.41) #25
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %286
  %290 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %291 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  store i32 %290, ptr %291, align 4, !tbaa !59
  br label %997

292:                                              ; preds = %286
  %293 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(8) @.str.42) #25
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %302

295:                                              ; preds = %292
  %296 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %297 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 18
  store i32 %296, ptr %297, align 8, !tbaa !64
  %298 = load i32, ptr %4, align 4, !tbaa !18
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %997, label %300

300:                                              ; preds = %295
  store i32 0, ptr %4, align 4, !tbaa !18
  %301 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  store i32 %301, ptr %297, align 8, !tbaa !64
  br label %997

302:                                              ; preds = %292
  %303 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(7) @.str.43) #25
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %302
  %306 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %307 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 19
  store i32 %306, ptr %307, align 4, !tbaa !122
  br label %997

308:                                              ; preds = %302
  %309 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(10) @.str.44) #25
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %319

311:                                              ; preds = %308
  %312 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 20
  %313 = tail call fastcc i32 @parse_enum(ptr noundef %38, ptr noundef nonnull @x264_b_pyramid_names, ptr noundef nonnull %312) #29, !range !55
  %314 = load i32, ptr %4, align 4, !tbaa !18
  %315 = or i32 %314, %313
  store i32 %315, ptr %4, align 4, !tbaa !18
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %997, label %317

317:                                              ; preds = %311
  store i32 0, ptr %4, align 4, !tbaa !18
  %318 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  store i32 %318, ptr %312, align 8, !tbaa !123
  br label %997

319:                                              ; preds = %308
  %320 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(3) @.str.45) #25
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %319
  %323 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %324 = xor i32 %323, 1
  %325 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 21
  store i32 %324, ptr %325, align 4, !tbaa !57
  br label %997

326:                                              ; preds = %319
  %327 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(7) @.str.46) #25
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %326
  %330 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(8) @.str.47) #25
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %351

332:                                              ; preds = %329, %326
  %333 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 22
  %334 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 23
  %335 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %38, ptr noundef nonnull @.str.23, ptr noundef nonnull %333, ptr noundef nonnull %334) #27
  %336 = icmp eq i32 %335, 2
  br i1 %336, label %340, label %337

337:                                              ; preds = %332
  %338 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %38, ptr noundef nonnull @.str.48, ptr noundef nonnull %333, ptr noundef nonnull %334) #27
  %339 = icmp eq i32 %338, 2
  br i1 %339, label %340, label %342

340:                                              ; preds = %337, %332
  %341 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 21
  store i32 1, ptr %341, align 4, !tbaa !57
  br label %997

342:                                              ; preds = %337
  %343 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %38, ptr noundef nonnull @.str.49, ptr noundef nonnull %333) #27
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %348, label %345

345:                                              ; preds = %342
  %346 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 21
  store i32 1, ptr %346, align 4, !tbaa !57
  %347 = load i32, ptr %333, align 8, !tbaa !70
  store i32 %347, ptr %334, align 4, !tbaa !71
  br label %997

348:                                              ; preds = %342
  %349 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %350 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 21
  store i32 %349, ptr %350, align 4, !tbaa !57
  br label %997

351:                                              ; preds = %329
  %352 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(15) @.str.50) #25
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %357

354:                                              ; preds = %351
  %355 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %356 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 56
  store i32 %355, ptr %356, align 4, !tbaa !22
  br label %997

357:                                              ; preds = %351
  %358 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(14) @.str.51) #25
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %357
  %361 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %362 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 57
  store i32 %361, ptr %362, align 8, !tbaa !23
  br label %997

363:                                              ; preds = %357
  %364 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(7) @.str.52) #25
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %369

366:                                              ; preds = %363
  %367 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %368 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 58
  store i32 %367, ptr %368, align 4, !tbaa !24
  br label %997

369:                                              ; preds = %363
  %370 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(6) @.str.53) #25
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %375

372:                                              ; preds = %369
  %373 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %374 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  store i32 %373, ptr %374, align 8, !tbaa !58
  br label %997

375:                                              ; preds = %369
  %376 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(10) @.str.54) #25
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %381

378:                                              ; preds = %375
  %379 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %380 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 25
  store i32 %379, ptr %380, align 4, !tbaa !124
  br label %997

381:                                              ; preds = %375
  %382 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(11) @.str.55) #25
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %387

384:                                              ; preds = %381
  %385 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %386 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  store i32 %385, ptr %386, align 8, !tbaa !83
  br label %997

387:                                              ; preds = %381
  %388 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(4) @.str.56) #25
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %394

390:                                              ; preds = %387
  %391 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %392 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 53
  store i32 %391, ptr %392, align 8, !tbaa !125
  %393 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  store i32 %391, ptr %393, align 8, !tbaa !83
  br label %997

394:                                              ; preds = %387
  %395 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(4) @.str.57) #25
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %402

397:                                              ; preds = %394
  %398 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %399 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  store i32 %398, ptr %399, align 8, !tbaa !83
  %400 = xor i32 %398, 1
  %401 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 53
  store i32 %400, ptr %401, align 8, !tbaa !125
  br label %997

402:                                              ; preds = %394
  %403 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(18) @.str.58) #25
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %408

405:                                              ; preds = %402
  %406 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %407 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 27
  store i32 %406, ptr %407, align 4, !tbaa !126
  br label %997

408:                                              ; preds = %402
  %409 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(4) @.str.59) #25
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %424

411:                                              ; preds = %408
  %412 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(1) @.str.60) #25
  %413 = icmp eq ptr %412, null
  br i1 %413, label %416, label %414

414:                                              ; preds = %411
  %415 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 0, ptr %415, align 8, !tbaa !82
  br label %997

416:                                              ; preds = %411
  %417 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(1) @.str.61) #25
  %418 = icmp eq ptr %417, null
  br i1 %418, label %421, label %419

419:                                              ; preds = %416
  %420 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 1, ptr %420, align 8, !tbaa !82
  br label %997

421:                                              ; preds = %416
  %422 = tail call ptr @spec_strdup(ptr noundef %38) #29
  %423 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 29
  store ptr %422, ptr %423, align 8, !tbaa !127
  br label %997

424:                                              ; preds = %408
  %425 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(8) @.str.62) #25
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %430

427:                                              ; preds = %424
  %428 = tail call ptr @spec_strdup(ptr noundef %38) #29
  %429 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 29
  store ptr %428, ptr %429, align 8, !tbaa !127
  br label %997

430:                                              ; preds = %424
  %431 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(5) @.str.63) #25
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %448

433:                                              ; preds = %430
  %434 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 2, ptr %434, align 8, !tbaa !82
  %435 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 30
  %436 = tail call fastcc i32 @parse_cqm(ptr noundef %38, ptr noundef nonnull %435, i32 noundef 16) #29
  %437 = load i32, ptr %4, align 4, !tbaa !18
  %438 = or i32 %437, %436
  %439 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 31
  %440 = tail call fastcc i32 @parse_cqm(ptr noundef %38, ptr noundef nonnull %439, i32 noundef 16) #29
  %441 = or i32 %438, %440
  %442 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 32
  %443 = tail call fastcc i32 @parse_cqm(ptr noundef %38, ptr noundef nonnull %442, i32 noundef 16) #29
  %444 = or i32 %441, %443
  %445 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 33
  %446 = tail call fastcc i32 @parse_cqm(ptr noundef %38, ptr noundef nonnull %445, i32 noundef 16) #29
  %447 = or i32 %444, %446
  store i32 %447, ptr %4, align 4, !tbaa !18
  br label %997

448:                                              ; preds = %430
  %449 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(5) @.str.64) #25
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %451, label %460

451:                                              ; preds = %448
  %452 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 2, ptr %452, align 8, !tbaa !82
  %453 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 34
  %454 = tail call fastcc i32 @parse_cqm(ptr noundef %38, ptr noundef nonnull %453, i32 noundef 64) #29
  %455 = load i32, ptr %4, align 4, !tbaa !18
  %456 = or i32 %455, %454
  %457 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 35
  %458 = tail call fastcc i32 @parse_cqm(ptr noundef %38, ptr noundef nonnull %457, i32 noundef 64) #29
  %459 = or i32 %456, %458
  store i32 %459, ptr %4, align 4, !tbaa !18
  br label %997

460:                                              ; preds = %448
  %461 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(6) @.str.65) #25
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %463, label %472

463:                                              ; preds = %460
  %464 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 2, ptr %464, align 8, !tbaa !82
  %465 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 30
  %466 = tail call fastcc i32 @parse_cqm(ptr noundef %38, ptr noundef nonnull %465, i32 noundef 16) #29
  %467 = load i32, ptr %4, align 4, !tbaa !18
  %468 = or i32 %467, %466
  %469 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 31
  %470 = tail call fastcc i32 @parse_cqm(ptr noundef %38, ptr noundef nonnull %469, i32 noundef 16) #29
  %471 = or i32 %468, %470
  store i32 %471, ptr %4, align 4, !tbaa !18
  br label %997

472:                                              ; preds = %460
  %473 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(6) @.str.66) #25
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %484

475:                                              ; preds = %472
  %476 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 2, ptr %476, align 8, !tbaa !82
  %477 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 32
  %478 = tail call fastcc i32 @parse_cqm(ptr noundef %38, ptr noundef nonnull %477, i32 noundef 16) #29
  %479 = load i32, ptr %4, align 4, !tbaa !18
  %480 = or i32 %479, %478
  %481 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 33
  %482 = tail call fastcc i32 @parse_cqm(ptr noundef %38, ptr noundef nonnull %481, i32 noundef 16) #29
  %483 = or i32 %480, %482
  store i32 %483, ptr %4, align 4, !tbaa !18
  br label %997

484:                                              ; preds = %472
  %485 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(7) @.str.67) #25
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %493

487:                                              ; preds = %484
  %488 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 2, ptr %488, align 8, !tbaa !82
  %489 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 30
  %490 = tail call fastcc i32 @parse_cqm(ptr noundef %38, ptr noundef nonnull %489, i32 noundef 16) #29
  %491 = load i32, ptr %4, align 4, !tbaa !18
  %492 = or i32 %491, %490
  store i32 %492, ptr %4, align 4, !tbaa !18
  br label %997

493:                                              ; preds = %484
  %494 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(7) @.str.68) #25
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %502

496:                                              ; preds = %493
  %497 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 2, ptr %497, align 8, !tbaa !82
  %498 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 31
  %499 = tail call fastcc i32 @parse_cqm(ptr noundef %38, ptr noundef nonnull %498, i32 noundef 16) #29
  %500 = load i32, ptr %4, align 4, !tbaa !18
  %501 = or i32 %500, %499
  store i32 %501, ptr %4, align 4, !tbaa !18
  br label %997

502:                                              ; preds = %493
  %503 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(7) @.str.69) #25
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %505, label %511

505:                                              ; preds = %502
  %506 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 2, ptr %506, align 8, !tbaa !82
  %507 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 32
  %508 = tail call fastcc i32 @parse_cqm(ptr noundef %38, ptr noundef nonnull %507, i32 noundef 16) #29
  %509 = load i32, ptr %4, align 4, !tbaa !18
  %510 = or i32 %509, %508
  store i32 %510, ptr %4, align 4, !tbaa !18
  br label %997

511:                                              ; preds = %502
  %512 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(7) @.str.70) #25
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %514, label %520

514:                                              ; preds = %511
  %515 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 2, ptr %515, align 8, !tbaa !82
  %516 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 33
  %517 = tail call fastcc i32 @parse_cqm(ptr noundef %38, ptr noundef nonnull %516, i32 noundef 16) #29
  %518 = load i32, ptr %4, align 4, !tbaa !18
  %519 = or i32 %518, %517
  store i32 %519, ptr %4, align 4, !tbaa !18
  br label %997

520:                                              ; preds = %511
  %521 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(6) @.str.71) #25
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %523, label %529

523:                                              ; preds = %520
  %524 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 2, ptr %524, align 8, !tbaa !82
  %525 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 34
  %526 = tail call fastcc i32 @parse_cqm(ptr noundef %38, ptr noundef nonnull %525, i32 noundef 64) #29
  %527 = load i32, ptr %4, align 4, !tbaa !18
  %528 = or i32 %527, %526
  store i32 %528, ptr %4, align 4, !tbaa !18
  br label %997

529:                                              ; preds = %520
  %530 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(6) @.str.72) #25
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %532, label %538

532:                                              ; preds = %529
  %533 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 2, ptr %533, align 8, !tbaa !82
  %534 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 35
  %535 = tail call fastcc i32 @parse_cqm(ptr noundef %38, ptr noundef nonnull %534, i32 noundef 64) #29
  %536 = load i32, ptr %4, align 4, !tbaa !18
  %537 = or i32 %536, %535
  store i32 %537, ptr %4, align 4, !tbaa !18
  br label %997

538:                                              ; preds = %529
  %539 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(4) @.str.73) #25
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %541, label %544

541:                                              ; preds = %538
  %542 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %543 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 38
  store i32 %542, ptr %543, align 8, !tbaa !47
  br label %997

544:                                              ; preds = %538
  %545 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(9) @.str.74) #25
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %550

547:                                              ; preds = %544
  %548 = tail call ptr @spec_strdup(ptr noundef %38) #29
  %549 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40
  store ptr %548, ptr %549, align 8, !tbaa !128
  br label %997

550:                                              ; preds = %544
  %551 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(8) @.str.75) #25
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %556, label %553

553:                                              ; preds = %550
  %554 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(11) @.str.76) #25
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %589

556:                                              ; preds = %553, %550
  %557 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 1
  store i32 0, ptr %557, align 4
  %558 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(1) @.str.78) #25
  %559 = icmp ne ptr %558, null
  %560 = sext i1 %559 to i32
  store i32 %560, ptr %557, align 4
  %561 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(1) @.str.79) #25
  %562 = icmp eq ptr %561, null
  br i1 %562, label %565, label %563

563:                                              ; preds = %556
  %564 = select i1 %559, i32 -1, i32 1
  store i32 %564, ptr %557, align 4, !tbaa !65
  br label %565

565:                                              ; preds = %563, %556
  %566 = phi i32 [ %564, %563 ], [ %560, %556 ]
  %567 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(1) @.str.80) #25
  %568 = icmp eq ptr %567, null
  br i1 %568, label %571, label %569

569:                                              ; preds = %565
  %570 = or i32 %566, 2
  store i32 %570, ptr %557, align 4, !tbaa !65
  br label %571

571:                                              ; preds = %569, %565
  %572 = phi i32 [ %570, %569 ], [ %566, %565 ]
  %573 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(1) @.str.81) #25
  %574 = icmp eq ptr %573, null
  br i1 %574, label %577, label %575

575:                                              ; preds = %571
  %576 = or i32 %572, 16
  store i32 %576, ptr %557, align 4, !tbaa !65
  br label %577

577:                                              ; preds = %575, %571
  %578 = phi i32 [ %576, %575 ], [ %572, %571 ]
  %579 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(1) @.str.82) #25
  %580 = icmp eq ptr %579, null
  br i1 %580, label %583, label %581

581:                                              ; preds = %577
  %582 = or i32 %578, 32
  store i32 %582, ptr %557, align 4, !tbaa !65
  br label %583

583:                                              ; preds = %581, %577
  %584 = phi i32 [ %582, %581 ], [ %578, %577 ]
  %585 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(1) @.str.83) #25
  %586 = icmp eq ptr %585, null
  br i1 %586, label %997, label %587

587:                                              ; preds = %583
  %588 = or i32 %584, 256
  store i32 %588, ptr %557, align 4, !tbaa !65
  br label %997

589:                                              ; preds = %553
  %590 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(7) @.str.84) #25
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %592, label %595

592:                                              ; preds = %589
  %593 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %594 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 2
  store i32 %593, ptr %594, align 8, !tbaa !81
  br label %997

595:                                              ; preds = %589
  %596 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(8) @.str.85) #25
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %601, label %598

598:                                              ; preds = %595
  %599 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(9) @.str.86) #25
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %601, label %604

601:                                              ; preds = %598, %595
  %602 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %603 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 4
  store i32 %602, ptr %603, align 8, !tbaa !76
  br label %997

604:                                              ; preds = %598
  %605 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(8) @.str.87) #25
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %607, label %610

607:                                              ; preds = %604
  %608 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %609 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  store i32 %608, ptr %609, align 4, !tbaa !66
  br label %997

610:                                              ; preds = %604
  %611 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(7) @.str.88) #25
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %616, label %613

613:                                              ; preds = %610
  %614 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(12) @.str.89) #25
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %616, label %621

616:                                              ; preds = %613, %610
  %617 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  %618 = tail call fastcc i32 @parse_enum(ptr noundef %38, ptr noundef nonnull @x264_direct_pred_names, ptr noundef nonnull %617) #29, !range !55
  %619 = load i32, ptr %4, align 4, !tbaa !18
  %620 = or i32 %619, %618
  store i32 %620, ptr %4, align 4, !tbaa !18
  br label %997

621:                                              ; preds = %613
  %622 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(17) @.str.90) #25
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %624, label %627

624:                                              ; preds = %621
  %625 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %626 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 6
  store i32 %625, ptr %626, align 8, !tbaa !129
  br label %997

627:                                              ; preds = %621
  %628 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(3) @.str.91) #25
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %630, label %635

630:                                              ; preds = %627
  %631 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  %632 = tail call fastcc i32 @parse_enum(ptr noundef %38, ptr noundef nonnull @x264_motion_est_names, ptr noundef nonnull %631) #29, !range !55
  %633 = load i32, ptr %4, align 4, !tbaa !18
  %634 = or i32 %633, %632
  store i32 %634, ptr %4, align 4, !tbaa !18
  br label %997

635:                                              ; preds = %627
  %636 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(8) @.str.92) #25
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %641, label %638

638:                                              ; preds = %635
  %639 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(9) @.str.93) #25
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %641, label %644

641:                                              ; preds = %638, %635
  %642 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %643 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 8
  store i32 %642, ptr %643, align 8, !tbaa !68
  br label %997

644:                                              ; preds = %638
  %645 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(8) @.str.94) #25
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %650, label %647

647:                                              ; preds = %644
  %648 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(9) @.str.95) #25
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %650, label %653

650:                                              ; preds = %647, %644
  %651 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %652 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 9
  store i32 %651, ptr %652, align 4, !tbaa !130
  br label %997

653:                                              ; preds = %647
  %654 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(15) @.str.96) #25
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %659, label %656

656:                                              ; preds = %653
  %657 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(16) @.str.97) #25
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %659, label %662

659:                                              ; preds = %656, %653
  %660 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %661 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 10
  store i32 %660, ptr %661, align 8, !tbaa !131
  br label %997

662:                                              ; preds = %656
  %663 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(6) @.str.98) #25
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %668, label %665

665:                                              ; preds = %662
  %666 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(5) @.str.99) #25
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %668, label %671

668:                                              ; preds = %665, %662
  %669 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %670 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  store i32 %669, ptr %670, align 4, !tbaa !61
  br label %997

671:                                              ; preds = %665
  %672 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(7) @.str.100) #25
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %674, label %690

674:                                              ; preds = %671
  %675 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 18
  %676 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 19
  %677 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %38, ptr noundef nonnull @.str.101, ptr noundef nonnull %675, ptr noundef nonnull %676) #27
  %678 = icmp eq i32 %677, 2
  br i1 %678, label %997, label %679

679:                                              ; preds = %674
  %680 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %38, ptr noundef nonnull @.str.102, ptr noundef nonnull %675, ptr noundef nonnull %676) #27
  %681 = icmp eq i32 %680, 2
  br i1 %681, label %997, label %682

682:                                              ; preds = %679
  %683 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %38, ptr noundef nonnull @.str.103, ptr noundef nonnull %675, ptr noundef nonnull %676) #27
  %684 = icmp eq i32 %683, 2
  br i1 %684, label %997, label %685

685:                                              ; preds = %682
  %686 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %38, ptr noundef nonnull @.str.104, ptr noundef nonnull %675) #27
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %689, label %688

688:                                              ; preds = %685
  store float 0.000000e+00, ptr %676, align 4, !tbaa !72
  br label %997

689:                                              ; preds = %685
  store <2 x float> zeroinitializer, ptr %675, align 8, !tbaa !33
  br label %997

690:                                              ; preds = %671
  %691 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(4) @.str.105) #25
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %693, label %696

693:                                              ; preds = %690
  %694 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %695 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 20
  store i32 %694, ptr %695, align 8, !tbaa !75
  br label %997

696:                                              ; preds = %690
  %697 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(10) @.str.106) #25
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %699, label %702

699:                                              ; preds = %696
  %700 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %701 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 12
  store i32 %700, ptr %701, align 8, !tbaa !132
  br label %997

702:                                              ; preds = %696
  %703 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(11) @.str.107) #25
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %705, label %708

705:                                              ; preds = %702
  %706 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %707 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 13
  store i32 %706, ptr %707, align 4, !tbaa !62
  br label %997

708:                                              ; preds = %702
  %709 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(8) @.str.108) #25
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %711, label %714

711:                                              ; preds = %708
  %712 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %713 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  store i32 %712, ptr %713, align 8, !tbaa !63
  br label %997

714:                                              ; preds = %708
  %715 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(11) @.str.109) #25
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %717, label %720

717:                                              ; preds = %714
  %718 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %719 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 15
  store i32 %718, ptr %719, align 4, !tbaa !69
  br label %997

720:                                              ; preds = %714
  %721 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(13) @.str.110) #25
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %723, label %726

723:                                              ; preds = %720
  %724 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %725 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 16
  store i32 %724, ptr %725, align 8, !tbaa !48
  br label %997

726:                                              ; preds = %720
  %727 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(15) @.str.111) #25
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %729, label %732

729:                                              ; preds = %726
  %730 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %731 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 21
  store i32 %730, ptr %731, align 4, !tbaa !18
  br label %997

732:                                              ; preds = %726
  %733 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(15) @.str.112) #25
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %735, label %738

735:                                              ; preds = %732
  %736 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %737 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 21, i64 1
  store i32 %736, ptr %737, align 4, !tbaa !18
  br label %997

738:                                              ; preds = %732
  %739 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(3) @.str.113) #25
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %741, label %744

741:                                              ; preds = %738
  %742 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %743 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 17
  store i32 %742, ptr %743, align 4, !tbaa !133
  br label %997

744:                                              ; preds = %738
  %745 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(8) @.str.114) #25
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %747, label %751

747:                                              ; preds = %744
  %748 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %749 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42
  %750 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 5
  store i32 %748, ptr %750, align 4, !tbaa !27
  store i32 2, ptr %749, align 8, !tbaa !85
  br label %997

751:                                              ; preds = %744
  %752 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(3) @.str.115) #25
  %753 = icmp eq i32 %752, 0
  br i1 %753, label %757, label %754

754:                                              ; preds = %751
  %755 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(12) @.str.116) #25
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %757, label %761

757:                                              ; preds = %754, %751
  %758 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %759 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42
  %760 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 1
  store i32 %758, ptr %760, align 4, !tbaa !86
  store i32 0, ptr %759, align 8, !tbaa !85
  br label %997

761:                                              ; preds = %754
  %762 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(4) @.str.117) #25
  %763 = icmp eq i32 %762, 0
  br i1 %763, label %764, label %769

764:                                              ; preds = %761
  %765 = call fastcc double @x264_atof(ptr noundef %38, ptr noundef nonnull %4) #29
  %766 = fptrunc double %765 to float
  %767 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42
  %768 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 6
  store float %766, ptr %768, align 8, !tbaa !31
  store i32 1, ptr %767, align 8, !tbaa !85
  br label %997

769:                                              ; preds = %761
  %770 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(8) @.str.118) #25
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %772, label %776

772:                                              ; preds = %769
  %773 = call fastcc double @x264_atof(ptr noundef %38, ptr noundef nonnull %4) #29
  %774 = fptrunc double %773 to float
  %775 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 7
  store float %774, ptr %775, align 4, !tbaa !134
  br label %997

776:                                              ; preds = %769
  %777 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(13) @.str.119) #25
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %779, label %782

779:                                              ; preds = %776
  %780 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %781 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  store i32 %780, ptr %781, align 4, !tbaa !37
  br label %997

782:                                              ; preds = %776
  %783 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(6) @.str.120) #25
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %788, label %785

785:                                              ; preds = %782
  %786 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(7) @.str.121) #25
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %788, label %791

788:                                              ; preds = %785, %782
  %789 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %790 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 2
  store i32 %789, ptr %790, align 8, !tbaa !135
  br label %997

791:                                              ; preds = %785
  %792 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(6) @.str.122) #25
  %793 = icmp eq i32 %792, 0
  br i1 %793, label %797, label %794

794:                                              ; preds = %791
  %795 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(7) @.str.123) #25
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %797, label %800

797:                                              ; preds = %794, %791
  %798 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %799 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 3
  store i32 %798, ptr %799, align 4, !tbaa !136
  br label %997

800:                                              ; preds = %794
  %801 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(7) @.str.124) #25
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %806, label %803

803:                                              ; preds = %800
  %804 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(8) @.str.125) #25
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %806, label %809

806:                                              ; preds = %803, %800
  %807 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %808 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 4
  store i32 %807, ptr %808, align 8, !tbaa !32
  br label %997

809:                                              ; preds = %803
  %810 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(8) @.str.126) #25
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %812, label %821

812:                                              ; preds = %809
  %813 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.127, ptr noundef nonnull dereferenceable(1) %38, i64 noundef 3) #25
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %818, label %815

815:                                              ; preds = %812
  %816 = call fastcc double @x264_atof(ptr noundef %38, ptr noundef nonnull %4) #29
  %817 = fptrunc double %816 to float
  br label %818

818:                                              ; preds = %812, %815
  %819 = phi float [ %817, %815 ], [ 1.000000e+09, %812 ]
  %820 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 8
  store float %819, ptr %820, align 8, !tbaa !28
  br label %997

821:                                              ; preds = %809
  %822 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(12) @.str.128) #25
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %824, label %827

824:                                              ; preds = %821
  %825 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %826 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 9
  store i32 %825, ptr %826, align 4, !tbaa !29
  br label %997

827:                                              ; preds = %821
  %828 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(12) @.str.129) #25
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %830, label %833

830:                                              ; preds = %827
  %831 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %832 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 10
  store i32 %831, ptr %832, align 8, !tbaa !30
  br label %997

833:                                              ; preds = %827
  %834 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(9) @.str.130) #25
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %836, label %840

836:                                              ; preds = %833
  %837 = call fastcc double @x264_atof(ptr noundef %38, ptr noundef nonnull %4) #29
  %838 = fptrunc double %837 to float
  %839 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 11
  store float %838, ptr %839, align 4, !tbaa !137
  br label %997

840:                                              ; preds = %833
  %841 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(8) @.str.131) #25
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %846, label %843

843:                                              ; preds = %840
  %844 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(10) @.str.132) #25
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %846, label %850

846:                                              ; preds = %843, %840
  %847 = call fastcc double @x264_atof(ptr noundef %38, ptr noundef nonnull %4) #29
  %848 = fptrunc double %847 to float
  %849 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 12
  store float %848, ptr %849, align 8, !tbaa !138
  br label %997

850:                                              ; preds = %843
  %851 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(8) @.str.133) #25
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %856, label %853

853:                                              ; preds = %850
  %854 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(10) @.str.134) #25
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %856, label %860

856:                                              ; preds = %853, %850
  %857 = call fastcc double @x264_atof(ptr noundef %38, ptr noundef nonnull %4) #29
  %858 = fptrunc double %857 to float
  %859 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 13
  store float %858, ptr %859, align 4, !tbaa !34
  br label %997

860:                                              ; preds = %853
  %861 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(8) @.str.135) #25
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %863, label %866

863:                                              ; preds = %860
  %864 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %865 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 14
  store i32 %864, ptr %865, align 8, !tbaa !35
  br label %997

866:                                              ; preds = %860
  %867 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(12) @.str.136) #25
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %869, label %873

869:                                              ; preds = %866
  %870 = call fastcc double @x264_atof(ptr noundef %38, ptr noundef nonnull %4) #29
  %871 = fptrunc double %870 to float
  %872 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 15
  store float %871, ptr %872, align 4, !tbaa !36
  br label %997

873:                                              ; preds = %866
  %874 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(5) @.str.137) #25
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %876, label %883

876:                                              ; preds = %873
  %877 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %878 = tail call fastcc i32 @x264_clip3(i32 noundef %877) #29
  %879 = and i32 %878, 1
  %880 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 18
  store i32 %879, ptr %880, align 8, !tbaa !38
  %881 = and i32 %878, 2
  %882 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  store i32 %881, ptr %882, align 8, !tbaa !40
  br label %997

883:                                              ; preds = %873
  %884 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(6) @.str.138) #25
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %886, label %891

886:                                              ; preds = %883
  %887 = tail call ptr @spec_strdup(ptr noundef %38) #29
  %888 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 21
  store ptr %887, ptr %888, align 8, !tbaa !41
  %889 = tail call ptr @spec_strdup(ptr noundef %38) #29
  %890 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 19
  store ptr %889, ptr %890, align 8, !tbaa !39
  br label %997

891:                                              ; preds = %883
  %892 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(6) @.str.139) #25
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %894, label %898

894:                                              ; preds = %891
  %895 = call fastcc double @x264_atof(ptr noundef %38, ptr noundef nonnull %4) #29
  %896 = fptrunc double %895 to float
  %897 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 22
  store float %896, ptr %897, align 8, !tbaa !74
  br label %997

898:                                              ; preds = %891
  %899 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(7) @.str.140) #25
  %900 = icmp eq i32 %899, 0
  br i1 %900, label %901, label %904

901:                                              ; preds = %898
  %902 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %903 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  store i32 %902, ptr %903, align 8, !tbaa !44
  br label %997

904:                                              ; preds = %898
  %905 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(6) @.str.141) #25
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %907, label %911

907:                                              ; preds = %904
  %908 = call fastcc double @x264_atof(ptr noundef %38, ptr noundef nonnull %4) #29
  %909 = fptrunc double %908 to float
  %910 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 23
  store float %909, ptr %910, align 4, !tbaa !139
  br label %997

911:                                              ; preds = %904
  %912 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(9) @.str.142) #25
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %917, label %914

914:                                              ; preds = %911
  %915 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(10) @.str.143) #25
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %917, label %921

917:                                              ; preds = %914, %911
  %918 = call fastcc double @x264_atof(ptr noundef %38, ptr noundef nonnull %4) #29
  %919 = fptrunc double %918 to float
  %920 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 24
  store float %919, ptr %920, align 8, !tbaa !42
  br label %997

921:                                              ; preds = %914
  %922 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(6) @.str.144) #25
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %924, label %927

924:                                              ; preds = %921
  %925 = tail call ptr @spec_strdup(ptr noundef %38) #29
  %926 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 27
  store ptr %925, ptr %926, align 8, !tbaa !140
  br label %997

927:                                              ; preds = %921
  %928 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(5) @.str.145) #25
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %930, label %933

930:                                              ; preds = %927
  %931 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %932 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 22
  store i32 %931, ptr %932, align 4, !tbaa !141
  br label %997

933:                                              ; preds = %927
  %934 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(5) @.str.146) #25
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %936, label %939

936:                                              ; preds = %933
  %937 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %938 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 23
  store i32 %937, ptr %938, align 8, !tbaa !49
  br label %997

939:                                              ; preds = %933
  %940 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(4) @.str.147) #25
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %942, label %945

942:                                              ; preds = %939
  %943 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %944 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 43
  store i32 %943, ptr %944, align 8, !tbaa !52
  br label %997

945:                                              ; preds = %939
  %946 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(7) @.str.148) #25
  %947 = icmp eq i32 %946, 0
  br i1 %947, label %948, label %951

948:                                              ; preds = %945
  %949 = call fastcc i32 @x264_atoi(ptr noundef %38, ptr noundef nonnull %4) #29
  %950 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 46
  store i32 %949, ptr %950, align 4, !tbaa !142
  br label %997

951:                                              ; preds = %945
  %952 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(14) @.str.149) #25
  %953 = icmp eq i32 %952, 0
  br i1 %953, label %954, label %958

954:                                              ; preds = %951
  %955 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %956 = xor i32 %955, 1
  %957 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 44
  store i32 %956, ptr %957, align 4, !tbaa !50
  br label %997

958:                                              ; preds = %951
  %959 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(15) @.str.150) #25
  %960 = icmp eq i32 %959, 0
  br i1 %960, label %961, label %964

961:                                              ; preds = %958
  %962 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %963 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 44
  store i32 %962, ptr %963, align 4, !tbaa !50
  br label %997

964:                                              ; preds = %958
  %965 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(7) @.str.151) #25
  %966 = icmp eq i32 %965, 0
  br i1 %966, label %967, label %970

967:                                              ; preds = %964
  %968 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %969 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 45
  store i32 %968, ptr %969, align 8, !tbaa !51
  br label %997

970:                                              ; preds = %964
  %971 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(10) @.str.152) #25
  %972 = icmp eq i32 %971, 0
  br i1 %972, label %973, label %977

973:                                              ; preds = %970
  %974 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %975 = xor i32 %974, 1
  %976 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 47
  store i32 %975, ptr %976, align 8, !tbaa !53
  br label %997

977:                                              ; preds = %970
  %978 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(8) @.str.153) #25
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %980, label %985

980:                                              ; preds = %977
  %981 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 10
  %982 = tail call fastcc i32 @parse_enum(ptr noundef %38, ptr noundef nonnull @x264_nal_hrd_names, ptr noundef nonnull %981) #29, !range !55
  %983 = load i32, ptr %4, align 4, !tbaa !18
  %984 = or i32 %983, %982
  store i32 %984, ptr %4, align 4, !tbaa !18
  br label %997

985:                                              ; preds = %977
  %986 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(11) @.str.154) #25
  %987 = icmp eq i32 %986, 0
  br i1 %987, label %988, label %991

988:                                              ; preds = %985
  %989 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %990 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 54
  store i32 %989, ptr %990, align 4, !tbaa !143
  br label %997

991:                                              ; preds = %985
  %992 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(16) @.str.155) #25
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %994, label %1009

994:                                              ; preds = %991
  %995 = call fastcc i32 @x264_atobool(ptr noundef %38, ptr noundef nonnull %4) #29, !range !111
  %996 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 55
  store i32 %995, ptr %996, align 8, !tbaa !84
  br label %997

997:                                              ; preds = %272, %106, %104, %123, %121, %149, %144, %169, %185, %201, %217, %243, %268, %262, %283, %300, %295, %317, %311, %345, %348, %340, %360, %372, %384, %397, %419, %421, %414, %433, %463, %487, %505, %523, %541, %587, %583, %601, %616, %630, %650, %668, %693, %705, %717, %729, %741, %757, %772, %788, %806, %824, %836, %856, %869, %886, %901, %917, %930, %942, %954, %967, %980, %994, %988, %973, %961, %948, %936, %924, %907, %894, %876, %863, %846, %830, %818, %797, %779, %764, %747, %735, %723, %711, %699, %682, %679, %674, %689, %688, %659, %641, %624, %607, %592, %547, %532, %514, %496, %475, %451, %427, %405, %390, %378, %366, %354, %322, %305, %289, %278, %249, %255, %230, %225, %209, %193, %177, %164, %132, %112, %62, %97
  %998 = phi i32 [ 1, %994 ], [ 1, %988 ], [ 0, %980 ], [ 1, %973 ], [ 1, %967 ], [ 1, %961 ], [ 1, %954 ], [ 0, %948 ], [ 1, %942 ], [ 1, %936 ], [ 1, %930 ], [ 0, %924 ], [ 0, %917 ], [ 0, %907 ], [ 1, %901 ], [ 0, %894 ], [ 0, %886 ], [ 0, %876 ], [ 0, %869 ], [ 0, %863 ], [ 0, %856 ], [ 0, %846 ], [ 0, %836 ], [ 0, %830 ], [ 0, %824 ], [ 0, %818 ], [ 0, %806 ], [ 0, %797 ], [ 0, %788 ], [ 0, %779 ], [ 0, %772 ], [ 0, %764 ], [ 0, %757 ], [ 0, %747 ], [ 0, %741 ], [ 0, %735 ], [ 0, %729 ], [ 1, %723 ], [ 1, %717 ], [ 0, %711 ], [ 1, %705 ], [ 1, %699 ], [ 1, %693 ], [ 0, %674 ], [ 0, %679 ], [ 0, %682 ], [ 0, %688 ], [ 0, %689 ], [ 0, %668 ], [ 0, %659 ], [ 0, %650 ], [ 0, %641 ], [ 0, %630 ], [ 0, %624 ], [ 0, %616 ], [ 0, %607 ], [ 1, %601 ], [ 1, %592 ], [ 0, %587 ], [ 0, %583 ], [ 0, %547 ], [ 0, %541 ], [ 0, %532 ], [ 0, %523 ], [ 0, %514 ], [ 0, %505 ], [ 0, %496 ], [ 0, %487 ], [ 0, %475 ], [ 0, %463 ], [ 0, %451 ], [ 0, %433 ], [ 0, %427 ], [ 0, %414 ], [ 0, %419 ], [ 0, %421 ], [ 1, %405 ], [ 1, %397 ], [ 1, %390 ], [ 1, %384 ], [ 0, %378 ], [ 1, %372 ], [ 0, %366 ], [ 0, %360 ], [ 0, %354 ], [ 0, %340 ], [ 0, %345 ], [ 1, %348 ], [ 1, %322 ], [ 0, %317 ], [ 0, %311 ], [ 0, %305 ], [ 1, %300 ], [ 1, %295 ], [ 0, %289 ], [ 1, %283 ], [ 1, %278 ], [ 0, %268 ], [ 0, %262 ], [ 0, %255 ], [ 0, %249 ], [ 0, %243 ], [ 0, %225 ], [ 0, %230 ], [ 0, %217 ], [ 0, %209 ], [ 0, %201 ], [ 0, %193 ], [ 0, %185 ], [ 0, %177 ], [ 0, %169 ], [ 0, %164 ], [ 0, %144 ], [ 0, %149 ], [ 1, %132 ], [ 0, %123 ], [ 0, %121 ], [ 1, %112 ], [ 0, %106 ], [ 0, %104 ], [ %63, %97 ], [ %63, %62 ], [ 1, %272 ]
  %999 = icmp eq ptr %24, null
  br i1 %999, label %1001, label %1000

1000:                                             ; preds = %997
  tail call void @free(ptr noundef nonnull %24) #27
  br label %1001

1001:                                             ; preds = %1000, %997
  %1002 = icmp eq i32 %998, 0
  %1003 = and i1 %5, %1002
  %1004 = zext i1 %1003 to i32
  %1005 = load i32, ptr %4, align 4, !tbaa !18
  %1006 = or i32 %1005, %1004
  %1007 = icmp eq i32 %1006, 0
  %1008 = select i1 %1007, i32 0, i32 -2
  br label %1009

1009:                                             ; preds = %991, %3, %1001
  %1010 = phi i32 [ %1008, %1001 ], [ -1, %3 ], [ -1, %991 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #30
  ret i32 %1010
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @x264_atobool(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #9 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.233) #25
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.8) #25
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.234) #25
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.186) #25
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.11) #25
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.10) #25
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 1, ptr %1, align 4, !tbaa !18
  br label %21

21:                                               ; preds = %11, %14, %17, %2, %5, %8, %20
  %22 = phi i32 [ 0, %20 ], [ 1, %8 ], [ 1, %5 ], [ 1, %2 ], [ 0, %17 ], [ 0, %14 ], [ 0, %11 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc i32 @x264_atoi(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #30
  %4 = call i64 @strtol(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #27
  %5 = load ptr, ptr %3, align 8, !tbaa !54
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i8, ptr %5, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %2
  store i32 1, ptr %1, align 4, !tbaa !18
  br label %11

11:                                               ; preds = %10, %7
  %12 = trunc i64 %4 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #30
  ret i32 %12
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc double @x264_atof(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #30
  %4 = call double @strtod(ptr noundef %0, ptr noundef nonnull %3) #27
  %5 = load ptr, ptr %3, align 8, !tbaa !54
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i8, ptr %5, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %2
  store i32 1, ptr %1, align 4, !tbaa !18
  br label %11

11:                                               ; preds = %10, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #30
  ret double %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @parse_enum(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #15 {
  %4 = load ptr, ptr %1, align 8, !tbaa !54
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %3, %13
  %7 = phi i64 [ %14, %13 ], [ 0, %3 ]
  %8 = phi ptr [ %16, %13 ], [ %4, %3 ]
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %8) #25
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = trunc i64 %7 to i32
  store i32 %12, ptr %2, align 4, !tbaa !18
  br label %18

13:                                               ; preds = %6
  %14 = add nuw i64 %7, 1
  %15 = getelementptr inbounds ptr, ptr %1, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !144

18:                                               ; preds = %13, %3, %11
  %19 = phi i32 [ 0, %11 ], [ -1, %3 ], [ -1, %13 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc i32 @parse_cqm(ptr noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #7 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #30
  %5 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %0, ptr noundef nonnull @.str.49, ptr noundef nonnull %4) #27
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr %4, align 4
  %8 = icmp slt i32 %7, 1
  %9 = select i1 %6, i1 true, i1 %8
  %10 = icmp sgt i32 %7, 255
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %25, label %12

12:                                               ; preds = %3
  %13 = call i32 @llvm.smax.i32(i32 %2, i32 1)
  %14 = add nsw i32 %13, -1
  %15 = zext nneg i32 %14 to i64
  br label %26

16:                                               ; preds = %34
  %17 = getelementptr inbounds i8, ptr %35, i64 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #30
  %18 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %17, ptr noundef nonnull @.str.49, ptr noundef nonnull %4) #27
  %19 = icmp eq i32 %18, 0
  %20 = load i32, ptr %4, align 4
  %21 = icmp slt i32 %20, 1
  %22 = select i1 %19, i1 true, i1 %21
  %23 = icmp sgt i32 %20, 255
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #30
  br label %43

26:                                               ; preds = %12, %16
  %27 = phi i64 [ 0, %12 ], [ %31, %16 ]
  %28 = phi i32 [ %7, %12 ], [ %20, %16 ]
  %29 = phi ptr [ %0, %12 ], [ %17, %16 ]
  %30 = trunc i32 %28 to i8
  %31 = add nuw nsw i64 %27, 1
  %32 = getelementptr inbounds i8, ptr %1, i64 %27
  store i8 %30, ptr %32, align 1, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #30
  %33 = icmp eq i64 %27, %15
  br i1 %33, label %39, label %34

34:                                               ; preds = %26
  %35 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %29, i32 noundef 44) #25
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %16

37:                                               ; preds = %34
  %38 = trunc i64 %31 to i32
  br label %39

39:                                               ; preds = %26, %37
  %40 = phi i32 [ %38, %37 ], [ %13, %26 ]
  %41 = icmp ne i32 %40, %2
  %42 = sext i1 %41 to i32
  br label %43

43:                                               ; preds = %25, %39
  %44 = phi i32 [ %42, %39 ], [ -1, %25 ]
  ret i32 %44
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @x264_clip3(i32 noundef %0) unnamed_addr #16 {
  %2 = tail call i32 @llvm.smin.i32(i32 %0, i32 3)
  %3 = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @x264_picture_alloc(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  store i32 0, ptr %0, align 8, !tbaa !145
  %5 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 4, !tbaa !149
  %6 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7
  store i32 %1, ptr %6, align 8, !tbaa !150
  %7 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7, i32 1
  store i32 3, ptr %7, align 4, !tbaa !151
  %8 = mul i32 %3, %2
  %9 = mul i32 %8, 3
  %10 = sdiv i32 %9, 2
  %11 = tail call ptr @x264_malloc(i32 noundef %10) #29
  %12 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7, i32 3
  store ptr %11, ptr %12, align 8, !tbaa !54
  %13 = icmp eq ptr %11, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %4
  %15 = sext i32 %8 to i64
  %16 = getelementptr inbounds i8, ptr %11, i64 %15
  %17 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7, i32 3, i64 1
  store ptr %16, ptr %17, align 8, !tbaa !54
  %18 = sdiv i32 %8, 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %16, i64 %19
  %21 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7, i32 3, i64 2
  store ptr %20, ptr %21, align 8, !tbaa !54
  %22 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7, i32 2
  store i32 %2, ptr %22, align 8, !tbaa !18
  %23 = sdiv i32 %2, 2
  %24 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7, i32 2, i64 1
  store i32 %23, ptr %24, align 4, !tbaa !18
  %25 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7, i32 2, i64 2
  store i32 %23, ptr %25, align 8, !tbaa !18
  %26 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 6
  store ptr null, ptr %26, align 8, !tbaa !152
  %27 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 2
  store i32 0, ptr %27, align 8, !tbaa !153
  br label %28

28:                                               ; preds = %4, %14
  %29 = phi i32 [ 0, %14 ], [ -1, %4 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @x264_malloc(i32 noundef %0) local_unnamed_addr #4 {
  %2 = sext i32 %0 to i64
  %3 = add nsw i64 %2, 27
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #26
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %4, i64 27
  %8 = ptrtoint ptr %7 to i64
  %9 = and i64 %8, 15
  %10 = sub nsw i64 0, %9
  %11 = getelementptr inbounds i8, ptr %7, i64 %10
  %12 = getelementptr inbounds i8, ptr %11, i64 -8
  store ptr %4, ptr %12, align 8, !tbaa !54
  %13 = getelementptr inbounds i8, ptr %11, i64 -12
  store i32 %0, ptr %13, align 4, !tbaa !18
  br label %15

14:                                               ; preds = %1
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.156, i32 noundef %0) #29
  br label %15

15:                                               ; preds = %6, %14
  %16 = phi ptr [ null, %14 ], [ %11, %6 ]
  ret ptr %16
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @x264_picture_clean(ptr nocapture noundef %0) local_unnamed_addr #18 {
  %2 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  tail call void @x264_free(ptr noundef %3) #29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @x264_free(ptr noundef readonly %0) local_unnamed_addr #18 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds ptr, ptr %0, i64 -1
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  tail call void @free(ptr noundef %5) #27
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @x264_nal_encode(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #19 {
  %5 = getelementptr inbounds %struct.x264_nal_t, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !154
  %7 = getelementptr inbounds %struct.x264_nal_t, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !156
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %6, i64 %9
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 0, ptr %0, align 1, !tbaa !5
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %15, %14 ], [ %0, %12 ]
  %18 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 0, ptr %17, align 1, !tbaa !5
  %19 = getelementptr inbounds i8, ptr %17, i64 2
  store i8 0, ptr %18, align 1, !tbaa !5
  %20 = getelementptr inbounds i8, ptr %17, i64 3
  store i8 1, ptr %19, align 1, !tbaa !5
  br label %23

21:                                               ; preds = %4
  %22 = getelementptr inbounds i8, ptr %0, i64 4
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi ptr [ %20, %16 ], [ %22, %21 ]
  %25 = load i32, ptr %1, align 8, !tbaa !157
  %26 = shl i32 %25, 5
  %27 = getelementptr inbounds %struct.x264_nal_t, ptr %1, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !158
  %29 = or i32 %26, %28
  %30 = trunc i32 %29 to i8
  store i8 %30, ptr %24, align 1, !tbaa !5
  %31 = getelementptr inbounds i8, ptr %24, i64 1
  %32 = icmp sgt i32 %8, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %23, %45
  %34 = phi ptr [ %53, %45 ], [ %31, %23 ]
  %35 = phi ptr [ %48, %45 ], [ %24, %23 ]
  %36 = phi i32 [ %51, %45 ], [ 0, %23 ]
  %37 = phi ptr [ %52, %45 ], [ %6, %23 ]
  %38 = icmp eq i32 %36, 2
  %39 = load i8, ptr %37, align 1, !tbaa !5
  br i1 %38, label %40, label %45

40:                                               ; preds = %33
  %41 = icmp ult i8 %39, 4
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = getelementptr inbounds i8, ptr %35, i64 2
  store i8 3, ptr %34, align 1, !tbaa !5
  %44 = load i8, ptr %37, align 1, !tbaa !5
  br label %45

45:                                               ; preds = %42, %40, %33
  %46 = phi i8 [ %44, %42 ], [ %39, %40 ], [ %39, %33 ]
  %47 = phi i32 [ 0, %42 ], [ 2, %40 ], [ %36, %33 ]
  %48 = phi ptr [ %43, %42 ], [ %34, %40 ], [ %34, %33 ]
  %49 = icmp eq i8 %46, 0
  %50 = add nsw i32 %47, 1
  %51 = select i1 %49, i32 %50, i32 0
  %52 = getelementptr inbounds i8, ptr %37, i64 1
  store i8 %46, ptr %48, align 1, !tbaa !5
  %53 = getelementptr inbounds i8, ptr %48, i64 1
  %54 = icmp ult ptr %52, %10
  br i1 %54, label %33, label %55, !llvm.loop !159

55:                                               ; preds = %45, %23
  %56 = phi ptr [ %31, %23 ], [ %53, %45 ]
  %57 = ptrtoint ptr %56 to i64
  %58 = ptrtoint ptr %0 to i64
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  br i1 %11, label %61, label %73

61:                                               ; preds = %55
  %62 = add i32 %60, -4
  %63 = lshr i32 %62, 24
  %64 = trunc i32 %63 to i8
  store i8 %64, ptr %0, align 1, !tbaa !5
  %65 = lshr i32 %62, 16
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %66, ptr %67, align 1, !tbaa !5
  %68 = lshr i32 %62, 8
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %69, ptr %70, align 1, !tbaa !5
  %71 = trunc i32 %62 to i8
  %72 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %71, ptr %72, align 1, !tbaa !5
  br label %73

73:                                               ; preds = %61, %55
  ret i32 %60
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @x264_reduce_fraction(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #20 {
  %3 = load i32, ptr %0, align 4, !tbaa !18
  %4 = load i32, ptr %1, align 4, !tbaa !18
  %5 = icmp ne i32 %3, 0
  %6 = icmp ne i32 %4, 0
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = urem i32 %3, %4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8, %11
  %12 = phi i32 [ %14, %11 ], [ %9, %8 ]
  %13 = phi i32 [ %12, %11 ], [ %4, %8 ]
  %14 = urem i32 %13, %12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %11, !llvm.loop !160

16:                                               ; preds = %11, %8
  %17 = phi i32 [ %4, %8 ], [ %12, %11 ]
  %18 = udiv i32 %3, %17
  store i32 %18, ptr %0, align 4, !tbaa !18
  %19 = load i32, ptr %1, align 4, !tbaa !18
  %20 = udiv i32 %19, %17
  store i32 %20, ptr %1, align 4, !tbaa !18
  br label %21

21:                                               ; preds = %2, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @x264_slurp_file(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = tail call noalias ptr @fopen64(ptr noundef %0, ptr noundef nonnull @.str.157) #29
  %3 = icmp eq ptr %2, null
  br i1 %3, label %41, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @fseek(ptr noundef nonnull %2, i64 noundef 0, i32 noundef 2) #29
  %6 = tail call i64 @ftell(ptr noundef nonnull %2) #29
  %7 = trunc i64 %6 to i32
  %8 = icmp slt i32 %7, 1
  %9 = icmp slt i32 %5, 0
  %10 = or i1 %9, %8
  %11 = zext i1 %10 to i32
  %12 = tail call i32 @fseek(ptr noundef nonnull %2, i64 noundef 0, i32 noundef 0) #29
  %13 = lshr i32 %12, 31
  %14 = or i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %4
  %17 = add nsw i32 %7, 2
  %18 = tail call ptr @x264_malloc(i32 noundef %17) #29
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20

20:                                               ; preds = %16
  %21 = shl i64 %6, 32
  %22 = ashr exact i64 %21, 32
  %23 = tail call i64 @fread(ptr noundef nonnull %18, i64 noundef 1, i64 noundef %22, ptr noundef nonnull %2) #29
  %24 = trunc i64 %23 to i32
  %25 = icmp eq i32 %24, %7
  %26 = add i64 %21, -4294967296
  %27 = ashr exact i64 %26, 32
  %28 = getelementptr inbounds i8, ptr %18, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !5
  %30 = icmp eq i8 %29, 10
  br i1 %30, label %36, label %31

31:                                               ; preds = %20
  %32 = getelementptr inbounds i8, ptr %18, i64 %22
  store i8 10, ptr %32, align 1, !tbaa !5
  %33 = shl i64 %6, 32
  %34 = add i64 %33, 4294967296
  %35 = ashr exact i64 %34, 32
  br label %36

36:                                               ; preds = %31, %20
  %37 = phi i64 [ %35, %31 ], [ %22, %20 ]
  %38 = getelementptr inbounds i8, ptr %18, i64 %37
  store i8 0, ptr %38, align 1, !tbaa !5
  %39 = tail call i32 @fclose(ptr noundef nonnull %2) #29
  br i1 %25, label %41, label %40

40:                                               ; preds = %36
  tail call void @x264_free(ptr noundef nonnull %18) #29
  br label %41

41:                                               ; preds = %36, %16, %4, %1, %40
  %42 = phi ptr [ null, %40 ], [ null, %1 ], [ null, %4 ], [ null, %16 ], [ %18, %36 ]
  ret ptr %42
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind optsize
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @x264_param2string(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42
  %4 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 27
  %5 = load ptr, ptr %4, align 8, !tbaa !140
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #25
  %9 = trunc i64 %8 to i32
  %10 = add i32 %9, 1000
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i32 [ %10, %7 ], [ 1000, %2 ]
  %13 = tail call ptr @x264_malloc(i32 noundef %12) #29
  %14 = icmp eq ptr %13, null
  br i1 %14, label %429, label %15

15:                                               ; preds = %11
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %39, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !161
  %20 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !162
  %22 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) @.str.158, i32 noundef %19, i32 noundef %21) #27
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %13, i64 %23
  %25 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 48
  %26 = load i32, ptr %25, align 4, !tbaa !19
  %27 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 49
  %28 = load i32, ptr %27, align 8, !tbaa !20
  %29 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(1) @.str.159, i32 noundef %26, i32 noundef %28) #27
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %24, i64 %30
  %32 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 50
  %33 = load i32, ptr %32, align 4, !tbaa !163
  %34 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 51
  %35 = load i32, ptr %34, align 8, !tbaa !164
  %36 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) @.str.160, i32 noundef %33, i32 noundef %35) #27
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %31, i64 %37
  br label %39

39:                                               ; preds = %17, %15
  %40 = phi ptr [ %38, %17 ], [ %13, %15 ]
  %41 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  %42 = load i32, ptr %41, align 8, !tbaa !58
  %43 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %40, ptr noundef nonnull dereferenceable(1) @.str.161, i32 noundef %42) #27
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %40, i64 %44
  %46 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  %47 = load i32, ptr %46, align 8, !tbaa !56
  %48 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %45, ptr noundef nonnull dereferenceable(1) @.str.162, i32 noundef %47) #27
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, ptr %45, i64 %49
  %51 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 21
  %52 = load i32, ptr %51, align 4, !tbaa !57
  %53 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 22
  %54 = load i32, ptr %53, align 8, !tbaa !70
  %55 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 23
  %56 = load i32, ptr %55, align 4, !tbaa !71
  %57 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %50, ptr noundef nonnull dereferenceable(1) @.str.163, i32 noundef %52, i32 noundef %54, i32 noundef %56) #27
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %50, i64 %58
  %60 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41
  %61 = load i32, ptr %60, align 8, !tbaa !165
  %62 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !65
  %64 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(1) @.str.164, i32 noundef %61, i32 noundef %63) #27
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %59, i64 %65
  %67 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  %68 = load i32, ptr %67, align 4, !tbaa !60
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [6 x ptr], ptr @x264_motion_est_names, i64 0, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !54
  %72 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull dereferenceable(1) @.str.165, ptr noundef %71) #27
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, ptr %66, i64 %73
  %75 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  %76 = load i32, ptr %75, align 4, !tbaa !61
  %77 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %74, ptr noundef nonnull dereferenceable(1) @.str.166, i32 noundef %76) #27
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, ptr %74, i64 %78
  %80 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 20
  %81 = load i32, ptr %80, align 8, !tbaa !75
  %82 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %79, ptr noundef nonnull dereferenceable(1) @.str.167, i32 noundef %81) #27
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, ptr %79, i64 %83
  %85 = load i32, ptr %80, align 8, !tbaa !75
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %39
  %88 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 18
  %89 = load float, ptr %88, align 8, !tbaa !73
  %90 = fpext float %89 to double
  %91 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 19
  %92 = load float, ptr %91, align 4, !tbaa !72
  %93 = fpext float %92 to double
  %94 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull dereferenceable(1) @.str.168, double noundef %90, double noundef %93) #27
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, ptr %84, i64 %95
  br label %97

97:                                               ; preds = %87, %39
  %98 = phi ptr [ %96, %87 ], [ %84, %39 ]
  %99 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 13
  %100 = load i32, ptr %99, align 4, !tbaa !62
  %101 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %98, ptr noundef nonnull dereferenceable(1) @.str.169, i32 noundef %100) #27
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, ptr %98, i64 %102
  %104 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 8
  %105 = load i32, ptr %104, align 8, !tbaa !68
  %106 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %103, ptr noundef nonnull dereferenceable(1) @.str.170, i32 noundef %105) #27
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, ptr %103, i64 %107
  %109 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 12
  %110 = load i32, ptr %109, align 8, !tbaa !132
  %111 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %108, ptr noundef nonnull dereferenceable(1) @.str.171, i32 noundef %110) #27
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, ptr %108, i64 %112
  %114 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  %115 = load i32, ptr %114, align 8, !tbaa !63
  %116 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %113, ptr noundef nonnull dereferenceable(1) @.str.172, i32 noundef %115) #27
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, ptr %113, i64 %117
  %119 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 2
  %120 = load i32, ptr %119, align 8, !tbaa !81
  %121 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(1) @.str.173, i32 noundef %120) #27
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, ptr %118, i64 %122
  %124 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  %125 = load i32, ptr %124, align 8, !tbaa !82
  %126 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %123, ptr noundef nonnull dereferenceable(1) @.str.174, i32 noundef %125) #27
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, ptr %123, i64 %127
  %129 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 21
  %130 = load i32, ptr %129, align 4, !tbaa !18
  %131 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 21, i64 1
  %132 = load i32, ptr %131, align 4, !tbaa !18
  %133 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %128, ptr noundef nonnull dereferenceable(1) @.str.175, i32 noundef %130, i32 noundef %132) #27
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, ptr %128, i64 %134
  %136 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 15
  %137 = load i32, ptr %136, align 4, !tbaa !69
  %138 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %135, ptr noundef nonnull dereferenceable(1) @.str.176, i32 noundef %137) #27
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, ptr %135, i64 %139
  %141 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 6
  %142 = load i32, ptr %141, align 8, !tbaa !129
  %143 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %140, ptr noundef nonnull dereferenceable(1) @.str.177, i32 noundef %142) #27
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, ptr %140, i64 %144
  %146 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %147 = load i32, ptr %146, align 4, !tbaa !16
  %148 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %145, ptr noundef nonnull dereferenceable(1) @.str.178, i32 noundef %147) #27
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, ptr %145, i64 %149
  %151 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 2
  %152 = load i32, ptr %151, align 8, !tbaa !78
  %153 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %150, ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %152) #27
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, ptr %150, i64 %154
  %156 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 58
  %157 = load i32, ptr %156, align 4, !tbaa !24
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %97
  %160 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %155, ptr noundef nonnull dereferenceable(1) @.str.180, i32 noundef %157) #27
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, ptr %155, i64 %161
  br label %163

163:                                              ; preds = %159, %97
  %164 = phi ptr [ %162, %159 ], [ %155, %97 ]
  %165 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 56
  %166 = load i32, ptr %165, align 4, !tbaa !22
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %163
  %169 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %164, ptr noundef nonnull dereferenceable(1) @.str.181, i32 noundef %166) #27
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, ptr %164, i64 %170
  br label %172

172:                                              ; preds = %168, %163
  %173 = phi ptr [ %171, %168 ], [ %164, %163 ]
  %174 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 57
  %175 = load i32, ptr %174, align 8, !tbaa !23
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %172
  %178 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %173, ptr noundef nonnull dereferenceable(1) @.str.182, i32 noundef %175) #27
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, ptr %173, i64 %179
  br label %181

181:                                              ; preds = %177, %172
  %182 = phi ptr [ %180, %177 ], [ %173, %172 ]
  %183 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 17
  %184 = load i32, ptr %183, align 4, !tbaa !133
  %185 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %182, ptr noundef nonnull dereferenceable(1) @.str.183, i32 noundef %184) #27
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, ptr %182, i64 %186
  %188 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 16
  %189 = load i32, ptr %188, align 8, !tbaa !48
  %190 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %187, ptr noundef nonnull dereferenceable(1) @.str.184, i32 noundef %189) #27
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, ptr %187, i64 %191
  %193 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  %194 = load i32, ptr %193, align 8, !tbaa !83
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %201, label %196

196:                                              ; preds = %181
  %197 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 53
  %198 = load i32, ptr %197, align 8, !tbaa !125
  %199 = icmp eq i32 %198, 0
  %200 = select i1 %199, ptr @.str.57, ptr @.str.56
  br label %201

201:                                              ; preds = %181, %196
  %202 = phi ptr [ %200, %196 ], [ @.str.186, %181 ]
  %203 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %192, ptr noundef nonnull dereferenceable(1) @.str.185, ptr noundef nonnull %202) #27
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, ptr %192, i64 %204
  %206 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 27
  %207 = load i32, ptr %206, align 4, !tbaa !126
  %208 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %205, ptr noundef nonnull dereferenceable(1) @.str.187, i32 noundef %207) #27
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, ptr %205, i64 %209
  %211 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  %212 = load i32, ptr %211, align 4, !tbaa !59
  %213 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %210, ptr noundef nonnull dereferenceable(1) @.str.188, i32 noundef %212) #27
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, ptr %210, i64 %214
  %216 = load i32, ptr %211, align 4, !tbaa !59
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %232, label %218

218:                                              ; preds = %201
  %219 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 20
  %220 = load i32, ptr %219, align 8, !tbaa !123
  %221 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 18
  %222 = load i32, ptr %221, align 8, !tbaa !64
  %223 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 19
  %224 = load i32, ptr %223, align 4, !tbaa !122
  %225 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  %226 = load i32, ptr %225, align 4, !tbaa !67
  %227 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 4
  %228 = load i32, ptr %227, align 8, !tbaa !76
  %229 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %215, ptr noundef nonnull dereferenceable(1) @.str.189, i32 noundef %220, i32 noundef %222, i32 noundef %224, i32 noundef %226, i32 noundef %228) #27
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, ptr %215, i64 %230
  br label %232

232:                                              ; preds = %218, %201
  %233 = phi ptr [ %231, %218 ], [ %215, %201 ]
  %234 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  %235 = load i32, ptr %234, align 4, !tbaa !66
  %236 = tail call i32 @llvm.smax.i32(i32 %235, i32 0)
  %237 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %233, ptr noundef nonnull dereferenceable(1) @.str.190, i32 noundef %236) #27
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, ptr %233, i64 %238
  %240 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 13
  %241 = load i32, ptr %240, align 4, !tbaa !120
  %242 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 14
  %243 = load i32, ptr %242, align 8, !tbaa !25
  %244 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 15
  %245 = load i32, ptr %244, align 4, !tbaa !26
  %246 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 16
  %247 = load i32, ptr %246, align 8, !tbaa !121
  %248 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %239, ptr noundef nonnull dereferenceable(1) @.str.191, i32 noundef %241, i32 noundef %243, i32 noundef %245, i32 noundef %247) #27
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8, ptr %239, i64 %249
  %251 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  %252 = load i32, ptr %251, align 8, !tbaa !44
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %232
  %255 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 10
  %256 = load i32, ptr %255, align 8, !tbaa !30
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %264, label %258

258:                                              ; preds = %254, %232
  %259 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  %260 = load i32, ptr %259, align 4, !tbaa !37
  %261 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %250, ptr noundef nonnull dereferenceable(1) @.str.192, i32 noundef %260) #27
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, ptr %250, i64 %262
  br label %264

264:                                              ; preds = %258, %254
  %265 = phi ptr [ %263, %258 ], [ %250, %254 ]
  %266 = load i32, ptr %3, align 8, !tbaa !85
  %267 = icmp eq i32 %266, 2
  br i1 %267, label %268, label %279

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  %270 = load i32, ptr %269, align 8, !tbaa !40
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %282

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 9
  %274 = load i32, ptr %273, align 4, !tbaa !29
  %275 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 5
  %276 = load i32, ptr %275, align 4, !tbaa !27
  %277 = icmp eq i32 %274, %276
  %278 = select i1 %277, ptr @.str.195, ptr @.str.196
  br label %282

279:                                              ; preds = %264
  %280 = icmp eq i32 %266, 1
  %281 = select i1 %280, ptr @.str.117, ptr @.str.197
  br label %282

282:                                              ; preds = %272, %268, %279
  %283 = phi ptr [ %281, %279 ], [ %278, %272 ], [ @.str.194, %268 ]
  %284 = load i32, ptr %251, align 8, !tbaa !44
  %285 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %265, ptr noundef nonnull dereferenceable(1) @.str.193, ptr noundef nonnull %283, i32 noundef %284) #27
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8, ptr %265, i64 %286
  %288 = load i32, ptr %3, align 8, !tbaa !85
  switch i32 %288, label %367 [
    i32 0, label %350
    i32 1, label %289
    i32 2, label %294
  ]

289:                                              ; preds = %282
  %290 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 6
  %291 = load float, ptr %290, align 8, !tbaa !31
  %292 = fpext float %291 to double
  %293 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %287, ptr noundef nonnull dereferenceable(1) @.str.198, double noundef %292) #27
  br label %301

294:                                              ; preds = %282
  %295 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 5
  %296 = load i32, ptr %295, align 4, !tbaa !27
  %297 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 8
  %298 = load float, ptr %297, align 8, !tbaa !28
  %299 = fpext float %298 to double
  %300 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %287, ptr noundef nonnull dereferenceable(1) @.str.199, i32 noundef %296, double noundef %299) #27
  br label %301

301:                                              ; preds = %294, %289
  %302 = phi i32 [ %293, %289 ], [ %300, %294 ]
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8, ptr %287, i64 %303
  %305 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 22
  %306 = load float, ptr %305, align 8, !tbaa !74
  %307 = fpext float %306 to double
  %308 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 2
  %309 = load i32, ptr %308, align 8, !tbaa !135
  %310 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 3
  %311 = load i32, ptr %310, align 4, !tbaa !136
  %312 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 4
  %313 = load i32, ptr %312, align 8, !tbaa !32
  %314 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %304, ptr noundef nonnull dereferenceable(1) @.str.200, double noundef %307, i32 noundef %309, i32 noundef %311, i32 noundef %313) #27
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8, ptr %304, i64 %315
  %317 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  %318 = load i32, ptr %317, align 8, !tbaa !40
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %330, label %320

320:                                              ; preds = %301
  %321 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 24
  %322 = load float, ptr %321, align 8, !tbaa !42
  %323 = fpext float %322 to double
  %324 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 23
  %325 = load float, ptr %324, align 4, !tbaa !139
  %326 = fpext float %325 to double
  %327 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %316, ptr noundef nonnull dereferenceable(1) @.str.201, double noundef %323, double noundef %326) #27
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i8, ptr %316, i64 %328
  br label %330

330:                                              ; preds = %320, %301
  %331 = phi ptr [ %329, %320 ], [ %316, %301 ]
  %332 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 10
  %333 = load i32, ptr %332, align 8, !tbaa !30
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %356, label %335

335:                                              ; preds = %330
  %336 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 9
  %337 = load i32, ptr %336, align 4, !tbaa !29
  %338 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %331, ptr noundef nonnull dereferenceable(1) @.str.202, i32 noundef %337, i32 noundef %333) #27
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i8, ptr %331, i64 %339
  %341 = load i32, ptr %3, align 8, !tbaa !85
  %342 = icmp eq i32 %341, 1
  br i1 %342, label %343, label %359

343:                                              ; preds = %335
  %344 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 7
  %345 = load float, ptr %344, align 4, !tbaa !134
  %346 = fpext float %345 to double
  %347 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %340, ptr noundef nonnull dereferenceable(1) @.str.203, double noundef %346) #27
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8, ptr %340, i64 %348
  br label %356

350:                                              ; preds = %282
  %351 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 1
  %352 = load i32, ptr %351, align 4, !tbaa !86
  %353 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %287, ptr noundef nonnull dereferenceable(1) @.str.204, i32 noundef %352) #27
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i8, ptr %287, i64 %354
  br label %356

356:                                              ; preds = %343, %330, %350
  %357 = phi ptr [ %355, %350 ], [ %331, %330 ], [ %349, %343 ]
  %358 = load i32, ptr %3, align 8, !tbaa !85
  br label %359

359:                                              ; preds = %356, %335
  %360 = phi i32 [ %358, %356 ], [ %341, %335 ]
  %361 = phi ptr [ %357, %356 ], [ %340, %335 ]
  %362 = icmp eq i32 %360, 0
  br i1 %362, label %363, label %367

363:                                              ; preds = %359
  %364 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 1
  %365 = load i32, ptr %364, align 4, !tbaa !86
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %417, label %367

367:                                              ; preds = %282, %363, %359
  %368 = phi ptr [ %361, %363 ], [ %361, %359 ], [ %287, %282 ]
  %369 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 12
  %370 = load float, ptr %369, align 8, !tbaa !138
  %371 = fpext float %370 to double
  %372 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %368, ptr noundef nonnull dereferenceable(1) @.str.205, double noundef %371) #27
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i8, ptr %368, i64 %373
  %375 = load i32, ptr %211, align 4, !tbaa !59
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %387, label %377

377:                                              ; preds = %367
  %378 = load i32, ptr %251, align 8, !tbaa !44
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %387

380:                                              ; preds = %377
  %381 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 13
  %382 = load float, ptr %381, align 4, !tbaa !34
  %383 = fpext float %382 to double
  %384 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %374, ptr noundef nonnull dereferenceable(1) @.str.206, double noundef %383) #27
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i8, ptr %374, i64 %385
  br label %387

387:                                              ; preds = %380, %377, %367
  %388 = phi ptr [ %374, %377 ], [ %386, %380 ], [ %374, %367 ]
  %389 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 14
  %390 = load i32, ptr %389, align 8, !tbaa !35
  %391 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %388, ptr noundef nonnull dereferenceable(1) @.str.207, i32 noundef %390) #27
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i8, ptr %388, i64 %392
  %394 = load i32, ptr %389, align 8, !tbaa !35
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %403, label %396

396:                                              ; preds = %387
  %397 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 15
  %398 = load float, ptr %397, align 4, !tbaa !36
  %399 = fpext float %398 to double
  %400 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %393, ptr noundef nonnull dereferenceable(1) @.str.208, double noundef %399) #27
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i8, ptr %393, i64 %401
  br label %403

403:                                              ; preds = %396, %387
  %404 = phi ptr [ %402, %396 ], [ %393, %387 ]
  %405 = load ptr, ptr %4, align 8, !tbaa !140
  %406 = icmp eq ptr %405, null
  br i1 %406, label %411, label %407

407:                                              ; preds = %403
  %408 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %404, ptr noundef nonnull dereferenceable(1) @.str.209, ptr noundef nonnull %405) #27
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i8, ptr %404, i64 %409
  br label %417

411:                                              ; preds = %403
  %412 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 26
  %413 = load i32, ptr %412, align 8, !tbaa !43
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %417, label %415

415:                                              ; preds = %411
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %404, ptr noundef nonnull align 1 dereferenceable(7) @.str.210, i64 7, i1 false)
  %416 = getelementptr inbounds i8, ptr %404, i64 6
  br label %417

417:                                              ; preds = %407, %415, %411, %363
  %418 = phi ptr [ %361, %363 ], [ %410, %407 ], [ %416, %415 ], [ %404, %411 ]
  %419 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 10
  %420 = load i32, ptr %419, align 8, !tbaa !30
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %429, label %422

422:                                              ; preds = %417
  %423 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 10
  %424 = load i32, ptr %423, align 8, !tbaa !166
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [4 x ptr], ptr @x264_nal_hrd_names, i64 0, i64 %425
  %427 = load ptr, ptr %426, align 8, !tbaa !54
  %428 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %418, ptr noundef nonnull dereferenceable(1) @.str.211, ptr noundef %427) #27
  br label %429

429:                                              ; preds = %417, %422, %11
  ret ptr %13
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #24

attributes #0 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind optsize willreturn memory(read) }
attributes #26 = { nounwind optsize allocsize(0) }
attributes #27 = { nounwind optsize }
attributes #28 = { cold optsize }
attributes #29 = { optsize }
attributes #30 = { nounwind }
attributes #31 = { nounwind optsize willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"x264_param_t", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !11, i64 44, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !12, i64 152, !6, i64 160, !6, i64 176, !6, i64 192, !6, i64 208, !6, i64 224, !6, i64 288, !12, i64 352, !12, i64 360, !10, i64 368, !10, i64 372, !12, i64 376, !13, i64 384, !15, i64 488, !10, i64 632, !10, i64 636, !10, i64 640, !10, i64 644, !10, i64 648, !10, i64 652, !10, i64 656, !10, i64 660, !10, i64 664, !10, i64 668, !10, i64 672, !10, i64 676, !10, i64 680, !10, i64 684, !10, i64 688, !10, i64 692, !12, i64 696}
!10 = !{!"int", !6, i64 0}
!11 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !14, i64 72, !14, i64 76, !10, i64 80, !6, i64 84, !10, i64 92, !10, i64 96}
!14 = !{!"float", !6, i64 0}
!15 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !10, i64 36, !10, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !10, i64 56, !14, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !12, i64 80, !10, i64 88, !12, i64 96, !14, i64 104, !14, i64 108, !14, i64 112, !12, i64 120, !10, i64 128, !12, i64 136}
!16 = !{!9, !10, i64 4}
!17 = !{!9, !10, i64 28}
!18 = !{!10, !10, i64 0}
!19 = !{!9, !10, i64 652}
!20 = !{!9, !10, i64 656}
!21 = !{!9, !10, i64 32}
!22 = !{!9, !10, i64 684}
!23 = !{!9, !10, i64 688}
!24 = !{!9, !10, i64 692}
!25 = !{!9, !10, i64 88}
!26 = !{!9, !10, i64 92}
!27 = !{!9, !10, i64 508}
!28 = !{!9, !14, i64 520}
!29 = !{!9, !10, i64 524}
!30 = !{!9, !10, i64 528}
!31 = !{!9, !14, i64 512}
!32 = !{!9, !10, i64 504}
!33 = !{!14, !14, i64 0}
!34 = !{!9, !14, i64 540}
!35 = !{!9, !10, i64 544}
!36 = !{!9, !14, i64 548}
!37 = !{!9, !10, i64 556}
!38 = !{!9, !10, i64 560}
!39 = !{!9, !12, i64 568}
!40 = !{!9, !10, i64 576}
!41 = !{!9, !12, i64 584}
!42 = !{!9, !14, i64 600}
!43 = !{!9, !10, i64 616}
!44 = !{!9, !10, i64 552}
!45 = !{!9, !12, i64 352}
!46 = !{!9, !12, i64 360}
!47 = !{!9, !10, i64 368}
!48 = !{!9, !10, i64 448}
!49 = !{!9, !10, i64 480}
!50 = !{!9, !10, i64 636}
!51 = !{!9, !10, i64 640}
!52 = !{!9, !10, i64 632}
!53 = !{!9, !10, i64 648}
!54 = !{!12, !12, i64 0}
!55 = !{i32 -1, i32 1}
!56 = !{!9, !10, i64 80}
!57 = !{!9, !10, i64 116}
!58 = !{!9, !10, i64 128}
!59 = !{!9, !10, i64 100}
!60 = !{!9, !10, i64 412}
!61 = !{!9, !10, i64 428}
!62 = !{!9, !10, i64 436}
!63 = !{!9, !10, i64 440}
!64 = !{!9, !10, i64 104}
!65 = !{!9, !10, i64 388}
!66 = !{!9, !10, i64 396}
!67 = !{!9, !10, i64 404}
!68 = !{!9, !10, i64 416}
!69 = !{!9, !10, i64 444}
!70 = !{!9, !10, i64 120}
!71 = !{!9, !10, i64 124}
!72 = !{!9, !14, i64 460}
!73 = !{!9, !14, i64 456}
!74 = !{!9, !14, i64 592}
!75 = !{!9, !10, i64 464}
!76 = !{!9, !10, i64 400}
!77 = !{!9, !10, i64 16}
!78 = !{!9, !10, i64 8}
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!9, !10, i64 392}
!82 = !{!9, !10, i64 144}
!83 = !{!9, !10, i64 136}
!84 = !{!9, !10, i64 680}
!85 = !{!9, !10, i64 488}
!86 = !{!9, !10, i64 492}
!87 = !{!88, !10, i64 368}
!88 = !{!"x264_t", !9, i64 0, !6, i64 704, !10, i64 1736, !10, i64 1740, !10, i64 1744, !10, i64 1748, !10, i64 1752, !89, i64 1760, !12, i64 1832, !10, i64 1840, !10, i64 1844, !10, i64 1848, !10, i64 1852, !10, i64 1856, !10, i64 1860, !10, i64 1864, !10, i64 1868, !10, i64 1872, !10, i64 1876, !10, i64 1880, !10, i64 1884, !10, i64 1888, !10, i64 1892, !6, i64 1896, !12, i64 3200, !6, i64 3208, !12, i64 3328, !10, i64 3336, !10, i64 3340, !6, i64 3344, !6, i64 3376, !6, i64 3392, !6, i64 3424, !6, i64 3440, !6, i64 3472, !6, i64 3488, !6, i64 3520, !6, i64 3536, !6, i64 4272, !12, i64 7216, !92, i64 7232, !93, i64 13904, !94, i64 14416, !12, i64 14680, !12, i64 14688, !10, i64 14696, !6, i64 14704, !10, i64 14856, !6, i64 14864, !6, i64 15016, !10, i64 15024, !10, i64 15028, !91, i64 15032, !95, i64 15040, !96, i64 16368, !12, i64 26704, !99, i64 26712, !6, i64 30400, !6, i64 30912, !6, i64 31168, !12, i64 31176, !6, i64 31184, !6, i64 31232, !6, i64 31248, !6, i64 31304, !6, i64 31360, !6, i64 31456, !12, i64 31552, !102, i64 31560, !103, i64 32616, !104, i64 32912, !105, i64 33032, !106, i64 33080, !107, i64 33256, !12, i64 33328}
!89 = !{!"", !10, i64 0, !10, i64 4, !12, i64 8, !10, i64 16, !12, i64 24, !90, i64 32}
!90 = !{!"bs_s", !12, i64 0, !12, i64 8, !12, i64 16, !91, i64 24, !10, i64 32, !10, i64 36}
!91 = !{!"long", !6, i64 0}
!92 = !{!"", !12, i64 0, !12, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !6, i64 60, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !6, i64 96, !6, i64 352, !10, i64 6496, !10, i64 6500, !6, i64 6504, !10, i64 6632, !10, i64 6636, !10, i64 6640, !10, i64 6644, !10, i64 6648, !10, i64 6652, !10, i64 6656, !10, i64 6660}
!93 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !12, i64 16, !12, i64 24, !12, i64 32, !10, i64 48, !6, i64 52}
!94 = !{!"", !12, i64 0, !6, i64 8, !12, i64 24, !6, i64 32, !10, i64 176, !10, i64 180, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !10, i64 200, !91, i64 208, !91, i64 216, !6, i64 224, !91, i64 240, !91, i64 248, !10, i64 256, !10, i64 260}
!95 = !{!"", !6, i64 0, !6, i64 32, !6, i64 48, !6, i64 560}
!96 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !10, i64 120, !6, i64 124, !6, i64 140, !10, i64 204, !10, i64 208, !10, i64 212, !10, i64 216, !10, i64 220, !10, i64 224, !10, i64 228, !10, i64 232, !10, i64 236, !10, i64 240, !10, i64 244, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !6, i64 304, !6, i64 320, !6, i64 336, !6, i64 352, !12, i64 864, !12, i64 872, !12, i64 880, !6, i64 888, !10, i64 1016, !10, i64 1020, !6, i64 1024, !10, i64 1028, !10, i64 1032, !10, i64 1036, !10, i64 1040, !10, i64 1044, !10, i64 1048, !10, i64 1052, !10, i64 1056, !10, i64 1060, !97, i64 1072, !98, i64 8656, !10, i64 9424, !10, i64 9428, !10, i64 9432, !10, i64 9436, !10, i64 9440, !10, i64 9444, !10, i64 9448, !10, i64 9452, !6, i64 9456, !10, i64 9472, !10, i64 9476, !6, i64 9480, !12, i64 9992, !6, i64 10000, !12, i64 10256, !6, i64 10264, !10, i64 10284, !6, i64 10288}
!97 = !{!"", !6, i64 0, !6, i64 384, !6, i64 1248, !6, i64 1504, !6, i64 1760, !6, i64 2144, !6, i64 2624, !6, i64 2640, !10, i64 2656, !10, i64 2660, !6, i64 2672, !6, i64 3184, !6, i64 3696, !6, i64 3776, !6, i64 3904, !6, i64 3928, !6, i64 3952, !6, i64 3976, !6, i64 3984, !6, i64 7056, !6, i64 7312, !6, i64 7568}
!98 = !{!"", !6, i64 0, !6, i64 48, !6, i64 96, !6, i64 176, !6, i64 496, !6, i64 656, !6, i64 696, !6, i64 728, !10, i64 736, !6, i64 740, !10, i64 744, !10, i64 748, !10, i64 752, !10, i64 756}
!99 = !{!"", !100, i64 0, !6, i64 704, !6, i64 728, !6, i64 768, !6, i64 808, !6, i64 880, !6, i64 920, !6, i64 960, !6, i64 1000, !6, i64 1040, !6, i64 1080, !6, i64 1120, !6, i64 1880, !6, i64 2152, !6, i64 2168, !6, i64 3192, !6, i64 3240, !6, i64 3656, !6, i64 3664, !6, i64 3672}
!100 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !6, i64 12, !10, i64 88, !10, i64 92, !10, i64 96, !6, i64 100, !6, i64 108, !6, i64 364, !6, i64 432, !6, i64 456, !6, i64 664, !6, i64 672, !101, i64 696}
!101 = !{!"double", !6, i64 0}
!102 = !{!"", !6, i64 0, !6, i64 56, !6, i64 112, !6, i64 168, !6, i64 224, !6, i64 256, !6, i64 312, !6, i64 368, !6, i64 424, !6, i64 480, !6, i64 536, !12, i64 592, !6, i64 600, !6, i64 632, !12, i64 664, !12, i64 672, !6, i64 680, !6, i64 736, !6, i64 792, !6, i64 848, !6, i64 904, !12, i64 960, !12, i64 968, !12, i64 976, !12, i64 984, !12, i64 992, !12, i64 1000, !12, i64 1008, !12, i64 1016, !12, i64 1024, !12, i64 1032, !12, i64 1040, !12, i64 1048}
!103 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !6, i64 24, !6, i64 104, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288}
!104 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112}
!105 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!106 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !6, i64 88, !6, i64 136}
!107 = !{!"", !6, i64 0, !6, i64 16, !6, i64 32, !6, i64 48, !12, i64 64}
!108 = !{!88, !12, i64 352}
!109 = !{!88, !12, i64 360}
!110 = distinct !{!110, !80}
!111 = !{i32 0, i32 2}
!112 = !{!113, !113, i64 0}
!113 = !{!"short", !6, i64 0}
!114 = !{!115, !10, i64 16}
!115 = !{!"", !6, i64 0, !10, i64 16}
!116 = distinct !{!116, !80}
!117 = distinct !{!117, !80}
!118 = !{!9, !10, i64 12}
!119 = !{!9, !10, i64 76}
!120 = !{!9, !10, i64 84}
!121 = !{!9, !10, i64 96}
!122 = !{!9, !10, i64 108}
!123 = !{!9, !10, i64 112}
!124 = !{!9, !10, i64 132}
!125 = !{!9, !10, i64 672}
!126 = !{!9, !10, i64 140}
!127 = !{!9, !12, i64 152}
!128 = !{!9, !12, i64 376}
!129 = !{!9, !10, i64 408}
!130 = !{!9, !10, i64 420}
!131 = !{!9, !10, i64 424}
!132 = !{!9, !10, i64 432}
!133 = !{!9, !10, i64 452}
!134 = !{!9, !14, i64 516}
!135 = !{!9, !10, i64 496}
!136 = !{!9, !10, i64 500}
!137 = !{!9, !14, i64 532}
!138 = !{!9, !14, i64 536}
!139 = !{!9, !14, i64 596}
!140 = !{!9, !12, i64 624}
!141 = !{!9, !10, i64 476}
!142 = !{!9, !10, i64 644}
!143 = !{!9, !10, i64 676}
!144 = distinct !{!144, !80}
!145 = !{!146, !10, i64 0}
!146 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !91, i64 16, !91, i64 24, !12, i64 32, !147, i64 40, !148, i64 96, !12, i64 128}
!147 = !{!"", !10, i64 0, !10, i64 4, !6, i64 8, !6, i64 24}
!148 = !{!"", !101, i64 0, !101, i64 8, !101, i64 16, !101, i64 24}
!149 = !{!146, !10, i64 4}
!150 = !{!146, !10, i64 40}
!151 = !{!146, !10, i64 44}
!152 = !{!146, !12, i64 32}
!153 = !{!146, !10, i64 8}
!154 = !{!155, !12, i64 16}
!155 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !12, i64 16}
!156 = !{!155, !10, i64 8}
!157 = !{!155, !10, i64 0}
!158 = !{!155, !10, i64 4}
!159 = distinct !{!159, !80}
!160 = distinct !{!160, !80}
!161 = !{!9, !10, i64 20}
!162 = !{!9, !10, i64 24}
!163 = !{!9, !10, i64 660}
!164 = !{!9, !10, i64 664}
!165 = !{!9, !10, i64 384}
!166 = !{!9, !10, i64 40}
