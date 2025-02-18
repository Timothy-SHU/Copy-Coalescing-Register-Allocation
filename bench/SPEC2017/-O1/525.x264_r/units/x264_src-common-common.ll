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
@x264_overscan_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr null], align 16
@.str.26 = private unnamed_addr constant [12 x i8] c"videoformat\00", align 1
@x264_vidformat_names = internal unnamed_addr constant [7 x ptr] [ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.235, ptr null], align 16
@.str.27 = private unnamed_addr constant [10 x i8] c"fullrange\00", align 1
@x264_fullrange_names = internal unnamed_addr constant [3 x ptr] [ptr @.str.243, ptr @.str.244, ptr null], align 16
@.str.28 = private unnamed_addr constant [10 x i8] c"colorprim\00", align 1
@x264_colorprim_names = internal unnamed_addr constant [10 x ptr] [ptr @.str.245, ptr @.str.246, ptr @.str.235, ptr @.str.245, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.224, ptr null], align 16
@.str.29 = private unnamed_addr constant [9 x i8] c"transfer\00", align 1
@x264_transfer_names = internal unnamed_addr constant [12 x ptr] [ptr @.str.245, ptr @.str.246, ptr @.str.235, ptr @.str.245, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr null], align 16
@.str.30 = private unnamed_addr constant [12 x i8] c"colormatrix\00", align 1
@x264_colmatrix_names = internal unnamed_addr constant [10 x ptr] [ptr @.str.254, ptr @.str.246, ptr @.str.235, ptr @.str.245, ptr @.str.255, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.256, ptr null], align 16
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
@x264_b_pyramid_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.77, ptr @.str.257, ptr @.str.258, ptr null], align 16
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
@x264_direct_pred_names = internal unnamed_addr constant [5 x ptr] [ptr @.str.77, ptr @.str.259, ptr @.str.260, ptr @.str.13, ptr null], align 16
@.str.90 = private unnamed_addr constant [17 x i8] c"chroma-qp-offset\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c"me\00", align 1
@x264_motion_est_names = internal unnamed_addr constant [6 x ptr] [ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr null], align 16
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
@x264_nal_hrd_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.77, ptr @.str.266, ptr @.str.195, ptr null], align 16
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
@switch.table.x264_log = private unnamed_addr constant [4 x ptr] [ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270], align 8

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local noalias noundef ptr @spec_strdup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !annotation !34 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  %3 = trunc i64 %2 to i32
  %4 = shl i64 %2, 32
  %5 = add i64 %4, 4294967296
  %6 = ashr exact i64 %5, 32
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #23
  %8 = icmp sgt i32 %3, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = and i64 %2, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %0, i64 %10, i1 false), !tbaa !35
  br label %11

11:                                               ; preds = %9, %1
  %12 = ashr exact i64 %4, 32
  %13 = getelementptr inbounds i8, ptr %7, i64 %12
  store i8 0, ptr %13, align 1, !tbaa !35
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_param_default(ptr noundef writeonly %0) local_unnamed_addr #4 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %0, i8 0, i64 704, i1 false)
  %2 = tail call i32 @x264_cpu_detect() #24
  store i32 %2, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 4, !tbaa !46
  %4 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 3
  store i32 1, ptr %4, align 4, !tbaa !47
  %5 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 4
  store i32 -1, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 7
  store i32 1, ptr %6, align 4, !tbaa !49
  %7 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  store i32 0, ptr %7, align 4, !tbaa !50
  %8 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  store i32 0, ptr %8, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11
  %10 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 1
  store i32 0, ptr %10, align 4, !tbaa !52
  store i32 0, ptr %9, align 4, !tbaa !53
  %11 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 2
  store i32 0, ptr %11, align 4, !tbaa !54
  %12 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 3
  store i32 5, ptr %12, align 4, !tbaa !55
  %13 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 4
  store i32 0, ptr %13, align 4, !tbaa !56
  %14 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 5
  store i32 2, ptr %14, align 4, !tbaa !57
  %15 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 6
  store i32 2, ptr %15, align 4, !tbaa !58
  %16 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 7
  store i32 2, ptr %16, align 4, !tbaa !59
  %17 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 8
  store i32 0, ptr %17, align 4, !tbaa !60
  %18 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 48
  store i32 25, ptr %18, align 4, !tbaa !61
  %19 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 49
  store i32 1, ptr %19, align 8, !tbaa !62
  %20 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8
  store i32 -1, ptr %20, align 8, !tbaa !63
  %21 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 56
  store i32 0, ptr %21, align 4, !tbaa !64
  %22 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 57
  store i32 0, ptr %22, align 8, !tbaa !65
  %23 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 58
  store i32 0, ptr %23, align 4, !tbaa !66
  %24 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  store i32 3, ptr %24, align 8, !tbaa !67
  %25 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 13
  store i32 250, ptr %25, align 4, !tbaa !68
  %26 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 14
  store i32 0, ptr %26, align 8, !tbaa !69
  %27 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  store i32 3, ptr %27, align 4, !tbaa !70
  %28 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 15
  store i32 40, ptr %28, align 4, !tbaa !71
  %29 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 18
  store i32 1, ptr %29, align 8, !tbaa !72
  %30 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 19
  store i32 0, ptr %30, align 4, !tbaa !73
  %31 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 20
  store i32 2, ptr %31, align 8, !tbaa !74
  %32 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  store i32 0, ptr %32, align 8, !tbaa !75
  %33 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 27
  store i32 0, ptr %33, align 4, !tbaa !76
  %34 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 21
  store i32 1, ptr %34, align 4, !tbaa !77
  %35 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 22
  store i32 0, ptr %35, align 8, !tbaa !78
  %36 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 23
  store i32 0, ptr %36, align 4, !tbaa !79
  %37 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  store i32 1, ptr %37, align 8, !tbaa !80
  %38 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 25
  store i32 0, ptr %38, align 4, !tbaa !81
  %39 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42
  store i32 1, ptr %39, align 8, !tbaa !82
  %40 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 5
  store i32 0, ptr %40, align 4, !tbaa !83
  %41 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 8
  store float 1.000000e+00, ptr %41, align 8, !tbaa !84
  %42 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 9
  store i32 0, ptr %42, align 4, !tbaa !85
  %43 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 10
  store i32 0, ptr %43, align 8, !tbaa !86
  %44 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 11
  store float 0x3FECCCCCC0000000, ptr %44, align 4, !tbaa !87
  %45 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 1
  store i32 23, ptr %45, align 4, !tbaa !88
  %46 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 6
  store float 2.300000e+01, ptr %46, align 8, !tbaa !89
  %47 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 2
  store i32 10, ptr %47, align 8, !tbaa !90
  %48 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 3
  store i32 51, ptr %48, align 4, !tbaa !91
  %49 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 4
  store i32 4, ptr %49, align 8, !tbaa !92
  %50 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 12
  store float 0x3FF6666660000000, ptr %50, align 8, !tbaa !93
  %51 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 13
  store float 0x3FF4CCCCC0000000, ptr %51, align 4, !tbaa !94
  %52 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 14
  store i32 1, ptr %52, align 8, !tbaa !95
  %53 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 15
  store float 1.000000e+00, ptr %53, align 4, !tbaa !96
  %54 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  store i32 40, ptr %54, align 4, !tbaa !97
  %55 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 18
  store i32 0, ptr %55, align 8, !tbaa !98
  %56 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 19
  store ptr @.str, ptr %56, align 8, !tbaa !99
  %57 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  store i32 0, ptr %57, align 8, !tbaa !100
  %58 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 21
  store ptr @.str, ptr %58, align 8, !tbaa !101
  %59 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 22
  store float 0x3FE3333340000000, ptr %59, align 8, !tbaa !102
  %60 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 23
  store float 5.000000e-01, ptr %60, align 4, !tbaa !103
  %61 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 24
  store float 2.000000e+01, ptr %61, align 8, !tbaa !104
  %62 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 26
  store i32 0, ptr %62, align 8, !tbaa !105
  %63 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  store i32 1, ptr %63, align 8, !tbaa !106
  %64 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 36
  store ptr @x264_log_default, ptr %64, align 8, !tbaa !107
  %65 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 37
  store ptr null, ptr %65, align 8, !tbaa !108
  %66 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 38
  store i32 2, ptr %66, align 8, !tbaa !109
  %67 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41
  store i32 3, ptr %67, align 8, !tbaa !110
  %68 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 1
  store i32 275, ptr %68, align 4, !tbaa !111
  %69 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  store i32 1, ptr %69, align 4, !tbaa !112
  %70 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  store i32 1, ptr %70, align 4, !tbaa !113
  %71 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 18
  store float 1.000000e+00, ptr %71, align 8, !tbaa !114
  %72 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 20
  store i32 1, ptr %72, align 8, !tbaa !115
  %73 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 19
  store float 0.000000e+00, ptr %73, align 4, !tbaa !116
  %74 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 8
  store i32 16, ptr %74, align 8, !tbaa !117
  %75 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  store i32 7, ptr %75, align 4, !tbaa !118
  %76 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 13
  store i32 1, ptr %76, align 4, !tbaa !119
  %77 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 12
  store i32 1, ptr %77, align 8, !tbaa !120
  %78 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 10
  store i32 -1, ptr %78, align 8, !tbaa !121
  %79 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 9
  store i32 -1, ptr %79, align 4, !tbaa !122
  %80 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 6
  store i32 0, ptr %80, align 8, !tbaa !123
  %81 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 15
  store i32 1, ptr %81, align 4, !tbaa !124
  %82 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 4
  store i32 1, ptr %82, align 8, !tbaa !125
  %83 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  store i32 2, ptr %83, align 4, !tbaa !126
  %84 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 16
  store i32 1, ptr %84, align 8, !tbaa !127
  %85 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 2
  store i32 1, ptr %85, align 8, !tbaa !128
  %86 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  store i32 1, ptr %86, align 8, !tbaa !129
  %87 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 21
  store i32 21, ptr %87, align 4, !tbaa !130
  %88 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 21, i64 1
  store i32 11, ptr %88, align 4, !tbaa !130
  %89 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 22
  store i32 0, ptr %89, align 4, !tbaa !131
  %90 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 23
  store i32 0, ptr %90, align 8, !tbaa !132
  %91 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 0, ptr %91, align 8, !tbaa !133
  %92 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 30
  %93 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %92, i8 16, i64 192, i1 false)
  store i32 1, ptr %93, align 4, !tbaa !134
  %94 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 45
  store i32 1, ptr %94, align 8, !tbaa !135
  %95 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 43
  store i32 0, ptr %95, align 8, !tbaa !136
  %96 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 47
  store i32 1, ptr %96, align 8, !tbaa !137
  %97 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 52
  store i32 0, ptr %97, align 4, !tbaa !138
  %98 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 10
  store i32 0, ptr %98, align 8, !tbaa !139
  %99 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 53
  store i32 1, ptr %99, align 8, !tbaa !140
  %100 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 54
  store i32 0, ptr %100, align 4, !tbaa !141
  %101 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 55
  store i32 0, ptr %101, align 8, !tbaa !142
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare i32 @x264_cpu_detect() local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define internal void @x264_log_default(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #7 {
  %5 = icmp ult i32 %1, 4
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds [4 x ptr], ptr @switch.table.x264_log, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8
  br label %10

10:                                               ; preds = %4, %6
  %11 = phi ptr [ %9, %6 ], [ @.str.271, %4 ]
  %12 = load ptr, ptr @stderr, align 8, !tbaa !143
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.272, ptr noundef nonnull %11) #25
  %14 = load ptr, ptr @stderr, align 8, !tbaa !143
  %15 = tail call i32 @vfprintf(ptr noundef %14, ptr noundef %2, ptr noundef %3) #25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @x264_param_default_preset(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #4 {
  tail call void @x264_param_default(ptr noundef %0)
  %4 = icmp eq ptr %1, null
  br i1 %4, label %122, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.212) #22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  store i32 1, ptr %9, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 15
  store i32 0, ptr %10, align 4, !tbaa !71
  %11 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 21
  store i32 0, ptr %11, align 4, !tbaa !77
  %12 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  store i32 0, ptr %12, align 8, !tbaa !80
  %13 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  store i32 0, ptr %13, align 4, !tbaa !70
  %14 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41
  %15 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  store i32 0, ptr %15, align 4, !tbaa !113
  %16 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  store i32 0, ptr %16, align 4, !tbaa !118
  %17 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 14
  store i32 0, ptr %17, align 8, !tbaa !95
  %18 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 13
  store i32 0, ptr %18, align 4, !tbaa !119
  %19 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  store i32 0, ptr %19, align 8, !tbaa !129
  %20 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 18
  store i32 0, ptr %20, align 8, !tbaa !72
  %21 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  store i32 0, ptr %21, align 8, !tbaa !106
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  br label %122

22:                                               ; preds = %5
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.213) #22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 1
  store i32 3, ptr %26, align 4, !tbaa !111
  %27 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  store i32 0, ptr %27, align 4, !tbaa !113
  %28 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  store i32 1, ptr %28, align 4, !tbaa !118
  %29 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  store i32 1, ptr %29, align 8, !tbaa !67
  %30 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 13
  store i32 0, ptr %30, align 4, !tbaa !119
  %31 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  store i32 0, ptr %31, align 8, !tbaa !129
  %32 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  store i32 0, ptr %32, align 8, !tbaa !106
  %33 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  store i32 0, ptr %33, align 4, !tbaa !126
  br label %122

34:                                               ; preds = %22
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.214) #22
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  store i32 1, ptr %38, align 4, !tbaa !113
  %39 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  store i32 2, ptr %39, align 4, !tbaa !118
  %40 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  store i32 1, ptr %40, align 8, !tbaa !67
  %41 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 13
  store i32 0, ptr %41, align 4, !tbaa !119
  %42 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  store i32 0, ptr %42, align 8, !tbaa !129
  %43 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  store i32 0, ptr %43, align 8, !tbaa !106
  %44 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  store i32 0, ptr %44, align 4, !tbaa !126
  br label %122

45:                                               ; preds = %34
  %46 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.215) #22
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 13
  store i32 0, ptr %49, align 4, !tbaa !119
  %50 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  store i32 2, ptr %50, align 8, !tbaa !67
  %51 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  store i32 4, ptr %51, align 4, !tbaa !118
  %52 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  store i32 1, ptr %52, align 4, !tbaa !126
  %53 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  store i32 20, ptr %53, align 4, !tbaa !97
  br label %122

54:                                               ; preds = %45
  %55 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.216) #22
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  store i32 2, ptr %58, align 8, !tbaa !67
  %59 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  store i32 6, ptr %59, align 4, !tbaa !118
  %60 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  store i32 30, ptr %60, align 4, !tbaa !97
  br label %122

61:                                               ; preds = %54
  %62 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.217) #22
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %122, label %64

64:                                               ; preds = %61
  %65 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.218) #22
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  store i32 2, ptr %68, align 4, !tbaa !113
  %69 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  store i32 8, ptr %69, align 4, !tbaa !118
  %70 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  store i32 5, ptr %70, align 8, !tbaa !67
  %71 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 18
  store i32 2, ptr %71, align 8, !tbaa !72
  %72 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  store i32 3, ptr %72, align 4, !tbaa !112
  %73 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  store i32 50, ptr %73, align 4, !tbaa !97
  br label %122

74:                                               ; preds = %64
  %75 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.219) #22
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  store i32 2, ptr %78, align 4, !tbaa !113
  %79 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  store i32 9, ptr %79, align 4, !tbaa !118
  %80 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  store i32 8, ptr %80, align 8, !tbaa !67
  %81 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 18
  store i32 2, ptr %81, align 8, !tbaa !72
  %82 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  store i32 3, ptr %82, align 4, !tbaa !112
  %83 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !111
  %85 = or i32 %84, 32
  store i32 %85, ptr %83, align 4, !tbaa !111
  %86 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  store i32 2, ptr %86, align 8, !tbaa !129
  %87 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  store i32 60, ptr %87, align 4, !tbaa !97
  br label %122

88:                                               ; preds = %74
  %89 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.220) #22
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  store i32 2, ptr %92, align 4, !tbaa !113
  %93 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  store i32 10, ptr %93, align 4, !tbaa !118
  %94 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 8
  store i32 24, ptr %94, align 8, !tbaa !117
  %95 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  store i32 16, ptr %95, align 8, !tbaa !67
  %96 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 18
  store i32 2, ptr %96, align 8, !tbaa !72
  %97 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  store i32 3, ptr %97, align 4, !tbaa !112
  %98 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !111
  %100 = or i32 %99, 32
  store i32 %100, ptr %98, align 4, !tbaa !111
  %101 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  store i32 2, ptr %101, align 8, !tbaa !129
  %102 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  store i32 8, ptr %102, align 4, !tbaa !70
  %103 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  store i32 60, ptr %103, align 4, !tbaa !97
  br label %122

104:                                              ; preds = %88
  %105 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.221) #22
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  store i32 4, ptr %108, align 4, !tbaa !113
  %109 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  store i32 10, ptr %109, align 4, !tbaa !118
  %110 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 8
  store i32 24, ptr %110, align 8, !tbaa !117
  %111 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  store i32 16, ptr %111, align 8, !tbaa !67
  %112 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 18
  store i32 2, ptr %112, align 8, !tbaa !72
  %113 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  store i32 3, ptr %113, align 4, !tbaa !112
  %114 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 1
  %115 = load i32, ptr %114, align 4, !tbaa !111
  %116 = or i32 %115, 32
  store i32 %116, ptr %114, align 4, !tbaa !111
  %117 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 15
  store i32 0, ptr %117, align 4, !tbaa !124
  %118 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  store i32 2, ptr %118, align 8, !tbaa !129
  %119 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  store i32 16, ptr %119, align 4, !tbaa !70
  %120 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  store i32 60, ptr %120, align 4, !tbaa !97
  br label %122

121:                                              ; preds = %104
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.222, ptr noundef nonnull %1)
  br label %278

122:                                              ; preds = %107, %91, %77, %67, %61, %57, %48, %37, %25, %8, %3
  %123 = icmp eq ptr %2, null
  br i1 %123, label %278, label %124

124:                                              ; preds = %122
  %125 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %126 = trunc i64 %125 to i32
  %127 = shl i64 %125, 32
  %128 = ashr exact i64 %127, 32
  %129 = add nsw i64 %128, 27
  %130 = tail call noalias ptr @malloc(i64 noundef %129) #23
  %131 = icmp eq ptr %130, null
  br i1 %131, label %140, label %132

132:                                              ; preds = %124
  %133 = getelementptr inbounds i8, ptr %130, i64 27
  %134 = ptrtoint ptr %133 to i64
  %135 = and i64 %134, 15
  %136 = sub nsw i64 0, %135
  %137 = getelementptr inbounds i8, ptr %133, i64 %136
  %138 = getelementptr inbounds i8, ptr %137, i64 -8
  store ptr %130, ptr %138, align 8, !tbaa !143
  %139 = getelementptr inbounds i8, ptr %137, i64 -12
  store i32 %126, ptr %139, align 4, !tbaa !130
  br label %140

140:                                              ; preds = %132, %124
  %141 = phi ptr [ %137, %132 ], [ null, %124 ]
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.156, i32 noundef %126)
  br label %278

144:                                              ; preds = %140
  %145 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %141, ptr noundef nonnull dereferenceable(1) %2) #24
  %146 = tail call ptr @strtok(ptr noundef nonnull %141, ptr noundef nonnull @.str.223) #24
  %147 = icmp eq ptr %146, null
  br i1 %147, label %275, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  %150 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 22
  %151 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 23
  %152 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 19
  %153 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 15
  %154 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 1
  %155 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  %156 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 4
  %157 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  %158 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 2
  %159 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 47
  %160 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 21
  %161 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  %162 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 4
  %163 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  %164 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 14
  %165 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 20
  %166 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 14
  %167 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 20
  %168 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 22
  %169 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 23
  %170 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 18
  %171 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 19
  %172 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 15
  %173 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 22
  %174 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 23
  %175 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 19
  %176 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 16
  %177 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 13
  %178 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 12
  %179 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 15
  %180 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 21
  %181 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 21, i64 1
  %182 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 22
  %183 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  %184 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 22
  %185 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 23
  %186 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 18
  %187 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 15
  %188 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  %189 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 22
  %190 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 23
  %191 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 19
  br label %192

192:                                              ; preds = %148, %271
  %193 = phi i32 [ 0, %148 ], [ %272, %271 ]
  %194 = phi ptr [ %146, %148 ], [ %273, %271 ]
  %195 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %194, ptr noundef nonnull dereferenceable(5) @.str.224, i64 noundef 4) #22
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %192
  %198 = add nsw i32 %193, 1
  %199 = icmp eq i32 %193, 0
  br i1 %199, label %200, label %269

200:                                              ; preds = %197
  store i32 -1, ptr %189, align 8, !tbaa !78
  store i32 -1, ptr %190, align 4, !tbaa !79
  store float 0x3FC3333340000000, ptr %191, align 4, !tbaa !116
  br label %271

201:                                              ; preds = %192
  %202 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %194, ptr noundef nonnull dereferenceable(10) @.str.225, i64 noundef 9) #22
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %214

204:                                              ; preds = %201
  %205 = add nsw i32 %193, 1
  %206 = icmp eq i32 %193, 0
  br i1 %206, label %207, label %269

207:                                              ; preds = %204
  %208 = load i32, ptr %183, align 8, !tbaa !67
  %209 = icmp sgt i32 %208, 1
  %210 = shl nuw nsw i32 %208, 1
  %211 = select i1 %209, i32 %210, i32 1
  store i32 %211, ptr %183, align 8, !tbaa !67
  store i32 1, ptr %184, align 8, !tbaa !78
  store i32 1, ptr %185, align 4, !tbaa !79
  store float 0x3FD99999A0000000, ptr %186, align 8, !tbaa !114
  store float 0x3FE3333340000000, ptr %187, align 4, !tbaa !96
  %212 = load i32, ptr %188, align 4, !tbaa !70
  %213 = add nsw i32 %212, 2
  store i32 %213, ptr %188, align 4, !tbaa !70
  br label %271

214:                                              ; preds = %201
  %215 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %194, ptr noundef nonnull dereferenceable(6) @.str.226, i64 noundef 5) #22
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %214
  %218 = add nsw i32 %193, 1
  %219 = icmp eq i32 %193, 0
  br i1 %219, label %220, label %269

220:                                              ; preds = %217
  store i32 -2, ptr %173, align 8, !tbaa !78
  store i32 -2, ptr %174, align 4, !tbaa !79
  store float 2.500000e-01, ptr %175, align 4, !tbaa !116
  store i32 0, ptr %176, align 8, !tbaa !127
  store float 0x3FF19999A0000000, ptr %177, align 4, !tbaa !94
  store float 0x3FF19999A0000000, ptr %178, align 8, !tbaa !93
  store float 5.000000e-01, ptr %179, align 4, !tbaa !96
  store i32 6, ptr %180, align 4, !tbaa !130
  store i32 6, ptr %181, align 4, !tbaa !130
  store float 0x3FE99999A0000000, ptr %182, align 8, !tbaa !102
  br label %271

221:                                              ; preds = %214
  %222 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %194, ptr noundef nonnull dereferenceable(11) @.str.227, i64 noundef 5) #22
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %221
  %225 = add nsw i32 %193, 1
  %226 = icmp eq i32 %193, 0
  br i1 %226, label %227, label %269

227:                                              ; preds = %224
  store i32 -3, ptr %168, align 8, !tbaa !78
  store i32 -3, ptr %169, align 4, !tbaa !79
  store float 2.000000e+00, ptr %170, align 8, !tbaa !114
  store float 0x3FE6666660000000, ptr %171, align 4, !tbaa !116
  store float 0x3FF3333340000000, ptr %172, align 4, !tbaa !96
  br label %271

228:                                              ; preds = %221
  %229 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %194, ptr noundef nonnull dereferenceable(5) @.str.145, i64 noundef 4) #22
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %228
  %232 = add nsw i32 %193, 1
  %233 = icmp eq i32 %193, 0
  br i1 %233, label %234, label %269

234:                                              ; preds = %231
  store i32 0, ptr %166, align 8, !tbaa !95
  store i32 0, ptr %167, align 8, !tbaa !115
  br label %271

235:                                              ; preds = %228
  %236 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %194, ptr noundef nonnull dereferenceable(5) @.str.146, i64 noundef 4) #22
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %235
  %239 = add nsw i32 %193, 1
  %240 = icmp eq i32 %193, 0
  br i1 %240, label %241, label %269

241:                                              ; preds = %238
  store i32 2, ptr %164, align 8, !tbaa !95
  store i32 0, ptr %165, align 8, !tbaa !115
  br label %271

242:                                              ; preds = %235
  %243 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %194, ptr noundef nonnull dereferenceable(11) @.str.228, i64 noundef 10) #22
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %242
  store i32 0, ptr %160, align 4, !tbaa !77
  store i32 0, ptr %161, align 8, !tbaa !80
  store i32 0, ptr %162, align 8, !tbaa !125
  store i32 0, ptr %163, align 4, !tbaa !126
  br label %271

246:                                              ; preds = %242
  %247 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %194, ptr noundef nonnull dereferenceable(12) @.str.229, i64 noundef 11) #22
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %246
  store i32 0, ptr %155, align 4, !tbaa !97
  store i32 0, ptr %156, align 8, !tbaa !48
  store i32 0, ptr %157, align 4, !tbaa !70
  store i32 1, ptr %158, align 8, !tbaa !144
  store i32 0, ptr %159, align 8, !tbaa !137
  br label %271

250:                                              ; preds = %246
  %251 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %194, ptr noundef nonnull dereferenceable(7) @.str.230, i64 noundef 6) #22
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %266

253:                                              ; preds = %250
  %254 = add nsw i32 %193, 1
  %255 = icmp eq i32 %193, 0
  br i1 %255, label %256, label %269

256:                                              ; preds = %253
  %257 = load i32, ptr %149, align 8, !tbaa !67
  %258 = icmp sgt i32 %257, 1
  %259 = shl nuw nsw i32 %257, 1
  %260 = select i1 %258, i32 %259, i32 1
  store i32 %260, ptr %149, align 8, !tbaa !67
  store i32 -1, ptr %150, align 8, !tbaa !78
  store i32 -1, ptr %151, align 4, !tbaa !79
  store float 0x3FC99999A0000000, ptr %152, align 4, !tbaa !116
  store float 0x3FF4CCCCC0000000, ptr %153, align 4, !tbaa !96
  %261 = load i32, ptr %154, align 4, !tbaa !111
  %262 = and i32 %261, 16
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %271, label %264

264:                                              ; preds = %256
  %265 = or i32 %261, 32
  store i32 %265, ptr %154, align 4, !tbaa !111
  br label %271

266:                                              ; preds = %250
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.231, ptr noundef nonnull %194)
  %267 = getelementptr inbounds ptr, ptr %141, i64 -1
  %268 = load ptr, ptr %267, align 8, !tbaa !143
  tail call void @free(ptr noundef %268) #24
  br label %278

