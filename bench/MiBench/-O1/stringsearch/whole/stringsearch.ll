; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@lowervec = dso_local local_unnamed_addr global [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7Fcueaaaaceeeiiiaae\91\92ooouuyou\9B\9C\9D\9E\9Faiounn\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@pat = internal unnamed_addr global ptr null, align 8
@patlen = internal unnamed_addr global i32 0, align 4
@skip = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@skip2 = internal unnamed_addr global i32 0, align 4
@patlen.1 = internal unnamed_addr global i32 0, align 4
@pat.2 = internal unnamed_addr global ptr null, align 8
@skip.3 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@skip2.4 = internal unnamed_addr global i32 0, align 4
@pat.5 = internal unnamed_addr global ptr null, align 8
@patlen.6 = internal unnamed_addr global i32 0, align 4
@skip.7 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@skip2.8 = internal unnamed_addr global i32 0, align 4
@len = internal unnamed_addr global i64 0, align 8
@table = internal unnamed_addr global [256 x i64] zeroinitializer, align 16
@findme = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [4 x i8] c"Kur\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"gent\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"lass\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"suns\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"xxx\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"have\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"where\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"xxxxxx\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"pense\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"pow\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"xxxxx\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"Yo\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"faded\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"20\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"you\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"bac\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"an\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"way\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"possibili\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"fat\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"imag\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"th\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"wor\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"yo\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"bxx\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"wo\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"kind\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"Do\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"scare\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"people\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"wit\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"Th\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"yourself\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"Forget\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"succeed\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"Kee\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"lov\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"Stretc\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"what\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"life\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"kno\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"wha\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"40\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"Get\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"them\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"Maybe\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"may\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"the\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"your\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"congratulate\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"much\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"either\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"are\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"Enjoy\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"it\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"be\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"greatest\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"own\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"nowhere\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"room\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"beauty\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"feel\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"Northern\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"before\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"Accept\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"Politicians\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"reasonable\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"their\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"Dont\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"support\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"trust\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"spouse\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"too\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"careful\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"Dispensing\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"past\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"parts\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"more\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"me\00", align 1
@__const.main.find_strings = private unnamed_addr constant [1333 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.5, ptr @.str.5, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.5, ptr @.str.5, ptr @.str.36, ptr @.str.5, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.26, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.5, ptr @.str.5, ptr @.str.47, ptr @.str.48, ptr @.str.5, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.17, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.59, ptr @.str.5, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.17, ptr @.str.66, ptr @.str.67, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.59, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.52, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.5, ptr @.str.5, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.5, ptr @.str.5, ptr @.str.36, ptr @.str.5, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.26, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.5, ptr @.str.5, ptr @.str.47, ptr @.str.48, ptr @.str.5, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.17, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.59, ptr @.str.5, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.17, ptr @.str.66, ptr @.str.67, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.59, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.52, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.5, ptr @.str.5, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.5, ptr @.str.5, ptr @.str.36, ptr @.str.5, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.26, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.5, ptr @.str.5, ptr @.str.47, ptr @.str.48, ptr @.str.5, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.17, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.59, ptr @.str.5, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.17, ptr @.str.66, ptr @.str.67, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.59, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.52, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.5, ptr @.str.5, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.5, ptr @.str.5, ptr @.str.36, ptr @.str.5, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.26, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.5, ptr @.str.5, ptr @.str.47, ptr @.str.48, ptr @.str.5, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.17, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.59, ptr @.str.5, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.17, ptr @.str.66, ptr @.str.67, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.59, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.52, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.5, ptr @.str.5, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.5, ptr @.str.5, ptr @.str.36, ptr @.str.5, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.26, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.5, ptr @.str.5, ptr @.str.47, ptr @.str.48, ptr @.str.5, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.17, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.59, ptr @.str.5, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.17, ptr @.str.66, ptr @.str.67, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.59, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.52, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.5, ptr @.str.5, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.5, ptr @.str.5, ptr @.str.36, ptr @.str.5, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.26, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.5, ptr @.str.5, ptr @.str.47, ptr @.str.48, ptr @.str.5, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.17, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.59, ptr @.str.5, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.17, ptr @.str.66, ptr @.str.67, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.59, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.52, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.5, ptr @.str.5, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.5, ptr @.str.5, ptr @.str.36, ptr @.str.5, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.26, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.5, ptr @.str.5, ptr @.str.47, ptr @.str.48, ptr @.str.5, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.17, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.59, ptr @.str.5, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.17, ptr @.str.66, ptr @.str.67, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.59, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.52, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.5, ptr @.str.5, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.5, ptr @.str.5, ptr @.str.36, ptr @.str.5, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.26, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.5, ptr @.str.5, ptr @.str.47, ptr @.str.48, ptr @.str.5, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.17, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.59, ptr @.str.5, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.17, ptr @.str.66, ptr @.str.67, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.59, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.52, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.5, ptr @.str.5, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.5, ptr @.str.5, ptr @.str.36, ptr @.str.5, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.26, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.5, ptr @.str.5, ptr @.str.47, ptr @.str.48, ptr @.str.5, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.17, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.59, ptr @.str.5, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.17, ptr @.str.66, ptr @.str.67, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.59, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.52, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.5, ptr @.str.5, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.5, ptr @.str.5, ptr @.str.36, ptr @.str.5, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.26, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.5, ptr @.str.5, ptr @.str.47, ptr @.str.48, ptr @.str.5, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.17, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.59, ptr @.str.5, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.17, ptr @.str.66, ptr @.str.67, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.59, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.52, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.5, ptr @.str.5, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.5, ptr @.str.5, ptr @.str.36, ptr @.str.5, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.26, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.5, ptr @.str.5, ptr @.str.47, ptr @.str.48, ptr @.str.5, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.17, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.59, ptr @.str.5, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.17, ptr @.str.66, ptr @.str.67, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.59, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.52, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr null], align 16
@.str.90 = private unnamed_addr constant [39 x i8] c"Kurt Vonneguts Commencement Address at\00", align 1
@.str.91 = private unnamed_addr constant [28 x i8] c"MIT Ladies and gentlemen of\00", align 1
@.str.92 = private unnamed_addr constant [21 x i8] c"the class of 97 Wear\00", align 1
@.str.93 = private unnamed_addr constant [27 x i8] c"sunscreen If I could offer\00", align 1
@.str.94 = private unnamed_addr constant [21 x i8] c"you only one tip for\00", align 1
@.str.95 = private unnamed_addr constant [30 x i8] c"the future sunscreen would be\00", align 1
@.str.96 = private unnamed_addr constant [28 x i8] c"it The longterm benefits of\00", align 1
@.str.97 = private unnamed_addr constant [30 x i8] c"sunscreen have been proved by\00", align 1
@.str.98 = private unnamed_addr constant [31 x i8] c"scientists whereas the rest of\00", align 1
@.str.99 = private unnamed_addr constant [23 x i8] c"my advice has no basis\00", align 1
@.str.100 = private unnamed_addr constant [48 x i8] c"more reliable than my own meandering experience\00", align 1
@.str.101 = private unnamed_addr constant [28 x i8] c"I will dispense this advice\00", align 1
@.str.102 = private unnamed_addr constant [31 x i8] c"now Enjoy the power and beauty\00", align 1
@.str.103 = private unnamed_addr constant [28 x i8] c"of your youth Oh never mind\00", align 1
@.str.104 = private unnamed_addr constant [34 x i8] c"You will not understand the power\00", align 1
@.str.105 = private unnamed_addr constant [38 x i8] c"and beauty of your youth until theyve\00", align 1
@.str.106 = private unnamed_addr constant [22 x i8] c"faded But trust me in\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"20 years\00", align 1
@.str.108 = private unnamed_addr constant [11 x i8] c"youll look\00", align 1
@.str.109 = private unnamed_addr constant [27 x i8] c"back at photos of yourself\00", align 1
@.str.110 = private unnamed_addr constant [16 x i8] c"and recall in a\00", align 1
@.str.111 = private unnamed_addr constant [32 x i8] c"way you cant grasp now how much\00", align 1
@.str.112 = private unnamed_addr constant [27 x i8] c"possibility lay before you\00", align 1
@.str.113 = private unnamed_addr constant [39 x i8] c"and how fabulous you really looked You\00", align 1
@.str.114 = private unnamed_addr constant [15 x i8] c"are not as fat\00", align 1
@.str.115 = private unnamed_addr constant [32 x i8] c"as you imagine Dont worry about\00", align 1
@.str.116 = private unnamed_addr constant [14 x i8] c"the future Or\00", align 1
@.str.117 = private unnamed_addr constant [45 x i8] c"worry but know that worrying is as effective\00", align 1
@.str.118 = private unnamed_addr constant [39 x i8] c"as trying to solve an algebra equation\00", align 1
@.str.119 = private unnamed_addr constant [43 x i8] c"by chewing bubble gum The real troubles in\00", align 1
@.str.120 = private unnamed_addr constant [21 x i8] c"your life are apt to\00", align 1
@.str.121 = private unnamed_addr constant [34 x i8] c"be things that never crossed your\00", align 1
@.str.122 = private unnamed_addr constant [17 x i8] c"worried mind the\00", align 1
@.str.123 = private unnamed_addr constant [27 x i8] c"kind that blindside you at\00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"4 pm on some\00", align 1
@.str.125 = private unnamed_addr constant [13 x i8] c"idle Tuesday\00", align 1
@.str.126 = private unnamed_addr constant [28 x i8] c"Do one thing every day that\00", align 1
@.str.127 = private unnamed_addr constant [44 x i8] c"scares you Sing Dont be reckless with other\00", align 1
@.str.128 = private unnamed_addr constant [27 x i8] c"peoples hearts Dont put up\00", align 1
@.str.129 = private unnamed_addr constant [29 x i8] c"with people who are reckless\00", align 1
@.str.130 = private unnamed_addr constant [38 x i8] c"with yours Floss Dont waste your time\00", align 1
@.str.131 = private unnamed_addr constant [57 x i8] c"on jealousy Sometimes youre ahead sometimes youre behind\00", align 1
@.str.132 = private unnamed_addr constant [24 x i8] c"The race is long and in\00", align 1
@.str.133 = private unnamed_addr constant [22 x i8] c"the end its only with\00", align 1
@.str.134 = private unnamed_addr constant [42 x i8] c"yourself Remember compliments you receive\00", align 1
@.str.135 = private unnamed_addr constant [26 x i8] c"Forget the insults If you\00", align 1
@.str.136 = private unnamed_addr constant [34 x i8] c"succeed in doing this tell me how\00", align 1
@.str.137 = private unnamed_addr constant [14 x i8] c"Keep your old\00", align 1
@.str.138 = private unnamed_addr constant [24 x i8] c"love letters Throw away\00", align 1
@.str.139 = private unnamed_addr constant [25 x i8] c"your old bank statements\00", align 1
@.str.140 = private unnamed_addr constant [42 x i8] c"Stretch Dont feel guilty if you dont know\00", align 1
@.str.141 = private unnamed_addr constant [30 x i8] c"what you want to do with your\00", align 1
@.str.142 = private unnamed_addr constant [35 x i8] c"life The most interesting people I\00", align 1
@.str.143 = private unnamed_addr constant [22 x i8] c"know didnt know at 22\00", align 1
@.str.144 = private unnamed_addr constant [17 x i8] c"what they wanted\00", align 1
@.str.145 = private unnamed_addr constant [31 x i8] c"to do with their lives Some of\00", align 1
@.str.146 = private unnamed_addr constant [21 x i8] c"the most interesting\00", align 1
@.str.147 = private unnamed_addr constant [29 x i8] c"40yearolds I know still dont\00", align 1
@.str.148 = private unnamed_addr constant [22 x i8] c"Get plenty of calcium\00", align 1
@.str.149 = private unnamed_addr constant [33 x i8] c"Be kind to your knees Youll miss\00", align 1
@.str.150 = private unnamed_addr constant [22 x i8] c"them when theyre gone\00", align 1
@.str.151 = private unnamed_addr constant [18 x i8] c"Maybe youll marry\00", align 1
@.str.152 = private unnamed_addr constant [47 x i8] c"maybe you wont Maybe youll have children maybe\00", align 1
@.str.153 = private unnamed_addr constant [53 x i8] c"you wont Maybe youll divorce at 40 maybe youll dance\00", align 1
@.str.154 = private unnamed_addr constant [21 x i8] c"the funky chicken on\00", align 1
@.str.155 = private unnamed_addr constant [39 x i8] c"your 75th wedding anniversary Whatever\00", align 1
@.str.156 = private unnamed_addr constant [38 x i8] c"you do dont congratulate yourself too\00", align 1
@.str.157 = private unnamed_addr constant [24 x i8] c"much or berate yourself\00", align 1
@.str.158 = private unnamed_addr constant [39 x i8] c"either Your choices are half chance So\00", align 1
@.str.159 = private unnamed_addr constant [20 x i8] c"are everybody elses\00", align 1
@.str.160 = private unnamed_addr constant [20 x i8] c"Enjoy your body Use\00", align 1
@.str.161 = private unnamed_addr constant [26 x i8] c"it every way you can Dont\00", align 1
@.str.162 = private unnamed_addr constant [27 x i8] c"be afraid of it or of what\00", align 1
@.str.163 = private unnamed_addr constant [22 x i8] c"other people think of\00", align 1
@.str.164 = private unnamed_addr constant [7 x i8] c"it Its\00", align 1
@.str.165 = private unnamed_addr constant [31 x i8] c"greatest instrument youll ever\00", align 1
@.str.166 = private unnamed_addr constant [27 x i8] c"own Dance even if you have\00", align 1
@.str.167 = private unnamed_addr constant [33 x i8] c"nowhere to do it but your living\00", align 1
@.str.168 = private unnamed_addr constant [33 x i8] c"room Read the directions even if\00", align 1
@.str.169 = private unnamed_addr constant [33 x i8] c"you dont follow them Do not read\00", align 1
@.str.170 = private unnamed_addr constant [41 x i8] c"beauty magazines They will only make you\00", align 1
@.str.171 = private unnamed_addr constant [45 x i8] c"feel ugly Get to know your parents You never\00", align 1
@.str.172 = private unnamed_addr constant [37 x i8] c"know when theyll be gone for good Be\00", align 1
@.str.173 = private unnamed_addr constant [34 x i8] c"nice to your siblings Theyre your\00", align 1
@.str.174 = private unnamed_addr constant [18 x i8] c"best link to your\00", align 1
@.str.175 = private unnamed_addr constant [32 x i8] c"past and the people most likely\00", align 1
@.str.176 = private unnamed_addr constant [18 x i8] c"to stick with you\00", align 1
@.str.177 = private unnamed_addr constant [30 x i8] c"in the future Understand that\00", align 1
@.str.178 = private unnamed_addr constant [24 x i8] c"friends come and go but\00", align 1
@.str.179 = private unnamed_addr constant [36 x i8] c"with a precious few you should hold\00", align 1
@.str.180 = private unnamed_addr constant [23 x i8] c"on Work hard to bridge\00", align 1
@.str.181 = private unnamed_addr constant [36 x i8] c"the gaps in geography and lifestyle\00", align 1
@.str.182 = private unnamed_addr constant [18 x i8] c"because the older\00", align 1
@.str.183 = private unnamed_addr constant [30 x i8] c"you get the more you need the\00", align 1
@.str.184 = private unnamed_addr constant [29 x i8] c"people who knew you when you\00", align 1
@.str.185 = private unnamed_addr constant [16 x i8] c"were young Live\00", align 1
@.str.186 = private unnamed_addr constant [39 x i8] c"in New York City once but leave before\00", align 1
@.str.187 = private unnamed_addr constant [26 x i8] c"it makes you hard Live in\00", align 1
@.str.188 = private unnamed_addr constant [35 x i8] c"Northern California once but leave\00", align 1
@.str.189 = private unnamed_addr constant [32 x i8] c"before it makes you soft Travel\00", align 1
@.str.190 = private unnamed_addr constant [51 x i8] c"Accept certain inalienable truths Prices will rise\00", align 1
@.str.191 = private unnamed_addr constant [40 x i8] c"Politicians will philander You too will\00", align 1
@.str.192 = private unnamed_addr constant [30 x i8] c"get old And when you do youll\00", align 1
@.str.193 = private unnamed_addr constant [47 x i8] c"fantasize that when you were young prices were\00", align 1
@.str.194 = private unnamed_addr constant [57 x i8] c"reasonable politicians were noble and children respected\00", align 1
@.str.195 = private unnamed_addr constant [33 x i8] c"their elders Respect your elders\00", align 1
@.str.196 = private unnamed_addr constant [27 x i8] c"Dont expect anyone else to\00", align 1
@.str.197 = private unnamed_addr constant [29 x i8] c"support you Maybe you have a\00", align 1
@.str.198 = private unnamed_addr constant [38 x i8] c"trust fund Maybe youll have a wealthy\00", align 1
@.str.199 = private unnamed_addr constant [38 x i8] c"spouse But you never know when either\00", align 1
@.str.200 = private unnamed_addr constant [28 x i8] c"one might run out Dont mess\00", align 1
@.str.201 = private unnamed_addr constant [34 x i8] c"too much with your hair or by the\00", align 1
@.str.202 = private unnamed_addr constant [33 x i8] c"time youre 40 it will look 85 Be\00", align 1
@.str.203 = private unnamed_addr constant [44 x i8] c"careful whose advice you buy but be patient\00", align 1
@.str.204 = private unnamed_addr constant [37 x i8] c"with those who supply it Advice is a\00", align 1
@.str.205 = private unnamed_addr constant [35 x i8] c"form of nostalgia Dispensing it is\00", align 1
@.str.206 = private unnamed_addr constant [31 x i8] c"a way of fishing the past from\00", align 1
@.str.207 = private unnamed_addr constant [36 x i8] c"the disposal wiping it off painting\00", align 1
@.str.208 = private unnamed_addr constant [20 x i8] c"over the ugly parts\00", align 1
@.str.209 = private unnamed_addr constant [35 x i8] c"and recycling it for more than its\00", align 1
@.str.210 = private unnamed_addr constant [36 x i8] c"worth But trust me on the sunscreen\00", align 1
@__const.main.search_strings = private unnamed_addr constant [1332 x ptr] [ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.52, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.52, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.52, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.52, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.52, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.52, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.52, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.52, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.52, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.52, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.52, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210], align 16
@.str.211 = private unnamed_addr constant [18 x i8] c"\22%s\22 is%s in \22%s\22\00", align 1
@.str.212 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.213 = private unnamed_addr constant [5 x i8] c" not\00", align 1
@.str.214 = private unnamed_addr constant [8 x i8] c" [\22%s\22]\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @bmha_init(ptr noundef %0) local_unnamed_addr #0 {
  store ptr %0, ptr @pat, align 8, !tbaa !7
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %3 = trunc i64 %2 to i32
  store i32 %3, ptr @patlen, align 4, !tbaa !11
  %4 = and i64 %2, 4294967295
  %5 = getelementptr i8, ptr %0, i64 -1
  br label %6

6:                                                ; preds = %32, %1
  %7 = phi i64 [ 0, %1 ], [ %33, %32 ]
  %8 = getelementptr inbounds [256 x i32], ptr @skip, i64 0, i64 %7
  store i32 %3, ptr %8, align 4, !tbaa !11
  %9 = getelementptr inbounds [256 x i8], ptr @lowervec, i64 0, i64 %7
  br label %10

10:                                               ; preds = %14, %6
  %11 = phi i64 [ %15, %14 ], [ %4, %6 ]
  %12 = trunc i64 %11 to i32
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = add nsw i64 %11, -1
  %16 = load i8, ptr %9, align 1, !tbaa !13
  %17 = getelementptr i8, ptr %5, i64 %11
  %18 = load i8, ptr %17, align 1, !tbaa !13
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [256 x i8], ptr @lowervec, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !13
  %22 = icmp eq i8 %16, %21
  br i1 %22, label %23, label %10, !llvm.loop !14

23:                                               ; preds = %14
  %24 = trunc i64 %11 to i32
  %25 = sub i32 %3, %24
  store i32 %25, ptr %8, align 4, !tbaa !11
  br label %28

26:                                               ; preds = %10
  %27 = trunc i64 %11 to i32
  br label %28

28:                                               ; preds = %26, %23
  %29 = phi i32 [ %27, %26 ], [ %24, %23 ]
  %30 = icmp eq i32 %29, %3
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 32767, ptr %8, align 4, !tbaa !11
  br label %32

32:                                               ; preds = %31, %28
  %33 = add nuw nsw i64 %7, 1
  %34 = icmp eq i64 %33, 256
  br i1 %34, label %35, label %6, !llvm.loop !16

35:                                               ; preds = %32
  store i32 %3, ptr @skip2, align 4, !tbaa !11
  %36 = icmp sgt i32 %3, 1
  br i1 %36, label %37, label %61

37:                                               ; preds = %35
  %38 = add nsw i32 %3, -1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !13
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds [256 x i8], ptr @lowervec, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !13
  %45 = zext i32 %38 to i64
  br label %46

46:                                               ; preds = %58, %37
  %47 = phi i64 [ 0, %37 ], [ %59, %58 ]
  %48 = getelementptr inbounds i8, ptr %0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !13
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds [256 x i8], ptr @lowervec, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !13
  %53 = icmp eq i8 %52, %44
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = trunc i64 %47 to i32
  %56 = xor i32 %55, -1
  %57 = add nsw i32 %56, %3
  store i32 %57, ptr @skip2, align 4, !tbaa !11
  br label %58

58:                                               ; preds = %54, %46
  %59 = add nuw nsw i64 %47, 1
  %60 = icmp eq i64 %59, %45
  br i1 %60, label %61, label %46, !llvm.loop !17

61:                                               ; preds = %58, %35
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @bmha_search(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load i32, ptr @patlen, align 4, !tbaa !11
  %4 = xor i32 %1, -1
  %5 = add i32 %3, %4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %61, label %7

7:                                                ; preds = %2
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = sub nsw i32 32767, %1
  %11 = add i32 %3, -1
  %12 = load ptr, ptr @pat, align 8
  %13 = load i32, ptr @skip2, align 4
  %14 = zext i32 %11 to i64
  %15 = tail call i32 @llvm.smin.i32(i32 %11, i32 0)
  br label %16

16:                                               ; preds = %26, %7
  %17 = phi i32 [ %5, %7 ], [ %27, %26 ]
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %9, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !13
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds [256 x i32], ptr @skip, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !11
  %24 = add nsw i32 %23, %17
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %58, %16
  %27 = phi i32 [ %24, %16 ], [ %59, %58 ]
  br label %16, !llvm.loop !18

28:                                               ; preds = %16
  %29 = icmp slt i32 %24, %10
  br i1 %29, label %61, label %30

30:                                               ; preds = %28
  %31 = add nsw i32 %24, -32767
  %32 = sub nsw i32 %31, %11
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %9, i64 %33
  br label %35

35:                                               ; preds = %39, %30
  %36 = phi i64 [ %41, %39 ], [ %14, %30 ]
  %37 = trunc i64 %36 to i32
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = add nsw i64 %36, -1
  %41 = add nsw i64 %36, -1
  %42 = getelementptr inbounds i8, ptr %34, i64 %40
  %43 = load i8, ptr %42, align 1, !tbaa !13
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds [256 x i8], ptr @lowervec, i64 0, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !13
  %47 = getelementptr inbounds i8, ptr %12, i64 %40
  %48 = load i8, ptr %47, align 1, !tbaa !13
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds [256 x i8], ptr @lowervec, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !13
  %52 = icmp eq i8 %46, %51
  br i1 %52, label %35, label %53, !llvm.loop !19

53:                                               ; preds = %39
  %54 = trunc i64 %36 to i32
  br label %55

55:                                               ; preds = %53, %35
  %56 = phi i32 [ %54, %53 ], [ %15, %35 ]
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = add nsw i32 %13, %31
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %61, label %26

61:                                               ; preds = %58, %55, %28, %2
  %62 = phi ptr [ null, %2 ], [ null, %28 ], [ %34, %55 ], [ null, %58 ]
  ret ptr %62
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind uwtable
define dso_local void @bmhi_init(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %3 = trunc i64 %2 to i32
  store i32 %3, ptr @patlen.1, align 4, !tbaa !11
  %4 = load ptr, ptr @pat.2, align 8, !tbaa !7
  %5 = shl i64 %2, 32
  %6 = ashr exact i64 %5, 32
  %7 = tail call ptr @realloc(ptr noundef %4, i64 noundef %6) #17
  store ptr %7, ptr @pat.2, align 8, !tbaa !7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void @exit(i32 noundef 1) #18
  unreachable

10:                                               ; preds = %1
  %11 = tail call i32 @atexit(ptr noundef nonnull @bhmi_cleanup) #19
  %12 = load i32, ptr @patlen.1, align 4, !tbaa !11
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %19, %10
  br label %39

15:                                               ; preds = %10
  %16 = tail call ptr @__ctype_toupper_loc() #20
  %17 = load ptr, ptr @pat.2, align 8, !tbaa !7
  %18 = zext nneg i32 %12 to i64
  br label %19

19:                                               ; preds = %19, %15
  %20 = phi i64 [ 0, %15 ], [ %29, %19 ]
  %21 = load ptr, ptr %16, align 8, !tbaa !7
  %22 = getelementptr inbounds i8, ptr %0, i64 %20
  %23 = load i8, ptr %22, align 1, !tbaa !13
  %24 = sext i8 %23 to i64
  %25 = getelementptr inbounds i32, ptr %21, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !11
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds i8, ptr %17, i64 %20
  store i8 %27, ptr %28, align 1, !tbaa !13
  %29 = add nuw nsw i64 %20, 1
  %30 = icmp eq i64 %29, %18
  br i1 %30, label %14, label %19, !llvm.loop !20

31:                                               ; preds = %39
  %32 = add i32 %12, -1
  %33 = icmp sgt i32 %12, 1
  br i1 %33, label %34, label %59

34:                                               ; preds = %31
  %35 = load ptr, ptr @pat.2, align 8, !tbaa !7
  %36 = tail call ptr @__ctype_tolower_loc() #20
  %37 = load ptr, ptr %36, align 8, !tbaa !7
  %38 = zext i32 %32 to i64
  br label %44

39:                                               ; preds = %39, %14
  %40 = phi i64 [ %42, %39 ], [ 0, %14 ]
  %41 = getelementptr inbounds [256 x i32], ptr @skip.3, i64 0, i64 %40
  store i32 %12, ptr %41, align 4, !tbaa !11
  %42 = add nuw nsw i64 %40, 1
  %43 = icmp eq i64 %42, 256
  br i1 %43, label %31, label %39, !llvm.loop !21

44:                                               ; preds = %44, %34
  %45 = phi i64 [ 0, %34 ], [ %57, %44 ]
  %46 = trunc i64 %45 to i32
  %47 = xor i32 %46, -1
  %48 = add nsw i32 %12, %47
  %49 = getelementptr inbounds i8, ptr %35, i64 %45
  %50 = load i8, ptr %49, align 1, !tbaa !13
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds [256 x i32], ptr @skip.3, i64 0, i64 %51
  store i32 %48, ptr %52, align 4, !tbaa !11
  %53 = getelementptr inbounds i32, ptr %37, i64 %51
  %54 = load i32, ptr %53, align 4, !tbaa !11
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [256 x i32], ptr @skip.3, i64 0, i64 %55
  store i32 %48, ptr %56, align 4, !tbaa !11
  %57 = add nuw nsw i64 %45, 1
  %58 = icmp eq i64 %57, %38
  br i1 %58, label %59, label %44, !llvm.loop !22

59:                                               ; preds = %44, %31
  %60 = load ptr, ptr @pat.2, align 8, !tbaa !7
  %61 = sext i32 %32 to i64
  %62 = getelementptr inbounds i8, ptr %60, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !13
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds [256 x i32], ptr @skip.3, i64 0, i64 %64
  store i32 32767, ptr %65, align 4, !tbaa !11
  %66 = tail call ptr @__ctype_tolower_loc() #20
  %67 = load ptr, ptr %66, align 8, !tbaa !7
  %68 = zext i8 %63 to i64
  %69 = getelementptr inbounds i32, ptr %67, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !11
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [256 x i32], ptr @skip.3, i64 0, i64 %71
  store i32 32767, ptr %72, align 4, !tbaa !11
  store i32 %12, ptr @skip2.4, align 4, !tbaa !11
  %73 = icmp sgt i32 %12, 1
  br i1 %73, label %74, label %88

74:                                               ; preds = %59
  %75 = zext i32 %32 to i64
  br label %76

76:                                               ; preds = %85, %74
  %77 = phi i64 [ 0, %74 ], [ %86, %85 ]
  %78 = getelementptr inbounds i8, ptr %60, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !13
  %80 = icmp eq i8 %79, %63
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = trunc i64 %77 to i32
  %83 = xor i32 %82, -1
  %84 = add nsw i32 %12, %83
  store i32 %84, ptr @skip2.4, align 4, !tbaa !11
  br label %85

85:                                               ; preds = %81, %76
  %86 = add nuw nsw i64 %77, 1
  %87 = icmp eq i64 %86, %75
  br i1 %87, label %88, label %76, !llvm.loop !23

88:                                               ; preds = %85, %59
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @bhmi_cleanup() #7 {
  %1 = load ptr, ptr @pat.2, align 8, !tbaa !7
  tail call void @free(ptr noundef %1) #19
  ret void
}

; Function Attrs: nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @bmhi_search(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = load i32, ptr @patlen.1, align 4, !tbaa !11
  %4 = xor i32 %1, -1
  %5 = add i32 %3, %4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %61, label %7

7:                                                ; preds = %2
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = sub nsw i32 32767, %1
  %11 = add i32 %3, -1
  %12 = load ptr, ptr @pat.2, align 8
  %13 = load i32, ptr @skip2.4, align 4
  %14 = zext i32 %11 to i64
  %15 = tail call i32 @llvm.smin.i32(i32 %11, i32 0)
  br label %16

16:                                               ; preds = %26, %7
  %17 = phi i32 [ %5, %7 ], [ %27, %26 ]
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %9, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !13
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds [256 x i32], ptr @skip.3, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !11
  %24 = add nsw i32 %23, %17
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %58, %16
  %27 = phi i32 [ %24, %16 ], [ %59, %58 ]
  br label %16, !llvm.loop !24

28:                                               ; preds = %16
  %29 = icmp slt i32 %24, %10
  br i1 %29, label %61, label %30

30:                                               ; preds = %28
  %31 = add nsw i32 %24, -32767
  %32 = sub nsw i32 %31, %11
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %9, i64 %33
  br label %35

35:                                               ; preds = %39, %30
  %36 = phi i64 [ %41, %39 ], [ %14, %30 ]
  %37 = trunc i64 %36 to i32
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = add nsw i64 %36, -1
  %41 = add nsw i64 %36, -1
  %42 = tail call ptr @__ctype_toupper_loc() #20
  %43 = load ptr, ptr %42, align 8, !tbaa !7
  %44 = getelementptr inbounds i8, ptr %34, i64 %40
  %45 = load i8, ptr %44, align 1, !tbaa !13
  %46 = sext i8 %45 to i64
  %47 = getelementptr inbounds i32, ptr %43, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !11
  %49 = getelementptr inbounds i8, ptr %12, i64 %40
  %50 = load i8, ptr %49, align 1, !tbaa !13
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %35, label %53, !llvm.loop !25

53:                                               ; preds = %39
  %54 = trunc i64 %36 to i32
  br label %55

55:                                               ; preds = %53, %35
  %56 = phi i32 [ %54, %53 ], [ %15, %35 ]
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = add nsw i32 %13, %31
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %61, label %26

61:                                               ; preds = %58, %55, %28, %2
  %62 = phi ptr [ null, %2 ], [ null, %28 ], [ %34, %55 ], [ null, %58 ]
  ret ptr %62
}

; Function Attrs: nofree nounwind memory(write, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @bmh_init(ptr noundef %0) local_unnamed_addr #12 {
  store ptr %0, ptr @pat.5, align 8, !tbaa !7
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %3 = trunc i64 %2 to i32
  store i32 %3, ptr @patlen.6, align 4, !tbaa !11
  br label %8

4:                                                ; preds = %8
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %4
  %7 = and i64 %2, 4294967295
  br label %13

8:                                                ; preds = %8, %1
  %9 = phi i64 [ 0, %1 ], [ %11, %8 ]
  %10 = getelementptr inbounds [256 x i32], ptr @skip.7, i64 0, i64 %9
  store i32 %3, ptr %10, align 4, !tbaa !11
  %11 = add nuw nsw i64 %9, 1
  %12 = icmp eq i64 %11, 256
  br i1 %12, label %4, label %8, !llvm.loop !26

13:                                               ; preds = %13, %6
  %14 = phi i64 [ 0, %6 ], [ %22, %13 ]
  %15 = trunc i64 %14 to i32
  %16 = xor i32 %15, -1
  %17 = add nsw i32 %16, %3
  %18 = getelementptr inbounds i8, ptr %0, i64 %14
  %19 = load i8, ptr %18, align 1, !tbaa !13
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds [256 x i32], ptr @skip.7, i64 0, i64 %20
  store i32 %17, ptr %21, align 4, !tbaa !11
  %22 = add nuw nsw i64 %14, 1
  %23 = icmp eq i64 %22, %7
  br i1 %23, label %24, label %13, !llvm.loop !27

24:                                               ; preds = %13, %4
  %25 = shl i64 %2, 32
  %26 = ashr exact i64 %25, 32
  %27 = getelementptr i8, ptr %0, i64 %26
  %28 = getelementptr i8, ptr %27, i64 -1
  %29 = load i8, ptr %28, align 1, !tbaa !13
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds [256 x i32], ptr @skip.7, i64 0, i64 %30
  store i32 32767, ptr %31, align 4, !tbaa !11
  store i32 %3, ptr @skip2.8, align 4, !tbaa !11
  %32 = icmp sgt i32 %3, 1
  br i1 %32, label %33, label %48

33:                                               ; preds = %24
  %34 = add i64 %2, 4294967295
  %35 = and i64 %34, 4294967295
  br label %36

36:                                               ; preds = %45, %33
  %37 = phi i64 [ 0, %33 ], [ %46, %45 ]
  %38 = getelementptr inbounds i8, ptr %0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !13
  %40 = icmp eq i8 %39, %29
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = trunc i64 %37 to i32
  %43 = xor i32 %42, -1
  %44 = add nsw i32 %43, %3
  store i32 %44, ptr @skip2.8, align 4, !tbaa !11
  br label %45

45:                                               ; preds = %41, %36
  %46 = add nuw nsw i64 %37, 1
  %47 = icmp eq i64 %46, %35
  br i1 %47, label %48, label %36, !llvm.loop !28

48:                                               ; preds = %45, %24
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @bmh_search(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load i32, ptr @patlen.6, align 4, !tbaa !11
  %4 = xor i32 %1, -1
  %5 = add i32 %3, %4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %57, label %7

7:                                                ; preds = %2
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = sub nsw i32 32767, %1
  %11 = add i32 %3, -1
  %12 = load ptr, ptr @pat.5, align 8
  %13 = load i32, ptr @skip2.8, align 4
  %14 = zext i32 %11 to i64
  %15 = tail call i32 @llvm.smin.i32(i32 %11, i32 0)
  br label %16

16:                                               ; preds = %26, %7
  %17 = phi i32 [ %5, %7 ], [ %27, %26 ]
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %9, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !13
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds [256 x i32], ptr @skip.7, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !11
  %24 = add nsw i32 %23, %17
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %54, %16
  %27 = phi i32 [ %24, %16 ], [ %55, %54 ]
  br label %16, !llvm.loop !29

28:                                               ; preds = %16
  %29 = icmp slt i32 %24, %10
  br i1 %29, label %57, label %30

30:                                               ; preds = %28
  %31 = add nsw i32 %24, -32767
  %32 = sub nsw i32 %31, %11
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %9, i64 %33
  br label %35

35:                                               ; preds = %39, %30
  %36 = phi i64 [ %41, %39 ], [ %14, %30 ]
  %37 = trunc i64 %36 to i32
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = add nsw i64 %36, -1
  %41 = add nsw i64 %36, -1
  %42 = getelementptr inbounds i8, ptr %34, i64 %40
  %43 = load i8, ptr %42, align 1, !tbaa !13
  %44 = sext i8 %43 to i32
  %45 = getelementptr inbounds i8, ptr %12, i64 %40
  %46 = load i8, ptr %45, align 1, !tbaa !13
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %35, label %49, !llvm.loop !30

49:                                               ; preds = %39
  %50 = trunc i64 %36 to i32
  br label %51

51:                                               ; preds = %49, %35
  %52 = phi i32 [ %50, %49 ], [ %15, %35 ]
  %53 = icmp slt i32 %52, 1
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = add nsw i32 %13, %31
  %56 = icmp sgt i32 %55, -1
  br i1 %56, label %57, label %26

57:                                               ; preds = %54, %51, %28, %2
  %58 = phi ptr [ null, %2 ], [ null, %28 ], [ %34, %51 ], [ null, %54 ]
  ret ptr %58
}

; Function Attrs: nofree nounwind memory(write, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @init_search(ptr noundef %0) local_unnamed_addr #12 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  store i64 %2, ptr @len, align 8, !tbaa !31
  br label %5

3:                                                ; preds = %5
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %20, label %10

5:                                                ; preds = %5, %1
  %6 = phi i64 [ 0, %1 ], [ %8, %5 ]
  %7 = getelementptr inbounds [256 x i64], ptr @table, i64 0, i64 %6
  store i64 %2, ptr %7, align 8, !tbaa !31
  %8 = add nuw nsw i64 %6, 1
  %9 = icmp eq i64 %8, 256
  br i1 %9, label %3, label %5, !llvm.loop !33

10:                                               ; preds = %10, %3
  %11 = phi i64 [ %18, %10 ], [ 0, %3 ]
  %12 = xor i64 %11, -1
  %13 = add i64 %2, %12
  %14 = getelementptr inbounds i8, ptr %0, i64 %11
  %15 = load i8, ptr %14, align 1, !tbaa !13
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds [256 x i64], ptr @table, i64 0, i64 %16
  store i64 %13, ptr %17, align 8, !tbaa !31
  %18 = add nuw i64 %11, 1
  %19 = icmp eq i64 %18, %2
  br i1 %19, label %20, label %10, !llvm.loop !34

20:                                               ; preds = %10, %3
  store ptr %0, ptr @findme, align 8, !tbaa !7
  ret void
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @strsearch(ptr noundef readonly %0) local_unnamed_addr #13 {
  %2 = load i64, ptr @len, align 8, !tbaa !31
  %3 = add i64 %2, -1
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %5 = getelementptr i8, ptr %0, i64 1
  %6 = icmp ult i64 %3, %4
  br i1 %6, label %7, label %34

7:                                                ; preds = %1
  %8 = load ptr, ptr @findme, align 8
  br label %14

9:                                                ; preds = %14
  %10 = add i64 %20, %15
  %11 = icmp ult i64 %10, %4
  br i1 %11, label %12, label %22

12:                                               ; preds = %31, %9
  %13 = phi i64 [ %10, %9 ], [ %32, %31 ]
  br label %14, !llvm.loop !35

14:                                               ; preds = %12, %7
  %15 = phi i64 [ %3, %7 ], [ %13, %12 ]
  %16 = getelementptr inbounds i8, ptr %0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !13
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds [256 x i64], ptr @table, i64 0, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !31
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %9

22:                                               ; preds = %14, %9
  %23 = phi i64 [ %10, %9 ], [ %15, %14 ]
  br i1 %21, label %24, label %31

24:                                               ; preds = %22
  %25 = sub i64 %23, %2
  %26 = getelementptr i8, ptr %5, i64 %25
  %27 = tail call i32 @strncmp(ptr noundef %8, ptr noundef %26, i64 noundef %2) #16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = add i64 %23, 1
  br label %31

31:                                               ; preds = %29, %22
  %32 = phi i64 [ %30, %29 ], [ %23, %22 ]
  %33 = icmp ult i64 %32, %4
  br i1 %33, label %12, label %34

34:                                               ; preds = %31, %24, %1
  %35 = phi ptr [ null, %1 ], [ %26, %24 ], [ null, %31 ]
  ret ptr %35
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #14 {
  br label %1

1:                                                ; preds = %61, %0
  %2 = phi i64 [ 0, %0 ], [ %64, %61 ]
  %3 = phi ptr [ @.str, %0 ], [ %66, %61 ]
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #16
  store i64 %4, ptr @len, align 8, !tbaa !31
  br label %7

5:                                                ; preds = %7
  %6 = icmp eq i64 %4, 0
  br i1 %6, label %22, label %12

7:                                                ; preds = %7, %1
  %8 = phi i64 [ 0, %1 ], [ %10, %7 ]
  %9 = getelementptr inbounds [256 x i64], ptr @table, i64 0, i64 %8
  store i64 %4, ptr %9, align 8, !tbaa !31
  %10 = add nuw nsw i64 %8, 1
  %11 = icmp eq i64 %10, 256
  br i1 %11, label %5, label %7, !llvm.loop !33

12:                                               ; preds = %12, %5
  %13 = phi i64 [ %20, %12 ], [ 0, %5 ]
  %14 = xor i64 %13, -1
  %15 = add i64 %4, %14
  %16 = getelementptr inbounds i8, ptr %3, i64 %13
  %17 = load i8, ptr %16, align 1, !tbaa !13
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds [256 x i64], ptr @table, i64 0, i64 %18
  store i64 %15, ptr %19, align 8, !tbaa !31
  %20 = add nuw i64 %13, 1
  %21 = icmp eq i64 %20, %4
  br i1 %21, label %22, label %12, !llvm.loop !34

22:                                               ; preds = %12, %5
  store ptr %3, ptr @findme, align 8, !tbaa !7
  %23 = getelementptr inbounds [1332 x ptr], ptr @__const.main.search_strings, i64 0, i64 %2
  %24 = load ptr, ptr %23, align 8, !tbaa !7
  %25 = add i64 %4, -1
  %26 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %24) #16
  %27 = getelementptr i8, ptr %24, i64 1
  %28 = icmp ult i64 %25, %26
  br i1 %28, label %34, label %54

29:                                               ; preds = %34
  %30 = add i64 %40, %35
  %31 = icmp ult i64 %30, %26
  br i1 %31, label %32, label %42

32:                                               ; preds = %51, %29
  %33 = phi i64 [ %30, %29 ], [ %52, %51 ]
  br label %34, !llvm.loop !35

34:                                               ; preds = %32, %22
  %35 = phi i64 [ %33, %32 ], [ %25, %22 ]
  %36 = getelementptr inbounds i8, ptr %24, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !13
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds [256 x i64], ptr @table, i64 0, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !31
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %29

42:                                               ; preds = %34, %29
  %43 = phi i64 [ %30, %29 ], [ %35, %34 ]
  br i1 %41, label %44, label %51

44:                                               ; preds = %42
  %45 = sub i64 %43, %4
  %46 = getelementptr i8, ptr %27, i64 %45
  %47 = tail call i32 @strncmp(ptr noundef nonnull %3, ptr noundef %46, i64 noundef %4) #16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = add i64 %43, 1
  br label %51

51:                                               ; preds = %49, %42
  %52 = phi i64 [ %50, %49 ], [ %43, %42 ]
  %53 = icmp ult i64 %52, %26
  br i1 %53, label %32, label %54

54:                                               ; preds = %51, %44, %22
  %55 = phi ptr [ null, %22 ], [ %46, %44 ], [ null, %51 ]
  %56 = icmp eq ptr %55, null
  %57 = select i1 %56, ptr @.str.213, ptr @.str.212
  %58 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.211, ptr noundef nonnull %3, ptr noundef nonnull %57, ptr noundef %24)
  br i1 %56, label %61, label %59

59:                                               ; preds = %54
  %60 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.214, ptr noundef nonnull %55)
  br label %61

61:                                               ; preds = %59, %54
  %62 = load ptr, ptr @stdout, align 8, !tbaa !7
  %63 = tail call i32 @putc(i32 noundef 10, ptr noundef %62)
  %64 = add nuw i64 %2, 1
  %65 = getelementptr inbounds [1333 x ptr], ptr @__const.main.find_strings, i64 0, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !7
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %1, !llvm.loop !36

68:                                               ; preds = %61
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

attributes #0 = { nofree nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind memory(write, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind allocsize(1) }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(none) }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!9, !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = !{!32, !32, i64 0}
!32 = !{!"long", !9, i64 0}
!33 = distinct !{!33, !15}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !15}
