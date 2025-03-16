; ModuleID = 'src/pbmsrch_large.c'
source_filename = "src/pbmsrch_large.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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

; Function Attrs: nofree nounwind memory(write, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @init_search(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #5
  store i64 %2, ptr @len, align 8, !tbaa !5
  br label %5

3:                                                ; preds = %5
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %20, label %10

5:                                                ; preds = %1, %5
  %6 = phi i64 [ 0, %1 ], [ %8, %5 ]
  %7 = getelementptr inbounds [256 x i64], ptr @table, i64 0, i64 %6
  store i64 %2, ptr %7, align 8, !tbaa !5
  %8 = add nuw nsw i64 %6, 1
  %9 = icmp eq i64 %8, 256
  br i1 %9, label %3, label %5, !llvm.loop !9

10:                                               ; preds = %3, %10
  %11 = phi i64 [ %18, %10 ], [ 0, %3 ]
  %12 = xor i64 %11, -1
  %13 = add i64 %2, %12
  %14 = getelementptr inbounds i8, ptr %0, i64 %11
  %15 = load i8, ptr %14, align 1, !tbaa !11
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds [256 x i64], ptr @table, i64 0, i64 %16
  store i64 %13, ptr %17, align 8, !tbaa !5
  %18 = add nuw i64 %11, 1
  %19 = icmp eq i64 %18, %2
  br i1 %19, label %20, label %10, !llvm.loop !12

20:                                               ; preds = %10, %3
  store ptr %0, ptr @findme, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @strsearch(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = load i64, ptr @len, align 8, !tbaa !5
  %3 = add i64 %2, -1
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #5
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

12:                                               ; preds = %9, %31
  %13 = phi i64 [ %10, %9 ], [ %32, %31 ]
  br label %14, !llvm.loop !15

14:                                               ; preds = %12, %7
  %15 = phi i64 [ %3, %7 ], [ %13, %12 ]
  %16 = getelementptr inbounds i8, ptr %0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !11
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds [256 x i64], ptr @table, i64 0, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !5
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %9

22:                                               ; preds = %9, %14
  %23 = phi i64 [ %10, %9 ], [ %15, %14 ]
  br i1 %21, label %24, label %31

24:                                               ; preds = %22
  %25 = sub i64 %23, %2
  %26 = getelementptr i8, ptr %5, i64 %25
  %27 = tail call i32 @strncmp(ptr noundef %8, ptr noundef %26, i64 noundef %2) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = add i64 %23, 1
  br label %31

31:                                               ; preds = %29, %22
  %32 = phi i64 [ %30, %29 ], [ %23, %22 ]
  %33 = icmp ult i64 %32, %4
  br i1 %33, label %12, label %34

34:                                               ; preds = %24, %31, %1
  %35 = phi ptr [ null, %1 ], [ %26, %24 ], [ null, %31 ]
  ret ptr %35
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  br label %1

1:                                                ; preds = %0, %61
  %2 = phi i64 [ 0, %0 ], [ %64, %61 ]
  %3 = phi ptr [ @.str, %0 ], [ %66, %61 ]
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #5
  store i64 %4, ptr @len, align 8, !tbaa !5
  br label %7

5:                                                ; preds = %7
  %6 = icmp eq i64 %4, 0
  br i1 %6, label %22, label %12

7:                                                ; preds = %7, %1
  %8 = phi i64 [ 0, %1 ], [ %10, %7 ]
  %9 = getelementptr inbounds [256 x i64], ptr @table, i64 0, i64 %8
  store i64 %4, ptr %9, align 8, !tbaa !5
  %10 = add nuw nsw i64 %8, 1
  %11 = icmp eq i64 %10, 256
  br i1 %11, label %5, label %7, !llvm.loop !9

12:                                               ; preds = %5, %12
  %13 = phi i64 [ %20, %12 ], [ 0, %5 ]
  %14 = xor i64 %13, -1
  %15 = add i64 %4, %14
  %16 = getelementptr inbounds i8, ptr %3, i64 %13
  %17 = load i8, ptr %16, align 1, !tbaa !11
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds [256 x i64], ptr @table, i64 0, i64 %18
  store i64 %15, ptr %19, align 8, !tbaa !5
  %20 = add nuw i64 %13, 1
  %21 = icmp eq i64 %20, %4
  br i1 %21, label %22, label %12, !llvm.loop !12

22:                                               ; preds = %12, %5
  store ptr %3, ptr @findme, align 8, !tbaa !13
  %23 = getelementptr inbounds [1332 x ptr], ptr @__const.main.search_strings, i64 0, i64 %2
  %24 = load ptr, ptr %23, align 8, !tbaa !13
  %25 = add i64 %4, -1
  %26 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %24) #5
  %27 = getelementptr i8, ptr %24, i64 1
  %28 = icmp ult i64 %25, %26
  br i1 %28, label %34, label %54

29:                                               ; preds = %34
  %30 = add i64 %40, %35
  %31 = icmp ult i64 %30, %26
  br i1 %31, label %32, label %42

32:                                               ; preds = %29, %51
  %33 = phi i64 [ %30, %29 ], [ %52, %51 ]
  br label %34, !llvm.loop !15

34:                                               ; preds = %22, %32
  %35 = phi i64 [ %33, %32 ], [ %25, %22 ]
  %36 = getelementptr inbounds i8, ptr %24, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !11
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds [256 x i64], ptr @table, i64 0, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !5
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %29

42:                                               ; preds = %34, %29
  %43 = phi i64 [ %30, %29 ], [ %35, %34 ]
  br i1 %41, label %44, label %51

44:                                               ; preds = %42
  %45 = sub i64 %43, %4
  %46 = getelementptr i8, ptr %27, i64 %45
  %47 = tail call i32 @strncmp(ptr noundef nonnull %3, ptr noundef %46, i64 noundef %4) #5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = add i64 %43, 1
  br label %51

51:                                               ; preds = %49, %42
  %52 = phi i64 [ %50, %49 ], [ %43, %42 ]
  %53 = icmp ult i64 %52, %26
  br i1 %53, label %32, label %54

54:                                               ; preds = %44, %51, %22
  %55 = phi ptr [ null, %22 ], [ %46, %44 ], [ null, %51 ]
  %56 = icmp eq ptr %55, null
  %57 = select i1 %56, ptr @.str.213, ptr @.str.212
  %58 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.211, ptr noundef nonnull %3, ptr noundef nonnull %57, ptr noundef %24)
  br i1 %56, label %61, label %59

59:                                               ; preds = %54
  %60 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.214, ptr noundef nonnull %55)
  br label %61

61:                                               ; preds = %59, %54
  %62 = load ptr, ptr @stdout, align 8, !tbaa !13
  %63 = tail call i32 @putc(i32 noundef 10, ptr noundef %62)
  %64 = add nuw i64 %2, 1
  %65 = getelementptr inbounds [1333 x ptr], ptr @__const.main.find_strings, i64 0, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !13
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %1, !llvm.loop !16

68:                                               ; preds = %61
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

attributes #0 = { nofree nounwind memory(write, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !10}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