269:                                              ; preds = %253, %238, %231, %224, %217, %204, %197
  %270 = phi i32 [ %254, %253 ], [ %239, %238 ], [ %232, %231 ], [ %225, %224 ], [ %218, %217 ], [ %205, %204 ], [ %198, %197 ]
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.232, ptr noundef nonnull %194)
  br label %271

271:                                              ; preds = %269, %264, %256, %249, %245, %241, %234, %227, %220, %207, %200
  %272 = phi i32 [ %270, %269 ], [ %254, %264 ], [ %254, %256 ], [ %193, %249 ], [ %193, %245 ], [ %239, %241 ], [ %232, %234 ], [ %225, %227 ], [ %218, %220 ], [ %205, %207 ], [ %198, %200 ]
  %273 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.223) #24
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %192, !llvm.loop !145

275:                                              ; preds = %271, %144
  %276 = getelementptr inbounds ptr, ptr %141, i64 -1
  %277 = load ptr, ptr %276, align 8, !tbaa !143
  tail call void @free(ptr noundef %277) #24
  br label %278

278:                                              ; preds = %143, %266, %122, %275, %121
  %279 = phi i32 [ -1, %121 ], [ 0, %275 ], [ 0, %122 ], [ -1, %266 ], [ -1, %143 ]
  ret i32 %279
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @x264_param_apply_fastfirstpass(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 18
  %3 = load i32, ptr %2, align 8, !tbaa !98
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  %7 = load i32, ptr %6, align 8, !tbaa !100
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  store i32 1, ptr %10, align 8, !tbaa !67
  %11 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 2
  store i32 0, ptr %11, align 8, !tbaa !128
  %12 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 1
  store i32 0, ptr %12, align 4, !tbaa !111
  %13 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  store i32 0, ptr %13, align 4, !tbaa !113
  %14 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  %15 = load i32, ptr %14, align 4, !tbaa !118
  %16 = tail call i32 @llvm.smin.i32(i32 %15, i32 2)
  store i32 %16, ptr %14, align 4, !tbaa !118
  %17 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  store i32 0, ptr %17, align 8, !tbaa !129
  %18 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 15
  store i32 1, ptr %18, align 4, !tbaa !124
  br label %19

19:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @x264_param_apply_profile(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %46, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.1) #22
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 2
  store i32 0, ptr %8, align 8, !tbaa !128
  %9 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  store i32 0, ptr %9, align 8, !tbaa !80
  %10 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 0, ptr %10, align 8, !tbaa !133
  %11 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  store i32 0, ptr %11, align 4, !tbaa !70
  %12 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  store i32 0, ptr %12, align 4, !tbaa !126
  %13 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  %14 = load i32, ptr %13, align 8, !tbaa !75
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %7
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2)
  br label %46

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 55
  %19 = load i32, ptr %18, align 8, !tbaa !142
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.3)
  br label %32

22:                                               ; preds = %4
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.4) #22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 2
  store i32 0, ptr %26, align 8, !tbaa !128
  %27 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 0, ptr %27, align 8, !tbaa !133
  br label %32

28:                                               ; preds = %22
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.5) #22
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull %1)
  br label %46

32:                                               ; preds = %25, %28, %17, %21
  %33 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42
  %34 = load i32, ptr %33, align 8, !tbaa !82
  switch i32 %34, label %46 [
    i32 0, label %35
    i32 1, label %41
  ]

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !88
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = icmp eq i32 %34, 1
  br i1 %40, label %41, label %46

41:                                               ; preds = %32, %39
  %42 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 6
  %43 = load float, ptr %42, align 8, !tbaa !89
  %44 = fcmp oeq float %43, 0.000000e+00
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %35
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull %1)
  br label %46

46:                                               ; preds = %32, %39, %41, %2, %45, %31, %16
  %47 = phi i32 [ -1, %31 ], [ -1, %45 ], [ -1, %16 ], [ 0, %2 ], [ 0, %41 ], [ 0, %39 ], [ 0, %32 ]
  ret i32 %47
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @x264_log(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #4 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = icmp eq ptr %0, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 38
  %8 = load i32, ptr %7, align 16, !tbaa !148
  %9 = icmp slt i32 %8, %1
  br i1 %9, label %28, label %10

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #24
  call void @llvm.va_start(ptr nonnull %4)
  %11 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 36
  %12 = load ptr, ptr %11, align 16, !tbaa !169
  %13 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 37
  %14 = load ptr, ptr %13, align 8, !tbaa !170
  call void %12(ptr noundef %14, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #24
  br label %27

15:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #24
  call void @llvm.va_start(ptr nonnull %4)
  %16 = icmp ult i32 %1, 4
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = zext nneg i32 %1 to i64
  %19 = getelementptr inbounds [4 x ptr], ptr @switch.table.x264_log, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8
  br label %21

21:                                               ; preds = %15, %17
  %22 = phi ptr [ %20, %17 ], [ @.str.271, %15 ]
  %23 = load ptr, ptr @stderr, align 8, !tbaa !143
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.272, ptr noundef nonnull %22) #25
  %25 = load ptr, ptr @stderr, align 8, !tbaa !143
  %26 = call i32 @vfprintf(ptr noundef %25, ptr noundef %2, ptr noundef nonnull %4) #25
  br label %27

27:                                               ; preds = %10, %21
  call void @llvm.va_end(ptr %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #24
  br label %28

28:                                               ; preds = %27, %6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_param_parse(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  %31 = alloca ptr, align 8
  %32 = alloca ptr, align 8
  %33 = alloca ptr, align 8
  %34 = alloca ptr, align 8
  %35 = alloca ptr, align 8
  %36 = alloca ptr, align 8
  %37 = alloca ptr, align 8
  %38 = alloca ptr, align 8
  %39 = alloca ptr, align 8
  %40 = alloca ptr, align 8
  %41 = alloca ptr, align 8
  %42 = alloca ptr, align 8
  %43 = alloca ptr, align 8
  %44 = alloca ptr, align 8
  %45 = alloca ptr, align 8
  %46 = alloca ptr, align 8
  %47 = alloca ptr, align 8
  %48 = alloca ptr, align 8
  %49 = alloca ptr, align 8
  %50 = alloca ptr, align 8
  %51 = alloca ptr, align 8
  %52 = alloca ptr, align 8
  %53 = alloca ptr, align 8
  %54 = alloca ptr, align 8
  %55 = alloca ptr, align 8
  %56 = alloca ptr, align 8
  %57 = alloca ptr, align 8
  %58 = alloca ptr, align 8
  %59 = alloca ptr, align 8
  %60 = alloca ptr, align 8
  %61 = alloca ptr, align 8
  %62 = alloca ptr, align 8
  %63 = alloca ptr, align 8
  %64 = alloca ptr, align 8
  %65 = alloca ptr, align 8
  %66 = alloca ptr, align 8
  %67 = alloca ptr, align 8
  %68 = alloca ptr, align 8
  %69 = alloca ptr, align 8
  %70 = alloca ptr, align 8
  %71 = alloca ptr, align 8
  %72 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %72) #24
  store i32 0, ptr %72, align 4, !tbaa !130
  %73 = icmp eq ptr %2, null
  %74 = icmp eq ptr %1, null
  br i1 %74, label %2208, label %75

75:                                               ; preds = %3
  %76 = select i1 %73, ptr @.str.8, ptr %2
  %77 = load i8, ptr %76, align 1, !tbaa !35
  %78 = icmp eq i8 %77, 61
  %79 = zext i1 %78 to i64
  %80 = getelementptr inbounds i8, ptr %76, i64 %79
  %81 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 95) #22
  %82 = icmp eq ptr %81, null
  br i1 %82, label %102, label %83

83:                                               ; preds = %75
  %84 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  %85 = trunc i64 %84 to i32
  %86 = shl i64 %84, 32
  %87 = add i64 %86, 4294967296
  %88 = ashr exact i64 %87, 32
  %89 = tail call noalias ptr @malloc(i64 noundef %88) #23
  %90 = icmp sgt i32 %85, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = and i64 %84, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %89, ptr nonnull align 1 %1, i64 %92, i1 false), !tbaa !35
  br label %93

93:                                               ; preds = %83, %91
  %94 = ashr exact i64 %86, 32
  %95 = getelementptr inbounds i8, ptr %89, i64 %94
  store i8 0, ptr %95, align 1, !tbaa !35
  %96 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %89, i32 noundef 95) #22
  %97 = icmp eq ptr %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %93, %98
  %99 = phi ptr [ %100, %98 ], [ %96, %93 ]
  store i8 45, ptr %99, align 1, !tbaa !35
  %100 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %89, i32 noundef 95) #22
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %98, !llvm.loop !171

102:                                              ; preds = %98, %93, %75
  %103 = phi ptr [ null, %75 ], [ %89, %93 ], [ %89, %98 ]
  %104 = phi ptr [ %1, %75 ], [ %89, %93 ], [ %89, %98 ]
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %104, ptr noundef nonnull dereferenceable(4) @.str.9, i64 noundef 3) #22
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %104, ptr noundef nonnull dereferenceable(3) @.str.10, i64 noundef 2) #22
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107, %102
  %111 = phi i64 [ 3, %102 ], [ 2, %107 ]
  %112 = getelementptr inbounds i8, ptr %104, i64 %111
  %113 = call fastcc i32 @x264_atobool(ptr noundef nonnull %80, ptr noundef nonnull %72), !range !172
  %114 = icmp eq i32 %113, 0
  %115 = select i1 %114, ptr @.str.8, ptr @.str.11
  br label %116

116:                                              ; preds = %110, %107
  %117 = phi ptr [ %80, %107 ], [ %115, %110 ]
  %118 = phi ptr [ %104, %107 ], [ %112, %110 ]
  %119 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(4) @.str.12) #22
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %197

121:                                              ; preds = %116
  %122 = tail call ptr @__ctype_b_loc() #26
  %123 = load ptr, ptr %122, align 8, !tbaa !143
  %124 = load i8, ptr %117, align 1, !tbaa !35
  %125 = sext i8 %124 to i64
  %126 = getelementptr inbounds i16, ptr %123, i64 %125
  %127 = load i16, ptr %126, align 2, !tbaa !173
  %128 = and i16 %127, 2048
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %140, label %130

130:                                              ; preds = %121
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %71) #24
  %131 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %71, i32 noundef 0) #24
  %132 = load ptr, ptr %71, align 8, !tbaa !143
  %133 = icmp eq ptr %132, %117
  br i1 %133, label %137, label %134

134:                                              ; preds = %130
  %135 = load i8, ptr %132, align 1, !tbaa !35
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %134, %130
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %138

138:                                              ; preds = %134, %137
  %139 = trunc i64 %131 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %71) #24
  br label %149

140:                                              ; preds = %121
  %141 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(5) @.str.13) #22
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = call fastcc i32 @x264_atobool(ptr noundef nonnull %117, ptr noundef nonnull %72), !range !172
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %143, %140
  %147 = phi i32 [ 1, %143 ], [ 0, %140 ]
  %148 = tail call i32 @x264_cpu_detect() #24
  br label %149

149:                                              ; preds = %146, %143, %138
  %150 = phi i32 [ 0, %138 ], [ %147, %146 ], [ 1, %143 ]
  %151 = phi i32 [ %139, %138 ], [ %148, %146 ], [ 0, %143 ]
  store i32 %151, ptr %0, align 8, !tbaa !38
  %152 = load i32, ptr %72, align 4, !tbaa !130
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %2196, label %154

154:                                              ; preds = %149
  %155 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %117) #22
  %156 = trunc i64 %155 to i32
  %157 = shl i64 %155, 32
  %158 = add i64 %157, 4294967296
  %159 = ashr exact i64 %158, 32
  %160 = tail call noalias ptr @malloc(i64 noundef %159) #23
  %161 = icmp sgt i32 %156, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %154
  %163 = and i64 %155, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %160, ptr align 1 %117, i64 %163, i1 false), !tbaa !35
  br label %164

164:                                              ; preds = %154, %162
  %165 = ashr exact i64 %157, 32
  %166 = getelementptr inbounds i8, ptr %160, i64 %165
  store i8 0, ptr %166, align 1, !tbaa !35
  store i32 0, ptr %72, align 4, !tbaa !130
  store i32 0, ptr %0, align 8, !tbaa !38
  %167 = tail call ptr @strtok(ptr noundef %160, ptr noundef nonnull @.str.14) #24
  %168 = icmp eq ptr %167, null
  br i1 %168, label %196, label %169

169:                                              ; preds = %164
  %170 = load i32, ptr getelementptr inbounds ([0 x %struct.x264_cpu_name_t], ptr @x264_cpu_names, i64 0, i64 0, i32 1), align 4, !tbaa !175
  %171 = icmp eq i32 %170, 0
  br label %172

172:                                              ; preds = %169, %193
  %173 = phi ptr [ %167, %169 ], [ %194, %193 ]
  br i1 %171, label %192, label %174

174:                                              ; preds = %172
  %175 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %173, ptr noundef nonnull dereferenceable(1) @x264_cpu_names) #22
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %187, label %177

177:                                              ; preds = %174, %183
  %178 = phi i64 [ %179, %183 ], [ 0, %174 ]
  %179 = add nuw i64 %178, 1
  %180 = getelementptr inbounds [0 x %struct.x264_cpu_name_t], ptr @x264_cpu_names, i64 0, i64 %179, i32 1
  %181 = load i32, ptr %180, align 4, !tbaa !175
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %192, label %183, !llvm.loop !177

183:                                              ; preds = %177
  %184 = getelementptr inbounds [0 x %struct.x264_cpu_name_t], ptr @x264_cpu_names, i64 0, i64 %179
  %185 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %173, ptr noundef nonnull dereferenceable(1) %184) #22
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %177, !llvm.loop !177

187:                                              ; preds = %183, %174
  %188 = phi i1 [ %171, %174 ], [ %182, %183 ]
  %189 = phi i32 [ %170, %174 ], [ %181, %183 ]
  %190 = load i32, ptr %0, align 8, !tbaa !38
  %191 = or i32 %190, %189
  store i32 %191, ptr %0, align 8, !tbaa !38
  br i1 %188, label %192, label %193

192:                                              ; preds = %177, %172, %187
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %193

193:                                              ; preds = %187, %192
  %194 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.14) #24
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %172, !llvm.loop !178

196:                                              ; preds = %193, %164
  tail call void @free(ptr noundef %160) #24
  br label %2196

197:                                              ; preds = %116
  %198 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(8) @.str.15) #22
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %216

200:                                              ; preds = %197
  %201 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(5) @.str.13) #22
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  store i32 0, ptr %204, align 4, !tbaa !46
  br label %2196

205:                                              ; preds = %200
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %70) #24
  %206 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %70, i32 noundef 0) #24
  %207 = load ptr, ptr %70, align 8, !tbaa !143
  %208 = icmp eq ptr %207, %117
  br i1 %208, label %212, label %209

209:                                              ; preds = %205
  %210 = load i8, ptr %207, align 1, !tbaa !35
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %209, %205
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %213

213:                                              ; preds = %209, %212
  %214 = trunc i64 %206 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %70) #24
  %215 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  store i32 %214, ptr %215, align 4, !tbaa !46
  br label %2196

216:                                              ; preds = %197
  %217 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(15) @.str.16) #22
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %221 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 2
  store i32 %220, ptr %221, align 8, !tbaa !144
  br label %2196

222:                                              ; preds = %216
  %223 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(15) @.str.17) #22
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %241

225:                                              ; preds = %222
  %226 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(5) @.str.13) #22
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %225
  %229 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 4
  store i32 -1, ptr %229, align 8, !tbaa !48
  br label %2196

230:                                              ; preds = %225
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %69) #24
  %231 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %69, i32 noundef 0) #24
  %232 = load ptr, ptr %69, align 8, !tbaa !143
  %233 = icmp eq ptr %232, %117
  br i1 %233, label %237, label %234

234:                                              ; preds = %230
  %235 = load i8, ptr %232, align 1, !tbaa !35
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %238, label %237

237:                                              ; preds = %234, %230
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %238

238:                                              ; preds = %234, %237
  %239 = trunc i64 %231 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %69) #24
  %240 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 4
  store i32 %239, ptr %240, align 8, !tbaa !48
  br label %2196

241:                                              ; preds = %222
  %242 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(14) @.str.18) #22
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %241
  %245 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(16) @.str.19) #22
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %244, %241
  %248 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %249 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 3
  store i32 %248, ptr %249, align 4, !tbaa !47
  br label %2196

250:                                              ; preds = %244
  %251 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(6) @.str.20) #22
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %250
  %254 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(10) @.str.21) #22
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %289

256:                                              ; preds = %253, %250
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %68) #24
  %257 = call double @strtod(ptr noundef %117, ptr noundef nonnull %68) #24
  %258 = load ptr, ptr %68, align 8, !tbaa !143
  %259 = icmp eq ptr %258, %117
  br i1 %259, label %263, label %260

260:                                              ; preds = %256
  %261 = load i8, ptr %258, align 1, !tbaa !35
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %264, label %263

263:                                              ; preds = %260, %256
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %264

264:                                              ; preds = %260, %263
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %68) #24
  %265 = fcmp olt double %257, 6.000000e+00
  br i1 %265, label %266, label %278

266:                                              ; preds = %264
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %67) #24
  %267 = call double @strtod(ptr noundef %117, ptr noundef nonnull %67) #24
  %268 = load ptr, ptr %67, align 8, !tbaa !143
  %269 = icmp eq ptr %268, %117
  br i1 %269, label %273, label %270

270:                                              ; preds = %266
  %271 = load i8, ptr %268, align 1, !tbaa !35
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %274, label %273

273:                                              ; preds = %270, %266
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %274

274:                                              ; preds = %270, %273
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %67) #24
  %275 = tail call double @llvm.fmuladd.f64(double %267, double 1.000000e+01, double 5.000000e-01)
  %276 = fptosi double %275 to i32
  %277 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8
  store i32 %276, ptr %277, align 8, !tbaa !63
  br label %2196

278:                                              ; preds = %264
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %66) #24
  %279 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %66, i32 noundef 0) #24
  %280 = load ptr, ptr %66, align 8, !tbaa !143
  %281 = icmp eq ptr %280, %117
  br i1 %281, label %285, label %282

282:                                              ; preds = %278
  %283 = load i8, ptr %280, align 1, !tbaa !35
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %286, label %285

285:                                              ; preds = %282, %278
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %286

286:                                              ; preds = %282, %285
  %287 = trunc i64 %279 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %66) #24
  %288 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8
  store i32 %287, ptr %288, align 8, !tbaa !63
  br label %2196

289:                                              ; preds = %253
  %290 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(4) @.str.22) #22
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %303

292:                                              ; preds = %289
  %293 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11
  %294 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 1
  %295 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %117, ptr noundef nonnull @.str.23, ptr noundef nonnull %294, ptr noundef nonnull %293) #24
  %296 = icmp eq i32 %295, 2
  br i1 %296, label %301, label %297

297:                                              ; preds = %292
  %298 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %117, ptr noundef nonnull @.str.24, ptr noundef nonnull %294, ptr noundef nonnull %293) #24
  %299 = icmp ne i32 %298, 2
  %300 = zext i1 %299 to i32
  br label %301

301:                                              ; preds = %297, %292
  %302 = phi i32 [ 0, %292 ], [ %300, %297 ]
  store i32 %302, ptr %72, align 4, !tbaa !130
  br label %2196

303:                                              ; preds = %289
  %304 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(9) @.str.25) #22
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %331

306:                                              ; preds = %303
  %307 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 2
  %308 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(6) @.str.235) #22
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %316, label %319

310:                                              ; preds = %319
  %311 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(1) %323) #22
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %319, !llvm.loop !179

313:                                              ; preds = %310
  %314 = icmp eq ptr %323, null
  %315 = trunc i64 %321 to i32
  br label %316

316:                                              ; preds = %313, %306
  %317 = phi i32 [ %315, %313 ], [ 0, %306 ]
  %318 = phi i1 [ %314, %313 ], [ false, %306 ]
  store i32 %317, ptr %307, align 4, !tbaa !130
  br label %327

319:                                              ; preds = %306, %310
  %320 = phi i64 [ %321, %310 ], [ 0, %306 ]
  %321 = add nuw nsw i64 %320, 1
  %322 = getelementptr inbounds ptr, ptr @x264_overscan_names, i64 %321
  %323 = load ptr, ptr %322, align 8, !tbaa !143
  %324 = icmp eq i64 %321, 3
  br i1 %324, label %325, label %310, !llvm.loop !179

325:                                              ; preds = %319
  %326 = icmp eq ptr %323, null
  br label %327

327:                                              ; preds = %325, %316
  %328 = phi i1 [ %318, %316 ], [ %326, %325 ]
  %329 = load i32, ptr %72, align 4, !tbaa !130
  %330 = select i1 %328, i32 -1, i32 %329
  store i32 %330, ptr %72, align 4, !tbaa !130
  br label %2196

331:                                              ; preds = %303
  %332 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(12) @.str.26) #22
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %359

334:                                              ; preds = %331
  %335 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 3
  %336 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(10) @.str.238) #22
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %344, label %347

338:                                              ; preds = %347
  %339 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(1) %351) #22
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %347, !llvm.loop !179

341:                                              ; preds = %338
  %342 = icmp eq ptr %351, null
  %343 = trunc i64 %349 to i32
  br label %344

344:                                              ; preds = %341, %334
  %345 = phi i32 [ %343, %341 ], [ 0, %334 ]
  %346 = phi i1 [ %342, %341 ], [ false, %334 ]
  store i32 %345, ptr %335, align 4, !tbaa !130
  br label %355

347:                                              ; preds = %334, %338
  %348 = phi i64 [ %349, %338 ], [ 0, %334 ]
  %349 = add nuw nsw i64 %348, 1
  %350 = getelementptr inbounds ptr, ptr @x264_vidformat_names, i64 %349
  %351 = load ptr, ptr %350, align 8, !tbaa !143
  %352 = icmp eq i64 %349, 6
  br i1 %352, label %353, label %338, !llvm.loop !179

353:                                              ; preds = %347
  %354 = icmp eq ptr %351, null
  br label %355

355:                                              ; preds = %353, %344
  %356 = phi i1 [ %346, %344 ], [ %354, %353 ]
  %357 = load i32, ptr %72, align 4, !tbaa !130
  %358 = select i1 %356, i32 -1, i32 %357
  store i32 %358, ptr %72, align 4, !tbaa !130
  br label %2196

359:                                              ; preds = %331
  %360 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(10) @.str.27) #22
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %387

362:                                              ; preds = %359
  %363 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 4
  %364 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(4) @.str.243) #22
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %372, label %375

366:                                              ; preds = %375
  %367 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(1) %379) #22
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %375, !llvm.loop !179

369:                                              ; preds = %366
  %370 = icmp eq ptr %379, null
  %371 = trunc i64 %377 to i32
  br label %372

372:                                              ; preds = %369, %362
  %373 = phi i32 [ %371, %369 ], [ 0, %362 ]
  %374 = phi i1 [ %370, %369 ], [ false, %362 ]
  store i32 %373, ptr %363, align 4, !tbaa !130
  br label %383

375:                                              ; preds = %362, %366
  %376 = phi i64 [ %377, %366 ], [ 0, %362 ]
  %377 = add nuw nsw i64 %376, 1
  %378 = getelementptr inbounds ptr, ptr @x264_fullrange_names, i64 %377
  %379 = load ptr, ptr %378, align 8, !tbaa !143
  %380 = icmp eq i64 %377, 2
  br i1 %380, label %381, label %366, !llvm.loop !179

381:                                              ; preds = %375
  %382 = icmp eq ptr %379, null
  br label %383

383:                                              ; preds = %381, %372
  %384 = phi i1 [ %374, %372 ], [ %382, %381 ]
  %385 = load i32, ptr %72, align 4, !tbaa !130
  %386 = select i1 %384, i32 -1, i32 %385
  store i32 %386, ptr %72, align 4, !tbaa !130
  br label %2196

387:                                              ; preds = %359
  %388 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(10) @.str.28) #22
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %415

390:                                              ; preds = %387
  %391 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 5
  %392 = load i8, ptr %117, align 1
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %400, label %403

394:                                              ; preds = %403
  %395 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(1) %407) #22
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %403, !llvm.loop !179

397:                                              ; preds = %394
  %398 = icmp eq ptr %407, null
  %399 = trunc i64 %405 to i32
  br label %400

400:                                              ; preds = %397, %390
  %401 = phi i32 [ %399, %397 ], [ 0, %390 ]
  %402 = phi i1 [ %398, %397 ], [ false, %390 ]
  store i32 %401, ptr %391, align 4, !tbaa !130
  br label %411

403:                                              ; preds = %390, %394
  %404 = phi i64 [ %405, %394 ], [ 0, %390 ]
  %405 = add nuw nsw i64 %404, 1
  %406 = getelementptr inbounds ptr, ptr @x264_colorprim_names, i64 %405
  %407 = load ptr, ptr %406, align 8, !tbaa !143
  %408 = icmp eq i64 %405, 9
  br i1 %408, label %409, label %394, !llvm.loop !179

409:                                              ; preds = %403
  %410 = icmp eq ptr %407, null
  br label %411

411:                                              ; preds = %409, %400
  %412 = phi i1 [ %402, %400 ], [ %410, %409 ]
  %413 = load i32, ptr %72, align 4, !tbaa !130
  %414 = select i1 %412, i32 -1, i32 %413
  store i32 %414, ptr %72, align 4, !tbaa !130
  br label %2196

415:                                              ; preds = %387
  %416 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(9) @.str.29) #22
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %443

418:                                              ; preds = %415
  %419 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 6
  %420 = load i8, ptr %117, align 1
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %428, label %431

422:                                              ; preds = %431
  %423 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(1) %435) #22
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %425, label %431, !llvm.loop !179

425:                                              ; preds = %422
  %426 = icmp eq ptr %435, null
  %427 = trunc i64 %433 to i32
  br label %428

428:                                              ; preds = %425, %418
  %429 = phi i32 [ %427, %425 ], [ 0, %418 ]
  %430 = phi i1 [ %426, %425 ], [ false, %418 ]
  store i32 %429, ptr %419, align 4, !tbaa !130
  br label %439

431:                                              ; preds = %418, %422
  %432 = phi i64 [ %433, %422 ], [ 0, %418 ]
  %433 = add nuw nsw i64 %432, 1
  %434 = getelementptr inbounds ptr, ptr @x264_transfer_names, i64 %433
  %435 = load ptr, ptr %434, align 8, !tbaa !143
  %436 = icmp eq i64 %433, 11
  br i1 %436, label %437, label %422, !llvm.loop !179

437:                                              ; preds = %431
  %438 = icmp eq ptr %435, null
  br label %439

439:                                              ; preds = %437, %428
  %440 = phi i1 [ %430, %428 ], [ %438, %437 ]
  %441 = load i32, ptr %72, align 4, !tbaa !130
  %442 = select i1 %440, i32 -1, i32 %441
  store i32 %442, ptr %72, align 4, !tbaa !130
  br label %2196

443:                                              ; preds = %415
  %444 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(12) @.str.30) #22
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %471

446:                                              ; preds = %443
  %447 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 7
  %448 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(4) @.str.254) #22
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %456, label %459

