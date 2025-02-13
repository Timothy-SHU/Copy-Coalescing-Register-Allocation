; ModuleID = 'x264_src/common/vlc.c'
source_filename = "x264_src/common/vlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.vlc_t = type { i8, i8 }
%struct.vlc_large_t = type { i16, i8, i8 }

@x264_coeff0_token = dso_local local_unnamed_addr constant [5 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 15, i8 4 }, %struct.vlc_t { i8 3, i8 6 }, %struct.vlc_t { i8 1, i8 2 }], align 1
@x264_coeff_token = dso_local local_unnamed_addr constant <{ [16 x [4 x %struct.vlc_t]], [16 x [4 x %struct.vlc_t]], [16 x [4 x %struct.vlc_t]], [16 x [4 x %struct.vlc_t]], <{ [4 x %struct.vlc_t], [4 x %struct.vlc_t], [4 x %struct.vlc_t], [4 x %struct.vlc_t], [12 x [4 x %struct.vlc_t]] }> }> <{ [16 x [4 x %struct.vlc_t]] [[4 x %struct.vlc_t] [%struct.vlc_t { i8 5, i8 6 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 8 }, %struct.vlc_t { i8 4, i8 6 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 9 }, %struct.vlc_t { i8 6, i8 8 }, %struct.vlc_t { i8 5, i8 7 }, %struct.vlc_t { i8 3, i8 5 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 10 }, %struct.vlc_t { i8 6, i8 9 }, %struct.vlc_t { i8 5, i8 8 }, %struct.vlc_t { i8 3, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 11 }, %struct.vlc_t { i8 6, i8 10 }, %struct.vlc_t { i8 5, i8 9 }, %struct.vlc_t { i8 4, i8 7 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 13 }, %struct.vlc_t { i8 6, i8 11 }, %struct.vlc_t { i8 5, i8 10 }, %struct.vlc_t { i8 4, i8 8 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 13 }, %struct.vlc_t { i8 14, i8 13 }, %struct.vlc_t { i8 5, i8 11 }, %struct.vlc_t { i8 4, i8 9 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 8, i8 13 }, %struct.vlc_t { i8 10, i8 13 }, %struct.vlc_t { i8 13, i8 13 }, %struct.vlc_t { i8 4, i8 10 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 14 }, %struct.vlc_t { i8 14, i8 14 }, %struct.vlc_t { i8 9, i8 13 }, %struct.vlc_t { i8 4, i8 11 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 14 }, %struct.vlc_t { i8 10, i8 14 }, %struct.vlc_t { i8 13, i8 14 }, %struct.vlc_t { i8 12, i8 13 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 15 }, %struct.vlc_t { i8 14, i8 15 }, %struct.vlc_t { i8 9, i8 14 }, %struct.vlc_t { i8 12, i8 14 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 15 }, %struct.vlc_t { i8 10, i8 15 }, %struct.vlc_t { i8 13, i8 15 }, %struct.vlc_t { i8 8, i8 14 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 16 }, %struct.vlc_t { i8 1, i8 15 }, %struct.vlc_t { i8 9, i8 15 }, %struct.vlc_t { i8 12, i8 15 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 16 }, %struct.vlc_t { i8 14, i8 16 }, %struct.vlc_t { i8 13, i8 16 }, %struct.vlc_t { i8 8, i8 15 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 16 }, %struct.vlc_t { i8 10, i8 16 }, %struct.vlc_t { i8 9, i8 16 }, %struct.vlc_t { i8 12, i8 16 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 4, i8 16 }, %struct.vlc_t { i8 6, i8 16 }, %struct.vlc_t { i8 5, i8 16 }, %struct.vlc_t { i8 8, i8 16 }]], [16 x [4 x %struct.vlc_t]] [[4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 6 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 6 }, %struct.vlc_t { i8 7, i8 5 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 7 }, %struct.vlc_t { i8 10, i8 6 }, %struct.vlc_t { i8 9, i8 6 }, %struct.vlc_t { i8 5, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 8 }, %struct.vlc_t { i8 6, i8 6 }, %struct.vlc_t { i8 5, i8 6 }, %struct.vlc_t { i8 4, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 4, i8 8 }, %struct.vlc_t { i8 6, i8 7 }, %struct.vlc_t { i8 5, i8 7 }, %struct.vlc_t { i8 6, i8 5 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 9 }, %struct.vlc_t { i8 6, i8 8 }, %struct.vlc_t { i8 5, i8 8 }, %struct.vlc_t { i8 8, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 11 }, %struct.vlc_t { i8 6, i8 9 }, %struct.vlc_t { i8 5, i8 9 }, %struct.vlc_t { i8 4, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 11 }, %struct.vlc_t { i8 14, i8 11 }, %struct.vlc_t { i8 13, i8 11 }, %struct.vlc_t { i8 4, i8 7 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 12 }, %struct.vlc_t { i8 10, i8 11 }, %struct.vlc_t { i8 9, i8 11 }, %struct.vlc_t { i8 4, i8 9 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 12 }, %struct.vlc_t { i8 14, i8 12 }, %struct.vlc_t { i8 13, i8 12 }, %struct.vlc_t { i8 12, i8 11 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 8, i8 12 }, %struct.vlc_t { i8 10, i8 12 }, %struct.vlc_t { i8 9, i8 12 }, %struct.vlc_t { i8 8, i8 11 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 13 }, %struct.vlc_t { i8 14, i8 13 }, %struct.vlc_t { i8 13, i8 13 }, %struct.vlc_t { i8 12, i8 12 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 13 }, %struct.vlc_t { i8 10, i8 13 }, %struct.vlc_t { i8 9, i8 13 }, %struct.vlc_t { i8 12, i8 13 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 13 }, %struct.vlc_t { i8 11, i8 14 }, %struct.vlc_t { i8 6, i8 13 }, %struct.vlc_t { i8 8, i8 13 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 9, i8 14 }, %struct.vlc_t { i8 8, i8 14 }, %struct.vlc_t { i8 10, i8 14 }, %struct.vlc_t { i8 1, i8 13 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 14 }, %struct.vlc_t { i8 6, i8 14 }, %struct.vlc_t { i8 5, i8 14 }, %struct.vlc_t { i8 4, i8 14 }]], [16 x [4 x %struct.vlc_t]] [[4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 6 }, %struct.vlc_t { i8 14, i8 4 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 6 }, %struct.vlc_t { i8 15, i8 5 }, %struct.vlc_t { i8 13, i8 4 }, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 8, i8 6 }, %struct.vlc_t { i8 12, i8 5 }, %struct.vlc_t { i8 14, i8 5 }, %struct.vlc_t { i8 12, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 7 }, %struct.vlc_t { i8 10, i8 5 }, %struct.vlc_t { i8 11, i8 5 }, %struct.vlc_t { i8 11, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 7 }, %struct.vlc_t { i8 8, i8 5 }, %struct.vlc_t { i8 9, i8 5 }, %struct.vlc_t { i8 10, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 9, i8 7 }, %struct.vlc_t { i8 14, i8 6 }, %struct.vlc_t { i8 13, i8 6 }, %struct.vlc_t { i8 9, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 8, i8 7 }, %struct.vlc_t { i8 10, i8 6 }, %struct.vlc_t { i8 9, i8 6 }, %struct.vlc_t { i8 8, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 8 }, %struct.vlc_t { i8 14, i8 7 }, %struct.vlc_t { i8 13, i8 7 }, %struct.vlc_t { i8 13, i8 5 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 8 }, %struct.vlc_t { i8 14, i8 8 }, %struct.vlc_t { i8 10, i8 7 }, %struct.vlc_t { i8 12, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 9 }, %struct.vlc_t { i8 10, i8 8 }, %struct.vlc_t { i8 13, i8 8 }, %struct.vlc_t { i8 12, i8 7 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 9 }, %struct.vlc_t { i8 14, i8 9 }, %struct.vlc_t { i8 9, i8 8 }, %struct.vlc_t { i8 12, i8 8 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 8, i8 9 }, %struct.vlc_t { i8 10, i8 9 }, %struct.vlc_t { i8 13, i8 9 }, %struct.vlc_t { i8 8, i8 8 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 13, i8 10 }, %struct.vlc_t { i8 7, i8 9 }, %struct.vlc_t { i8 9, i8 9 }, %struct.vlc_t { i8 12, i8 9 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 9, i8 10 }, %struct.vlc_t { i8 12, i8 10 }, %struct.vlc_t { i8 11, i8 10 }, %struct.vlc_t { i8 10, i8 10 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 5, i8 10 }, %struct.vlc_t { i8 8, i8 10 }, %struct.vlc_t { i8 7, i8 10 }, %struct.vlc_t { i8 6, i8 10 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 10 }, %struct.vlc_t { i8 4, i8 10 }, %struct.vlc_t { i8 3, i8 10 }, %struct.vlc_t { i8 2, i8 10 }]], [16 x [4 x %struct.vlc_t]] [[4 x %struct.vlc_t] [%struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 4, i8 6 }, %struct.vlc_t { i8 5, i8 6 }, %struct.vlc_t { i8 6, i8 6 }, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 8, i8 6 }, %struct.vlc_t { i8 9, i8 6 }, %struct.vlc_t { i8 10, i8 6 }, %struct.vlc_t { i8 11, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 12, i8 6 }, %struct.vlc_t { i8 13, i8 6 }, %struct.vlc_t { i8 14, i8 6 }, %struct.vlc_t { i8 15, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 16, i8 6 }, %struct.vlc_t { i8 17, i8 6 }, %struct.vlc_t { i8 18, i8 6 }, %struct.vlc_t { i8 19, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 20, i8 6 }, %struct.vlc_t { i8 21, i8 6 }, %struct.vlc_t { i8 22, i8 6 }, %struct.vlc_t { i8 23, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 24, i8 6 }, %struct.vlc_t { i8 25, i8 6 }, %struct.vlc_t { i8 26, i8 6 }, %struct.vlc_t { i8 27, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 28, i8 6 }, %struct.vlc_t { i8 29, i8 6 }, %struct.vlc_t { i8 30, i8 6 }, %struct.vlc_t { i8 31, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 32, i8 6 }, %struct.vlc_t { i8 33, i8 6 }, %struct.vlc_t { i8 34, i8 6 }, %struct.vlc_t { i8 35, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 36, i8 6 }, %struct.vlc_t { i8 37, i8 6 }, %struct.vlc_t { i8 38, i8 6 }, %struct.vlc_t { i8 39, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 40, i8 6 }, %struct.vlc_t { i8 41, i8 6 }, %struct.vlc_t { i8 42, i8 6 }, %struct.vlc_t { i8 43, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 44, i8 6 }, %struct.vlc_t { i8 45, i8 6 }, %struct.vlc_t { i8 46, i8 6 }, %struct.vlc_t { i8 47, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 48, i8 6 }, %struct.vlc_t { i8 49, i8 6 }, %struct.vlc_t { i8 50, i8 6 }, %struct.vlc_t { i8 51, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 52, i8 6 }, %struct.vlc_t { i8 53, i8 6 }, %struct.vlc_t { i8 54, i8 6 }, %struct.vlc_t { i8 55, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 56, i8 6 }, %struct.vlc_t { i8 57, i8 6 }, %struct.vlc_t { i8 58, i8 6 }, %struct.vlc_t { i8 59, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 60, i8 6 }, %struct.vlc_t { i8 61, i8 6 }, %struct.vlc_t { i8 62, i8 6 }, %struct.vlc_t { i8 63, i8 6 }]], <{ [4 x %struct.vlc_t], [4 x %struct.vlc_t], [4 x %struct.vlc_t], [4 x %struct.vlc_t], [12 x [4 x %struct.vlc_t]] }> <{ [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 6 }, %struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 4, i8 6 }, %struct.vlc_t { i8 6, i8 6 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 3, i8 6 }, %struct.vlc_t { i8 3, i8 7 }, %struct.vlc_t { i8 2, i8 7 }, %struct.vlc_t { i8 5, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 2, i8 6 }, %struct.vlc_t { i8 3, i8 8 }, %struct.vlc_t { i8 2, i8 8 }, %struct.vlc_t { i8 0, i8 7 }], [12 x [4 x %struct.vlc_t]] zeroinitializer }> }>, align 16
@x264_total_zeros = dso_local local_unnamed_addr constant <{ [16 x %struct.vlc_t], [16 x %struct.vlc_t], [16 x %struct.vlc_t], [16 x %struct.vlc_t], [16 x %struct.vlc_t], [16 x %struct.vlc_t], [16 x %struct.vlc_t], [16 x %struct.vlc_t], <{ [8 x %struct.vlc_t], [8 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [9 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [10 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [11 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [12 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [13 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, [14 x %struct.vlc_t] }> }> <{ [16 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 3, i8 4 }, %struct.vlc_t { i8 2, i8 4 }, %struct.vlc_t { i8 3, i8 5 }, %struct.vlc_t { i8 2, i8 5 }, %struct.vlc_t { i8 3, i8 6 }, %struct.vlc_t { i8 2, i8 6 }, %struct.vlc_t { i8 3, i8 7 }, %struct.vlc_t { i8 2, i8 7 }, %struct.vlc_t { i8 3, i8 8 }, %struct.vlc_t { i8 2, i8 8 }, %struct.vlc_t { i8 3, i8 9 }, %struct.vlc_t { i8 2, i8 9 }, %struct.vlc_t { i8 1, i8 9 }], [16 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 3 }, %struct.vlc_t { i8 6, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 5, i8 4 }, %struct.vlc_t { i8 4, i8 4 }, %struct.vlc_t { i8 3, i8 4 }, %struct.vlc_t { i8 2, i8 4 }, %struct.vlc_t { i8 3, i8 5 }, %struct.vlc_t { i8 2, i8 5 }, %struct.vlc_t { i8 3, i8 6 }, %struct.vlc_t { i8 2, i8 6 }, %struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t zeroinitializer], [16 x %struct.vlc_t] [%struct.vlc_t { i8 5, i8 4 }, %struct.vlc_t { i8 7, i8 3 }, %struct.vlc_t { i8 6, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 4 }, %struct.vlc_t { i8 3, i8 4 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 4 }, %struct.vlc_t { i8 3, i8 5 }, %struct.vlc_t { i8 2, i8 5 }, %struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [16 x %struct.vlc_t] [%struct.vlc_t { i8 3, i8 5 }, %struct.vlc_t { i8 7, i8 3 }, %struct.vlc_t { i8 5, i8 4 }, %struct.vlc_t { i8 4, i8 4 }, %struct.vlc_t { i8 6, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 4 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 4 }, %struct.vlc_t { i8 2, i8 5 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 0, i8 5 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [16 x %struct.vlc_t] [%struct.vlc_t { i8 5, i8 4 }, %struct.vlc_t { i8 4, i8 4 }, %struct.vlc_t { i8 3, i8 4 }, %struct.vlc_t { i8 7, i8 3 }, %struct.vlc_t { i8 6, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 4 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 0, i8 5 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [16 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 7, i8 3 }, %struct.vlc_t { i8 6, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [16 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [16 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], <{ [8 x %struct.vlc_t], [8 x %struct.vlc_t] }> <{ [8 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 1, i8 5 }], [8 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [9 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 0, i8 5 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 1, i8 4 }, [9 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [10 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 0, i8 4 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 3, i8 3 }, [10 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [11 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 0, i8 4 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 1, i8 3 }, [11 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [12 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 0, i8 3 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 1, i8 2 }, [12 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [13 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 0, i8 2 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 1, i8 1 }, [13 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, [14 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 0, i8 1 }, %struct.vlc_t { i8 1, i8 1 }, [14 x %struct.vlc_t] zeroinitializer }> }>, align 16
@x264_total_zeros_dc = dso_local local_unnamed_addr constant [3 x [4 x %struct.vlc_t]] [[4 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 0, i8 3 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 0, i8 2 }, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 0, i8 1 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer]], align 16
@x264_run_before = dso_local local_unnamed_addr constant <{ <{ %struct.vlc_t, %struct.vlc_t, [14 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [13 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [12 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [11 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [10 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [9 x %struct.vlc_t] }>, [16 x %struct.vlc_t] }> <{ <{ %struct.vlc_t, %struct.vlc_t, [14 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 0, i8 1 }, [14 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [13 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 0, i8 2 }, [13 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [12 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 0, i8 2 }, [12 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [11 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 0, i8 3 }, [11 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [10 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 0, i8 3 }, [10 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [9 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 0, i8 3 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, [9 x %struct.vlc_t] zeroinitializer }>, [16 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 3 }, %struct.vlc_t { i8 6, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 1, i8 7 }, %struct.vlc_t { i8 1, i8 8 }, %struct.vlc_t { i8 1, i8 9 }, %struct.vlc_t { i8 1, i8 10 }, %struct.vlc_t { i8 1, i8 11 }, %struct.vlc_t zeroinitializer] }>, align 16
@x264_level_token = dso_local local_unnamed_addr global [7 x [128 x %struct.vlc_large_t]] zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @x264_init_vlc_tables() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %18
  %2 = phi i64 [ 0, %0 ], [ %15, %18 ]
  %3 = trunc i64 %2 to i32
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 1)
  %5 = add nsw i32 %4, -1
  %6 = shl nuw nsw i32 3, %5
  %7 = icmp ne i64 %2, 6
  %8 = icmp eq i64 %2, 0
  %9 = icmp ne i64 %2, 0
  %10 = shl nsw i32 -15, %3
  %11 = trunc i64 %2 to i8
  %12 = add nuw nsw i8 %11, 15
  %13 = shl nuw nsw i32 1, %3
  %14 = add nuw nsw i32 %13, 65535
  %15 = add nuw nsw i64 %2, 1
  %16 = trunc i64 %15 to i32
  br label %20

17:                                               ; preds = %18
  ret void

18:                                               ; preds = %61
  %19 = icmp eq i64 %15, 7
  br i1 %19, label %17, label %1, !llvm.loop !5

20:                                               ; preds = %1, %61
  %21 = phi i64 [ -64, %1 ], [ %69, %61 ]
  %22 = trunc i64 %21 to i32
  %23 = ashr i32 %22, 15
  %24 = xor i32 %23, %22
  %25 = sub nsw i32 %24, %23
  %26 = shl nsw i32 %25, 1
  %27 = sub nsw i32 %26, %23
  %28 = add nsw i32 %27, -2
  %29 = add nsw i64 %21, 64
  %30 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %2, i64 %29
  %31 = ashr i32 %28, %3
  %32 = icmp slt i32 %31, 14
  br i1 %32, label %33, label %40

33:                                               ; preds = %20
  %34 = add i32 %31, %16
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %2, i64 %29, i32 1
  store i8 %35, ptr %36, align 2, !tbaa !7
  %37 = and i32 %28, %14
  %38 = add nuw nsw i32 %37, %13
  %39 = trunc i32 %38 to i16
  br label %61

40:                                               ; preds = %20
  %41 = icmp slt i32 %27, 32
  %42 = and i1 %8, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 0, i64 %29, i32 1
  store i8 19, ptr %44, align 2, !tbaa !7
  %45 = trunc i32 %27 to i16
  br label %61

46:                                               ; preds = %40
  %47 = icmp eq i32 %31, 14
  %48 = and i1 %9, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %2, i64 %29, i32 1
  store i8 %12, ptr %50, align 2, !tbaa !7
  %51 = and i32 %28, %14
  %52 = add nuw nsw i32 %51, %13
  %53 = trunc i32 %52 to i16
  br label %61

54:                                               ; preds = %46
  %55 = add nsw i32 %28, %10
  %56 = add i32 %55, 65521
  %57 = select i1 %8, i32 %56, i32 %55
  %58 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %2, i64 %29, i32 1
  store i8 28, ptr %58, align 2, !tbaa !7
  %59 = trunc i32 %57 to i16
  %60 = add i16 %59, 4096
  br label %61

61:                                               ; preds = %43, %54, %49, %33
  %62 = phi i16 [ %45, %43 ], [ %60, %54 ], [ %53, %49 ], [ %39, %33 ]
  store i16 %62, ptr %30, align 4, !tbaa !12
  %63 = icmp sgt i32 %25, %6
  %64 = and i1 %7, %63
  %65 = zext i1 %64 to i32
  %66 = add nuw nsw i32 %4, %65
  %67 = trunc i32 %66 to i8
  %68 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %2, i64 %29, i32 2
  store i8 %67, ptr %68, align 1, !tbaa !13
  %69 = add nsw i64 %21, 1
  %70 = icmp eq i64 %69, 64
  br i1 %70, label %18, label %20, !llvm.loop !14
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #1

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8, !10, i64 2}
!8 = !{!"", !9, i64 0, !10, i64 2, !10, i64 3}
!9 = !{!"short", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!8, !9, i64 0}
!13 = !{!8, !10, i64 3}
!14 = distinct !{!14, !6}