450:                                              ; preds = %459
  %451 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(1) %463) #22
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %459, !llvm.loop !179

453:                                              ; preds = %450
  %454 = icmp eq ptr %463, null
  %455 = trunc i64 %461 to i32
  br label %456

456:                                              ; preds = %453, %446
  %457 = phi i32 [ %455, %453 ], [ 0, %446 ]
  %458 = phi i1 [ %454, %453 ], [ false, %446 ]
  store i32 %457, ptr %447, align 4, !tbaa !130
  br label %467

459:                                              ; preds = %446, %450
  %460 = phi i64 [ %461, %450 ], [ 0, %446 ]
  %461 = add nuw nsw i64 %460, 1
  %462 = getelementptr inbounds ptr, ptr @x264_colmatrix_names, i64 %461
  %463 = load ptr, ptr %462, align 8, !tbaa !143
  %464 = icmp eq i64 %461, 9
  br i1 %464, label %465, label %450, !llvm.loop !179

465:                                              ; preds = %459
  %466 = icmp eq ptr %463, null
  br label %467

467:                                              ; preds = %465, %456
  %468 = phi i1 [ %458, %456 ], [ %466, %465 ]
  %469 = load i32, ptr %72, align 4, !tbaa !130
  %470 = select i1 %468, i32 -1, i32 %469
  store i32 %470, ptr %72, align 4, !tbaa !130
  br label %2196

471:                                              ; preds = %443
  %472 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(10) @.str.31) #22
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %487

474:                                              ; preds = %471
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %65) #24
  %475 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %65, i32 noundef 0) #24
  %476 = load ptr, ptr %65, align 8, !tbaa !143
  %477 = icmp eq ptr %476, %117
  br i1 %477, label %481, label %478

478:                                              ; preds = %474
  %479 = load i8, ptr %476, align 1, !tbaa !35
  %480 = icmp eq i8 %479, 0
  br i1 %480, label %482, label %481

481:                                              ; preds = %478, %474
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %482

482:                                              ; preds = %478, %481
  %483 = trunc i64 %475 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %65) #24
  %484 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 8
  store i32 %483, ptr %484, align 4, !tbaa !60
  %485 = icmp ugt i32 %483, 5
  %486 = zext i1 %485 to i32
  store i32 %486, ptr %72, align 4, !tbaa !130
  br label %2196

487:                                              ; preds = %471
  %488 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(4) @.str.32) #22
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %490, label %509

490:                                              ; preds = %487
  %491 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 48
  %492 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 49
  %493 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %117, ptr noundef nonnull @.str.33, ptr noundef nonnull %491, ptr noundef nonnull %492) #24
  %494 = icmp eq i32 %493, 2
  br i1 %494, label %2196, label %495

495:                                              ; preds = %490
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %64) #24
  %496 = call double @strtod(ptr noundef %117, ptr noundef nonnull %64) #24
  %497 = load ptr, ptr %64, align 8, !tbaa !143
  %498 = icmp eq ptr %497, %117
  br i1 %498, label %502, label %499

499:                                              ; preds = %495
  %500 = load i8, ptr %497, align 1, !tbaa !35
  %501 = icmp eq i8 %500, 0
  br i1 %501, label %503, label %502

502:                                              ; preds = %499, %495
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %503

503:                                              ; preds = %499, %502
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %64) #24
  %504 = fptrunc double %496 to float
  %505 = fmul float %504, 1.000000e+03
  %506 = fpext float %505 to double
  %507 = fadd double %506, 5.000000e-01
  %508 = fptosi double %507 to i32
  store i32 %508, ptr %491, align 4, !tbaa !61
  store i32 1000, ptr %492, align 8, !tbaa !62
  br label %2196

509:                                              ; preds = %487
  %510 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(4) @.str.34) #22
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %515, label %512

512:                                              ; preds = %509
  %513 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(9) @.str.35) #22
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %515, label %526

515:                                              ; preds = %512, %509
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %63) #24
  %516 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %63, i32 noundef 0) #24
  %517 = load ptr, ptr %63, align 8, !tbaa !143
  %518 = icmp eq ptr %517, %117
  br i1 %518, label %522, label %519

519:                                              ; preds = %515
  %520 = load i8, ptr %517, align 1, !tbaa !35
  %521 = icmp eq i8 %520, 0
  br i1 %521, label %523, label %522

522:                                              ; preds = %519, %515
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %523

523:                                              ; preds = %519, %522
  %524 = trunc i64 %516 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %63) #24
  %525 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  store i32 %524, ptr %525, align 8, !tbaa !67
  br label %2196

526:                                              ; preds = %512
  %527 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(7) @.str.36) #22
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %544

529:                                              ; preds = %526
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %62) #24
  %530 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %62, i32 noundef 0) #24
  %531 = load ptr, ptr %62, align 8, !tbaa !143
  %532 = icmp eq ptr %531, %117
  br i1 %532, label %536, label %533

533:                                              ; preds = %529
  %534 = load i8, ptr %531, align 1, !tbaa !35
  %535 = icmp eq i8 %534, 0
  br i1 %535, label %537, label %536

536:                                              ; preds = %533, %529
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %537

537:                                              ; preds = %533, %536
  %538 = trunc i64 %530 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %62) #24
  %539 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 13
  store i32 %538, ptr %539, align 4, !tbaa !68
  %540 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 14
  %541 = load i32, ptr %540, align 8, !tbaa !69
  %542 = icmp sgt i32 %541, %538
  br i1 %542, label %543, label %2196

543:                                              ; preds = %537
  store i32 %538, ptr %540, align 8, !tbaa !69
  br label %2196

544:                                              ; preds = %526
  %545 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(11) @.str.37) #22
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %550, label %547

547:                                              ; preds = %544
  %548 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(11) @.str.38) #22
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %550, label %565

550:                                              ; preds = %547, %544
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %61) #24
  %551 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %61, i32 noundef 0) #24
  %552 = load ptr, ptr %61, align 8, !tbaa !143
  %553 = icmp eq ptr %552, %117
  br i1 %553, label %557, label %554

554:                                              ; preds = %550
  %555 = load i8, ptr %552, align 1, !tbaa !35
  %556 = icmp eq i8 %555, 0
  br i1 %556, label %558, label %557

557:                                              ; preds = %554, %550
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %558

558:                                              ; preds = %554, %557
  %559 = trunc i64 %551 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %61) #24
  %560 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 14
  store i32 %559, ptr %560, align 8, !tbaa !69
  %561 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 13
  %562 = load i32, ptr %561, align 4, !tbaa !68
  %563 = icmp slt i32 %562, %559
  br i1 %563, label %564, label %2196

564:                                              ; preds = %558
  store i32 %559, ptr %561, align 4, !tbaa !68
  br label %2196

565:                                              ; preds = %547
  %566 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(9) @.str.39) #22
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %584

568:                                              ; preds = %565
  %569 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %570 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 15
  store i32 %569, ptr %570, align 4, !tbaa !71
  %571 = load i32, ptr %72, align 4, !tbaa !130
  %572 = or i32 %571, %569
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %2196, label %574

574:                                              ; preds = %568
  store i32 0, ptr %72, align 4, !tbaa !130
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %60) #24
  %575 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %60, i32 noundef 0) #24
  %576 = load ptr, ptr %60, align 8, !tbaa !143
  %577 = icmp eq ptr %576, %117
  br i1 %577, label %581, label %578

578:                                              ; preds = %574
  %579 = load i8, ptr %576, align 1, !tbaa !35
  %580 = icmp eq i8 %579, 0
  br i1 %580, label %582, label %581

581:                                              ; preds = %578, %574
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %582

582:                                              ; preds = %578, %581
  %583 = trunc i64 %575 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %60) #24
  store i32 %583, ptr %570, align 4, !tbaa !71
  br label %2196

584:                                              ; preds = %565
  %585 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(14) @.str.40) #22
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %587, label %590

587:                                              ; preds = %584
  %588 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %589 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 16
  store i32 %588, ptr %589, align 8, !tbaa !180
  br label %2196

590:                                              ; preds = %584
  %591 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(8) @.str.41) #22
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %593, label %604

593:                                              ; preds = %590
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %59) #24
  %594 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %59, i32 noundef 0) #24
  %595 = load ptr, ptr %59, align 8, !tbaa !143
  %596 = icmp eq ptr %595, %117
  br i1 %596, label %600, label %597

597:                                              ; preds = %593
  %598 = load i8, ptr %595, align 1, !tbaa !35
  %599 = icmp eq i8 %598, 0
  br i1 %599, label %601, label %600

600:                                              ; preds = %597, %593
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %601

601:                                              ; preds = %597, %600
  %602 = trunc i64 %594 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %59) #24
  %603 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  store i32 %602, ptr %603, align 4, !tbaa !70
  br label %2196

604:                                              ; preds = %590
  %605 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(8) @.str.42) #22
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %607, label %622

607:                                              ; preds = %604
  %608 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %609 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 18
  store i32 %608, ptr %609, align 8, !tbaa !72
  %610 = load i32, ptr %72, align 4, !tbaa !130
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %2196, label %612

612:                                              ; preds = %607
  store i32 0, ptr %72, align 4, !tbaa !130
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %58) #24
  %613 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %58, i32 noundef 0) #24
  %614 = load ptr, ptr %58, align 8, !tbaa !143
  %615 = icmp eq ptr %614, %117
  br i1 %615, label %619, label %616

616:                                              ; preds = %612
  %617 = load i8, ptr %614, align 1, !tbaa !35
  %618 = icmp eq i8 %617, 0
  br i1 %618, label %620, label %619

619:                                              ; preds = %616, %612
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %620

620:                                              ; preds = %616, %619
  %621 = trunc i64 %613 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %58) #24
  store i32 %621, ptr %609, align 8, !tbaa !72
  br label %2196

622:                                              ; preds = %604
  %623 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(7) @.str.43) #22
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %625, label %636

625:                                              ; preds = %622
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %57) #24
  %626 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %57, i32 noundef 0) #24
  %627 = load ptr, ptr %57, align 8, !tbaa !143
  %628 = icmp eq ptr %627, %117
  br i1 %628, label %632, label %629

629:                                              ; preds = %625
  %630 = load i8, ptr %627, align 1, !tbaa !35
  %631 = icmp eq i8 %630, 0
  br i1 %631, label %633, label %632

632:                                              ; preds = %629, %625
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %633

633:                                              ; preds = %629, %632
  %634 = trunc i64 %626 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %57) #24
  %635 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 19
  store i32 %634, ptr %635, align 4, !tbaa !73
  br label %2196

636:                                              ; preds = %622
  %637 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(10) @.str.44) #22
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %639, label %675

639:                                              ; preds = %636
  %640 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 20
  %641 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(5) @.str.77) #22
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %649, label %652

643:                                              ; preds = %652
  %644 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(1) %656) #22
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %646, label %652, !llvm.loop !179

646:                                              ; preds = %643
  %647 = icmp eq ptr %656, null
  %648 = trunc i64 %654 to i32
  br label %649

649:                                              ; preds = %646, %639
  %650 = phi i32 [ %648, %646 ], [ 0, %639 ]
  %651 = phi i1 [ %647, %646 ], [ false, %639 ]
  store i32 %650, ptr %640, align 4, !tbaa !130
  br label %660

652:                                              ; preds = %639, %643
  %653 = phi i64 [ %654, %643 ], [ 0, %639 ]
  %654 = add nuw nsw i64 %653, 1
  %655 = getelementptr inbounds ptr, ptr @x264_b_pyramid_names, i64 %654
  %656 = load ptr, ptr %655, align 8, !tbaa !143
  %657 = icmp eq i64 %654, 3
  br i1 %657, label %658, label %643, !llvm.loop !179

658:                                              ; preds = %652
  %659 = icmp eq ptr %656, null
  br label %660

660:                                              ; preds = %658, %649
  %661 = phi i1 [ %651, %649 ], [ %659, %658 ]
  %662 = load i32, ptr %72, align 4, !tbaa !130
  %663 = select i1 %661, i32 -1, i32 %662
  store i32 %663, ptr %72, align 4, !tbaa !130
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %2196, label %665

665:                                              ; preds = %660
  store i32 0, ptr %72, align 4, !tbaa !130
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %56) #24
  %666 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %56, i32 noundef 0) #24
  %667 = load ptr, ptr %56, align 8, !tbaa !143
  %668 = icmp eq ptr %667, %117
  br i1 %668, label %672, label %669

669:                                              ; preds = %665
  %670 = load i8, ptr %667, align 1, !tbaa !35
  %671 = icmp eq i8 %670, 0
  br i1 %671, label %673, label %672

672:                                              ; preds = %669, %665
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %673

673:                                              ; preds = %669, %672
  %674 = trunc i64 %666 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %56) #24
  store i32 %674, ptr %640, align 8, !tbaa !74
  br label %2196

675:                                              ; preds = %636
  %676 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(3) @.str.45) #22
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %678, label %682

678:                                              ; preds = %675
  %679 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %680 = xor i32 %679, 1
  %681 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 21
  store i32 %680, ptr %681, align 4, !tbaa !77
  br label %2196

682:                                              ; preds = %675
  %683 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(7) @.str.46) #22
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %688, label %685

685:                                              ; preds = %682
  %686 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(8) @.str.47) #22
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %688, label %707

688:                                              ; preds = %685, %682
  %689 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 22
  %690 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 23
  %691 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %117, ptr noundef nonnull @.str.23, ptr noundef nonnull %689, ptr noundef nonnull %690) #24
  %692 = icmp eq i32 %691, 2
  br i1 %692, label %696, label %693

693:                                              ; preds = %688
  %694 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %117, ptr noundef nonnull @.str.48, ptr noundef nonnull %689, ptr noundef nonnull %690) #24
  %695 = icmp eq i32 %694, 2
  br i1 %695, label %696, label %698

696:                                              ; preds = %693, %688
  %697 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 21
  store i32 1, ptr %697, align 4, !tbaa !77
  br label %2196

698:                                              ; preds = %693
  %699 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %117, ptr noundef nonnull @.str.49, ptr noundef nonnull %689) #24
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %704, label %701

701:                                              ; preds = %698
  %702 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 21
  store i32 1, ptr %702, align 4, !tbaa !77
  %703 = load i32, ptr %689, align 8, !tbaa !78
  store i32 %703, ptr %690, align 4, !tbaa !79
  br label %2196

704:                                              ; preds = %698
  %705 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %706 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 21
  store i32 %705, ptr %706, align 4, !tbaa !77
  br label %2196

707:                                              ; preds = %685
  %708 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(15) @.str.50) #22
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %710, label %721

710:                                              ; preds = %707
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %55) #24
  %711 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %55, i32 noundef 0) #24
  %712 = load ptr, ptr %55, align 8, !tbaa !143
  %713 = icmp eq ptr %712, %117
  br i1 %713, label %717, label %714

714:                                              ; preds = %710
  %715 = load i8, ptr %712, align 1, !tbaa !35
  %716 = icmp eq i8 %715, 0
  br i1 %716, label %718, label %717

717:                                              ; preds = %714, %710
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %718

718:                                              ; preds = %714, %717
  %719 = trunc i64 %711 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %55) #24
  %720 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 56
  store i32 %719, ptr %720, align 4, !tbaa !64
  br label %2196

721:                                              ; preds = %707
  %722 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(14) @.str.51) #22
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %724, label %735

724:                                              ; preds = %721
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %54) #24
  %725 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %54, i32 noundef 0) #24
  %726 = load ptr, ptr %54, align 8, !tbaa !143
  %727 = icmp eq ptr %726, %117
  br i1 %727, label %731, label %728

728:                                              ; preds = %724
  %729 = load i8, ptr %726, align 1, !tbaa !35
  %730 = icmp eq i8 %729, 0
  br i1 %730, label %732, label %731

731:                                              ; preds = %728, %724
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %732

732:                                              ; preds = %728, %731
  %733 = trunc i64 %725 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %54) #24
  %734 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 57
  store i32 %733, ptr %734, align 8, !tbaa !65
  br label %2196

735:                                              ; preds = %721
  %736 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(7) @.str.52) #22
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %738, label %749

738:                                              ; preds = %735
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %53) #24
  %739 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %53, i32 noundef 0) #24
  %740 = load ptr, ptr %53, align 8, !tbaa !143
  %741 = icmp eq ptr %740, %117
  br i1 %741, label %745, label %742

742:                                              ; preds = %738
  %743 = load i8, ptr %740, align 1, !tbaa !35
  %744 = icmp eq i8 %743, 0
  br i1 %744, label %746, label %745

745:                                              ; preds = %742, %738
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %746

746:                                              ; preds = %742, %745
  %747 = trunc i64 %739 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %53) #24
  %748 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 58
  store i32 %747, ptr %748, align 4, !tbaa !66
  br label %2196

749:                                              ; preds = %735
  %750 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(6) @.str.53) #22
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %752, label %755

752:                                              ; preds = %749
  %753 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %754 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  store i32 %753, ptr %754, align 8, !tbaa !80
  br label %2196

755:                                              ; preds = %749
  %756 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(10) @.str.54) #22
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %758, label %769

758:                                              ; preds = %755
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %52) #24
  %759 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %52, i32 noundef 0) #24
  %760 = load ptr, ptr %52, align 8, !tbaa !143
  %761 = icmp eq ptr %760, %117
  br i1 %761, label %765, label %762

762:                                              ; preds = %758
  %763 = load i8, ptr %760, align 1, !tbaa !35
  %764 = icmp eq i8 %763, 0
  br i1 %764, label %766, label %765

765:                                              ; preds = %762, %758
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %766

766:                                              ; preds = %762, %765
  %767 = trunc i64 %759 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %52) #24
  %768 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 25
  store i32 %767, ptr %768, align 4, !tbaa !81
  br label %2196

769:                                              ; preds = %755
  %770 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(11) @.str.55) #22
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %772, label %775

772:                                              ; preds = %769
  %773 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %774 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  store i32 %773, ptr %774, align 8, !tbaa !75
  br label %2196

775:                                              ; preds = %769
  %776 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(4) @.str.56) #22
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %778, label %782

778:                                              ; preds = %775
  %779 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %780 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 53
  store i32 %779, ptr %780, align 8, !tbaa !140
  %781 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  store i32 %779, ptr %781, align 8, !tbaa !75
  br label %2196

782:                                              ; preds = %775
  %783 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(4) @.str.57) #22
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %785, label %790

785:                                              ; preds = %782
  %786 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %787 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  store i32 %786, ptr %787, align 8, !tbaa !75
  %788 = xor i32 %786, 1
  %789 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 53
  store i32 %788, ptr %789, align 8, !tbaa !140
  br label %2196

790:                                              ; preds = %782
  %791 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(18) @.str.58) #22
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %793, label %796

793:                                              ; preds = %790
  %794 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %795 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 27
  store i32 %794, ptr %795, align 4, !tbaa !76
  br label %2196

796:                                              ; preds = %790
  %797 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(4) @.str.59) #22
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %799, label %823

799:                                              ; preds = %796
  %800 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(1) @.str.60) #22
  %801 = icmp eq ptr %800, null
  br i1 %801, label %804, label %802

802:                                              ; preds = %799
  %803 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 0, ptr %803, align 8, !tbaa !133
  br label %2196

804:                                              ; preds = %799
  %805 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(1) @.str.61) #22
  %806 = icmp eq ptr %805, null
  br i1 %806, label %809, label %807

807:                                              ; preds = %804
  %808 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 1, ptr %808, align 8, !tbaa !133
  br label %2196

809:                                              ; preds = %804
  %810 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %117) #22
  %811 = trunc i64 %810 to i32
  %812 = shl i64 %810, 32
  %813 = add i64 %812, 4294967296
  %814 = ashr exact i64 %813, 32
  %815 = tail call noalias ptr @malloc(i64 noundef %814) #23
  %816 = icmp sgt i32 %811, 0
  br i1 %816, label %817, label %819

817:                                              ; preds = %809
  %818 = and i64 %810, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %815, ptr align 1 %117, i64 %818, i1 false), !tbaa !35
  br label %819

819:                                              ; preds = %809, %817
  %820 = ashr exact i64 %812, 32
  %821 = getelementptr inbounds i8, ptr %815, i64 %820
  store i8 0, ptr %821, align 1, !tbaa !35
  %822 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 29
  store ptr %815, ptr %822, align 8, !tbaa !181
  br label %2196

823:                                              ; preds = %796
  %824 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(8) @.str.62) #22
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %826, label %840

826:                                              ; preds = %823
  %827 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %117) #22
  %828 = trunc i64 %827 to i32
  %829 = shl i64 %827, 32
  %830 = add i64 %829, 4294967296
  %831 = ashr exact i64 %830, 32
  %832 = tail call noalias ptr @malloc(i64 noundef %831) #23
  %833 = icmp sgt i32 %828, 0
  br i1 %833, label %834, label %836

834:                                              ; preds = %826
  %835 = and i64 %827, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %832, ptr align 1 %117, i64 %835, i1 false), !tbaa !35
  br label %836

836:                                              ; preds = %826, %834
  %837 = ashr exact i64 %829, 32
  %838 = getelementptr inbounds i8, ptr %832, i64 %837
  store i8 0, ptr %838, align 1, !tbaa !35
  %839 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 29
  store ptr %832, ptr %839, align 8, !tbaa !181
  br label %2196

840:                                              ; preds = %823
  %841 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(5) @.str.63) #22
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %843, label %969

843:                                              ; preds = %840
  %844 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 2, ptr %844, align 8, !tbaa !133
  %845 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 30
  br label %846

846:                                              ; preds = %865, %843
  %847 = phi ptr [ %117, %843 ], [ %868, %865 ]
  %848 = phi i32 [ 0, %843 ], [ %862, %865 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #24
  %849 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %847, ptr noundef nonnull @.str.49, ptr noundef nonnull %19) #24
  %850 = icmp eq i32 %849, 0
  %851 = load i32, ptr %19, align 4
  %852 = icmp slt i32 %851, 1
  %853 = select i1 %850, i1 true, i1 %852
  %854 = icmp sgt i32 %851, 255
  %855 = select i1 %853, i1 true, i1 %854
  br i1 %855, label %861, label %856

856:                                              ; preds = %846
  %857 = trunc i32 %851 to i8
  %858 = add nsw i32 %848, 1
  %859 = sext i32 %848 to i64
  %860 = getelementptr inbounds i8, ptr %845, i64 %859
  store i8 %857, ptr %860, align 1, !tbaa !35
  br label %861

861:                                              ; preds = %856, %846
  %862 = phi i32 [ %858, %856 ], [ %848, %846 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #24
  br i1 %855, label %872, label %863

863:                                              ; preds = %861
  %864 = icmp slt i32 %862, 16
  br i1 %864, label %865, label %869

865:                                              ; preds = %863
  %866 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %847, i32 noundef 44) #22
  %867 = icmp eq ptr %866, null
  %868 = getelementptr inbounds i8, ptr %866, i64 1
  br i1 %867, label %869, label %846

869:                                              ; preds = %865, %863
  %870 = icmp ne i32 %862, 16
  %871 = sext i1 %870 to i32
  br label %872

872:                                              ; preds = %861, %869
  %873 = phi i32 [ %871, %869 ], [ -1, %861 ]
  %874 = load i32, ptr %72, align 4, !tbaa !130
  %875 = or i32 %874, %873
  store i32 %875, ptr %72, align 4, !tbaa !130
  %876 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 31
  br label %877

877:                                              ; preds = %896, %872
  %878 = phi ptr [ %117, %872 ], [ %899, %896 ]
  %879 = phi i32 [ 0, %872 ], [ %893, %896 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #24
  %880 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %878, ptr noundef nonnull @.str.49, ptr noundef nonnull %18) #24
  %881 = icmp eq i32 %880, 0
  %882 = load i32, ptr %18, align 4
  %883 = icmp slt i32 %882, 1
  %884 = select i1 %881, i1 true, i1 %883
  %885 = icmp sgt i32 %882, 255
  %886 = select i1 %884, i1 true, i1 %885
  br i1 %886, label %892, label %887

887:                                              ; preds = %877
  %888 = trunc i32 %882 to i8
  %889 = add nsw i32 %879, 1
  %890 = sext i32 %879 to i64
  %891 = getelementptr inbounds i8, ptr %876, i64 %890
  store i8 %888, ptr %891, align 1, !tbaa !35
  br label %892

892:                                              ; preds = %887, %877
  %893 = phi i32 [ %889, %887 ], [ %879, %877 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #24
  br i1 %886, label %903, label %894

894:                                              ; preds = %892
  %895 = icmp slt i32 %893, 16
  br i1 %895, label %896, label %900

896:                                              ; preds = %894
  %897 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %878, i32 noundef 44) #22
  %898 = icmp eq ptr %897, null
  %899 = getelementptr inbounds i8, ptr %897, i64 1
  br i1 %898, label %900, label %877

900:                                              ; preds = %896, %894
  %901 = icmp ne i32 %893, 16
  %902 = sext i1 %901 to i32
  br label %903

903:                                              ; preds = %892, %900
  %904 = phi i32 [ %902, %900 ], [ -1, %892 ]
  %905 = load i32, ptr %72, align 4, !tbaa !130
  %906 = or i32 %905, %904
  store i32 %906, ptr %72, align 4, !tbaa !130
  %907 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 32
  br label %908

908:                                              ; preds = %927, %903
  %909 = phi ptr [ %117, %903 ], [ %930, %927 ]
  %910 = phi i32 [ 0, %903 ], [ %924, %927 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #24
  %911 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %909, ptr noundef nonnull @.str.49, ptr noundef nonnull %17) #24
  %912 = icmp eq i32 %911, 0
  %913 = load i32, ptr %17, align 4
  %914 = icmp slt i32 %913, 1
  %915 = select i1 %912, i1 true, i1 %914
  %916 = icmp sgt i32 %913, 255
  %917 = select i1 %915, i1 true, i1 %916
  br i1 %917, label %923, label %918

918:                                              ; preds = %908
  %919 = trunc i32 %913 to i8
  %920 = add nsw i32 %910, 1
  %921 = sext i32 %910 to i64
  %922 = getelementptr inbounds i8, ptr %907, i64 %921
  store i8 %919, ptr %922, align 1, !tbaa !35
  br label %923

923:                                              ; preds = %918, %908
  %924 = phi i32 [ %920, %918 ], [ %910, %908 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #24
  br i1 %917, label %934, label %925

925:                                              ; preds = %923
  %926 = icmp slt i32 %924, 16
  br i1 %926, label %927, label %931

927:                                              ; preds = %925
  %928 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %909, i32 noundef 44) #22
  %929 = icmp eq ptr %928, null
  %930 = getelementptr inbounds i8, ptr %928, i64 1
  br i1 %929, label %931, label %908

931:                                              ; preds = %927, %925
  %932 = icmp ne i32 %924, 16
  %933 = sext i1 %932 to i32
  br label %934

934:                                              ; preds = %923, %931
  %935 = phi i32 [ %933, %931 ], [ -1, %923 ]
  %936 = load i32, ptr %72, align 4, !tbaa !130
  %937 = or i32 %936, %935
  store i32 %937, ptr %72, align 4, !tbaa !130
  %938 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 33
  br label %939

939:                                              ; preds = %958, %934
  %940 = phi ptr [ %117, %934 ], [ %961, %958 ]
  %941 = phi i32 [ 0, %934 ], [ %955, %958 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #24
  %942 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %940, ptr noundef nonnull @.str.49, ptr noundef nonnull %16) #24
  %943 = icmp eq i32 %942, 0
  %944 = load i32, ptr %16, align 4
  %945 = icmp slt i32 %944, 1
  %946 = select i1 %943, i1 true, i1 %945
  %947 = icmp sgt i32 %944, 255
  %948 = select i1 %946, i1 true, i1 %947
  br i1 %948, label %954, label %949

949:                                              ; preds = %939
  %950 = trunc i32 %944 to i8
  %951 = add nsw i32 %941, 1
  %952 = sext i32 %941 to i64
  %953 = getelementptr inbounds i8, ptr %938, i64 %952
  store i8 %950, ptr %953, align 1, !tbaa !35
  br label %954

954:                                              ; preds = %949, %939
  %955 = phi i32 [ %951, %949 ], [ %941, %939 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #24
  br i1 %948, label %965, label %956

956:                                              ; preds = %954
  %957 = icmp slt i32 %955, 16
  br i1 %957, label %958, label %962

958:                                              ; preds = %956
  %959 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %940, i32 noundef 44) #22
  %960 = icmp eq ptr %959, null
  %961 = getelementptr inbounds i8, ptr %959, i64 1
  br i1 %960, label %962, label %939

962:                                              ; preds = %958, %956
  %963 = icmp ne i32 %955, 16
  %964 = sext i1 %963 to i32
  br label %965

965:                                              ; preds = %954, %962
  %966 = phi i32 [ %964, %962 ], [ -1, %954 ]
  %967 = load i32, ptr %72, align 4, !tbaa !130
  %968 = or i32 %967, %966
  store i32 %968, ptr %72, align 4, !tbaa !130
  br label %2196

969:                                              ; preds = %840
  %970 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(5) @.str.64) #22
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %972, label %1036

972:                                              ; preds = %969
  %973 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 2, ptr %973, align 8, !tbaa !133
  %974 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 34
  br label %975

975:                                              ; preds = %994, %972
  %976 = phi ptr [ %117, %972 ], [ %997, %994 ]
  %977 = phi i32 [ 0, %972 ], [ %991, %994 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #24
  %978 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %976, ptr noundef nonnull @.str.49, ptr noundef nonnull %15) #24
  %979 = icmp eq i32 %978, 0
  %980 = load i32, ptr %15, align 4
  %981 = icmp slt i32 %980, 1
  %982 = select i1 %979, i1 true, i1 %981
  %983 = icmp sgt i32 %980, 255
  %984 = select i1 %982, i1 true, i1 %983
  br i1 %984, label %990, label %985

985:                                              ; preds = %975
  %986 = trunc i32 %980 to i8
  %987 = add nsw i32 %977, 1
  %988 = sext i32 %977 to i64
  %989 = getelementptr inbounds i8, ptr %974, i64 %988
  store i8 %986, ptr %989, align 1, !tbaa !35
  br label %990

990:                                              ; preds = %985, %975
  %991 = phi i32 [ %987, %985 ], [ %977, %975 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #24
  br i1 %984, label %1001, label %992

992:                                              ; preds = %990
  %993 = icmp slt i32 %991, 64
  br i1 %993, label %994, label %998

994:                                              ; preds = %992
  %995 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %976, i32 noundef 44) #22
  %996 = icmp eq ptr %995, null
  %997 = getelementptr inbounds i8, ptr %995, i64 1
  br i1 %996, label %998, label %975

998:                                              ; preds = %994, %992
  %999 = icmp ne i32 %991, 64
  %1000 = sext i1 %999 to i32
  br label %1001

1001:                                             ; preds = %990, %998
  %1002 = phi i32 [ %1000, %998 ], [ -1, %990 ]
  %1003 = load i32, ptr %72, align 4, !tbaa !130
  %1004 = or i32 %1003, %1002
  store i32 %1004, ptr %72, align 4, !tbaa !130
  %1005 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 35
  br label %1006

1006:                                             ; preds = %1025, %1001
  %1007 = phi ptr [ %117, %1001 ], [ %1028, %1025 ]
  %1008 = phi i32 [ 0, %1001 ], [ %1022, %1025 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #24
  %1009 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1007, ptr noundef nonnull @.str.49, ptr noundef nonnull %14) #24
  %1010 = icmp eq i32 %1009, 0
  %1011 = load i32, ptr %14, align 4
  %1012 = icmp slt i32 %1011, 1
  %1013 = select i1 %1010, i1 true, i1 %1012
  %1014 = icmp sgt i32 %1011, 255
  %1015 = select i1 %1013, i1 true, i1 %1014
  br i1 %1015, label %1021, label %1016

1016:                                             ; preds = %1006
  %1017 = trunc i32 %1011 to i8
  %1018 = add nsw i32 %1008, 1
  %1019 = sext i32 %1008 to i64
  %1020 = getelementptr inbounds i8, ptr %1005, i64 %1019
  store i8 %1017, ptr %1020, align 1, !tbaa !35
  br label %1021

1021:                                             ; preds = %1016, %1006
  %1022 = phi i32 [ %1018, %1016 ], [ %1008, %1006 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #24
  br i1 %1015, label %1032, label %1023

1023:                                             ; preds = %1021
  %1024 = icmp slt i32 %1022, 64
  br i1 %1024, label %1025, label %1029

1025:                                             ; preds = %1023
  %1026 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1007, i32 noundef 44) #22
  %1027 = icmp eq ptr %1026, null
  %1028 = getelementptr inbounds i8, ptr %1026, i64 1
  br i1 %1027, label %1029, label %1006

1029:                                             ; preds = %1025, %1023
  %1030 = icmp ne i32 %1022, 64
  %1031 = sext i1 %1030 to i32
  br label %1032

1032:                                             ; preds = %1021, %1029
  %1033 = phi i32 [ %1031, %1029 ], [ -1, %1021 ]
  %1034 = load i32, ptr %72, align 4, !tbaa !130
  %1035 = or i32 %1034, %1033
  store i32 %1035, ptr %72, align 4, !tbaa !130
  br label %2196

1036:                                             ; preds = %969
  %1037 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(6) @.str.65) #22
  %1038 = icmp eq i32 %1037, 0
  br i1 %1038, label %1039, label %1103

1039:                                             ; preds = %1036
  %1040 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 2, ptr %1040, align 8, !tbaa !133
  %1041 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 30
  br label %1042

1042:                                             ; preds = %1061, %1039
  %1043 = phi ptr [ %117, %1039 ], [ %1064, %1061 ]
  %1044 = phi i32 [ 0, %1039 ], [ %1058, %1061 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #24
  %1045 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1043, ptr noundef nonnull @.str.49, ptr noundef nonnull %13) #24
  %1046 = icmp eq i32 %1045, 0
  %1047 = load i32, ptr %13, align 4
  %1048 = icmp slt i32 %1047, 1
  %1049 = select i1 %1046, i1 true, i1 %1048
  %1050 = icmp sgt i32 %1047, 255
  %1051 = select i1 %1049, i1 true, i1 %1050
  br i1 %1051, label %1057, label %1052

1052:                                             ; preds = %1042
  %1053 = trunc i32 %1047 to i8
  %1054 = add nsw i32 %1044, 1
  %1055 = sext i32 %1044 to i64
  %1056 = getelementptr inbounds i8, ptr %1041, i64 %1055
  store i8 %1053, ptr %1056, align 1, !tbaa !35
  br label %1057

1057:                                             ; preds = %1052, %1042
  %1058 = phi i32 [ %1054, %1052 ], [ %1044, %1042 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #24
  br i1 %1051, label %1068, label %1059

1059:                                             ; preds = %1057
  %1060 = icmp slt i32 %1058, 16
  br i1 %1060, label %1061, label %1065

1061:                                             ; preds = %1059
  %1062 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1043, i32 noundef 44) #22
  %1063 = icmp eq ptr %1062, null
  %1064 = getelementptr inbounds i8, ptr %1062, i64 1
  br i1 %1063, label %1065, label %1042

1065:                                             ; preds = %1061, %1059
  %1066 = icmp ne i32 %1058, 16
  %1067 = sext i1 %1066 to i32
  br label %1068

1068:                                             ; preds = %1057, %1065
  %1069 = phi i32 [ %1067, %1065 ], [ -1, %1057 ]
  %1070 = load i32, ptr %72, align 4, !tbaa !130
  %1071 = or i32 %1070, %1069
  store i32 %1071, ptr %72, align 4, !tbaa !130
  %1072 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 31
  br label %1073

1073:                                             ; preds = %1092, %1068
  %1074 = phi ptr [ %117, %1068 ], [ %1095, %1092 ]
  %1075 = phi i32 [ 0, %1068 ], [ %1089, %1092 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #24
  %1076 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1074, ptr noundef nonnull @.str.49, ptr noundef nonnull %12) #24
  %1077 = icmp eq i32 %1076, 0
  %1078 = load i32, ptr %12, align 4
  %1079 = icmp slt i32 %1078, 1
  %1080 = select i1 %1077, i1 true, i1 %1079
  %1081 = icmp sgt i32 %1078, 255
  %1082 = select i1 %1080, i1 true, i1 %1081
  br i1 %1082, label %1088, label %1083

1083:                                             ; preds = %1073
  %1084 = trunc i32 %1078 to i8
  %1085 = add nsw i32 %1075, 1
  %1086 = sext i32 %1075 to i64
  %1087 = getelementptr inbounds i8, ptr %1072, i64 %1086
  store i8 %1084, ptr %1087, align 1, !tbaa !35
  br label %1088

1088:                                             ; preds = %1083, %1073
  %1089 = phi i32 [ %1085, %1083 ], [ %1075, %1073 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #24
  br i1 %1082, label %1099, label %1090

1090:                                             ; preds = %1088
  %1091 = icmp slt i32 %1089, 16
  br i1 %1091, label %1092, label %1096

1092:                                             ; preds = %1090
  %1093 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1074, i32 noundef 44) #22
  %1094 = icmp eq ptr %1093, null
  %1095 = getelementptr inbounds i8, ptr %1093, i64 1
  br i1 %1094, label %1096, label %1073

1096:                                             ; preds = %1092, %1090
  %1097 = icmp ne i32 %1089, 16
  %1098 = sext i1 %1097 to i32
  br label %1099

1099:                                             ; preds = %1088, %1096
  %1100 = phi i32 [ %1098, %1096 ], [ -1, %1088 ]
  %1101 = load i32, ptr %72, align 4, !tbaa !130
  %1102 = or i32 %1101, %1100
  store i32 %1102, ptr %72, align 4, !tbaa !130
  br label %2196

1103:                                             ; preds = %1036
  %1104 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(6) @.str.66) #22
  %1105 = icmp eq i32 %1104, 0
  br i1 %1105, label %1106, label %1170

1106:                                             ; preds = %1103
  %1107 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 2, ptr %1107, align 8, !tbaa !133
  %1108 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 32
  br label %1109

1109:                                             ; preds = %1128, %1106
  %1110 = phi ptr [ %117, %1106 ], [ %1131, %1128 ]
  %1111 = phi i32 [ 0, %1106 ], [ %1125, %1128 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #24
  %1112 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1110, ptr noundef nonnull @.str.49, ptr noundef nonnull %11) #24
  %1113 = icmp eq i32 %1112, 0
  %1114 = load i32, ptr %11, align 4
  %1115 = icmp slt i32 %1114, 1
  %1116 = select i1 %1113, i1 true, i1 %1115
  %1117 = icmp sgt i32 %1114, 255
  %1118 = select i1 %1116, i1 true, i1 %1117
  br i1 %1118, label %1124, label %1119

1119:                                             ; preds = %1109
  %1120 = trunc i32 %1114 to i8
  %1121 = add nsw i32 %1111, 1
  %1122 = sext i32 %1111 to i64
  %1123 = getelementptr inbounds i8, ptr %1108, i64 %1122
  store i8 %1120, ptr %1123, align 1, !tbaa !35
  br label %1124

1124:                                             ; preds = %1119, %1109
  %1125 = phi i32 [ %1121, %1119 ], [ %1111, %1109 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #24
  br i1 %1118, label %1135, label %1126

1126:                                             ; preds = %1124
  %1127 = icmp slt i32 %1125, 16
  br i1 %1127, label %1128, label %1132

1128:                                             ; preds = %1126
  %1129 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1110, i32 noundef 44) #22
  %1130 = icmp eq ptr %1129, null
  %1131 = getelementptr inbounds i8, ptr %1129, i64 1
  br i1 %1130, label %1132, label %1109

1132:                                             ; preds = %1128, %1126
  %1133 = icmp ne i32 %1125, 16
  %1134 = sext i1 %1133 to i32
  br label %1135

1135:                                             ; preds = %1124, %1132
  %1136 = phi i32 [ %1134, %1132 ], [ -1, %1124 ]
  %1137 = load i32, ptr %72, align 4, !tbaa !130
  %1138 = or i32 %1137, %1136
  store i32 %1138, ptr %72, align 4, !tbaa !130
  %1139 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 33
  br label %1140

1140:                                             ; preds = %1159, %1135
  %1141 = phi ptr [ %117, %1135 ], [ %1162, %1159 ]
  %1142 = phi i32 [ 0, %1135 ], [ %1156, %1159 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #24
  %1143 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1141, ptr noundef nonnull @.str.49, ptr noundef nonnull %10) #24
  %1144 = icmp eq i32 %1143, 0
  %1145 = load i32, ptr %10, align 4
  %1146 = icmp slt i32 %1145, 1
  %1147 = select i1 %1144, i1 true, i1 %1146
  %1148 = icmp sgt i32 %1145, 255
  %1149 = select i1 %1147, i1 true, i1 %1148
  br i1 %1149, label %1155, label %1150

1150:                                             ; preds = %1140
  %1151 = trunc i32 %1145 to i8
  %1152 = add nsw i32 %1142, 1
  %1153 = sext i32 %1142 to i64
  %1154 = getelementptr inbounds i8, ptr %1139, i64 %1153
  store i8 %1151, ptr %1154, align 1, !tbaa !35
  br label %1155

1155:                                             ; preds = %1150, %1140
  %1156 = phi i32 [ %1152, %1150 ], [ %1142, %1140 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #24
  br i1 %1149, label %1166, label %1157

1157:                                             ; preds = %1155
  %1158 = icmp slt i32 %1156, 16
  br i1 %1158, label %1159, label %1163

1159:                                             ; preds = %1157
  %1160 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1141, i32 noundef 44) #22
  %1161 = icmp eq ptr %1160, null
  %1162 = getelementptr inbounds i8, ptr %1160, i64 1
  br i1 %1161, label %1163, label %1140

1163:                                             ; preds = %1159, %1157
  %1164 = icmp ne i32 %1156, 16
  %1165 = sext i1 %1164 to i32
  br label %1166

1166:                                             ; preds = %1155, %1163
  %1167 = phi i32 [ %1165, %1163 ], [ -1, %1155 ]
  %1168 = load i32, ptr %72, align 4, !tbaa !130
  %1169 = or i32 %1168, %1167
  store i32 %1169, ptr %72, align 4, !tbaa !130
  br label %2196

1170:                                             ; preds = %1103
  %1171 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(7) @.str.67) #22
  %1172 = icmp eq i32 %1171, 0
  br i1 %1172, label %1173, label %1206

1173:                                             ; preds = %1170
  %1174 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 2, ptr %1174, align 8, !tbaa !133
  %1175 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 30
  br label %1176

1176:                                             ; preds = %1195, %1173
  %1177 = phi ptr [ %117, %1173 ], [ %1198, %1195 ]
  %1178 = phi i32 [ 0, %1173 ], [ %1192, %1195 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #24
  %1179 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1177, ptr noundef nonnull @.str.49, ptr noundef nonnull %9) #24
  %1180 = icmp eq i32 %1179, 0
  %1181 = load i32, ptr %9, align 4
  %1182 = icmp slt i32 %1181, 1
  %1183 = select i1 %1180, i1 true, i1 %1182
  %1184 = icmp sgt i32 %1181, 255
  %1185 = select i1 %1183, i1 true, i1 %1184
  br i1 %1185, label %1191, label %1186

1186:                                             ; preds = %1176
  %1187 = trunc i32 %1181 to i8
  %1188 = add nsw i32 %1178, 1
  %1189 = sext i32 %1178 to i64
  %1190 = getelementptr inbounds i8, ptr %1175, i64 %1189
  store i8 %1187, ptr %1190, align 1, !tbaa !35
  br label %1191

1191:                                             ; preds = %1186, %1176
  %1192 = phi i32 [ %1188, %1186 ], [ %1178, %1176 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #24
  br i1 %1185, label %1202, label %1193

1193:                                             ; preds = %1191
  %1194 = icmp slt i32 %1192, 16
  br i1 %1194, label %1195, label %1199

1195:                                             ; preds = %1193
  %1196 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1177, i32 noundef 44) #22
  %1197 = icmp eq ptr %1196, null
  %1198 = getelementptr inbounds i8, ptr %1196, i64 1
  br i1 %1197, label %1199, label %1176

1199:                                             ; preds = %1195, %1193
  %1200 = icmp ne i32 %1192, 16
  %1201 = sext i1 %1200 to i32
  br label %1202

1202:                                             ; preds = %1191, %1199
  %1203 = phi i32 [ %1201, %1199 ], [ -1, %1191 ]
  %1204 = load i32, ptr %72, align 4, !tbaa !130
  %1205 = or i32 %1204, %1203
  store i32 %1205, ptr %72, align 4, !tbaa !130
  br label %2196

1206:                                             ; preds = %1170
  %1207 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(7) @.str.68) #22
  %1208 = icmp eq i32 %1207, 0
  br i1 %1208, label %1209, label %1242

1209:                                             ; preds = %1206
  %1210 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 2, ptr %1210, align 8, !tbaa !133
  %1211 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 31
  br label %1212

1212:                                             ; preds = %1231, %1209
  %1213 = phi ptr [ %117, %1209 ], [ %1234, %1231 ]
  %1214 = phi i32 [ 0, %1209 ], [ %1228, %1231 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #24
  %1215 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1213, ptr noundef nonnull @.str.49, ptr noundef nonnull %8) #24
  %1216 = icmp eq i32 %1215, 0
  %1217 = load i32, ptr %8, align 4
  %1218 = icmp slt i32 %1217, 1
  %1219 = select i1 %1216, i1 true, i1 %1218
  %1220 = icmp sgt i32 %1217, 255
  %1221 = select i1 %1219, i1 true, i1 %1220
  br i1 %1221, label %1227, label %1222

1222:                                             ; preds = %1212
  %1223 = trunc i32 %1217 to i8
  %1224 = add nsw i32 %1214, 1
  %1225 = sext i32 %1214 to i64
  %1226 = getelementptr inbounds i8, ptr %1211, i64 %1225
  store i8 %1223, ptr %1226, align 1, !tbaa !35
  br label %1227

1227:                                             ; preds = %1222, %1212
  %1228 = phi i32 [ %1224, %1222 ], [ %1214, %1212 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #24
  br i1 %1221, label %1238, label %1229

1229:                                             ; preds = %1227
  %1230 = icmp slt i32 %1228, 16
  br i1 %1230, label %1231, label %1235

1231:                                             ; preds = %1229
  %1232 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1213, i32 noundef 44) #22
  %1233 = icmp eq ptr %1232, null
  %1234 = getelementptr inbounds i8, ptr %1232, i64 1
  br i1 %1233, label %1235, label %1212

1235:                                             ; preds = %1231, %1229
  %1236 = icmp ne i32 %1228, 16
  %1237 = sext i1 %1236 to i32
  br label %1238

1238:                                             ; preds = %1227, %1235
  %1239 = phi i32 [ %1237, %1235 ], [ -1, %1227 ]
  %1240 = load i32, ptr %72, align 4, !tbaa !130
  %1241 = or i32 %1240, %1239
  store i32 %1241, ptr %72, align 4, !tbaa !130
  br label %2196

1242:                                             ; preds = %1206
  %1243 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(7) @.str.69) #22
  %1244 = icmp eq i32 %1243, 0
  br i1 %1244, label %1245, label %1278

1245:                                             ; preds = %1242
  %1246 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 2, ptr %1246, align 8, !tbaa !133
  %1247 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 32
  br label %1248

1248:                                             ; preds = %1267, %1245
  %1249 = phi ptr [ %117, %1245 ], [ %1270, %1267 ]
  %1250 = phi i32 [ 0, %1245 ], [ %1264, %1267 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #24
  %1251 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1249, ptr noundef nonnull @.str.49, ptr noundef nonnull %7) #24
  %1252 = icmp eq i32 %1251, 0
  %1253 = load i32, ptr %7, align 4
  %1254 = icmp slt i32 %1253, 1
  %1255 = select i1 %1252, i1 true, i1 %1254
  %1256 = icmp sgt i32 %1253, 255
  %1257 = select i1 %1255, i1 true, i1 %1256
  br i1 %1257, label %1263, label %1258

1258:                                             ; preds = %1248
  %1259 = trunc i32 %1253 to i8
  %1260 = add nsw i32 %1250, 1
  %1261 = sext i32 %1250 to i64
  %1262 = getelementptr inbounds i8, ptr %1247, i64 %1261
  store i8 %1259, ptr %1262, align 1, !tbaa !35
  br label %1263

1263:                                             ; preds = %1258, %1248
  %1264 = phi i32 [ %1260, %1258 ], [ %1250, %1248 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #24
  br i1 %1257, label %1274, label %1265

1265:                                             ; preds = %1263
  %1266 = icmp slt i32 %1264, 16
  br i1 %1266, label %1267, label %1271

1267:                                             ; preds = %1265
  %1268 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1249, i32 noundef 44) #22
  %1269 = icmp eq ptr %1268, null
  %1270 = getelementptr inbounds i8, ptr %1268, i64 1
  br i1 %1269, label %1271, label %1248

1271:                                             ; preds = %1267, %1265
  %1272 = icmp ne i32 %1264, 16
  %1273 = sext i1 %1272 to i32
  br label %1274

1274:                                             ; preds = %1263, %1271
  %1275 = phi i32 [ %1273, %1271 ], [ -1, %1263 ]
  %1276 = load i32, ptr %72, align 4, !tbaa !130
  %1277 = or i32 %1276, %1275
  store i32 %1277, ptr %72, align 4, !tbaa !130
  br label %2196

1278:                                             ; preds = %1242
  %1279 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(7) @.str.70) #22
  %1280 = icmp eq i32 %1279, 0
  br i1 %1280, label %1281, label %1314

1281:                                             ; preds = %1278
  %1282 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 2, ptr %1282, align 8, !tbaa !133
  %1283 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 33
  br label %1284

1284:                                             ; preds = %1303, %1281
  %1285 = phi ptr [ %117, %1281 ], [ %1306, %1303 ]
  %1286 = phi i32 [ 0, %1281 ], [ %1300, %1303 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #24
  %1287 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1285, ptr noundef nonnull @.str.49, ptr noundef nonnull %6) #24
  %1288 = icmp eq i32 %1287, 0
  %1289 = load i32, ptr %6, align 4
  %1290 = icmp slt i32 %1289, 1
  %1291 = select i1 %1288, i1 true, i1 %1290
  %1292 = icmp sgt i32 %1289, 255
  %1293 = select i1 %1291, i1 true, i1 %1292
  br i1 %1293, label %1299, label %1294

1294:                                             ; preds = %1284
  %1295 = trunc i32 %1289 to i8
  %1296 = add nsw i32 %1286, 1
  %1297 = sext i32 %1286 to i64
  %1298 = getelementptr inbounds i8, ptr %1283, i64 %1297
  store i8 %1295, ptr %1298, align 1, !tbaa !35
  br label %1299

1299:                                             ; preds = %1294, %1284
  %1300 = phi i32 [ %1296, %1294 ], [ %1286, %1284 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  br i1 %1293, label %1310, label %1301

1301:                                             ; preds = %1299
  %1302 = icmp slt i32 %1300, 16
  br i1 %1302, label %1303, label %1307

1303:                                             ; preds = %1301
  %1304 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1285, i32 noundef 44) #22
  %1305 = icmp eq ptr %1304, null
  %1306 = getelementptr inbounds i8, ptr %1304, i64 1
  br i1 %1305, label %1307, label %1284

1307:                                             ; preds = %1303, %1301
  %1308 = icmp ne i32 %1300, 16
  %1309 = sext i1 %1308 to i32
  br label %1310

1310:                                             ; preds = %1299, %1307
  %1311 = phi i32 [ %1309, %1307 ], [ -1, %1299 ]
  %1312 = load i32, ptr %72, align 4, !tbaa !130
  %1313 = or i32 %1312, %1311
  store i32 %1313, ptr %72, align 4, !tbaa !130
  br label %2196

1314:                                             ; preds = %1278
  %1315 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(6) @.str.71) #22
  %1316 = icmp eq i32 %1315, 0
  br i1 %1316, label %1317, label %1350

1317:                                             ; preds = %1314
  %1318 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 2, ptr %1318, align 8, !tbaa !133
  %1319 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 34
  br label %1320

1320:                                             ; preds = %1339, %1317
  %1321 = phi ptr [ %117, %1317 ], [ %1342, %1339 ]
  %1322 = phi i32 [ 0, %1317 ], [ %1336, %1339 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  %1323 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1321, ptr noundef nonnull @.str.49, ptr noundef nonnull %5) #24
  %1324 = icmp eq i32 %1323, 0
  %1325 = load i32, ptr %5, align 4
  %1326 = icmp slt i32 %1325, 1
  %1327 = select i1 %1324, i1 true, i1 %1326
  %1328 = icmp sgt i32 %1325, 255
  %1329 = select i1 %1327, i1 true, i1 %1328
  br i1 %1329, label %1335, label %1330

1330:                                             ; preds = %1320
  %1331 = trunc i32 %1325 to i8
  %1332 = add nsw i32 %1322, 1
  %1333 = sext i32 %1322 to i64
  %1334 = getelementptr inbounds i8, ptr %1319, i64 %1333
  store i8 %1331, ptr %1334, align 1, !tbaa !35
  br label %1335

1335:                                             ; preds = %1330, %1320
  %1336 = phi i32 [ %1332, %1330 ], [ %1322, %1320 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  br i1 %1329, label %1346, label %1337

1337:                                             ; preds = %1335
  %1338 = icmp slt i32 %1336, 64
  br i1 %1338, label %1339, label %1343

1339:                                             ; preds = %1337
  %1340 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1321, i32 noundef 44) #22
  %1341 = icmp eq ptr %1340, null
  %1342 = getelementptr inbounds i8, ptr %1340, i64 1
  br i1 %1341, label %1343, label %1320

1343:                                             ; preds = %1339, %1337
  %1344 = icmp ne i32 %1336, 64
  %1345 = sext i1 %1344 to i32
  br label %1346

1346:                                             ; preds = %1335, %1343
  %1347 = phi i32 [ %1345, %1343 ], [ -1, %1335 ]
  %1348 = load i32, ptr %72, align 4, !tbaa !130
  %1349 = or i32 %1348, %1347
  store i32 %1349, ptr %72, align 4, !tbaa !130
  br label %2196

1350:                                             ; preds = %1314
  %1351 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(6) @.str.72) #22
  %1352 = icmp eq i32 %1351, 0
  br i1 %1352, label %1353, label %1386

1353:                                             ; preds = %1350
  %1354 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 2, ptr %1354, align 8, !tbaa !133
  %1355 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 35
  br label %1356

1356:                                             ; preds = %1375, %1353
  %1357 = phi ptr [ %117, %1353 ], [ %1378, %1375 ]
  %1358 = phi i32 [ 0, %1353 ], [ %1372, %1375 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  %1359 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1357, ptr noundef nonnull @.str.49, ptr noundef nonnull %4) #24
  %1360 = icmp eq i32 %1359, 0
  %1361 = load i32, ptr %4, align 4
  %1362 = icmp slt i32 %1361, 1
  %1363 = select i1 %1360, i1 true, i1 %1362
  %1364 = icmp sgt i32 %1361, 255
  %1365 = select i1 %1363, i1 true, i1 %1364
  br i1 %1365, label %1371, label %1366

1366:                                             ; preds = %1356
  %1367 = trunc i32 %1361 to i8
  %1368 = add nsw i32 %1358, 1
  %1369 = sext i32 %1358 to i64
  %1370 = getelementptr inbounds i8, ptr %1355, i64 %1369
  store i8 %1367, ptr %1370, align 1, !tbaa !35
  br label %1371

1371:                                             ; preds = %1366, %1356
  %1372 = phi i32 [ %1368, %1366 ], [ %1358, %1356 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  br i1 %1365, label %1382, label %1373

1373:                                             ; preds = %1371
  %1374 = icmp slt i32 %1372, 64
  br i1 %1374, label %1375, label %1379

1375:                                             ; preds = %1373
  %1376 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1357, i32 noundef 44) #22
  %1377 = icmp eq ptr %1376, null
  %1378 = getelementptr inbounds i8, ptr %1376, i64 1
  br i1 %1377, label %1379, label %1356

1379:                                             ; preds = %1375, %1373
  %1380 = icmp ne i32 %1372, 64
  %1381 = sext i1 %1380 to i32
  br label %1382

1382:                                             ; preds = %1371, %1379
  %1383 = phi i32 [ %1381, %1379 ], [ -1, %1371 ]
  %1384 = load i32, ptr %72, align 4, !tbaa !130
  %1385 = or i32 %1384, %1383
  store i32 %1385, ptr %72, align 4, !tbaa !130
  br label %2196

1386:                                             ; preds = %1350
  %1387 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(4) @.str.73) #22
  %1388 = icmp eq i32 %1387, 0
  br i1 %1388, label %1389, label %1400

1389:                                             ; preds = %1386
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %51) #24
  %1390 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %51, i32 noundef 0) #24
  %1391 = load ptr, ptr %51, align 8, !tbaa !143
  %1392 = icmp eq ptr %1391, %117
  br i1 %1392, label %1396, label %1393

1393:                                             ; preds = %1389
  %1394 = load i8, ptr %1391, align 1, !tbaa !35
  %1395 = icmp eq i8 %1394, 0
  br i1 %1395, label %1397, label %1396

1396:                                             ; preds = %1393, %1389
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1397

1397:                                             ; preds = %1393, %1396
  %1398 = trunc i64 %1390 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %51) #24
  %1399 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 38
  store i32 %1398, ptr %1399, align 8, !tbaa !109
  br label %2196

1400:                                             ; preds = %1386
  %1401 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(9) @.str.74) #22
  %1402 = icmp eq i32 %1401, 0
  br i1 %1402, label %1403, label %1417

1403:                                             ; preds = %1400
  %1404 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %117) #22
  %1405 = trunc i64 %1404 to i32
  %1406 = shl i64 %1404, 32
  %1407 = add i64 %1406, 4294967296
  %1408 = ashr exact i64 %1407, 32
  %1409 = tail call noalias ptr @malloc(i64 noundef %1408) #23
  %1410 = icmp sgt i32 %1405, 0
  br i1 %1410, label %1411, label %1413

1411:                                             ; preds = %1403
  %1412 = and i64 %1404, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1409, ptr align 1 %117, i64 %1412, i1 false), !tbaa !35
  br label %1413

1413:                                             ; preds = %1403, %1411
  %1414 = ashr exact i64 %1406, 32
  %1415 = getelementptr inbounds i8, ptr %1409, i64 %1414
  store i8 0, ptr %1415, align 1, !tbaa !35
  %1416 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40
  store ptr %1409, ptr %1416, align 8, !tbaa !182
  br label %2196

1417:                                             ; preds = %1400
  %1418 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(8) @.str.75) #22
  %1419 = icmp eq i32 %1418, 0
  br i1 %1419, label %1423, label %1420

1420:                                             ; preds = %1417
  %1421 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(11) @.str.76) #22
  %1422 = icmp eq i32 %1421, 0
  br i1 %1422, label %1423, label %1456

1423:                                             ; preds = %1420, %1417
  %1424 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 1
  store i32 0, ptr %1424, align 4
  %1425 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(1) @.str.78) #22
  %1426 = icmp ne ptr %1425, null
  %1427 = sext i1 %1426 to i32
  store i32 %1427, ptr %1424, align 4
  %1428 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(1) @.str.79) #22
  %1429 = icmp eq ptr %1428, null
  br i1 %1429, label %1432, label %1430

1430:                                             ; preds = %1423
  %1431 = select i1 %1426, i32 -1, i32 1
  store i32 %1431, ptr %1424, align 4, !tbaa !111
  br label %1432

1432:                                             ; preds = %1430, %1423
  %1433 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(1) @.str.80) #22
  %1434 = icmp eq ptr %1433, null
  br i1 %1434, label %1438, label %1435

1435:                                             ; preds = %1432
  %1436 = load i32, ptr %1424, align 4, !tbaa !111
  %1437 = or i32 %1436, 2
  store i32 %1437, ptr %1424, align 4, !tbaa !111
  br label %1438

1438:                                             ; preds = %1435, %1432
  %1439 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(1) @.str.81) #22
  %1440 = icmp eq ptr %1439, null
  br i1 %1440, label %1444, label %1441

1441:                                             ; preds = %1438
  %1442 = load i32, ptr %1424, align 4, !tbaa !111
  %1443 = or i32 %1442, 16
  store i32 %1443, ptr %1424, align 4, !tbaa !111
  br label %1444

1444:                                             ; preds = %1441, %1438
  %1445 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(1) @.str.82) #22
  %1446 = icmp eq ptr %1445, null
  br i1 %1446, label %1450, label %1447

1447:                                             ; preds = %1444
  %1448 = load i32, ptr %1424, align 4, !tbaa !111
  %1449 = or i32 %1448, 32
  store i32 %1449, ptr %1424, align 4, !tbaa !111
  br label %1450

1450:                                             ; preds = %1447, %1444
  %1451 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(1) @.str.83) #22
  %1452 = icmp eq ptr %1451, null
  br i1 %1452, label %2196, label %1453

1453:                                             ; preds = %1450
  %1454 = load i32, ptr %1424, align 4, !tbaa !111
  %1455 = or i32 %1454, 256
  store i32 %1455, ptr %1424, align 4, !tbaa !111
  br label %2196

1456:                                             ; preds = %1420
  %1457 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(7) @.str.84) #22
  %1458 = icmp eq i32 %1457, 0
  br i1 %1458, label %1459, label %1462

1459:                                             ; preds = %1456
  %1460 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %1461 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 2
  store i32 %1460, ptr %1461, align 8, !tbaa !128
  br label %2196

1462:                                             ; preds = %1456
  %1463 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(8) @.str.85) #22
  %1464 = icmp eq i32 %1463, 0
  br i1 %1464, label %1468, label %1465

1465:                                             ; preds = %1462
  %1466 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(9) @.str.86) #22
  %1467 = icmp eq i32 %1466, 0
  br i1 %1467, label %1468, label %1471

1468:                                             ; preds = %1465, %1462
  %1469 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %1470 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 4
  store i32 %1469, ptr %1470, align 8, !tbaa !125
  br label %2196

1471:                                             ; preds = %1465
  %1472 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(8) @.str.87) #22
  %1473 = icmp eq i32 %1472, 0
  br i1 %1473, label %1474, label %1485

1474:                                             ; preds = %1471
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %50) #24
  %1475 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %50, i32 noundef 0) #24
  %1476 = load ptr, ptr %50, align 8, !tbaa !143
  %1477 = icmp eq ptr %1476, %117
  br i1 %1477, label %1481, label %1478

1478:                                             ; preds = %1474
  %1479 = load i8, ptr %1476, align 1, !tbaa !35
  %1480 = icmp eq i8 %1479, 0
  br i1 %1480, label %1482, label %1481

1481:                                             ; preds = %1478, %1474
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1482

1482:                                             ; preds = %1478, %1481
  %1483 = trunc i64 %1475 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %50) #24
  %1484 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  store i32 %1483, ptr %1484, align 4, !tbaa !126
  br label %2196

1485:                                             ; preds = %1471
  %1486 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(7) @.str.88) #22
  %1487 = icmp eq i32 %1486, 0
  br i1 %1487, label %1491, label %1488

1488:                                             ; preds = %1485
  %1489 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(12) @.str.89) #22
  %1490 = icmp eq i32 %1489, 0
  br i1 %1490, label %1491, label %1516

1491:                                             ; preds = %1488, %1485
  %1492 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  %1493 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(5) @.str.77) #22
  %1494 = icmp eq i32 %1493, 0
  br i1 %1494, label %1501, label %1504

1495:                                             ; preds = %1504
  %1496 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(1) %1508) #22
  %1497 = icmp eq i32 %1496, 0
  br i1 %1497, label %1498, label %1504, !llvm.loop !179

1498:                                             ; preds = %1495
  %1499 = icmp eq ptr %1508, null
  %1500 = trunc i64 %1506 to i32
  br label %1501

1501:                                             ; preds = %1498, %1491
  %1502 = phi i32 [ %1500, %1498 ], [ 0, %1491 ]
  %1503 = phi i1 [ %1499, %1498 ], [ false, %1491 ]
  store i32 %1502, ptr %1492, align 4, !tbaa !130
  br label %1512

1504:                                             ; preds = %1491, %1495
  %1505 = phi i64 [ %1506, %1495 ], [ 0, %1491 ]
  %1506 = add nuw nsw i64 %1505, 1
  %1507 = getelementptr inbounds ptr, ptr @x264_direct_pred_names, i64 %1506
  %1508 = load ptr, ptr %1507, align 8, !tbaa !143
  %1509 = icmp eq i64 %1506, 4
  br i1 %1509, label %1510, label %1495, !llvm.loop !179

1510:                                             ; preds = %1504
  %1511 = icmp eq ptr %1508, null
  br label %1512

1512:                                             ; preds = %1510, %1501
  %1513 = phi i1 [ %1503, %1501 ], [ %1511, %1510 ]
  %1514 = load i32, ptr %72, align 4, !tbaa !130
  %1515 = select i1 %1513, i32 -1, i32 %1514
  store i32 %1515, ptr %72, align 4, !tbaa !130
  br label %2196

1516:                                             ; preds = %1488
  %1517 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(17) @.str.90) #22
  %1518 = icmp eq i32 %1517, 0
  br i1 %1518, label %1519, label %1530

1519:                                             ; preds = %1516
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %49) #24
  %1520 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %49, i32 noundef 0) #24
  %1521 = load ptr, ptr %49, align 8, !tbaa !143
  %1522 = icmp eq ptr %1521, %117
  br i1 %1522, label %1526, label %1523

1523:                                             ; preds = %1519
  %1524 = load i8, ptr %1521, align 1, !tbaa !35
  %1525 = icmp eq i8 %1524, 0
  br i1 %1525, label %1527, label %1526

1526:                                             ; preds = %1523, %1519
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1527

1527:                                             ; preds = %1523, %1526
  %1528 = trunc i64 %1520 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %49) #24
  %1529 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 6
  store i32 %1528, ptr %1529, align 8, !tbaa !123
  br label %2196

1530:                                             ; preds = %1516
  %1531 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(3) @.str.91) #22
  %1532 = icmp eq i32 %1531, 0
  br i1 %1532, label %1533, label %1558

1533:                                             ; preds = %1530
  %1534 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  %1535 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(4) @.str.261) #22
  %1536 = icmp eq i32 %1535, 0
  br i1 %1536, label %1543, label %1546

1537:                                             ; preds = %1546
  %1538 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(1) %1550) #22
  %1539 = icmp eq i32 %1538, 0
  br i1 %1539, label %1540, label %1546, !llvm.loop !179

1540:                                             ; preds = %1537
  %1541 = icmp eq ptr %1550, null
  %1542 = trunc i64 %1548 to i32
  br label %1543

1543:                                             ; preds = %1540, %1533
  %1544 = phi i32 [ %1542, %1540 ], [ 0, %1533 ]
  %1545 = phi i1 [ %1541, %1540 ], [ false, %1533 ]
  store i32 %1544, ptr %1534, align 4, !tbaa !130
  br label %1554

1546:                                             ; preds = %1533, %1537
  %1547 = phi i64 [ %1548, %1537 ], [ 0, %1533 ]
  %1548 = add nuw nsw i64 %1547, 1
  %1549 = getelementptr inbounds ptr, ptr @x264_motion_est_names, i64 %1548
  %1550 = load ptr, ptr %1549, align 8, !tbaa !143
  %1551 = icmp eq i64 %1548, 5
  br i1 %1551, label %1552, label %1537, !llvm.loop !179

1552:                                             ; preds = %1546
  %1553 = icmp eq ptr %1550, null
  br label %1554

1554:                                             ; preds = %1552, %1543
  %1555 = phi i1 [ %1545, %1543 ], [ %1553, %1552 ]
  %1556 = load i32, ptr %72, align 4, !tbaa !130
  %1557 = select i1 %1555, i32 -1, i32 %1556
  store i32 %1557, ptr %72, align 4, !tbaa !130
  br label %2196

1558:                                             ; preds = %1530
  %1559 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(8) @.str.92) #22
  %1560 = icmp eq i32 %1559, 0
  br i1 %1560, label %1564, label %1561

1561:                                             ; preds = %1558
  %1562 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(9) @.str.93) #22
  %1563 = icmp eq i32 %1562, 0
  br i1 %1563, label %1564, label %1575

1564:                                             ; preds = %1561, %1558
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %48) #24
  %1565 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %48, i32 noundef 0) #24
  %1566 = load ptr, ptr %48, align 8, !tbaa !143
  %1567 = icmp eq ptr %1566, %117
  br i1 %1567, label %1571, label %1568

1568:                                             ; preds = %1564
  %1569 = load i8, ptr %1566, align 1, !tbaa !35
  %1570 = icmp eq i8 %1569, 0
  br i1 %1570, label %1572, label %1571

1571:                                             ; preds = %1568, %1564
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1572

1572:                                             ; preds = %1568, %1571
  %1573 = trunc i64 %1565 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %48) #24
  %1574 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 8
  store i32 %1573, ptr %1574, align 8, !tbaa !117
  br label %2196

1575:                                             ; preds = %1561
  %1576 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(8) @.str.94) #22
  %1577 = icmp eq i32 %1576, 0
  br i1 %1577, label %1581, label %1578

1578:                                             ; preds = %1575
  %1579 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(9) @.str.95) #22
  %1580 = icmp eq i32 %1579, 0
  br i1 %1580, label %1581, label %1592

1581:                                             ; preds = %1578, %1575
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %47) #24
  %1582 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %47, i32 noundef 0) #24
  %1583 = load ptr, ptr %47, align 8, !tbaa !143
  %1584 = icmp eq ptr %1583, %117
  br i1 %1584, label %1588, label %1585

1585:                                             ; preds = %1581
  %1586 = load i8, ptr %1583, align 1, !tbaa !35
  %1587 = icmp eq i8 %1586, 0
  br i1 %1587, label %1589, label %1588

1588:                                             ; preds = %1585, %1581
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1589

1589:                                             ; preds = %1585, %1588
  %1590 = trunc i64 %1582 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %47) #24
  %1591 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 9
  store i32 %1590, ptr %1591, align 4, !tbaa !122
  br label %2196

1592:                                             ; preds = %1578
  %1593 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(15) @.str.96) #22
  %1594 = icmp eq i32 %1593, 0
  br i1 %1594, label %1598, label %1595

1595:                                             ; preds = %1592
  %1596 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(16) @.str.97) #22
  %1597 = icmp eq i32 %1596, 0
  br i1 %1597, label %1598, label %1609

1598:                                             ; preds = %1595, %1592
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %46) #24
  %1599 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %46, i32 noundef 0) #24
  %1600 = load ptr, ptr %46, align 8, !tbaa !143
  %1601 = icmp eq ptr %1600, %117
  br i1 %1601, label %1605, label %1602

1602:                                             ; preds = %1598
  %1603 = load i8, ptr %1600, align 1, !tbaa !35
  %1604 = icmp eq i8 %1603, 0
  br i1 %1604, label %1606, label %1605

1605:                                             ; preds = %1602, %1598
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1606

1606:                                             ; preds = %1602, %1605
  %1607 = trunc i64 %1599 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #24
  %1608 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 10
  store i32 %1607, ptr %1608, align 8, !tbaa !121
  br label %2196

1609:                                             ; preds = %1595
  %1610 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(6) @.str.98) #22
  %1611 = icmp eq i32 %1610, 0
  br i1 %1611, label %1615, label %1612

1612:                                             ; preds = %1609
  %1613 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(5) @.str.99) #22
  %1614 = icmp eq i32 %1613, 0
  br i1 %1614, label %1615, label %1626

1615:                                             ; preds = %1612, %1609
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %45) #24
  %1616 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %45, i32 noundef 0) #24
  %1617 = load ptr, ptr %45, align 8, !tbaa !143
  %1618 = icmp eq ptr %1617, %117
  br i1 %1618, label %1622, label %1619

1619:                                             ; preds = %1615
  %1620 = load i8, ptr %1617, align 1, !tbaa !35
  %1621 = icmp eq i8 %1620, 0
  br i1 %1621, label %1623, label %1622

1622:                                             ; preds = %1619, %1615
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1623

1623:                                             ; preds = %1619, %1622
  %1624 = trunc i64 %1616 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %45) #24
  %1625 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  store i32 %1624, ptr %1625, align 4, !tbaa !118
  br label %2196

1626:                                             ; preds = %1612
  %1627 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(7) @.str.100) #22
  %1628 = icmp eq i32 %1627, 0
  br i1 %1628, label %1629, label %1645

1629:                                             ; preds = %1626
  %1630 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 18
  %1631 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 19
  %1632 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %117, ptr noundef nonnull @.str.101, ptr noundef nonnull %1630, ptr noundef nonnull %1631) #24
  %1633 = icmp eq i32 %1632, 2
  br i1 %1633, label %2196, label %1634

1634:                                             ; preds = %1629
  %1635 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %117, ptr noundef nonnull @.str.102, ptr noundef nonnull %1630, ptr noundef nonnull %1631) #24
  %1636 = icmp eq i32 %1635, 2
  br i1 %1636, label %2196, label %1637

1637:                                             ; preds = %1634
  %1638 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %117, ptr noundef nonnull @.str.103, ptr noundef nonnull %1630, ptr noundef nonnull %1631) #24
  %1639 = icmp eq i32 %1638, 2
  br i1 %1639, label %2196, label %1640

1640:                                             ; preds = %1637
  %1641 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %117, ptr noundef nonnull @.str.104, ptr noundef nonnull %1630) #24
  %1642 = icmp eq i32 %1641, 0
  br i1 %1642, label %1644, label %1643

1643:                                             ; preds = %1640
  store float 0.000000e+00, ptr %1631, align 4, !tbaa !116
  br label %2196

1644:                                             ; preds = %1640
  store float 0.000000e+00, ptr %1630, align 8, !tbaa !114
  store float 0.000000e+00, ptr %1631, align 4, !tbaa !116
  br label %2196

1645:                                             ; preds = %1626
  %1646 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(4) @.str.105) #22
  %1647 = icmp eq i32 %1646, 0
  br i1 %1647, label %1648, label %1651

1648:                                             ; preds = %1645
  %1649 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %1650 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 20
  store i32 %1649, ptr %1650, align 8, !tbaa !115
  br label %2196

1651:                                             ; preds = %1645
  %1652 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(10) @.str.106) #22
  %1653 = icmp eq i32 %1652, 0
  br i1 %1653, label %1654, label %1657

1654:                                             ; preds = %1651
  %1655 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %1656 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 12
  store i32 %1655, ptr %1656, align 8, !tbaa !120
  br label %2196

1657:                                             ; preds = %1651
  %1658 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(11) @.str.107) #22
  %1659 = icmp eq i32 %1658, 0
  br i1 %1659, label %1660, label %1663

1660:                                             ; preds = %1657
  %1661 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %1662 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 13
  store i32 %1661, ptr %1662, align 4, !tbaa !119
  br label %2196

1663:                                             ; preds = %1657
  %1664 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(8) @.str.108) #22
  %1665 = icmp eq i32 %1664, 0
  br i1 %1665, label %1666, label %1677

1666:                                             ; preds = %1663
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %44) #24
  %1667 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %44, i32 noundef 0) #24
  %1668 = load ptr, ptr %44, align 8, !tbaa !143
  %1669 = icmp eq ptr %1668, %117
  br i1 %1669, label %1673, label %1670

1670:                                             ; preds = %1666
  %1671 = load i8, ptr %1668, align 1, !tbaa !35
  %1672 = icmp eq i8 %1671, 0
  br i1 %1672, label %1674, label %1673

1673:                                             ; preds = %1670, %1666
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1674

1674:                                             ; preds = %1670, %1673
  %1675 = trunc i64 %1667 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %44) #24
  %1676 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  store i32 %1675, ptr %1676, align 8, !tbaa !129
  br label %2196

1677:                                             ; preds = %1663
  %1678 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(11) @.str.109) #22
  %1679 = icmp eq i32 %1678, 0
  br i1 %1679, label %1680, label %1683

1680:                                             ; preds = %1677
  %1681 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %1682 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 15
  store i32 %1681, ptr %1682, align 4, !tbaa !124
  br label %2196

1683:                                             ; preds = %1677
  %1684 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(13) @.str.110) #22
  %1685 = icmp eq i32 %1684, 0
  br i1 %1685, label %1686, label %1689

1686:                                             ; preds = %1683
  %1687 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %1688 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 16
  store i32 %1687, ptr %1688, align 8, !tbaa !127
  br label %2196

1689:                                             ; preds = %1683
  %1690 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(15) @.str.111) #22
  %1691 = icmp eq i32 %1690, 0
  br i1 %1691, label %1692, label %1703

1692:                                             ; preds = %1689
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %43) #24
  %1693 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %43, i32 noundef 0) #24
  %1694 = load ptr, ptr %43, align 8, !tbaa !143
  %1695 = icmp eq ptr %1694, %117
  br i1 %1695, label %1699, label %1696

1696:                                             ; preds = %1692
  %1697 = load i8, ptr %1694, align 1, !tbaa !35
  %1698 = icmp eq i8 %1697, 0
  br i1 %1698, label %1700, label %1699

1699:                                             ; preds = %1696, %1692
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1700

1700:                                             ; preds = %1696, %1699
  %1701 = trunc i64 %1693 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %43) #24
  %1702 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 21
  store i32 %1701, ptr %1702, align 4, !tbaa !130
  br label %2196

1703:                                             ; preds = %1689
  %1704 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(15) @.str.112) #22
  %1705 = icmp eq i32 %1704, 0
  br i1 %1705, label %1706, label %1717

1706:                                             ; preds = %1703
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %42) #24
  %1707 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %42, i32 noundef 0) #24
  %1708 = load ptr, ptr %42, align 8, !tbaa !143
  %1709 = icmp eq ptr %1708, %117
  br i1 %1709, label %1713, label %1710

1710:                                             ; preds = %1706
  %1711 = load i8, ptr %1708, align 1, !tbaa !35
  %1712 = icmp eq i8 %1711, 0
  br i1 %1712, label %1714, label %1713

1713:                                             ; preds = %1710, %1706
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1714

1714:                                             ; preds = %1710, %1713
  %1715 = trunc i64 %1707 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %42) #24
  %1716 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 21, i64 1
  store i32 %1715, ptr %1716, align 4, !tbaa !130
  br label %2196

1717:                                             ; preds = %1703
  %1718 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(3) @.str.113) #22
  %1719 = icmp eq i32 %1718, 0
  br i1 %1719, label %1720, label %1731

1720:                                             ; preds = %1717
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %41) #24
  %1721 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %41, i32 noundef 0) #24
  %1722 = load ptr, ptr %41, align 8, !tbaa !143
  %1723 = icmp eq ptr %1722, %117
  br i1 %1723, label %1727, label %1724

1724:                                             ; preds = %1720
  %1725 = load i8, ptr %1722, align 1, !tbaa !35
  %1726 = icmp eq i8 %1725, 0
  br i1 %1726, label %1728, label %1727

1727:                                             ; preds = %1724, %1720
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1728

1728:                                             ; preds = %1724, %1727
  %1729 = trunc i64 %1721 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %41) #24
  %1730 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 17
  store i32 %1729, ptr %1730, align 4, !tbaa !183
  br label %2196

1731:                                             ; preds = %1717
  %1732 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(8) @.str.114) #22
  %1733 = icmp eq i32 %1732, 0
  br i1 %1733, label %1734, label %1746

1734:                                             ; preds = %1731
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %40) #24
  %1735 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %40, i32 noundef 0) #24
  %1736 = load ptr, ptr %40, align 8, !tbaa !143
  %1737 = icmp eq ptr %1736, %117
  br i1 %1737, label %1741, label %1738

1738:                                             ; preds = %1734
  %1739 = load i8, ptr %1736, align 1, !tbaa !35
  %1740 = icmp eq i8 %1739, 0
  br i1 %1740, label %1742, label %1741

1741:                                             ; preds = %1738, %1734
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1742

1742:                                             ; preds = %1738, %1741
  %1743 = trunc i64 %1735 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %40) #24
  %1744 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42
  %1745 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 5
  store i32 %1743, ptr %1745, align 4, !tbaa !83
  store i32 2, ptr %1744, align 8, !tbaa !82
  br label %2196

1746:                                             ; preds = %1731
  %1747 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(3) @.str.115) #22
  %1748 = icmp eq i32 %1747, 0
  br i1 %1748, label %1752, label %1749

1749:                                             ; preds = %1746
  %1750 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(12) @.str.116) #22
  %1751 = icmp eq i32 %1750, 0
  br i1 %1751, label %1752, label %1764

1752:                                             ; preds = %1749, %1746
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %39) #24
  %1753 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %39, i32 noundef 0) #24
  %1754 = load ptr, ptr %39, align 8, !tbaa !143
  %1755 = icmp eq ptr %1754, %117
  br i1 %1755, label %1759, label %1756

1756:                                             ; preds = %1752
  %1757 = load i8, ptr %1754, align 1, !tbaa !35
  %1758 = icmp eq i8 %1757, 0
  br i1 %1758, label %1760, label %1759

1759:                                             ; preds = %1756, %1752
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1760

1760:                                             ; preds = %1756, %1759
  %1761 = trunc i64 %1753 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %39) #24
  %1762 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42
  %1763 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 1
  store i32 %1761, ptr %1763, align 4, !tbaa !88
  store i32 0, ptr %1762, align 8, !tbaa !82
  br label %2196

1764:                                             ; preds = %1749
  %1765 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(4) @.str.117) #22
  %1766 = icmp eq i32 %1765, 0
  br i1 %1766, label %1767, label %1779

1767:                                             ; preds = %1764
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %38) #24
  %1768 = call double @strtod(ptr noundef %117, ptr noundef nonnull %38) #24
  %1769 = load ptr, ptr %38, align 8, !tbaa !143
  %1770 = icmp eq ptr %1769, %117
  br i1 %1770, label %1774, label %1771

1771:                                             ; preds = %1767
  %1772 = load i8, ptr %1769, align 1, !tbaa !35
  %1773 = icmp eq i8 %1772, 0
  br i1 %1773, label %1775, label %1774

1774:                                             ; preds = %1771, %1767
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1775

1775:                                             ; preds = %1771, %1774
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %38) #24
  %1776 = fptrunc double %1768 to float
  %1777 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42
  %1778 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 6
  store float %1776, ptr %1778, align 8, !tbaa !89
  store i32 1, ptr %1777, align 8, !tbaa !82
  br label %2196

1779:                                             ; preds = %1764
  %1780 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(8) @.str.118) #22
  %1781 = icmp eq i32 %1780, 0
  br i1 %1781, label %1782, label %1793

1782:                                             ; preds = %1779
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %37) #24
  %1783 = call double @strtod(ptr noundef %117, ptr noundef nonnull %37) #24
  %1784 = load ptr, ptr %37, align 8, !tbaa !143
  %1785 = icmp eq ptr %1784, %117
  br i1 %1785, label %1789, label %1786

1786:                                             ; preds = %1782
  %1787 = load i8, ptr %1784, align 1, !tbaa !35
  %1788 = icmp eq i8 %1787, 0
  br i1 %1788, label %1790, label %1789

1789:                                             ; preds = %1786, %1782
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1790

1790:                                             ; preds = %1786, %1789
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %37) #24
  %1791 = fptrunc double %1783 to float
  %1792 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 7
  store float %1791, ptr %1792, align 4, !tbaa !184
  br label %2196

1793:                                             ; preds = %1779
  %1794 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(13) @.str.119) #22
  %1795 = icmp eq i32 %1794, 0
  br i1 %1795, label %1796, label %1807

1796:                                             ; preds = %1793
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %36) #24
  %1797 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %36, i32 noundef 0) #24
  %1798 = load ptr, ptr %36, align 8, !tbaa !143
  %1799 = icmp eq ptr %1798, %117
  br i1 %1799, label %1803, label %1800

1800:                                             ; preds = %1796
  %1801 = load i8, ptr %1798, align 1, !tbaa !35
  %1802 = icmp eq i8 %1801, 0
  br i1 %1802, label %1804, label %1803

1803:                                             ; preds = %1800, %1796
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1804

1804:                                             ; preds = %1800, %1803
  %1805 = trunc i64 %1797 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %36) #24
  %1806 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  store i32 %1805, ptr %1806, align 4, !tbaa !97
  br label %2196

1807:                                             ; preds = %1793
  %1808 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(6) @.str.120) #22
  %1809 = icmp eq i32 %1808, 0
  br i1 %1809, label %1813, label %1810

1810:                                             ; preds = %1807
  %1811 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(7) @.str.121) #22
  %1812 = icmp eq i32 %1811, 0
  br i1 %1812, label %1813, label %1824

1813:                                             ; preds = %1810, %1807
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %35) #24
  %1814 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %35, i32 noundef 0) #24
  %1815 = load ptr, ptr %35, align 8, !tbaa !143
  %1816 = icmp eq ptr %1815, %117
  br i1 %1816, label %1820, label %1817

1817:                                             ; preds = %1813
  %1818 = load i8, ptr %1815, align 1, !tbaa !35
  %1819 = icmp eq i8 %1818, 0
  br i1 %1819, label %1821, label %1820

1820:                                             ; preds = %1817, %1813
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1821

1821:                                             ; preds = %1817, %1820
  %1822 = trunc i64 %1814 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %35) #24
  %1823 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 2
  store i32 %1822, ptr %1823, align 8, !tbaa !90
  br label %2196

1824:                                             ; preds = %1810
  %1825 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(6) @.str.122) #22
  %1826 = icmp eq i32 %1825, 0
  br i1 %1826, label %1830, label %1827

1827:                                             ; preds = %1824
  %1828 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(7) @.str.123) #22
  %1829 = icmp eq i32 %1828, 0
  br i1 %1829, label %1830, label %1841

1830:                                             ; preds = %1827, %1824
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %34) #24
  %1831 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %34, i32 noundef 0) #24
  %1832 = load ptr, ptr %34, align 8, !tbaa !143
  %1833 = icmp eq ptr %1832, %117
  br i1 %1833, label %1837, label %1834

1834:                                             ; preds = %1830
  %1835 = load i8, ptr %1832, align 1, !tbaa !35
  %1836 = icmp eq i8 %1835, 0
  br i1 %1836, label %1838, label %1837

1837:                                             ; preds = %1834, %1830
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1838

1838:                                             ; preds = %1834, %1837
  %1839 = trunc i64 %1831 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %34) #24
  %1840 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 3
  store i32 %1839, ptr %1840, align 4, !tbaa !91
  br label %2196

1841:                                             ; preds = %1827
  %1842 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(7) @.str.124) #22
  %1843 = icmp eq i32 %1842, 0
  br i1 %1843, label %1847, label %1844

1844:                                             ; preds = %1841
  %1845 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(8) @.str.125) #22
  %1846 = icmp eq i32 %1845, 0
  br i1 %1846, label %1847, label %1858

1847:                                             ; preds = %1844, %1841
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %33) #24
  %1848 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %33, i32 noundef 0) #24
  %1849 = load ptr, ptr %33, align 8, !tbaa !143
  %1850 = icmp eq ptr %1849, %117
  br i1 %1850, label %1854, label %1851

1851:                                             ; preds = %1847
  %1852 = load i8, ptr %1849, align 1, !tbaa !35
  %1853 = icmp eq i8 %1852, 0
  br i1 %1853, label %1855, label %1854

1854:                                             ; preds = %1851, %1847
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1855

1855:                                             ; preds = %1851, %1854
  %1856 = trunc i64 %1848 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %33) #24
  %1857 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 4
  store i32 %1856, ptr %1857, align 8, !tbaa !92
  br label %2196

1858:                                             ; preds = %1844
  %1859 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(8) @.str.126) #22
  %1860 = icmp eq i32 %1859, 0
  br i1 %1860, label %1861, label %1877

1861:                                             ; preds = %1858
  %1862 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.127, ptr noundef nonnull dereferenceable(1) %117, i64 noundef 3) #22
  %1863 = icmp eq i32 %1862, 0
  br i1 %1863, label %1874, label %1864

1864:                                             ; preds = %1861
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %32) #24
  %1865 = call double @strtod(ptr noundef %117, ptr noundef nonnull %32) #24
  %1866 = load ptr, ptr %32, align 8, !tbaa !143
  %1867 = icmp eq ptr %1866, %117
  br i1 %1867, label %1871, label %1868

1868:                                             ; preds = %1864
  %1869 = load i8, ptr %1866, align 1, !tbaa !35
  %1870 = icmp eq i8 %1869, 0
  br i1 %1870, label %1872, label %1871

1871:                                             ; preds = %1868, %1864
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1872

1872:                                             ; preds = %1868, %1871
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #24
  %1873 = fptrunc double %1865 to float
  br label %1874

1874:                                             ; preds = %1861, %1872
  %1875 = phi float [ %1873, %1872 ], [ 1.000000e+09, %1861 ]
  %1876 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 8
  store float %1875, ptr %1876, align 8, !tbaa !84
  br label %2196

1877:                                             ; preds = %1858
  %1878 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(12) @.str.128) #22
  %1879 = icmp eq i32 %1878, 0
  br i1 %1879, label %1880, label %1891

1880:                                             ; preds = %1877
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31) #24
  %1881 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %31, i32 noundef 0) #24
  %1882 = load ptr, ptr %31, align 8, !tbaa !143
  %1883 = icmp eq ptr %1882, %117
  br i1 %1883, label %1887, label %1884

1884:                                             ; preds = %1880
  %1885 = load i8, ptr %1882, align 1, !tbaa !35
  %1886 = icmp eq i8 %1885, 0
  br i1 %1886, label %1888, label %1887

1887:                                             ; preds = %1884, %1880
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1888

1888:                                             ; preds = %1884, %1887
  %1889 = trunc i64 %1881 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #24
  %1890 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 9
  store i32 %1889, ptr %1890, align 4, !tbaa !85
  br label %2196

1891:                                             ; preds = %1877
  %1892 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(12) @.str.129) #22
  %1893 = icmp eq i32 %1892, 0
  br i1 %1893, label %1894, label %1905

1894:                                             ; preds = %1891
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30) #24
  %1895 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %30, i32 noundef 0) #24
  %1896 = load ptr, ptr %30, align 8, !tbaa !143
  %1897 = icmp eq ptr %1896, %117
  br i1 %1897, label %1901, label %1898

1898:                                             ; preds = %1894
  %1899 = load i8, ptr %1896, align 1, !tbaa !35
  %1900 = icmp eq i8 %1899, 0
  br i1 %1900, label %1902, label %1901

1901:                                             ; preds = %1898, %1894
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1902

1902:                                             ; preds = %1898, %1901
  %1903 = trunc i64 %1895 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #24
  %1904 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 10
  store i32 %1903, ptr %1904, align 8, !tbaa !86
  br label %2196

1905:                                             ; preds = %1891
  %1906 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(9) @.str.130) #22
  %1907 = icmp eq i32 %1906, 0
  br i1 %1907, label %1908, label %1919

1908:                                             ; preds = %1905
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #24
  %1909 = call double @strtod(ptr noundef %117, ptr noundef nonnull %29) #24
  %1910 = load ptr, ptr %29, align 8, !tbaa !143
  %1911 = icmp eq ptr %1910, %117
  br i1 %1911, label %1915, label %1912

1912:                                             ; preds = %1908
  %1913 = load i8, ptr %1910, align 1, !tbaa !35
  %1914 = icmp eq i8 %1913, 0
  br i1 %1914, label %1916, label %1915

1915:                                             ; preds = %1912, %1908
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1916

1916:                                             ; preds = %1912, %1915
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #24
  %1917 = fptrunc double %1909 to float
  %1918 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 11
  store float %1917, ptr %1918, align 4, !tbaa !87
  br label %2196

1919:                                             ; preds = %1905
  %1920 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(8) @.str.131) #22
  %1921 = icmp eq i32 %1920, 0
  br i1 %1921, label %1925, label %1922

1922:                                             ; preds = %1919
  %1923 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(10) @.str.132) #22
  %1924 = icmp eq i32 %1923, 0
  br i1 %1924, label %1925, label %1936

1925:                                             ; preds = %1922, %1919
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #24
  %1926 = call double @strtod(ptr noundef %117, ptr noundef nonnull %28) #24
  %1927 = load ptr, ptr %28, align 8, !tbaa !143
  %1928 = icmp eq ptr %1927, %117
  br i1 %1928, label %1932, label %1929

1929:                                             ; preds = %1925
  %1930 = load i8, ptr %1927, align 1, !tbaa !35
  %1931 = icmp eq i8 %1930, 0
  br i1 %1931, label %1933, label %1932

1932:                                             ; preds = %1929, %1925
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1933

1933:                                             ; preds = %1929, %1932
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #24
  %1934 = fptrunc double %1926 to float
  %1935 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 12
  store float %1934, ptr %1935, align 8, !tbaa !93
  br label %2196

1936:                                             ; preds = %1922
  %1937 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(8) @.str.133) #22
  %1938 = icmp eq i32 %1937, 0
  br i1 %1938, label %1942, label %1939

1939:                                             ; preds = %1936
  %1940 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(10) @.str.134) #22
  %1941 = icmp eq i32 %1940, 0
  br i1 %1941, label %1942, label %1953

1942:                                             ; preds = %1939, %1936
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #24
  %1943 = call double @strtod(ptr noundef %117, ptr noundef nonnull %27) #24
  %1944 = load ptr, ptr %27, align 8, !tbaa !143
  %1945 = icmp eq ptr %1944, %117
  br i1 %1945, label %1949, label %1946

1946:                                             ; preds = %1942
  %1947 = load i8, ptr %1944, align 1, !tbaa !35
  %1948 = icmp eq i8 %1947, 0
  br i1 %1948, label %1950, label %1949

1949:                                             ; preds = %1946, %1942
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1950

1950:                                             ; preds = %1946, %1949
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #24
  %1951 = fptrunc double %1943 to float
  %1952 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 13
  store float %1951, ptr %1952, align 4, !tbaa !94
  br label %2196

1953:                                             ; preds = %1939
  %1954 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(8) @.str.135) #22
  %1955 = icmp eq i32 %1954, 0
  br i1 %1955, label %1956, label %1967

1956:                                             ; preds = %1953
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #24
  %1957 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %26, i32 noundef 0) #24
  %1958 = load ptr, ptr %26, align 8, !tbaa !143
  %1959 = icmp eq ptr %1958, %117
  br i1 %1959, label %1963, label %1960

1960:                                             ; preds = %1956
  %1961 = load i8, ptr %1958, align 1, !tbaa !35
  %1962 = icmp eq i8 %1961, 0
  br i1 %1962, label %1964, label %1963

1963:                                             ; preds = %1960, %1956
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1964

1964:                                             ; preds = %1960, %1963
  %1965 = trunc i64 %1957 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #24
  %1966 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 14
  store i32 %1965, ptr %1966, align 8, !tbaa !95
  br label %2196

1967:                                             ; preds = %1953
  %1968 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(12) @.str.136) #22
  %1969 = icmp eq i32 %1968, 0
  br i1 %1969, label %1970, label %1981

1970:                                             ; preds = %1967
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #24
  %1971 = call double @strtod(ptr noundef %117, ptr noundef nonnull %25) #24
  %1972 = load ptr, ptr %25, align 8, !tbaa !143
  %1973 = icmp eq ptr %1972, %117
  br i1 %1973, label %1977, label %1974

1974:                                             ; preds = %1970
  %1975 = load i8, ptr %1972, align 1, !tbaa !35
  %1976 = icmp eq i8 %1975, 0
  br i1 %1976, label %1978, label %1977

1977:                                             ; preds = %1974, %1970
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1978

1978:                                             ; preds = %1974, %1977
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #24
  %1979 = fptrunc double %1971 to float
  %1980 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 15
  store float %1979, ptr %1980, align 4, !tbaa !96
  br label %2196

1981:                                             ; preds = %1967
  %1982 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(5) @.str.137) #22
  %1983 = icmp eq i32 %1982, 0
  br i1 %1983, label %1984, label %2000

1984:                                             ; preds = %1981
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #24
  %1985 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %24, i32 noundef 0) #24
  %1986 = load ptr, ptr %24, align 8, !tbaa !143
  %1987 = icmp eq ptr %1986, %117
  br i1 %1987, label %1991, label %1988

1988:                                             ; preds = %1984
  %1989 = load i8, ptr %1986, align 1, !tbaa !35
  %1990 = icmp eq i8 %1989, 0
  br i1 %1990, label %1992, label %1991

1991:                                             ; preds = %1988, %1984
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %1992

1992:                                             ; preds = %1988, %1991
  %1993 = trunc i64 %1985 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #24
  %1994 = tail call i32 @llvm.smin.i32(i32 %1993, i32 3)
  %1995 = tail call i32 @llvm.smax.i32(i32 %1994, i32 0)
  %1996 = and i32 %1995, 1
  %1997 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 18
  store i32 %1996, ptr %1997, align 8, !tbaa !98
  %1998 = and i32 %1995, 2
  %1999 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  store i32 %1998, ptr %1999, align 8, !tbaa !100
  br label %2196

2000:                                             ; preds = %1981
  %2001 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(6) @.str.138) #22
  %2002 = icmp eq i32 %2001, 0
  br i1 %2002, label %2003, label %2030

2003:                                             ; preds = %2000
  %2004 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %117) #22
  %2005 = trunc i64 %2004 to i32
  %2006 = shl i64 %2004, 32
  %2007 = add i64 %2006, 4294967296
  %2008 = ashr exact i64 %2007, 32
  %2009 = tail call noalias ptr @malloc(i64 noundef %2008) #23
  %2010 = icmp sgt i32 %2005, 0
  br i1 %2010, label %2011, label %2013

2011:                                             ; preds = %2003
  %2012 = and i64 %2004, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2009, ptr align 1 %117, i64 %2012, i1 false), !tbaa !35
  br label %2013

2013:                                             ; preds = %2003, %2011
  %2014 = ashr exact i64 %2006, 32
  %2015 = getelementptr inbounds i8, ptr %2009, i64 %2014
  store i8 0, ptr %2015, align 1, !tbaa !35
  %2016 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 21
  store ptr %2009, ptr %2016, align 8, !tbaa !101
  %2017 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %117) #22
  %2018 = trunc i64 %2017 to i32
  %2019 = shl i64 %2017, 32
  %2020 = add i64 %2019, 4294967296
  %2021 = ashr exact i64 %2020, 32
  %2022 = tail call noalias ptr @malloc(i64 noundef %2021) #23
  %2023 = icmp sgt i32 %2018, 0
  br i1 %2023, label %2024, label %2026

2024:                                             ; preds = %2013
  %2025 = and i64 %2017, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2022, ptr align 1 %117, i64 %2025, i1 false), !tbaa !35
  br label %2026

2026:                                             ; preds = %2013, %2024
  %2027 = ashr exact i64 %2019, 32
  %2028 = getelementptr inbounds i8, ptr %2022, i64 %2027
  store i8 0, ptr %2028, align 1, !tbaa !35
  %2029 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 19
  store ptr %2022, ptr %2029, align 8, !tbaa !99
  br label %2196

2030:                                             ; preds = %2000
  %2031 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(6) @.str.139) #22
  %2032 = icmp eq i32 %2031, 0
  br i1 %2032, label %2033, label %2044

2033:                                             ; preds = %2030
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #24
  %2034 = call double @strtod(ptr noundef %117, ptr noundef nonnull %23) #24
  %2035 = load ptr, ptr %23, align 8, !tbaa !143
  %2036 = icmp eq ptr %2035, %117
  br i1 %2036, label %2040, label %2037

2037:                                             ; preds = %2033
  %2038 = load i8, ptr %2035, align 1, !tbaa !35
  %2039 = icmp eq i8 %2038, 0
  br i1 %2039, label %2041, label %2040

2040:                                             ; preds = %2037, %2033
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %2041

2041:                                             ; preds = %2037, %2040
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #24
  %2042 = fptrunc double %2034 to float
  %2043 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 22
  store float %2042, ptr %2043, align 8, !tbaa !102
  br label %2196

2044:                                             ; preds = %2030
  %2045 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(7) @.str.140) #22
  %2046 = icmp eq i32 %2045, 0
  br i1 %2046, label %2047, label %2050

2047:                                             ; preds = %2044
  %2048 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %2049 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  store i32 %2048, ptr %2049, align 8, !tbaa !106
  br label %2196

2050:                                             ; preds = %2044
  %2051 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(6) @.str.141) #22
  %2052 = icmp eq i32 %2051, 0
  br i1 %2052, label %2053, label %2064

2053:                                             ; preds = %2050
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #24
  %2054 = call double @strtod(ptr noundef %117, ptr noundef nonnull %22) #24
  %2055 = load ptr, ptr %22, align 8, !tbaa !143
  %2056 = icmp eq ptr %2055, %117
  br i1 %2056, label %2060, label %2057

2057:                                             ; preds = %2053
  %2058 = load i8, ptr %2055, align 1, !tbaa !35
  %2059 = icmp eq i8 %2058, 0
  br i1 %2059, label %2061, label %2060

2060:                                             ; preds = %2057, %2053
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %2061

2061:                                             ; preds = %2057, %2060
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #24
  %2062 = fptrunc double %2054 to float
  %2063 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 23
  store float %2062, ptr %2063, align 4, !tbaa !103
  br label %2196

2064:                                             ; preds = %2050
  %2065 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(9) @.str.142) #22
  %2066 = icmp eq i32 %2065, 0
  br i1 %2066, label %2070, label %2067

2067:                                             ; preds = %2064
  %2068 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(10) @.str.143) #22
  %2069 = icmp eq i32 %2068, 0
  br i1 %2069, label %2070, label %2081

2070:                                             ; preds = %2067, %2064
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #24
  %2071 = call double @strtod(ptr noundef %117, ptr noundef nonnull %21) #24
  %2072 = load ptr, ptr %21, align 8, !tbaa !143
  %2073 = icmp eq ptr %2072, %117
  br i1 %2073, label %2077, label %2074

2074:                                             ; preds = %2070
  %2075 = load i8, ptr %2072, align 1, !tbaa !35
  %2076 = icmp eq i8 %2075, 0
  br i1 %2076, label %2078, label %2077

2077:                                             ; preds = %2074, %2070
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %2078

2078:                                             ; preds = %2074, %2077
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #24
  %2079 = fptrunc double %2071 to float
  %2080 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 24
  store float %2079, ptr %2080, align 8, !tbaa !104
  br label %2196

2081:                                             ; preds = %2067
  %2082 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(6) @.str.144) #22
  %2083 = icmp eq i32 %2082, 0
  br i1 %2083, label %2084, label %2098

2084:                                             ; preds = %2081
  %2085 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %117) #22
  %2086 = trunc i64 %2085 to i32
  %2087 = shl i64 %2085, 32
  %2088 = add i64 %2087, 4294967296
  %2089 = ashr exact i64 %2088, 32
  %2090 = tail call noalias ptr @malloc(i64 noundef %2089) #23
  %2091 = icmp sgt i32 %2086, 0
  br i1 %2091, label %2092, label %2094

2092:                                             ; preds = %2084
  %2093 = and i64 %2085, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2090, ptr align 1 %117, i64 %2093, i1 false), !tbaa !35
  br label %2094

2094:                                             ; preds = %2084, %2092
  %2095 = ashr exact i64 %2087, 32
  %2096 = getelementptr inbounds i8, ptr %2090, i64 %2095
  store i8 0, ptr %2096, align 1, !tbaa !35
  %2097 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 27
  store ptr %2090, ptr %2097, align 8, !tbaa !185
  br label %2196

2098:                                             ; preds = %2081
  %2099 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(5) @.str.145) #22
  %2100 = icmp eq i32 %2099, 0
  br i1 %2100, label %2101, label %2104

2101:                                             ; preds = %2098
  %2102 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %2103 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 22
  store i32 %2102, ptr %2103, align 4, !tbaa !131
  br label %2196

2104:                                             ; preds = %2098
  %2105 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(5) @.str.146) #22
  %2106 = icmp eq i32 %2105, 0
  br i1 %2106, label %2107, label %2110

2107:                                             ; preds = %2104
  %2108 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %2109 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 23
  store i32 %2108, ptr %2109, align 8, !tbaa !132
  br label %2196

2110:                                             ; preds = %2104
  %2111 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(4) @.str.147) #22
  %2112 = icmp eq i32 %2111, 0
  br i1 %2112, label %2113, label %2116

2113:                                             ; preds = %2110
  %2114 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %2115 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 43
  store i32 %2114, ptr %2115, align 8, !tbaa !136
  br label %2196

2116:                                             ; preds = %2110
  %2117 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(7) @.str.148) #22
  %2118 = icmp eq i32 %2117, 0
  br i1 %2118, label %2119, label %2130

2119:                                             ; preds = %2116
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #24
  %2120 = call i64 @strtol(ptr noundef %117, ptr noundef nonnull %20, i32 noundef 0) #24
  %2121 = load ptr, ptr %20, align 8, !tbaa !143
  %2122 = icmp eq ptr %2121, %117
  br i1 %2122, label %2126, label %2123

2123:                                             ; preds = %2119
  %2124 = load i8, ptr %2121, align 1, !tbaa !35
  %2125 = icmp eq i8 %2124, 0
  br i1 %2125, label %2127, label %2126

2126:                                             ; preds = %2123, %2119
  store i32 1, ptr %72, align 4, !tbaa !130
  br label %2127

2127:                                             ; preds = %2123, %2126
  %2128 = trunc i64 %2120 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #24
  %2129 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 46
  store i32 %2128, ptr %2129, align 4, !tbaa !186
  br label %2196

2130:                                             ; preds = %2116
  %2131 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(14) @.str.149) #22
  %2132 = icmp eq i32 %2131, 0
  br i1 %2132, label %2133, label %2137

2133:                                             ; preds = %2130
  %2134 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %2135 = xor i32 %2134, 1
  %2136 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 44
  store i32 %2135, ptr %2136, align 4, !tbaa !134
  br label %2196

2137:                                             ; preds = %2130
  %2138 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(15) @.str.150) #22
  %2139 = icmp eq i32 %2138, 0
  br i1 %2139, label %2140, label %2143

2140:                                             ; preds = %2137
  %2141 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %2142 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 44
  store i32 %2141, ptr %2142, align 4, !tbaa !134
  br label %2196

2143:                                             ; preds = %2137
  %2144 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(7) @.str.151) #22
  %2145 = icmp eq i32 %2144, 0
  br i1 %2145, label %2146, label %2149

2146:                                             ; preds = %2143
  %2147 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %2148 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 45
  store i32 %2147, ptr %2148, align 8, !tbaa !135
  br label %2196

2149:                                             ; preds = %2143
  %2150 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(10) @.str.152) #22
  %2151 = icmp eq i32 %2150, 0
  br i1 %2151, label %2152, label %2156

2152:                                             ; preds = %2149
  %2153 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %2154 = xor i32 %2153, 1
  %2155 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 47
  store i32 %2154, ptr %2155, align 8, !tbaa !137
  br label %2196

2156:                                             ; preds = %2149
  %2157 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(8) @.str.153) #22
  %2158 = icmp eq i32 %2157, 0
  br i1 %2158, label %2159, label %2184

2159:                                             ; preds = %2156
  %2160 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 10
  %2161 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(5) @.str.77) #22
  %2162 = icmp eq i32 %2161, 0
  br i1 %2162, label %2169, label %2172

2163:                                             ; preds = %2172
  %2164 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(1) %2176) #22
  %2165 = icmp eq i32 %2164, 0
  br i1 %2165, label %2166, label %2172, !llvm.loop !179

2166:                                             ; preds = %2163
  %2167 = icmp eq ptr %2176, null
  %2168 = trunc i64 %2174 to i32
  br label %2169

2169:                                             ; preds = %2166, %2159
  %2170 = phi i32 [ %2168, %2166 ], [ 0, %2159 ]
  %2171 = phi i1 [ %2167, %2166 ], [ false, %2159 ]
  store i32 %2170, ptr %2160, align 4, !tbaa !130
  br label %2180

2172:                                             ; preds = %2159, %2163
  %2173 = phi i64 [ %2174, %2163 ], [ 0, %2159 ]
  %2174 = add nuw nsw i64 %2173, 1
  %2175 = getelementptr inbounds ptr, ptr @x264_nal_hrd_names, i64 %2174
  %2176 = load ptr, ptr %2175, align 8, !tbaa !143
  %2177 = icmp eq i64 %2174, 3
  br i1 %2177, label %2178, label %2163, !llvm.loop !179

2178:                                             ; preds = %2172
  %2179 = icmp eq ptr %2176, null
  br label %2180

2180:                                             ; preds = %2178, %2169
  %2181 = phi i1 [ %2171, %2169 ], [ %2179, %2178 ]
  %2182 = load i32, ptr %72, align 4, !tbaa !130
  %2183 = select i1 %2181, i32 -1, i32 %2182
  store i32 %2183, ptr %72, align 4, !tbaa !130
  br label %2196

2184:                                             ; preds = %2156
  %2185 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(11) @.str.154) #22
  %2186 = icmp eq i32 %2185, 0
  br i1 %2186, label %2187, label %2190

2187:                                             ; preds = %2184
  %2188 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %2189 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 54
  store i32 %2188, ptr %2189, align 4, !tbaa !141
  br label %2196

2190:                                             ; preds = %2184
  %2191 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(16) @.str.155) #22
  %2192 = icmp eq i32 %2191, 0
  br i1 %2192, label %2193, label %2208

2193:                                             ; preds = %2190
  %2194 = call fastcc i32 @x264_atobool(ptr noundef %117, ptr noundef nonnull %72), !range !172
  %2195 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 55
  store i32 %2194, ptr %2195, align 8, !tbaa !142
  br label %2196

2196:                                             ; preds = %568, %213, %203, %238, %228, %286, %274, %327, %383, %439, %482, %523, %564, %558, %587, %620, %607, %673, %660, %701, %704, %696, %732, %752, %772, %785, %807, %819, %802, %965, %1099, %1202, %1274, %1346, %1397, %1453, %1450, %1468, %1512, %1554, %1589, %1623, %1648, %1660, %1680, %1700, %1728, %1760, %1790, %1821, %1855, %1888, %1916, %1950, %1978, %2026, %2047, %2078, %2101, %2113, %2133, %2146, %2180, %2193, %2187, %2152, %2140, %2127, %2107, %2094, %2061, %2041, %1992, %1964, %1933, %1902, %1874, %1838, %1804, %1775, %1742, %1714, %1686, %1674, %1654, %1637, %1634, %1629, %1644, %1643, %1606, %1572, %1527, %1482, %1459, %1413, %1382, %1310, %1238, %1166, %1032, %836, %793, %778, %766, %746, %718, %678, %633, %601, %582, %537, %543, %503, %490, %467, %411, %355, %301, %247, %219, %149, %196
  %2197 = phi i32 [ 1, %2193 ], [ 1, %2187 ], [ 0, %2180 ], [ 1, %2152 ], [ 1, %2146 ], [ 1, %2140 ], [ 1, %2133 ], [ 0, %2127 ], [ 1, %2113 ], [ 1, %2107 ], [ 1, %2101 ], [ 0, %2094 ], [ 0, %2078 ], [ 0, %2061 ], [ 1, %2047 ], [ 0, %2041 ], [ 0, %2026 ], [ 0, %1992 ], [ 0, %1978 ], [ 0, %1964 ], [ 0, %1950 ], [ 0, %1933 ], [ 0, %1916 ], [ 0, %1902 ], [ 0, %1888 ], [ 0, %1874 ], [ 0, %1855 ], [ 0, %1838 ], [ 0, %1821 ], [ 0, %1804 ], [ 0, %1790 ], [ 0, %1775 ], [ 0, %1760 ], [ 0, %1742 ], [ 0, %1728 ], [ 0, %1714 ], [ 0, %1700 ], [ 1, %1686 ], [ 1, %1680 ], [ 0, %1674 ], [ 1, %1660 ], [ 1, %1654 ], [ 1, %1648 ], [ 0, %1629 ], [ 0, %1634 ], [ 0, %1637 ], [ 0, %1643 ], [ 0, %1644 ], [ 0, %1623 ], [ 0, %1606 ], [ 0, %1589 ], [ 0, %1572 ], [ 0, %1554 ], [ 0, %1527 ], [ 0, %1512 ], [ 0, %1482 ], [ 1, %1468 ], [ 1, %1459 ], [ 0, %1453 ], [ 0, %1450 ], [ 0, %1413 ], [ 0, %1397 ], [ 0, %1382 ], [ 0, %1346 ], [ 0, %1310 ], [ 0, %1274 ], [ 0, %1238 ], [ 0, %1202 ], [ 0, %1166 ], [ 0, %1099 ], [ 0, %1032 ], [ 0, %965 ], [ 0, %836 ], [ 0, %802 ], [ 0, %807 ], [ 0, %819 ], [ 1, %793 ], [ 1, %785 ], [ 1, %778 ], [ 1, %772 ], [ 0, %766 ], [ 1, %752 ], [ 0, %746 ], [ 0, %732 ], [ 0, %718 ], [ 0, %696 ], [ 0, %701 ], [ 1, %704 ], [ 1, %678 ], [ 0, %673 ], [ 0, %660 ], [ 0, %633 ], [ 1, %620 ], [ 1, %607 ], [ 0, %601 ], [ 1, %587 ], [ 1, %582 ], [ 0, %564 ], [ 0, %558 ], [ 0, %543 ], [ 0, %537 ], [ 0, %523 ], [ 0, %490 ], [ 0, %503 ], [ 0, %482 ], [ 0, %467 ], [ 0, %439 ], [ 0, %411 ], [ 0, %383 ], [ 0, %355 ], [ 0, %327 ], [ 0, %301 ], [ 0, %274 ], [ 0, %286 ], [ 1, %247 ], [ 0, %238 ], [ 0, %228 ], [ 1, %219 ], [ 0, %213 ], [ 0, %203 ], [ %150, %196 ], [ %150, %149 ], [ 1, %568 ]
  %2198 = icmp eq ptr %103, null
  br i1 %2198, label %2200, label %2199

2199:                                             ; preds = %2196
  call void @free(ptr noundef %103) #24
  br label %2200

2200:                                             ; preds = %2199, %2196
  %2201 = icmp eq i32 %2197, 0
  %2202 = and i1 %73, %2201
  %2203 = zext i1 %2202 to i32
  %2204 = load i32, ptr %72, align 4, !tbaa !130
  %2205 = or i32 %2204, %2203
  store i32 %2205, ptr %72, align 4, !tbaa !130
  %2206 = icmp eq i32 %2205, 0
  %2207 = select i1 %2206, i32 0, i32 -2
  br label %2208

2208:                                             ; preds = %2190, %3, %2200
  %2209 = phi i32 [ %2207, %2200 ], [ -1, %3 ], [ -1, %2190 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %72) #24
  ret i32 %2209
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @x264_atobool(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #9 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.233) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.8) #22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.234) #22
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.186) #22
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.11) #22
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.10) #22
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 1, ptr %1, align 4, !tbaa !130
  br label %21

21:                                               ; preds = %11, %14, %17, %2, %5, %8, %20
  %22 = phi i32 [ 0, %20 ], [ 1, %8 ], [ 1, %5 ], [ 1, %2 ], [ 0, %17 ], [ 0, %14 ], [ 0, %11 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @x264_picture_alloc(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  store i32 0, ptr %0, align 8, !tbaa !187
  %5 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 4, !tbaa !191
  %6 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7
  store i32 %1, ptr %6, align 8, !tbaa !192
  %7 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7, i32 1
  store i32 3, ptr %7, align 4, !tbaa !193
  %8 = mul i32 %3, %2
  %9 = mul i32 %8, 3
  %10 = sdiv i32 %9, 2
  %11 = add nsw i32 %10, 27
  %12 = sext i32 %11 to i64
  %13 = tail call noalias ptr @malloc(i64 noundef %12) #23
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds i8, ptr %13, i64 27
  %17 = ptrtoint ptr %16 to i64
  %18 = and i64 %17, 15
  %19 = sub nsw i64 0, %18
  %20 = getelementptr inbounds i8, ptr %16, i64 %19
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  store ptr %13, ptr %21, align 8, !tbaa !143
  %22 = getelementptr inbounds i8, ptr %20, i64 -12
  store i32 %10, ptr %22, align 4, !tbaa !130
  br label %23

23:                                               ; preds = %15, %4
  %24 = phi ptr [ %20, %15 ], [ null, %4 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.156, i32 noundef %10)
  %27 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7, i32 3
  store ptr %24, ptr %27, align 8, !tbaa !143
  br label %44

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7, i32 3
  store ptr %24, ptr %29, align 8, !tbaa !143
  %30 = mul nsw i32 %3, %2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, ptr %24, i64 %31
  %33 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7, i32 3, i64 1
  store ptr %32, ptr %33, align 8, !tbaa !143
  %34 = sdiv i32 %30, 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %32, i64 %35
  %37 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7, i32 3, i64 2
  store ptr %36, ptr %37, align 8, !tbaa !143
  %38 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7, i32 2
  store i32 %2, ptr %38, align 8, !tbaa !130
  %39 = sdiv i32 %2, 2
  %40 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7, i32 2, i64 1
  store i32 %39, ptr %40, align 4, !tbaa !130
  %41 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7, i32 2, i64 2
  store i32 %39, ptr %41, align 8, !tbaa !130
  %42 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 6
  store ptr null, ptr %42, align 8, !tbaa !194
  %43 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 2
  store i32 0, ptr %43, align 8, !tbaa !195
  br label %44

44:                                               ; preds = %26, %28
  %45 = phi i32 [ 0, %28 ], [ -1, %26 ]
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define dso_local ptr @x264_malloc(i32 noundef %0) local_unnamed_addr #4 {
  %2 = sext i32 %0 to i64
  %3 = add nsw i64 %2, 27
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #23
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %4, i64 27
  %8 = ptrtoint ptr %7 to i64
  %9 = and i64 %8, 15
  %10 = sub nsw i64 0, %9
  %11 = getelementptr inbounds i8, ptr %7, i64 %10
  %12 = getelementptr inbounds i8, ptr %11, i64 -8
  store ptr %4, ptr %12, align 8, !tbaa !143
  %13 = getelementptr inbounds i8, ptr %11, i64 -12
  store i32 %0, ptr %13, align 4, !tbaa !130
  br label %14

14:                                               ; preds = %6, %1
  %15 = phi ptr [ %11, %6 ], [ null, %1 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.156, i32 noundef %0)
  br label %18

18:                                               ; preds = %17, %14
  ret ptr %15
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @x264_picture_clean(ptr nocapture noundef %0) local_unnamed_addr #16 {
  %2 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 7, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !143
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds ptr, ptr %3, i64 -1
  %7 = load ptr, ptr %6, align 8, !tbaa !143
  tail call void @free(ptr noundef %7) #24
  br label %8

8:                                                ; preds = %1, %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @x264_free(ptr noundef readonly %0) local_unnamed_addr #16 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds ptr, ptr %0, i64 -1
  %5 = load ptr, ptr %4, align 8, !tbaa !143
  tail call void @free(ptr noundef %5) #24
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @x264_nal_encode(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #17 {
  %5 = getelementptr inbounds %struct.x264_nal_t, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !196
  %7 = getelementptr inbounds %struct.x264_nal_t, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !198
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %6, i64 %9
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 0, ptr %0, align 1, !tbaa !35
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %15, %14 ], [ %0, %12 ]
  %18 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 0, ptr %17, align 1, !tbaa !35
  %19 = getelementptr inbounds i8, ptr %17, i64 2
  store i8 0, ptr %18, align 1, !tbaa !35
  %20 = getelementptr inbounds i8, ptr %17, i64 3
  store i8 1, ptr %19, align 1, !tbaa !35
  br label %23

21:                                               ; preds = %4
  %22 = getelementptr inbounds i8, ptr %0, i64 4
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi ptr [ %20, %16 ], [ %22, %21 ]
  %25 = load i32, ptr %1, align 8, !tbaa !199
  %26 = shl i32 %25, 5
  %27 = getelementptr inbounds %struct.x264_nal_t, ptr %1, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !200
  %29 = or i32 %26, %28
  %30 = trunc i32 %29 to i8
  store i8 %30, ptr %24, align 1, !tbaa !35
  %31 = getelementptr inbounds i8, ptr %24, i64 1
  %32 = icmp sgt i32 %8, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %23, %44
  %34 = phi ptr [ %52, %44 ], [ %31, %23 ]
  %35 = phi ptr [ %46, %44 ], [ %24, %23 ]
  %36 = phi i32 [ %50, %44 ], [ 0, %23 ]
  %37 = phi ptr [ %51, %44 ], [ %6, %23 ]
  %38 = icmp eq i32 %36, 2
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i8, ptr %37, align 1, !tbaa !35
  %41 = icmp ult i8 %40, 4
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = getelementptr inbounds i8, ptr %35, i64 2
  store i8 3, ptr %34, align 1, !tbaa !35
  br label %44

44:                                               ; preds = %42, %39, %33
  %45 = phi i32 [ 0, %42 ], [ 2, %39 ], [ %36, %33 ]
  %46 = phi ptr [ %43, %42 ], [ %34, %39 ], [ %34, %33 ]
  %47 = load i8, ptr %37, align 1, !tbaa !35
  %48 = icmp eq i8 %47, 0
  %49 = add nsw i32 %45, 1
  %50 = select i1 %48, i32 %49, i32 0
  %51 = getelementptr inbounds i8, ptr %37, i64 1
  store i8 %47, ptr %46, align 1, !tbaa !35
  %52 = getelementptr inbounds i8, ptr %46, i64 1
  %53 = icmp ult ptr %51, %10
  br i1 %53, label %33, label %54, !llvm.loop !201

54:                                               ; preds = %44, %23
  %55 = phi ptr [ %31, %23 ], [ %52, %44 ]
  %56 = ptrtoint ptr %55 to i64
  %57 = ptrtoint ptr %0 to i64
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  br i1 %11, label %60, label %72

60:                                               ; preds = %54
  %61 = add i32 %59, -4
  %62 = lshr i32 %61, 24
  %63 = trunc i32 %62 to i8
  store i8 %63, ptr %0, align 1, !tbaa !35
  %64 = lshr i32 %61, 16
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %65, ptr %66, align 1, !tbaa !35
  %67 = lshr i32 %61, 8
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %68, ptr %69, align 1, !tbaa !35
  %70 = trunc i32 %61 to i8
  %71 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %70, ptr %71, align 1, !tbaa !35
  br label %72

72:                                               ; preds = %60, %54
  ret i32 %59
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @x264_reduce_fraction(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #18 {
  %3 = load i32, ptr %0, align 4, !tbaa !130
  %4 = load i32, ptr %1, align 4, !tbaa !130
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
  br i1 %15, label %16, label %11, !llvm.loop !202

16:                                               ; preds = %11, %8
  %17 = phi i32 [ %4, %8 ], [ %12, %11 ]
  %18 = udiv i32 %3, %17
  store i32 %18, ptr %0, align 4, !tbaa !130
  %19 = load i32, ptr %1, align 4, !tbaa !130
  %20 = udiv i32 %19, %17
  store i32 %20, ptr %1, align 4, !tbaa !130
  br label %21

21:                                               ; preds = %2, %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @x264_slurp_file(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = tail call noalias ptr @fopen64(ptr noundef %0, ptr noundef nonnull @.str.157)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %58, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @fseek(ptr noundef nonnull %2, i64 noundef 0, i32 noundef 2)
  %6 = tail call i64 @ftell(ptr noundef nonnull %2)
  %7 = trunc i64 %6 to i32
  %8 = icmp slt i32 %7, 1
  %9 = icmp slt i32 %5, 0
  %10 = or i1 %9, %8
  %11 = zext i1 %10 to i32
  %12 = tail call i32 @fseek(ptr noundef nonnull %2, i64 noundef 0, i32 noundef 0)
  %13 = lshr i32 %12, 31
  %14 = or i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %58

16:                                               ; preds = %4
  %17 = add nsw i32 %7, 2
  %18 = shl i64 %6, 32
  %19 = ashr exact i64 %18, 32
  %20 = add nsw i64 %19, 29
  %21 = tail call noalias ptr @malloc(i64 noundef %20) #23
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds i8, ptr %21, i64 27
  %25 = ptrtoint ptr %24 to i64
  %26 = and i64 %25, 15
  %27 = sub nsw i64 0, %26
  %28 = getelementptr inbounds i8, ptr %24, i64 %27
  %29 = getelementptr inbounds i8, ptr %28, i64 -8
  store ptr %21, ptr %29, align 8, !tbaa !143
  %30 = getelementptr inbounds i8, ptr %28, i64 -12
  store i32 %17, ptr %30, align 4, !tbaa !130
  br label %31

31:                                               ; preds = %23, %16
  %32 = phi ptr [ %28, %23 ], [ null, %16 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.156, i32 noundef %17)
  br label %58

35:                                               ; preds = %31
  %36 = shl i64 %6, 32
  %37 = ashr exact i64 %36, 32
  %38 = tail call i64 @fread(ptr noundef nonnull %32, i64 noundef 1, i64 noundef %37, ptr noundef nonnull %2)
  %39 = trunc i64 %38 to i32
  %40 = icmp eq i32 %39, %7
  %41 = add i64 %36, -4294967296
  %42 = ashr exact i64 %41, 32
  %43 = getelementptr inbounds i8, ptr %32, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !35
  %45 = icmp eq i8 %44, 10
  br i1 %45, label %49, label %46

46:                                               ; preds = %35
  %47 = add i64 %6, 1
  %48 = getelementptr inbounds i8, ptr %32, i64 %37
  store i8 10, ptr %48, align 1, !tbaa !35
  br label %49

49:                                               ; preds = %46, %35
  %50 = phi i64 [ %47, %46 ], [ %6, %35 ]
  %51 = shl i64 %50, 32
  %52 = ashr exact i64 %51, 32
  %53 = getelementptr inbounds i8, ptr %32, i64 %52
  store i8 0, ptr %53, align 1, !tbaa !35
  %54 = tail call i32 @fclose(ptr noundef nonnull %2)
  br i1 %40, label %58, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds ptr, ptr %32, i64 -1
  %57 = load ptr, ptr %56, align 8, !tbaa !143
  tail call void @free(ptr noundef %57) #24
  br label %58

58:                                               ; preds = %34, %49, %4, %1, %55
  %59 = phi ptr [ null, %55 ], [ null, %1 ], [ null, %4 ], [ null, %34 ], [ %32, %49 ]
  ret ptr %59
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local ptr @x264_param2string(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42
  %4 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 27
  %5 = load ptr, ptr %4, align 8, !tbaa !185
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #22
  %9 = trunc i64 %8 to i32
  %10 = add i32 %9, 1000
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i32 [ %10, %7 ], [ 1000, %2 ]
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, 27
  %15 = tail call noalias ptr @malloc(i64 noundef %14) #23
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds i8, ptr %15, i64 27
  %19 = ptrtoint ptr %18 to i64
  %20 = and i64 %19, 15
  %21 = sub nsw i64 0, %20
  %22 = getelementptr inbounds i8, ptr %18, i64 %21
  %23 = getelementptr inbounds i8, ptr %22, i64 -8
  store ptr %15, ptr %23, align 8, !tbaa !143
  %24 = getelementptr inbounds i8, ptr %22, i64 -12
  store i32 %12, ptr %24, align 4, !tbaa !130
  br label %25

25:                                               ; preds = %17, %11
  %26 = phi ptr [ %22, %17 ], [ null, %11 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.156, i32 noundef %12)
  br label %439

29:                                               ; preds = %25
  %30 = icmp eq i32 %1, 0
  br i1 %30, label %53, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !50
  %34 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  %35 = load i32, ptr %34, align 8, !tbaa !51
  %36 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(1) @.str.158, i32 noundef %33, i32 noundef %35) #24
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %26, i64 %37
  %39 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 48
  %40 = load i32, ptr %39, align 4, !tbaa !61
  %41 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 49
  %42 = load i32, ptr %41, align 8, !tbaa !62
  %43 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(1) @.str.159, i32 noundef %40, i32 noundef %42) #24
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %38, i64 %44
  %46 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 50
  %47 = load i32, ptr %46, align 4, !tbaa !203
  %48 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 51
  %49 = load i32, ptr %48, align 8, !tbaa !204
  %50 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %45, ptr noundef nonnull dereferenceable(1) @.str.160, i32 noundef %47, i32 noundef %49) #24
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %45, i64 %51
  br label %53

53:                                               ; preds = %31, %29
  %54 = phi ptr [ %52, %31 ], [ %26, %29 ]
  %55 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  %56 = load i32, ptr %55, align 8, !tbaa !80
  %57 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(1) @.str.161, i32 noundef %56) #24
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %54, i64 %58
  %60 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  %61 = load i32, ptr %60, align 8, !tbaa !67
  %62 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(1) @.str.162, i32 noundef %61) #24
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %59, i64 %63
  %65 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 21
  %66 = load i32, ptr %65, align 4, !tbaa !77
  %67 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 22
  %68 = load i32, ptr %67, align 8, !tbaa !78
  %69 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 23
  %70 = load i32, ptr %69, align 4, !tbaa !79
  %71 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %64, ptr noundef nonnull dereferenceable(1) @.str.163, i32 noundef %66, i32 noundef %68, i32 noundef %70) #24
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %64, i64 %72
  %74 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41
  %75 = load i32, ptr %74, align 8, !tbaa !110
  %76 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !111
  %78 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %73, ptr noundef nonnull dereferenceable(1) @.str.164, i32 noundef %75, i32 noundef %77) #24
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, ptr %73, i64 %79
  %81 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  %82 = load i32, ptr %81, align 4, !tbaa !113
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [6 x ptr], ptr @x264_motion_est_names, i64 0, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !143
  %86 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %80, ptr noundef nonnull dereferenceable(1) @.str.165, ptr noundef %85) #24
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, ptr %80, i64 %87
  %89 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  %90 = load i32, ptr %89, align 4, !tbaa !118
  %91 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %88, ptr noundef nonnull dereferenceable(1) @.str.166, i32 noundef %90) #24
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, ptr %88, i64 %92
  %94 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 20
  %95 = load i32, ptr %94, align 8, !tbaa !115
  %96 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %93, ptr noundef nonnull dereferenceable(1) @.str.167, i32 noundef %95) #24
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, ptr %93, i64 %97
  %99 = load i32, ptr %94, align 8, !tbaa !115
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %53
  %102 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 18
  %103 = load float, ptr %102, align 8, !tbaa !114
  %104 = fpext float %103 to double
  %105 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 19
  %106 = load float, ptr %105, align 4, !tbaa !116
  %107 = fpext float %106 to double
  %108 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %98, ptr noundef nonnull dereferenceable(1) @.str.168, double noundef %104, double noundef %107) #24
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, ptr %98, i64 %109
  br label %111

111:                                              ; preds = %101, %53
  %112 = phi ptr [ %110, %101 ], [ %98, %53 ]
  %113 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 13
  %114 = load i32, ptr %113, align 4, !tbaa !119
  %115 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %112, ptr noundef nonnull dereferenceable(1) @.str.169, i32 noundef %114) #24
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, ptr %112, i64 %116
  %118 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 8
  %119 = load i32, ptr %118, align 8, !tbaa !117
  %120 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(1) @.str.170, i32 noundef %119) #24
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, ptr %117, i64 %121
  %123 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 12
  %124 = load i32, ptr %123, align 8, !tbaa !120
  %125 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %122, ptr noundef nonnull dereferenceable(1) @.str.171, i32 noundef %124) #24
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, ptr %122, i64 %126
  %128 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  %129 = load i32, ptr %128, align 8, !tbaa !129
  %130 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %127, ptr noundef nonnull dereferenceable(1) @.str.172, i32 noundef %129) #24
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, ptr %127, i64 %131
  %133 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 2
  %134 = load i32, ptr %133, align 8, !tbaa !128
  %135 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %132, ptr noundef nonnull dereferenceable(1) @.str.173, i32 noundef %134) #24
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, ptr %132, i64 %136
  %138 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  %139 = load i32, ptr %138, align 8, !tbaa !133
  %140 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %137, ptr noundef nonnull dereferenceable(1) @.str.174, i32 noundef %139) #24
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, ptr %137, i64 %141
  %143 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 21
  %144 = load i32, ptr %143, align 4, !tbaa !130
  %145 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 21, i64 1
  %146 = load i32, ptr %145, align 4, !tbaa !130
  %147 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %142, ptr noundef nonnull dereferenceable(1) @.str.175, i32 noundef %144, i32 noundef %146) #24
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, ptr %142, i64 %148
  %150 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 15
  %151 = load i32, ptr %150, align 4, !tbaa !124
  %152 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %149, ptr noundef nonnull dereferenceable(1) @.str.176, i32 noundef %151) #24
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, ptr %149, i64 %153
  %155 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 6
  %156 = load i32, ptr %155, align 8, !tbaa !123
  %157 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %154, ptr noundef nonnull dereferenceable(1) @.str.177, i32 noundef %156) #24
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, ptr %154, i64 %158
  %160 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %161 = load i32, ptr %160, align 4, !tbaa !46
  %162 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %159, ptr noundef nonnull dereferenceable(1) @.str.178, i32 noundef %161) #24
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, ptr %159, i64 %163
  %165 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 2
  %166 = load i32, ptr %165, align 8, !tbaa !144
  %167 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %164, ptr noundef nonnull dereferenceable(1) @.str.179, i32 noundef %166) #24
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, ptr %164, i64 %168
  %170 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 58
  %171 = load i32, ptr %170, align 4, !tbaa !66
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %111
  %174 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %169, ptr noundef nonnull dereferenceable(1) @.str.180, i32 noundef %171) #24
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, ptr %169, i64 %175
  br label %177

177:                                              ; preds = %173, %111
  %178 = phi ptr [ %176, %173 ], [ %169, %111 ]
  %179 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 56
  %180 = load i32, ptr %179, align 4, !tbaa !64
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %177
  %183 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %178, ptr noundef nonnull dereferenceable(1) @.str.181, i32 noundef %180) #24
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, ptr %178, i64 %184
  br label %186

186:                                              ; preds = %182, %177
  %187 = phi ptr [ %185, %182 ], [ %178, %177 ]
  %188 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 57
  %189 = load i32, ptr %188, align 8, !tbaa !65
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %186
  %192 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %187, ptr noundef nonnull dereferenceable(1) @.str.182, i32 noundef %189) #24
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, ptr %187, i64 %193
  br label %195

195:                                              ; preds = %191, %186
  %196 = phi ptr [ %194, %191 ], [ %187, %186 ]
  %197 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 17
  %198 = load i32, ptr %197, align 4, !tbaa !183
  %199 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %196, ptr noundef nonnull dereferenceable(1) @.str.183, i32 noundef %198) #24
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, ptr %196, i64 %200
  %202 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 16
  %203 = load i32, ptr %202, align 8, !tbaa !127
  %204 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %201, ptr noundef nonnull dereferenceable(1) @.str.184, i32 noundef %203) #24
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, ptr %201, i64 %205
  %207 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  %208 = load i32, ptr %207, align 8, !tbaa !75
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %195
  %211 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 53
  %212 = load i32, ptr %211, align 8, !tbaa !140
  %213 = icmp eq i32 %212, 0
  %214 = select i1 %213, ptr @.str.57, ptr @.str.56
  br label %215

215:                                              ; preds = %195, %210
  %216 = phi ptr [ %214, %210 ], [ @.str.186, %195 ]
  %217 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %206, ptr noundef nonnull dereferenceable(1) @.str.185, ptr noundef nonnull %216) #24
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, ptr %206, i64 %218
  %220 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 27
  %221 = load i32, ptr %220, align 4, !tbaa !76
  %222 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %219, ptr noundef nonnull dereferenceable(1) @.str.187, i32 noundef %221) #24
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, ptr %219, i64 %223
  %225 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  %226 = load i32, ptr %225, align 4, !tbaa !70
  %227 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %224, ptr noundef nonnull dereferenceable(1) @.str.188, i32 noundef %226) #24
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, ptr %224, i64 %228
  %230 = load i32, ptr %225, align 4, !tbaa !70
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %246, label %232

232:                                              ; preds = %215
  %233 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 20
  %234 = load i32, ptr %233, align 8, !tbaa !74
  %235 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 18
  %236 = load i32, ptr %235, align 8, !tbaa !72
  %237 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 19
  %238 = load i32, ptr %237, align 4, !tbaa !73
  %239 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  %240 = load i32, ptr %239, align 4, !tbaa !112
  %241 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 4
  %242 = load i32, ptr %241, align 8, !tbaa !125
  %243 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %229, ptr noundef nonnull dereferenceable(1) @.str.189, i32 noundef %234, i32 noundef %236, i32 noundef %238, i32 noundef %240, i32 noundef %242) #24
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, ptr %229, i64 %244
  br label %246

246:                                              ; preds = %232, %215
  %247 = phi ptr [ %245, %232 ], [ %229, %215 ]
  %248 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  %249 = load i32, ptr %248, align 4, !tbaa !126
  %250 = tail call i32 @llvm.smax.i32(i32 %249, i32 0)
  %251 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %247, ptr noundef nonnull dereferenceable(1) @.str.190, i32 noundef %250) #24
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, ptr %247, i64 %252
  %254 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 13
  %255 = load i32, ptr %254, align 4, !tbaa !68
  %256 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 14
  %257 = load i32, ptr %256, align 8, !tbaa !69
  %258 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 15
  %259 = load i32, ptr %258, align 4, !tbaa !71
  %260 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 16
  %261 = load i32, ptr %260, align 8, !tbaa !180
  %262 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %253, ptr noundef nonnull dereferenceable(1) @.str.191, i32 noundef %255, i32 noundef %257, i32 noundef %259, i32 noundef %261) #24
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, ptr %253, i64 %263
  %265 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  %266 = load i32, ptr %265, align 8, !tbaa !106
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %246
  %269 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 10
  %270 = load i32, ptr %269, align 8, !tbaa !86
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %278, label %272

272:                                              ; preds = %268, %246
  %273 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  %274 = load i32, ptr %273, align 4, !tbaa !97
  %275 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %264, ptr noundef nonnull dereferenceable(1) @.str.192, i32 noundef %274) #24
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8, ptr %264, i64 %276
  br label %278

278:                                              ; preds = %272, %268
  %279 = phi ptr [ %277, %272 ], [ %264, %268 ]
  %280 = load i32, ptr %3, align 8, !tbaa !82
  %281 = icmp eq i32 %280, 2
  br i1 %281, label %282, label %293

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  %284 = load i32, ptr %283, align 8, !tbaa !100
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %296

286:                                              ; preds = %282
  %287 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 9
  %288 = load i32, ptr %287, align 4, !tbaa !85
  %289 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 5
  %290 = load i32, ptr %289, align 4, !tbaa !83
  %291 = icmp eq i32 %288, %290
  %292 = select i1 %291, ptr @.str.195, ptr @.str.196
  br label %296

293:                                              ; preds = %278
  %294 = icmp eq i32 %280, 1
  %295 = select i1 %294, ptr @.str.117, ptr @.str.197
  br label %296

296:                                              ; preds = %286, %282, %293
  %297 = phi ptr [ %295, %293 ], [ %292, %286 ], [ @.str.194, %282 ]
  %298 = load i32, ptr %265, align 8, !tbaa !106
  %299 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %279, ptr noundef nonnull dereferenceable(1) @.str.193, ptr noundef nonnull %297, i32 noundef %298) #24
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, ptr %279, i64 %300
  %302 = load i32, ptr %3, align 8, !tbaa !82
  switch i32 %302, label %370 [
    i32 0, label %364
    i32 1, label %303
    i32 2, label %308
  ]

303:                                              ; preds = %296
  %304 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 6
  %305 = load float, ptr %304, align 8, !tbaa !89
  %306 = fpext float %305 to double
  %307 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %301, ptr noundef nonnull dereferenceable(1) @.str.198, double noundef %306) #24
  br label %315

308:                                              ; preds = %296
  %309 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 5
  %310 = load i32, ptr %309, align 4, !tbaa !83
  %311 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 8
  %312 = load float, ptr %311, align 8, !tbaa !84
  %313 = fpext float %312 to double
  %314 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %301, ptr noundef nonnull dereferenceable(1) @.str.199, i32 noundef %310, double noundef %313) #24
  br label %315

315:                                              ; preds = %308, %303
  %316 = phi i32 [ %307, %303 ], [ %314, %308 ]
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i8, ptr %301, i64 %317
  %319 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 22
  %320 = load float, ptr %319, align 8, !tbaa !102
  %321 = fpext float %320 to double
  %322 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 2
  %323 = load i32, ptr %322, align 8, !tbaa !90
  %324 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 3
  %325 = load i32, ptr %324, align 4, !tbaa !91
  %326 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 4
  %327 = load i32, ptr %326, align 8, !tbaa !92
  %328 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %318, ptr noundef nonnull dereferenceable(1) @.str.200, double noundef %321, i32 noundef %323, i32 noundef %325, i32 noundef %327) #24
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i8, ptr %318, i64 %329
  %331 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  %332 = load i32, ptr %331, align 8, !tbaa !100
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %344, label %334

334:                                              ; preds = %315
  %335 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 24
  %336 = load float, ptr %335, align 8, !tbaa !104
  %337 = fpext float %336 to double
  %338 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 23
  %339 = load float, ptr %338, align 4, !tbaa !103
  %340 = fpext float %339 to double
  %341 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %330, ptr noundef nonnull dereferenceable(1) @.str.201, double noundef %337, double noundef %340) #24
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8, ptr %330, i64 %342
  br label %344

344:                                              ; preds = %334, %315
  %345 = phi ptr [ %343, %334 ], [ %330, %315 ]
  %346 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 10
  %347 = load i32, ptr %346, align 8, !tbaa !86
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %370, label %349

349:                                              ; preds = %344
  %350 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 9
  %351 = load i32, ptr %350, align 4, !tbaa !85
  %352 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %345, ptr noundef nonnull dereferenceable(1) @.str.202, i32 noundef %351, i32 noundef %347) #24
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i8, ptr %345, i64 %353
  %355 = load i32, ptr %3, align 8, !tbaa !82
  %356 = icmp eq i32 %355, 1
  br i1 %356, label %357, label %370

357:                                              ; preds = %349
  %358 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 7
  %359 = load float, ptr %358, align 4, !tbaa !184
  %360 = fpext float %359 to double
  %361 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %354, ptr noundef nonnull dereferenceable(1) @.str.203, double noundef %360) #24
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i8, ptr %354, i64 %362
  br label %370

364:                                              ; preds = %296
  %365 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 1
  %366 = load i32, ptr %365, align 4, !tbaa !88
  %367 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %301, ptr noundef nonnull dereferenceable(1) @.str.204, i32 noundef %366) #24
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i8, ptr %301, i64 %368
  br label %370

370:                                              ; preds = %296, %364, %344, %357, %349
  %371 = phi ptr [ %363, %357 ], [ %354, %349 ], [ %345, %344 ], [ %369, %364 ], [ %301, %296 ]
  %372 = load i32, ptr %3, align 8, !tbaa !82
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %378

374:                                              ; preds = %370
  %375 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 1
  %376 = load i32, ptr %375, align 4, !tbaa !88
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %427, label %378

378:                                              ; preds = %374, %370
  %379 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 12
  %380 = load float, ptr %379, align 8, !tbaa !93
  %381 = fpext float %380 to double
  %382 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %371, ptr noundef nonnull dereferenceable(1) @.str.205, double noundef %381) #24
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i8, ptr %371, i64 %383
  %385 = load i32, ptr %225, align 4, !tbaa !70
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %397, label %387

387:                                              ; preds = %378
  %388 = load i32, ptr %265, align 8, !tbaa !106
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %397

390:                                              ; preds = %387
  %391 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 13
  %392 = load float, ptr %391, align 4, !tbaa !94
  %393 = fpext float %392 to double
  %394 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %384, ptr noundef nonnull dereferenceable(1) @.str.206, double noundef %393) #24
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i8, ptr %384, i64 %395
  br label %397

397:                                              ; preds = %390, %387, %378
  %398 = phi ptr [ %384, %387 ], [ %396, %390 ], [ %384, %378 ]
  %399 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 14
  %400 = load i32, ptr %399, align 8, !tbaa !95
  %401 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %398, ptr noundef nonnull dereferenceable(1) @.str.207, i32 noundef %400) #24
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i8, ptr %398, i64 %402
  %404 = load i32, ptr %399, align 8, !tbaa !95
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %413, label %406

406:                                              ; preds = %397
  %407 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 15
  %408 = load float, ptr %407, align 4, !tbaa !96
  %409 = fpext float %408 to double
  %410 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %403, ptr noundef nonnull dereferenceable(1) @.str.208, double noundef %409) #24
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i8, ptr %403, i64 %411
  br label %413

413:                                              ; preds = %406, %397
  %414 = phi ptr [ %412, %406 ], [ %403, %397 ]
  %415 = load ptr, ptr %4, align 8, !tbaa !185
  %416 = icmp eq ptr %415, null
  br i1 %416, label %421, label %417

417:                                              ; preds = %413
  %418 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %414, ptr noundef nonnull dereferenceable(1) @.str.209, ptr noundef nonnull %415) #24
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i8, ptr %414, i64 %419
  br label %427

421:                                              ; preds = %413
  %422 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 26
  %423 = load i32, ptr %422, align 8, !tbaa !105
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %427, label %425

425:                                              ; preds = %421
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %414, ptr noundef nonnull align 1 dereferenceable(7) @.str.210, i64 7, i1 false)
  %426 = getelementptr inbounds i8, ptr %414, i64 6
  br label %427

427:                                              ; preds = %417, %425, %421, %374
  %428 = phi ptr [ %371, %374 ], [ %420, %417 ], [ %426, %425 ], [ %414, %421 ]
  %429 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 10
  %430 = load i32, ptr %429, align 8, !tbaa !86
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %439, label %432

432:                                              ; preds = %427
  %433 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 10
  %434 = load i32, ptr %433, align 8, !tbaa !139
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds [4 x ptr], ptr @x264_nal_hrd_names, i64 0, i64 %435
  %437 = load ptr, ptr %436, align 8, !tbaa !143
  %438 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %428, ptr noundef nonnull dereferenceable(1) @.str.211, ptr noundef %437) #24
  br label %439

439:                                              ; preds = %28, %427, %432
  %440 = phi ptr [ null, %28 ], [ %26, %432 ], [ %26, %427 ]
  ret ptr %440
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

attributes #0 = { mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #16 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind }
attributes #25 = { cold }
attributes #26 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 11233431}
!8 = !{!"MaxCount", i64 921600}
!9 = !{!"MaxInternalCount", i64 921600}
!10 = !{!"MaxFunctionCount", i64 921600}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 921600, i32 8}
!18 = !{i32 100000, i64 921600, i32 8}
!19 = !{i32 200000, i64 921600, i32 8}
!20 = !{i32 300000, i64 921600, i32 8}
!21 = !{i32 400000, i64 921600, i32 8}
!22 = !{i32 500000, i64 921600, i32 8}
!23 = !{i32 600000, i64 921600, i32 8}
!24 = !{i32 700000, i64 915762, i32 9}
!25 = !{i32 800000, i64 908579, i32 10}
!26 = !{i32 900000, i64 460800, i32 13}
!27 = !{i32 950000, i64 460800, i32 13}
!28 = !{i32 990000, i64 115200, i32 14}
!29 = !{i32 999000, i64 12790, i32 20}
!30 = !{i32 999900, i64 536, i32 29}
!31 = !{i32 999990, i64 90, i32 32}
!32 = !{i32 999999, i64 1, i32 66}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"instr_prof_hash_mismatch"}
!35 = !{!36, !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 0}
!39 = !{!"x264_param_t", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !41, i64 44, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !40, i64 136, !40, i64 140, !40, i64 144, !42, i64 152, !36, i64 160, !36, i64 176, !36, i64 192, !36, i64 208, !36, i64 224, !36, i64 288, !42, i64 352, !42, i64 360, !40, i64 368, !40, i64 372, !42, i64 376, !43, i64 384, !45, i64 488, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !40, i64 648, !40, i64 652, !40, i64 656, !40, i64 660, !40, i64 664, !40, i64 668, !40, i64 672, !40, i64 676, !40, i64 680, !40, i64 684, !40, i64 688, !40, i64 692, !42, i64 696}
!40 = !{!"int", !36, i64 0}
!41 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32}
!42 = !{!"any pointer", !36, i64 0}
!43 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !44, i64 72, !44, i64 76, !40, i64 80, !36, i64 84, !40, i64 92, !40, i64 96}
!44 = !{!"float", !36, i64 0}
!45 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !40, i64 36, !40, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !40, i64 56, !44, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !42, i64 80, !40, i64 88, !42, i64 96, !44, i64 104, !44, i64 108, !44, i64 112, !42, i64 120, !40, i64 128, !42, i64 136}
!46 = !{!39, !40, i64 4}
!47 = !{!39, !40, i64 12}
!48 = !{!39, !40, i64 16}
!49 = !{!39, !40, i64 28}
!50 = !{!39, !40, i64 20}
!51 = !{!39, !40, i64 24}
!52 = !{!39, !40, i64 48}
!53 = !{!39, !40, i64 44}
!54 = !{!39, !40, i64 52}
!55 = !{!39, !40, i64 56}
!56 = !{!39, !40, i64 60}
!57 = !{!39, !40, i64 64}
!58 = !{!39, !40, i64 68}
!59 = !{!39, !40, i64 72}
!60 = !{!39, !40, i64 76}
!61 = !{!39, !40, i64 652}
!62 = !{!39, !40, i64 656}
!63 = !{!39, !40, i64 32}
!64 = !{!39, !40, i64 684}
!65 = !{!39, !40, i64 688}
!66 = !{!39, !40, i64 692}
!67 = !{!39, !40, i64 80}
!68 = !{!39, !40, i64 84}
!69 = !{!39, !40, i64 88}
!70 = !{!39, !40, i64 100}
!71 = !{!39, !40, i64 92}
!72 = !{!39, !40, i64 104}
!73 = !{!39, !40, i64 108}
!74 = !{!39, !40, i64 112}
!75 = !{!39, !40, i64 136}
!76 = !{!39, !40, i64 140}
!77 = !{!39, !40, i64 116}
!78 = !{!39, !40, i64 120}
!79 = !{!39, !40, i64 124}
!80 = !{!39, !40, i64 128}
!81 = !{!39, !40, i64 132}
!82 = !{!39, !40, i64 488}
!83 = !{!39, !40, i64 508}
!84 = !{!39, !44, i64 520}
!85 = !{!39, !40, i64 524}
!86 = !{!39, !40, i64 528}
!87 = !{!39, !44, i64 532}
!88 = !{!39, !40, i64 492}
!89 = !{!39, !44, i64 512}
!90 = !{!39, !40, i64 496}
!91 = !{!39, !40, i64 500}
!92 = !{!39, !40, i64 504}
!93 = !{!39, !44, i64 536}
!94 = !{!39, !44, i64 540}
!95 = !{!39, !40, i64 544}
!96 = !{!39, !44, i64 548}
!97 = !{!39, !40, i64 556}
!98 = !{!39, !40, i64 560}
!99 = !{!39, !42, i64 568}
!100 = !{!39, !40, i64 576}
!101 = !{!39, !42, i64 584}
!102 = !{!39, !44, i64 592}
!103 = !{!39, !44, i64 596}
!104 = !{!39, !44, i64 600}
!105 = !{!39, !40, i64 616}
!106 = !{!39, !40, i64 552}
!107 = !{!39, !42, i64 352}
!108 = !{!39, !42, i64 360}
!109 = !{!39, !40, i64 368}
!110 = !{!39, !40, i64 384}
!111 = !{!39, !40, i64 388}
!112 = !{!39, !40, i64 404}
!113 = !{!39, !40, i64 412}
!114 = !{!39, !44, i64 456}
!115 = !{!39, !40, i64 464}
!116 = !{!39, !44, i64 460}
!117 = !{!39, !40, i64 416}
!118 = !{!39, !40, i64 428}
!119 = !{!39, !40, i64 436}
!120 = !{!39, !40, i64 432}
!121 = !{!39, !40, i64 424}
!122 = !{!39, !40, i64 420}
!123 = !{!39, !40, i64 408}
!124 = !{!39, !40, i64 444}
!125 = !{!39, !40, i64 400}
!126 = !{!39, !40, i64 396}
!127 = !{!39, !40, i64 448}
!128 = !{!39, !40, i64 392}
!129 = !{!39, !40, i64 440}
!130 = !{!40, !40, i64 0}
!131 = !{!39, !40, i64 476}
!132 = !{!39, !40, i64 480}
!133 = !{!39, !40, i64 144}
!134 = !{!39, !40, i64 636}
!135 = !{!39, !40, i64 640}
!136 = !{!39, !40, i64 632}
!137 = !{!39, !40, i64 648}
!138 = !{!39, !40, i64 668}
!139 = !{!39, !40, i64 40}
!140 = !{!39, !40, i64 672}
!141 = !{!39, !40, i64 676}
!142 = !{!39, !40, i64 680}
!143 = !{!42, !42, i64 0}
!144 = !{!39, !40, i64 8}
!145 = distinct !{!145, !146, !147}
!146 = !{!"llvm.loop.mustprogress"}
!147 = !{!"llvm.loop.unroll.disable"}
!148 = !{!149, !40, i64 368}
!149 = !{!"x264_t", !39, i64 0, !36, i64 704, !40, i64 1736, !40, i64 1740, !40, i64 1744, !40, i64 1748, !40, i64 1752, !150, i64 1760, !42, i64 1832, !40, i64 1840, !40, i64 1844, !40, i64 1848, !40, i64 1852, !40, i64 1856, !40, i64 1860, !40, i64 1864, !40, i64 1868, !40, i64 1872, !40, i64 1876, !40, i64 1880, !40, i64 1884, !40, i64 1888, !40, i64 1892, !36, i64 1896, !42, i64 3200, !36, i64 3208, !42, i64 3328, !40, i64 3336, !40, i64 3340, !36, i64 3344, !36, i64 3376, !36, i64 3392, !36, i64 3424, !36, i64 3440, !36, i64 3472, !36, i64 3488, !36, i64 3520, !36, i64 3536, !36, i64 4272, !42, i64 7216, !153, i64 7232, !154, i64 13904, !155, i64 14416, !42, i64 14680, !42, i64 14688, !40, i64 14696, !36, i64 14704, !40, i64 14856, !36, i64 14864, !36, i64 15016, !40, i64 15024, !40, i64 15028, !152, i64 15032, !156, i64 15040, !157, i64 16368, !42, i64 26704, !160, i64 26712, !36, i64 30400, !36, i64 30912, !36, i64 31168, !42, i64 31176, !36, i64 31184, !36, i64 31232, !36, i64 31248, !36, i64 31304, !36, i64 31360, !36, i64 31456, !42, i64 31552, !163, i64 31560, !164, i64 32616, !165, i64 32912, !166, i64 33032, !167, i64 33080, !168, i64 33256, !42, i64 33328}
!150 = !{!"", !40, i64 0, !40, i64 4, !42, i64 8, !40, i64 16, !42, i64 24, !151, i64 32}
!151 = !{!"bs_s", !42, i64 0, !42, i64 8, !42, i64 16, !152, i64 24, !40, i64 32, !40, i64 36}
!152 = !{!"long", !36, i64 0}
!153 = !{!"", !42, i64 0, !42, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !36, i64 60, !40, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !36, i64 96, !36, i64 352, !40, i64 6496, !40, i64 6500, !36, i64 6504, !40, i64 6632, !40, i64 6636, !40, i64 6640, !40, i64 6644, !40, i64 6648, !40, i64 6652, !40, i64 6656, !40, i64 6660}
!154 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !42, i64 16, !42, i64 24, !42, i64 32, !40, i64 48, !36, i64 52}
!155 = !{!"", !42, i64 0, !36, i64 8, !42, i64 24, !36, i64 32, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !40, i64 200, !152, i64 208, !152, i64 216, !36, i64 224, !152, i64 240, !152, i64 248, !40, i64 256, !40, i64 260}
!156 = !{!"", !36, i64 0, !36, i64 32, !36, i64 48, !36, i64 560}
!157 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !40, i64 120, !36, i64 124, !36, i64 140, !40, i64 204, !40, i64 208, !40, i64 212, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !42, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !42, i64 280, !42, i64 288, !42, i64 296, !36, i64 304, !36, i64 320, !36, i64 336, !36, i64 352, !42, i64 864, !42, i64 872, !42, i64 880, !36, i64 888, !40, i64 1016, !40, i64 1020, !36, i64 1024, !40, i64 1028, !40, i64 1032, !40, i64 1036, !40, i64 1040, !40, i64 1044, !40, i64 1048, !40, i64 1052, !40, i64 1056, !40, i64 1060, !158, i64 1072, !159, i64 8656, !40, i64 9424, !40, i64 9428, !40, i64 9432, !40, i64 9436, !40, i64 9440, !40, i64 9444, !40, i64 9448, !40, i64 9452, !36, i64 9456, !40, i64 9472, !40, i64 9476, !36, i64 9480, !42, i64 9992, !36, i64 10000, !42, i64 10256, !36, i64 10264, !40, i64 10284, !36, i64 10288}
!158 = !{!"", !36, i64 0, !36, i64 384, !36, i64 1248, !36, i64 1504, !36, i64 1760, !36, i64 2144, !36, i64 2624, !36, i64 2640, !40, i64 2656, !40, i64 2660, !36, i64 2672, !36, i64 3184, !36, i64 3696, !36, i64 3776, !36, i64 3904, !36, i64 3928, !36, i64 3952, !36, i64 3976, !36, i64 3984, !36, i64 7056, !36, i64 7312, !36, i64 7568}
!159 = !{!"", !36, i64 0, !36, i64 48, !36, i64 96, !36, i64 176, !36, i64 496, !36, i64 656, !36, i64 696, !36, i64 728, !40, i64 736, !36, i64 740, !40, i64 744, !40, i64 748, !40, i64 752, !40, i64 756}
!160 = !{!"", !161, i64 0, !36, i64 704, !36, i64 728, !36, i64 768, !36, i64 808, !36, i64 880, !36, i64 920, !36, i64 960, !36, i64 1000, !36, i64 1040, !36, i64 1080, !36, i64 1120, !36, i64 1880, !36, i64 2152, !36, i64 2168, !36, i64 3192, !36, i64 3240, !36, i64 3656, !36, i64 3664, !36, i64 3672}
!161 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !36, i64 12, !40, i64 88, !40, i64 92, !40, i64 96, !36, i64 100, !36, i64 108, !36, i64 364, !36, i64 432, !36, i64 456, !36, i64 664, !36, i64 672, !162, i64 696}
!162 = !{!"double", !36, i64 0}
!163 = !{!"", !36, i64 0, !36, i64 56, !36, i64 112, !36, i64 168, !36, i64 224, !36, i64 256, !36, i64 312, !36, i64 368, !36, i64 424, !36, i64 480, !36, i64 536, !42, i64 592, !36, i64 600, !36, i64 632, !42, i64 664, !42, i64 672, !36, i64 680, !36, i64 736, !36, i64 792, !36, i64 848, !36, i64 904, !42, i64 960, !42, i64 968, !42, i64 976, !42, i64 984, !42, i64 992, !42, i64 1000, !42, i64 1008, !42, i64 1016, !42, i64 1024, !42, i64 1032, !42, i64 1040, !42, i64 1048}
!164 = !{!"", !42, i64 0, !42, i64 8, !42, i64 16, !36, i64 24, !36, i64 104, !42, i64 160, !42, i64 168, !42, i64 176, !42, i64 184, !42, i64 192, !42, i64 200, !42, i64 208, !42, i64 216, !42, i64 224, !42, i64 232, !42, i64 240, !42, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !42, i64 280, !42, i64 288}
!165 = !{!"", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112}
!166 = !{!"", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40}
!167 = !{!"", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !36, i64 88, !36, i64 136}
!168 = !{!"", !36, i64 0, !36, i64 16, !36, i64 32, !36, i64 48, !42, i64 64}
!169 = !{!149, !42, i64 352}
!170 = !{!149, !42, i64 360}
!171 = distinct !{!171, !146, !147}
!172 = !{i32 0, i32 2}
!173 = !{!174, !174, i64 0}
!174 = !{!"short", !36, i64 0}
!175 = !{!176, !40, i64 16}
!176 = !{!"", !36, i64 0, !40, i64 16}
!177 = distinct !{!177, !146, !147}
!178 = distinct !{!178, !146, !147}
!179 = distinct !{!179, !146, !147}
!180 = !{!39, !40, i64 96}
!181 = !{!39, !42, i64 152}
!182 = !{!39, !42, i64 376}
!183 = !{!39, !40, i64 452}
!184 = !{!39, !44, i64 516}
!185 = !{!39, !42, i64 624}
!186 = !{!39, !40, i64 644}
!187 = !{!188, !40, i64 0}
!188 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !152, i64 16, !152, i64 24, !42, i64 32, !189, i64 40, !190, i64 96, !42, i64 128}
!189 = !{!"", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 24}
!190 = !{!"", !162, i64 0, !162, i64 8, !162, i64 16, !162, i64 24}
!191 = !{!188, !40, i64 4}
!192 = !{!188, !40, i64 40}
!193 = !{!188, !40, i64 44}
!194 = !{!188, !42, i64 32}
!195 = !{!188, !40, i64 8}
!196 = !{!197, !42, i64 16}
!197 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !42, i64 16}
!198 = !{!197, !40, i64 8}
!199 = !{!197, !40, i64 0}
!200 = !{!197, !40, i64 4}
!201 = distinct !{!201, !146, !147}
!202 = distinct !{!202, !146, !147}
!203 = !{!39, !40, i64 660}
!204 = !{!39, !40, i64 664}
