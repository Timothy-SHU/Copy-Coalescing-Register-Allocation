; ModuleID = 'magick/geometry.c'
source_filename = "magick/geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._GeometryInfo = type { double, double, double, double, double }
%struct._AffineMatrix = type { double, double, double, double, double, double }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }

@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@GetPageGeometry.PageSizes = internal unnamed_addr constant [76 x [2 x ptr]] [[2 x ptr] [ptr @.str.1, ptr @.str.2], [2 x ptr] [ptr @.str.3, ptr @.str.4], [2 x ptr] [ptr @.str.5, ptr @.str.6], [2 x ptr] [ptr @.str.7, ptr @.str.8], [2 x ptr] [ptr @.str.9, ptr @.str.10], [2 x ptr] [ptr @.str.11, ptr @.str.12], [2 x ptr] [ptr @.str.13, ptr @.str.14], [2 x ptr] [ptr @.str.15, ptr @.str.16], [2 x ptr] [ptr @.str.17, ptr @.str.18], [2 x ptr] [ptr @.str.19, ptr @.str.20], [2 x ptr] [ptr @.str.21, ptr @.str.22], [2 x ptr] [ptr @.str.23, ptr @.str.24], [2 x ptr] [ptr @.str.25, ptr @.str.26], [2 x ptr] [ptr @.str.27, ptr @.str.28], [2 x ptr] [ptr @.str.29, ptr @.str.30], [2 x ptr] [ptr @.str.31, ptr @.str.30], [2 x ptr] [ptr @.str.32, ptr @.str.33], [2 x ptr] [ptr @.str.34, ptr @.str.35], [2 x ptr] [ptr @.str.36, ptr @.str.37], [2 x ptr] [ptr @.str.38, ptr @.str.39], [2 x ptr] [ptr @.str.40, ptr @.str.41], [2 x ptr] [ptr @.str.42, ptr @.str.12], [2 x ptr] [ptr @.str.43, ptr @.str.44], [2 x ptr] [ptr @.str.45, ptr @.str.46], [2 x ptr] [ptr @.str.47, ptr @.str.48], [2 x ptr] [ptr @.str.49, ptr @.str.50], [2 x ptr] [ptr @.str.51, ptr @.str.52], [2 x ptr] [ptr @.str.53, ptr @.str.54], [2 x ptr] [ptr @.str.55, ptr @.str.56], [2 x ptr] [ptr @.str.57, ptr @.str.58], [2 x ptr] [ptr @.str.59, ptr @.str.60], [2 x ptr] [ptr @.str.61, ptr @.str.62], [2 x ptr] [ptr @.str.63, ptr @.str.64], [2 x ptr] [ptr @.str.65, ptr @.str.66], [2 x ptr] [ptr @.str.67, ptr @.str.68], [2 x ptr] [ptr @.str.69, ptr @.str.70], [2 x ptr] [ptr @.str.71, ptr @.str.72], [2 x ptr] [ptr @.str.73, ptr @.str.74], [2 x ptr] [ptr @.str.75, ptr @.str.76], [2 x ptr] [ptr @.str.77, ptr @.str.78], [2 x ptr] [ptr @.str.79, ptr @.str.80], [2 x ptr] [ptr @.str.81, ptr @.str.82], [2 x ptr] [ptr @.str.83, ptr @.str.84], [2 x ptr] [ptr @.str.85, ptr @.str.86], [2 x ptr] [ptr @.str.87, ptr @.str.88], [2 x ptr] [ptr @.str.89, ptr @.str.90], [2 x ptr] [ptr @.str.91, ptr @.str.92], [2 x ptr] [ptr @.str.93, ptr @.str.92], [2 x ptr] [ptr @.str.94, ptr @.str.92], [2 x ptr] [ptr @.str.95, ptr @.str.96], [2 x ptr] [ptr @.str.97, ptr @.str.98], [2 x ptr] [ptr @.str.99, ptr @.str.100], [2 x ptr] [ptr @.str.101, ptr @.str.102], [2 x ptr] [ptr @.str.103, ptr @.str.104], [2 x ptr] [ptr @.str.105, ptr @.str.106], [2 x ptr] [ptr @.str.107, ptr @.str.108], [2 x ptr] [ptr @.str.109, ptr @.str.110], [2 x ptr] [ptr @.str.111, ptr @.str.112], [2 x ptr] [ptr @.str.113, ptr @.str.114], [2 x ptr] [ptr @.str.115, ptr @.str.116], [2 x ptr] [ptr @.str.117, ptr @.str.118], [2 x ptr] [ptr @.str.119, ptr @.str.120], [2 x ptr] [ptr @.str.121, ptr @.str.122], [2 x ptr] [ptr @.str.123, ptr @.str.124], [2 x ptr] [ptr @.str.125, ptr @.str.126], [2 x ptr] [ptr @.str.127, ptr @.str.128], [2 x ptr] [ptr @.str.129, ptr @.str.130], [2 x ptr] [ptr @.str.131, ptr @.str.132], [2 x ptr] [ptr @.str.133, ptr @.str.134], [2 x ptr] [ptr @.str.135, ptr @.str.136], [2 x ptr] [ptr @.str.137, ptr @.str.138], [2 x ptr] [ptr @.str.139, ptr @.str.138], [2 x ptr] [ptr @.str.140, ptr @.str.141], [2 x ptr] [ptr @.str.142, ptr @.str.96], [2 x ptr] [ptr @.str.143, ptr @.str.18], [2 x ptr] zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [4 x i8] c"4x6\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"288x432\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"5x7\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"360x504\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"7x9\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"504x648\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"8x10\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"576x720\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"9x11\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"648x792\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"9x12\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"648x864\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"10x13\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"720x936\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"10x14\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"720x1008\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"11x17\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"792x1224\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"2384x3370\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"a1\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"1684x2384\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"a10\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"73x105\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"a2\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"1191x1684\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"a3\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"842x1191\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"a4\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"595x842\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"a4small\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"a5\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"420x595\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"a6\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"297x420\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"a7\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"210x297\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"a8\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"148x210\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"a9\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"105x148\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"archa\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"archb\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"864x1296\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"archC\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"1296x1728\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"archd\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"1728x2592\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"arche\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"2592x3456\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"b0\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"2920x4127\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"b1\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"2064x2920\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"b10\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"91x127\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"b2\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"1460x2064\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"b3\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"1032x1460\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"b4\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"729x1032\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"b5\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"516x729\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"b6\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"363x516\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"b7\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"258x363\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"b8\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"181x258\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"b9\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"127x181\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"c0\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"2599x3676\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"c1\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"1837x2599\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"c2\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"1298x1837\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"c3\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"918x1296\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"c4\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"649x918\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"c5\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"459x649\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"c6\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"323x459\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"c7\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"230x323\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"executive\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"540x720\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"flsa\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"612x936\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"flse\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"folio\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"halfletter\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"396x612\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"isob0\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"2835x4008\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"isob1\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"2004x2835\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"isob10\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"88x125\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"isob2\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"1417x2004\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"isob3\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"1001x1417\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"isob4\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"709x1001\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"isob5\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"499x709\00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"isob6\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"354x499\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"isob7\00", align 1
@.str.114 = private unnamed_addr constant [8 x i8] c"249x354\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"isob8\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"176x249\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"isob9\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"125x176\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"jisb0\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"1030x1456\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"jisb1\00", align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"728x1030\00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c"jisb2\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"515x728\00", align 1
@.str.125 = private unnamed_addr constant [6 x i8] c"jisb3\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"364x515\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"jisb4\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"257x364\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"jisb5\00", align 1
@.str.130 = private unnamed_addr constant [8 x i8] c"182x257\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"jisb6\00", align 1
@.str.132 = private unnamed_addr constant [8 x i8] c"128x182\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"ledger\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"1224x792\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"legal\00", align 1
@.str.136 = private unnamed_addr constant [9 x i8] c"612x1008\00", align 1
@.str.137 = private unnamed_addr constant [7 x i8] c"letter\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"612x792\00", align 1
@.str.139 = private unnamed_addr constant [12 x i8] c"lettersmall\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"quarto\00", align 1
@.str.141 = private unnamed_addr constant [8 x i8] c"610x780\00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"statement\00", align 1
@.str.143 = private unnamed_addr constant [8 x i8] c"tabloid\00", align 1
@.str.144 = private unnamed_addr constant [18 x i8] c"magick/geometry.c\00", align 1
@.str.145 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.147 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.148 = private unnamed_addr constant [14 x i8] c"0123456789-, \00", align 1
@.str.149 = private unnamed_addr constant [16 x i8] c"InvalidArgument\00", align 1
@.str.150 = private unnamed_addr constant [30 x i8] c"'%s' : 'Indeterminate Matrix'\00", align 1
@.str.151 = private unnamed_addr constant [16 x i8] c"InvalidGeometry\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c"...\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetGeometry(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca [4096 x i8], align 16
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %9 = icmp eq ptr %0, null
  br i1 %9, label %205, label %10

10:                                               ; preds = %5
  %11 = load i8, ptr %0, align 1, !tbaa !34
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %205, label %13

13:                                               ; preds = %10
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %15 = icmp ugt i64 %14, 4094
  br i1 %15, label %205, label %16

16:                                               ; preds = %13
  %17 = call i64 @CopyMagickString(ptr noundef nonnull %7, ptr noundef nonnull %0, i64 noundef 4096) #13
  store ptr %7, ptr %6, align 8, !tbaa !37
  %18 = load i8, ptr %7, align 16, !tbaa !34
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %205, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @__ctype_b_loc() #14
  br label %22

22:                                               ; preds = %20, %74
  %23 = phi i8 [ %18, %20 ], [ %77, %74 ]
  %24 = phi ptr [ %7, %20 ], [ %76, %74 ]
  %25 = phi i32 [ 0, %20 ], [ %75, %74 ]
  br label %26

26:                                               ; preds = %22, %35
  %27 = phi i8 [ %23, %22 ], [ %39, %35 ]
  %28 = phi ptr [ %24, %22 ], [ %38, %35 ]
  %29 = load ptr, ptr %21, align 8, !tbaa !37
  %30 = zext i8 %27 to i64
  %31 = getelementptr inbounds i16, ptr %29, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !39
  %33 = and i16 %32, 8192
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds i8, ptr %28, i64 1
  %37 = call i64 @CopyMagickString(ptr noundef nonnull %28, ptr noundef nonnull %36, i64 noundef 4096) #13
  %38 = load ptr, ptr %6, align 8, !tbaa !37
  %39 = load i8, ptr %38, align 1, !tbaa !34
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %79, label %26, !llvm.loop !41

41:                                               ; preds = %26
  switch i8 %27, label %205 [
    i8 37, label %42
    i8 33, label %46
    i8 60, label %50
    i8 62, label %54
    i8 94, label %58
    i8 64, label %62
    i8 40, label %66
    i8 41, label %66
    i8 120, label %69
    i8 88, label %69
    i8 45, label %72
    i8 46, label %72
    i8 44, label %72
    i8 43, label %72
    i8 48, label %72
    i8 49, label %72
    i8 50, label %72
    i8 51, label %72
    i8 52, label %72
    i8 53, label %72
    i8 54, label %72
    i8 55, label %72
    i8 56, label %72
    i8 57, label %72
    i8 69, label %72
    i8 101, label %72
  ]

42:                                               ; preds = %41
  %43 = or i32 %25, 4096
  %44 = getelementptr inbounds i8, ptr %28, i64 1
  %45 = call i64 @CopyMagickString(ptr noundef nonnull %28, ptr noundef nonnull %44, i64 noundef 4096) #13
  br label %74

46:                                               ; preds = %41
  %47 = or i32 %25, 8192
  %48 = getelementptr inbounds i8, ptr %28, i64 1
  %49 = call i64 @CopyMagickString(ptr noundef nonnull %28, ptr noundef nonnull %48, i64 noundef 4096) #13
  br label %74

50:                                               ; preds = %41
  %51 = or i32 %25, 16384
  %52 = getelementptr inbounds i8, ptr %28, i64 1
  %53 = call i64 @CopyMagickString(ptr noundef nonnull %28, ptr noundef nonnull %52, i64 noundef 4096) #13
  br label %74

54:                                               ; preds = %41
  %55 = or i32 %25, 32768
  %56 = getelementptr inbounds i8, ptr %28, i64 1
  %57 = call i64 @CopyMagickString(ptr noundef nonnull %28, ptr noundef nonnull %56, i64 noundef 4096) #13
  br label %74

58:                                               ; preds = %41
  %59 = or i32 %25, 65536
  %60 = getelementptr inbounds i8, ptr %28, i64 1
  %61 = call i64 @CopyMagickString(ptr noundef nonnull %28, ptr noundef nonnull %60, i64 noundef 4096) #13
  br label %74

62:                                               ; preds = %41
  %63 = or i32 %25, 131072
  %64 = getelementptr inbounds i8, ptr %28, i64 1
  %65 = call i64 @CopyMagickString(ptr noundef nonnull %28, ptr noundef nonnull %64, i64 noundef 4096) #13
  br label %74

66:                                               ; preds = %41, %41
  %67 = getelementptr inbounds i8, ptr %28, i64 1
  %68 = call i64 @CopyMagickString(ptr noundef nonnull %28, ptr noundef nonnull %67, i64 noundef 4096) #13
  br label %74

69:                                               ; preds = %41, %41
  %70 = or i32 %25, 524288
  %71 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %71, ptr %6, align 8, !tbaa !37
  br label %74

72:                                               ; preds = %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41
  %73 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %73, ptr %6, align 8, !tbaa !37
  br label %74

74:                                               ; preds = %72, %69, %66, %62, %58, %54, %50, %46, %42
  %75 = phi i32 [ %25, %72 ], [ %70, %69 ], [ %25, %66 ], [ %63, %62 ], [ %59, %58 ], [ %55, %54 ], [ %51, %50 ], [ %47, %46 ], [ %43, %42 ]
  %76 = load ptr, ptr %6, align 8, !tbaa !37
  %77 = load i8, ptr %76, align 1, !tbaa !34
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %22, !llvm.loop !41

79:                                               ; preds = %74, %35
  %80 = phi i32 [ %25, %35 ], [ %75, %74 ]
  %81 = load i8, ptr %7, align 16, !tbaa !34
  store ptr %7, ptr %6, align 8, !tbaa !37
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %205, label %83

83:                                               ; preds = %79
  store ptr %7, ptr %8, align 8, !tbaa !37
  %84 = call fastcc double @StringToDouble(ptr noundef nonnull %7, ptr noundef nonnull %8) #15
  %85 = call i32 @LocaleNCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str, i64 noundef 2) #13
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = call i64 @strtol(ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 10) #13
  br label %89

89:                                               ; preds = %87, %83
  %90 = load i8, ptr %7, align 16, !tbaa !34
  switch i8 %90, label %91 [
    i8 43, label %113
    i8 45, label %113
  ]

91:                                               ; preds = %89
  %92 = load ptr, ptr %8, align 8, !tbaa !37
  %93 = load i8, ptr %92, align 1, !tbaa !34
  switch i8 %93, label %113 [
    i8 -41, label %94
    i8 120, label %94
    i8 88, label %94
    i8 0, label %94
  ]

94:                                               ; preds = %91, %91, %91, %91
  store ptr %7, ptr %8, align 8, !tbaa !37
  %95 = call i32 @LocaleNCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str, i64 noundef 2) #13
  %96 = icmp eq i32 %95, 0
  %97 = load ptr, ptr %6, align 8, !tbaa !37
  br i1 %96, label %98, label %100

98:                                               ; preds = %94
  %99 = call i64 @strtol(ptr noundef %97, ptr noundef nonnull %6, i32 noundef 10) #13
  br label %105

100:                                              ; preds = %94
  %101 = call fastcc double @StringToDouble(ptr noundef %97, ptr noundef nonnull %6) #15
  %102 = fadd double %101, 5.000000e-01
  %103 = call double @llvm.floor.f64(double %102)
  %104 = fptoui double %103 to i64
  br label %105

105:                                              ; preds = %100, %98
  %106 = phi i64 [ %104, %100 ], [ %99, %98 ]
  store i64 %106, ptr %3, align 8, !tbaa !43
  %107 = load ptr, ptr %6, align 8, !tbaa !37
  %108 = load ptr, ptr %8, align 8, !tbaa !37
  %109 = icmp eq ptr %107, %108
  %110 = or i32 %80, 4
  %111 = select i1 %109, i32 %80, i32 %110
  %112 = load i8, ptr %107, align 1, !tbaa !34
  br label %113

113:                                              ; preds = %105, %91, %89, %89
  %114 = phi i8 [ %90, %89 ], [ %90, %89 ], [ %90, %91 ], [ %112, %105 ]
  %115 = phi ptr [ %7, %89 ], [ %7, %89 ], [ %7, %91 ], [ %107, %105 ]
  %116 = phi i32 [ %80, %89 ], [ %80, %89 ], [ %80, %91 ], [ %111, %105 ]
  switch i8 %114, label %131 [
    i8 88, label %117
    i8 120, label %117
    i8 -41, label %117
  ]

117:                                              ; preds = %113, %113, %113
  %118 = getelementptr inbounds i8, ptr %115, i64 1
  store ptr %118, ptr %6, align 8, !tbaa !37
  %119 = load i8, ptr %118, align 1, !tbaa !34
  switch i8 %119, label %120 [
    i8 43, label %131
    i8 45, label %131
  ]

120:                                              ; preds = %117
  store ptr %118, ptr %8, align 8, !tbaa !37
  %121 = call fastcc double @StringToDouble(ptr noundef nonnull %118, ptr noundef nonnull %6) #15
  %122 = fadd double %121, 5.000000e-01
  %123 = call double @llvm.floor.f64(double %122)
  %124 = fptoui double %123 to i64
  store i64 %124, ptr %4, align 8, !tbaa !43
  %125 = load ptr, ptr %6, align 8, !tbaa !37
  %126 = load ptr, ptr %8, align 8, !tbaa !37
  %127 = icmp eq ptr %125, %126
  %128 = or i32 %116, 8
  %129 = select i1 %127, i32 %116, i32 %128
  %130 = load i8, ptr %125, align 1, !tbaa !34
  br label %131

131:                                              ; preds = %120, %117, %117, %113
  %132 = phi i8 [ %119, %117 ], [ %114, %113 ], [ %119, %117 ], [ %130, %120 ]
  %133 = phi ptr [ %118, %117 ], [ %115, %113 ], [ %118, %117 ], [ %125, %120 ]
  %134 = phi i32 [ %116, %117 ], [ %116, %113 ], [ %116, %117 ], [ %129, %120 ]
  switch i8 %132, label %160 [
    i8 43, label %135
    i8 45, label %135
  ]

135:                                              ; preds = %131, %131
  br label %136

136:                                              ; preds = %135, %140
  %137 = phi i8 [ %145, %140 ], [ %132, %135 ]
  %138 = phi ptr [ %144, %140 ], [ %133, %135 ]
  %139 = phi i32 [ %143, %140 ], [ %134, %135 ]
  switch i8 %137, label %146 [
    i8 43, label %140
    i8 45, label %140
  ]

140:                                              ; preds = %136, %136
  %141 = icmp eq i8 %137, 45
  %142 = xor i32 %139, 32
  %143 = select i1 %141, i32 %142, i32 %139
  %144 = getelementptr inbounds i8, ptr %138, i64 1
  store ptr %144, ptr %6, align 8, !tbaa !37
  %145 = load i8, ptr %144, align 1, !tbaa !34
  br label %136, !llvm.loop !45

146:                                              ; preds = %136
  store ptr %138, ptr %8, align 8, !tbaa !37
  %147 = call fastcc double @StringToDouble(ptr noundef nonnull %138, ptr noundef nonnull %6) #15
  %148 = fadd double %147, -5.000000e-01
  %149 = call double @llvm.ceil.f64(double %148)
  %150 = fptosi double %149 to i64
  store i64 %150, ptr %1, align 8, !tbaa !43
  %151 = load ptr, ptr %6, align 8, !tbaa !37
  %152 = load ptr, ptr %8, align 8, !tbaa !37
  %153 = icmp eq ptr %151, %152
  br i1 %153, label %160, label %154

154:                                              ; preds = %146
  %155 = or i32 %139, 1
  %156 = and i32 %139, 32
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %154
  %159 = sub nsw i64 0, %150
  store i64 %159, ptr %1, align 8, !tbaa !43
  br label %160

160:                                              ; preds = %131, %146, %158, %154
  %161 = phi ptr [ %151, %158 ], [ %151, %154 ], [ %151, %146 ], [ %133, %131 ]
  %162 = phi i32 [ %155, %158 ], [ %155, %154 ], [ %139, %146 ], [ %134, %131 ]
  %163 = load i8, ptr %161, align 1, !tbaa !34
  switch i8 %163, label %189 [
    i8 43, label %164
    i8 45, label %164
  ]

164:                                              ; preds = %160, %160
  br label %165

165:                                              ; preds = %164, %169
  %166 = phi i8 [ %174, %169 ], [ %163, %164 ]
  %167 = phi ptr [ %173, %169 ], [ %161, %164 ]
  %168 = phi i32 [ %172, %169 ], [ %162, %164 ]
  switch i8 %166, label %175 [
    i8 43, label %169
    i8 45, label %169
  ]

169:                                              ; preds = %165, %165
  %170 = icmp eq i8 %166, 45
  %171 = xor i32 %168, 64
  %172 = select i1 %170, i32 %171, i32 %168
  %173 = getelementptr inbounds i8, ptr %167, i64 1
  store ptr %173, ptr %6, align 8, !tbaa !37
  %174 = load i8, ptr %173, align 1, !tbaa !34
  br label %165, !llvm.loop !46

175:                                              ; preds = %165
  store ptr %167, ptr %8, align 8, !tbaa !37
  %176 = call fastcc double @StringToDouble(ptr noundef nonnull %167, ptr noundef nonnull %6) #15
  %177 = fadd double %176, -5.000000e-01
  %178 = call double @llvm.ceil.f64(double %177)
  %179 = fptosi double %178 to i64
  store i64 %179, ptr %2, align 8, !tbaa !43
  %180 = load ptr, ptr %6, align 8, !tbaa !37
  %181 = load ptr, ptr %8, align 8, !tbaa !37
  %182 = icmp eq ptr %180, %181
  br i1 %182, label %189, label %183

183:                                              ; preds = %175
  %184 = or i32 %168, 2
  %185 = and i32 %168, 64
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %183
  %188 = sub nsw i64 0, %179
  store i64 %188, ptr %2, align 8, !tbaa !43
  br label %189

189:                                              ; preds = %160, %175, %187, %183
  %190 = phi i32 [ %184, %187 ], [ %184, %183 ], [ %168, %175 ], [ %162, %160 ]
  %191 = and i32 %190, 4096
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %205, label %193

193:                                              ; preds = %189
  %194 = and i32 %190, 524296
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i64, ptr %3, align 8, !tbaa !43
  store i64 %197, ptr %4, align 8, !tbaa !43
  %198 = or disjoint i32 %190, 8
  br label %199

199:                                              ; preds = %196, %193
  %200 = phi i32 [ %198, %196 ], [ %190, %193 ]
  %201 = and i32 %200, 524292
  %202 = icmp eq i32 %201, 524288
  br i1 %202, label %203, label %205

203:                                              ; preds = %199
  %204 = load i64, ptr %4, align 8, !tbaa !43
  store i64 %204, ptr %3, align 8, !tbaa !43
  br label %205

205:                                              ; preds = %41, %16, %189, %203, %199, %79, %13, %5, %10
  %206 = phi i32 [ 0, %10 ], [ 0, %5 ], [ 0, %13 ], [ %80, %79 ], [ %200, %203 ], [ %200, %199 ], [ %190, %189 ], [ 0, %16 ], [ %25, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  ret i32 %206
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @StringToDouble(ptr noalias noundef %0, ptr noalias noundef %1) unnamed_addr #0 !PGOFuncName !47 {
  %3 = tail call double @InterpretLocaleValue(ptr noundef %0, ptr noundef %1) #13
  ret double %3
}

; Function Attrs: optsize
declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetPageGeometry(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._RectangleInfo, align 8
  %3 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 432, ptr noundef nonnull @.str.146, ptr noundef %0) #13
  %4 = tail call ptr @AcquireString(ptr noundef %0) #13
  br label %5

5:                                                ; preds = %1, %27
  %6 = phi ptr [ @.str.1, %1 ], [ %30, %27 ]
  %7 = phi i64 [ 0, %1 ], [ %28, %27 ]
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #12
  %9 = tail call i32 @LocaleNCompare(ptr noundef nonnull %6, ptr noundef %4, i64 noundef %8) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #11
  %12 = getelementptr inbounds [76 x [2 x ptr]], ptr @GetPageGeometry.PageSizes, i64 0, i64 %7, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !37
  %14 = tail call i64 @CopyMagickString(ptr noundef %4, ptr noundef %13, i64 noundef 4096) #13
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #12
  %16 = getelementptr inbounds i8, ptr %0, i64 %15
  %17 = tail call i64 @ConcatenateMagickString(ptr noundef %4, ptr noundef %16, i64 noundef 4096) #13
  %18 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 2
  %19 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 3
  %20 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 1
  %21 = call i32 @GetGeometry(ptr noundef %4, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %2, ptr noundef nonnull %20) #15
  %22 = and i32 %21, 32768
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %11
  %25 = tail call i64 @ConcatenateMagickString(ptr noundef %4, ptr noundef nonnull @.str.147, i64 noundef 4096) #13
  br label %26

26:                                               ; preds = %24, %11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #11
  br label %32

27:                                               ; preds = %5
  %28 = add nuw nsw i64 %7, 1
  %29 = getelementptr inbounds [76 x [2 x ptr]], ptr @GetPageGeometry.PageSizes, i64 0, i64 %28
  %30 = load ptr, ptr %29, align 16, !tbaa !37
  %31 = icmp eq i64 %28, 75
  br i1 %31, label %32, label %5, !llvm.loop !48

32:                                               ; preds = %27, %26
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @GravityAdjustGeometry(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #7 {
  %5 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !49
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  store i64 %1, ptr %5, align 8, !tbaa !49
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i64 [ %1, %8 ], [ %6, %4 ]
  %11 = load i64, ptr %3, align 8, !tbaa !51
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i64 %0, ptr %3, align 8, !tbaa !51
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi i64 [ %0, %13 ], [ %11, %9 ]
  switch i32 %2, label %41 [
    i32 3, label %16
    i32 6, label %16
    i32 9, label %16
    i32 2, label %21
    i32 8, label %21
    i32 5, label %21
    i32 10, label %21
    i32 7, label %29
    i32 4, label %34
  ]

16:                                               ; preds = %14, %14, %14
  %17 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !52
  %19 = add i64 %15, %18
  %20 = sub i64 %0, %19
  store i64 %20, ptr %17, align 8, !tbaa !52
  br label %28

21:                                               ; preds = %14, %14, %14, %14
  %22 = lshr i64 %0, 1
  %23 = lshr i64 %15, 1
  %24 = sub nsw i64 %22, %23
  %25 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !52
  %27 = add nsw i64 %24, %26
  store i64 %27, ptr %25, align 8, !tbaa !52
  br label %28

28:                                               ; preds = %21, %16
  switch i32 %2, label %41 [
    i32 7, label %29
    i32 8, label %29
    i32 9, label %29
    i32 6, label %34
    i32 4, label %34
    i32 5, label %34
    i32 10, label %34
  ]

29:                                               ; preds = %14, %28, %28, %28
  %30 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 3
  %31 = load i64, ptr %30, align 8, !tbaa !53
  %32 = add i64 %10, %31
  %33 = sub i64 %1, %32
  store i64 %33, ptr %30, align 8, !tbaa !53
  br label %41

34:                                               ; preds = %14, %28, %28, %28, %28
  %35 = lshr i64 %1, 1
  %36 = lshr i64 %10, 1
  %37 = sub nsw i64 %35, %36
  %38 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 3
  %39 = load i64, ptr %38, align 8, !tbaa !53
  %40 = add nsw i64 %37, %39
  store i64 %40, ptr %38, align 8, !tbaa !53
  br label %41

41:                                               ; preds = %14, %28, %34, %29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @IsGeometry(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #11
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = call i32 @ParseGeometry(ptr noundef nonnull %0, ptr noundef nonnull %2) #15, !range !54
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #11
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ParseGeometry(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca [4096 x i8], align 16
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %6 = icmp eq ptr %0, null
  br i1 %6, label %324, label %7

7:                                                ; preds = %2
  %8 = load i8, ptr %0, align 1, !tbaa !34
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %324, label %10

10:                                               ; preds = %7
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %12 = icmp ugt i64 %11, 4094
  br i1 %12, label %324, label %13

13:                                               ; preds = %10
  %14 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull %0, i64 noundef 4096) #13
  store ptr %4, ptr %3, align 8, !tbaa !37
  %15 = load i8, ptr %4, align 16, !tbaa !34
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %324, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @__ctype_b_loc() #14
  br label %19

19:                                               ; preds = %17, %74
  %20 = phi i8 [ %15, %17 ], [ %77, %74 ]
  %21 = phi ptr [ %4, %17 ], [ %76, %74 ]
  %22 = phi i32 [ 0, %17 ], [ %75, %74 ]
  br label %23

23:                                               ; preds = %19, %32
  %24 = phi i8 [ %20, %19 ], [ %36, %32 ]
  %25 = phi ptr [ %21, %19 ], [ %35, %32 ]
  %26 = load ptr, ptr %18, align 8, !tbaa !37
  %27 = zext i8 %24 to i64
  %28 = getelementptr inbounds i16, ptr %26, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !39
  %30 = and i16 %29, 8192
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds i8, ptr %25, i64 1
  %34 = call i64 @CopyMagickString(ptr noundef nonnull %25, ptr noundef nonnull %33, i64 noundef 4096) #13
  %35 = load ptr, ptr %3, align 8, !tbaa !37
  %36 = load i8, ptr %35, align 1, !tbaa !34
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %79, label %23, !llvm.loop !55

38:                                               ; preds = %23
  switch i8 %24, label %324 [
    i8 37, label %39
    i8 33, label %43
    i8 60, label %47
    i8 62, label %51
    i8 94, label %55
    i8 64, label %59
    i8 40, label %63
    i8 41, label %63
    i8 120, label %66
    i8 88, label %66
    i8 45, label %69
    i8 43, label %69
    i8 44, label %69
    i8 48, label %69
    i8 49, label %69
    i8 50, label %69
    i8 51, label %69
    i8 52, label %69
    i8 53, label %69
    i8 54, label %69
    i8 55, label %69
    i8 56, label %69
    i8 57, label %69
    i8 47, label %69
    i8 58, label %69
    i8 -41, label %69
    i8 101, label %69
    i8 69, label %69
    i8 46, label %71
  ]

39:                                               ; preds = %38
  %40 = or i32 %22, 4096
  %41 = getelementptr inbounds i8, ptr %25, i64 1
  %42 = call i64 @CopyMagickString(ptr noundef nonnull %25, ptr noundef nonnull %41, i64 noundef 4096) #13
  br label %74

43:                                               ; preds = %38
  %44 = or i32 %22, 8192
  %45 = getelementptr inbounds i8, ptr %25, i64 1
  %46 = call i64 @CopyMagickString(ptr noundef nonnull %25, ptr noundef nonnull %45, i64 noundef 4096) #13
  br label %74

47:                                               ; preds = %38
  %48 = or i32 %22, 16384
  %49 = getelementptr inbounds i8, ptr %25, i64 1
  %50 = call i64 @CopyMagickString(ptr noundef nonnull %25, ptr noundef nonnull %49, i64 noundef 4096) #13
  br label %74

51:                                               ; preds = %38
  %52 = or i32 %22, 32768
  %53 = getelementptr inbounds i8, ptr %25, i64 1
  %54 = call i64 @CopyMagickString(ptr noundef nonnull %25, ptr noundef nonnull %53, i64 noundef 4096) #13
  br label %74

55:                                               ; preds = %38
  %56 = or i32 %22, 65536
  %57 = getelementptr inbounds i8, ptr %25, i64 1
  %58 = call i64 @CopyMagickString(ptr noundef nonnull %25, ptr noundef nonnull %57, i64 noundef 4096) #13
  br label %74

59:                                               ; preds = %38
  %60 = or i32 %22, 131072
  %61 = getelementptr inbounds i8, ptr %25, i64 1
  %62 = call i64 @CopyMagickString(ptr noundef nonnull %25, ptr noundef nonnull %61, i64 noundef 4096) #13
  br label %74

63:                                               ; preds = %38, %38
  %64 = getelementptr inbounds i8, ptr %25, i64 1
  %65 = call i64 @CopyMagickString(ptr noundef nonnull %25, ptr noundef nonnull %64, i64 noundef 4096) #13
  br label %74

66:                                               ; preds = %38, %38
  %67 = or i32 %22, 524288
  %68 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %68, ptr %3, align 8, !tbaa !37
  br label %74

69:                                               ; preds = %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38
  %70 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %70, ptr %3, align 8, !tbaa !37
  br label %74

71:                                               ; preds = %38
  %72 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %72, ptr %3, align 8, !tbaa !37
  %73 = or i32 %22, 262144
  br label %74

74:                                               ; preds = %71, %69, %66, %63, %59, %55, %51, %47, %43, %39
  %75 = phi i32 [ %73, %71 ], [ %22, %69 ], [ %67, %66 ], [ %22, %63 ], [ %60, %59 ], [ %56, %55 ], [ %52, %51 ], [ %48, %47 ], [ %44, %43 ], [ %40, %39 ]
  %76 = load ptr, ptr %3, align 8, !tbaa !37
  %77 = load i8, ptr %76, align 1, !tbaa !34
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %19, !llvm.loop !55

79:                                               ; preds = %74, %32
  %80 = phi i32 [ %22, %32 ], [ %75, %74 ]
  %81 = load i8, ptr %4, align 16, !tbaa !34
  store ptr %4, ptr %3, align 8, !tbaa !37
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %324, label %83

83:                                               ; preds = %79
  store ptr %4, ptr %5, align 8, !tbaa !37
  %84 = call fastcc double @StringToDouble(ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %85 = load ptr, ptr %3, align 8, !tbaa !37
  %86 = call i32 @LocaleNCompare(ptr noundef %85, ptr noundef nonnull @.str, i64 noundef 2) #13
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load ptr, ptr %3, align 8, !tbaa !37
  %90 = call i64 @strtol(ptr noundef %89, ptr noundef nonnull %5, i32 noundef 10) #13
  br label %91

91:                                               ; preds = %88, %83
  %92 = load ptr, ptr %5, align 8, !tbaa !37
  %93 = load i8, ptr %92, align 1, !tbaa !34
  switch i8 %93, label %94 [
    i8 -41, label %96
    i8 120, label %96
    i8 88, label %96
    i8 44, label %96
    i8 47, label %96
    i8 58, label %96
    i8 0, label %96
  ]

94:                                               ; preds = %91
  %95 = load ptr, ptr %3, align 8, !tbaa !37
  br label %113

96:                                               ; preds = %91, %91, %91, %91, %91, %91, %91
  %97 = load ptr, ptr %3, align 8, !tbaa !37
  store ptr %97, ptr %5, align 8, !tbaa !37
  %98 = call i32 @LocaleNCompare(ptr noundef %97, ptr noundef nonnull @.str, i64 noundef 2) #13
  %99 = icmp eq i32 %98, 0
  %100 = load ptr, ptr %3, align 8, !tbaa !37
  br i1 %99, label %101, label %104

101:                                              ; preds = %96
  %102 = call i64 @strtol(ptr noundef %100, ptr noundef nonnull %3, i32 noundef 10) #13
  %103 = sitofp i64 %102 to double
  br label %106

104:                                              ; preds = %96
  %105 = call fastcc double @StringToDouble(ptr noundef %100, ptr noundef nonnull %3) #15
  br label %106

106:                                              ; preds = %104, %101
  %107 = phi double [ %103, %101 ], [ %105, %104 ]
  %108 = load ptr, ptr %3, align 8, !tbaa !37
  %109 = load ptr, ptr %5, align 8, !tbaa !37
  %110 = icmp eq ptr %108, %109
  br i1 %110, label %113, label %111

111:                                              ; preds = %106
  %112 = or i32 %80, 4
  store double %107, ptr %1, align 8, !tbaa !56
  br label %113

113:                                              ; preds = %94, %106, %111
  %114 = phi ptr [ %108, %111 ], [ %108, %106 ], [ %95, %94 ]
  %115 = phi i32 [ %112, %111 ], [ %80, %106 ], [ %80, %94 ]
  store ptr %114, ptr %5, align 8, !tbaa !37
  %116 = load i8, ptr %114, align 1, !tbaa !34
  switch i8 %116, label %117 [
    i8 -41, label %119
    i8 120, label %119
    i8 88, label %119
    i8 44, label %119
    i8 47, label %119
    i8 58, label %119
  ]

117:                                              ; preds = %113
  %118 = tail call ptr @__ctype_b_loc() #14
  br label %142

119:                                              ; preds = %113, %113, %113, %113, %113, %113
  %120 = tail call ptr @__ctype_b_loc() #14
  br label %121

121:                                              ; preds = %121, %119
  %122 = phi ptr [ %114, %119 ], [ %123, %121 ]
  %123 = getelementptr inbounds i8, ptr %122, i64 1
  store ptr %123, ptr %3, align 8, !tbaa !37
  %124 = load ptr, ptr %120, align 8, !tbaa !37
  %125 = load i8, ptr %123, align 1, !tbaa !34
  %126 = zext i8 %125 to i64
  %127 = getelementptr inbounds i16, ptr %124, i64 %126
  %128 = load i16, ptr %127, align 2, !tbaa !39
  %129 = and i16 %128, 8192
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %131, label %121, !llvm.loop !59

131:                                              ; preds = %121
  %132 = load i8, ptr %114, align 1, !tbaa !34
  switch i8 %132, label %134 [
    i8 -41, label %133
    i8 120, label %133
    i8 88, label %133
  ]

133:                                              ; preds = %131, %131, %131
  switch i8 %125, label %134 [
    i8 43, label %142
    i8 45, label %142
  ]

134:                                              ; preds = %133, %131
  store ptr %123, ptr %5, align 8, !tbaa !37
  %135 = call fastcc double @StringToDouble(ptr noundef nonnull %123, ptr noundef nonnull %3) #15
  %136 = load ptr, ptr %3, align 8, !tbaa !37
  %137 = load ptr, ptr %5, align 8, !tbaa !37
  %138 = icmp eq ptr %136, %137
  br i1 %138, label %142, label %139

139:                                              ; preds = %134
  %140 = or i32 %115, 8
  %141 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  store double %135, ptr %141, align 8, !tbaa !60
  br label %142

142:                                              ; preds = %117, %133, %133, %139, %134
  %143 = phi ptr [ %118, %117 ], [ %120, %133 ], [ %120, %133 ], [ %120, %139 ], [ %120, %134 ]
  %144 = phi ptr [ %114, %117 ], [ %123, %133 ], [ %123, %133 ], [ %136, %139 ], [ %136, %134 ]
  %145 = phi i32 [ %115, %117 ], [ %115, %133 ], [ %115, %133 ], [ %140, %139 ], [ %115, %134 ]
  %146 = load ptr, ptr %143, align 8, !tbaa !37
  %147 = load i8, ptr %144, align 1, !tbaa !34
  %148 = zext i8 %147 to i64
  %149 = getelementptr inbounds i16, ptr %146, i64 %148
  %150 = load i16, ptr %149, align 2, !tbaa !39
  %151 = and i16 %150, 8192
  %152 = icmp eq i16 %151, 0
  br i1 %152, label %163, label %153

153:                                              ; preds = %142, %153
  %154 = phi ptr [ %155, %153 ], [ %144, %142 ]
  %155 = getelementptr inbounds i8, ptr %154, i64 1
  store ptr %155, ptr %3, align 8, !tbaa !37
  %156 = load ptr, ptr %143, align 8, !tbaa !37
  %157 = load i8, ptr %155, align 1, !tbaa !34
  %158 = zext i8 %157 to i64
  %159 = getelementptr inbounds i16, ptr %156, i64 %158
  %160 = load i16, ptr %159, align 2, !tbaa !39
  %161 = and i16 %160, 8192
  %162 = icmp eq i16 %161, 0
  br i1 %162, label %163, label %153, !llvm.loop !61

163:                                              ; preds = %153, %142
  %164 = phi ptr [ %144, %142 ], [ %155, %153 ]
  %165 = phi i8 [ %147, %142 ], [ %157, %153 ]
  switch i8 %165, label %286 [
    i8 44, label %166
    i8 47, label %166
    i8 58, label %166
    i8 43, label %168
    i8 45, label %168
  ]

166:                                              ; preds = %163, %163, %163
  %167 = getelementptr inbounds i8, ptr %164, i64 1
  store ptr %167, ptr %3, align 8, !tbaa !37
  br label %168

168:                                              ; preds = %163, %163, %166
  %169 = phi ptr [ %167, %166 ], [ %164, %163 ], [ %164, %163 ]
  br label %170

170:                                              ; preds = %168, %174
  %171 = phi ptr [ %178, %174 ], [ %169, %168 ]
  %172 = phi i32 [ %177, %174 ], [ %145, %168 ]
  %173 = load i8, ptr %171, align 1, !tbaa !34
  switch i8 %173, label %179 [
    i8 43, label %174
    i8 45, label %174
  ]

174:                                              ; preds = %170, %170
  %175 = icmp eq i8 %173, 45
  %176 = xor i32 %172, 32
  %177 = select i1 %175, i32 %176, i32 %172
  %178 = getelementptr inbounds i8, ptr %171, i64 1
  store ptr %178, ptr %3, align 8, !tbaa !37
  br label %170, !llvm.loop !62

179:                                              ; preds = %170
  store ptr %171, ptr %5, align 8, !tbaa !37
  %180 = call fastcc double @StringToDouble(ptr noundef nonnull %171, ptr noundef nonnull %3) #15
  %181 = load ptr, ptr %3, align 8, !tbaa !37
  %182 = load ptr, ptr %5, align 8, !tbaa !37
  %183 = icmp eq ptr %181, %182
  br i1 %183, label %191, label %184

184:                                              ; preds = %179
  %185 = or i32 %172, 1
  %186 = and i32 %172, 32
  %187 = icmp eq i32 %186, 0
  %188 = fneg double %180
  %189 = select i1 %187, double %180, double %188
  %190 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 2
  store double %189, ptr %190, align 8, !tbaa !63
  br label %191

191:                                              ; preds = %184, %179
  %192 = phi i32 [ %185, %184 ], [ %172, %179 ]
  %193 = load ptr, ptr %143, align 8, !tbaa !37
  %194 = load i8, ptr %181, align 1, !tbaa !34
  %195 = zext i8 %194 to i64
  %196 = getelementptr inbounds i16, ptr %193, i64 %195
  %197 = load i16, ptr %196, align 2, !tbaa !39
  %198 = and i16 %197, 8192
  %199 = icmp eq i16 %198, 0
  br i1 %199, label %210, label %200

200:                                              ; preds = %191, %200
  %201 = phi ptr [ %202, %200 ], [ %181, %191 ]
  %202 = getelementptr inbounds i8, ptr %201, i64 1
  store ptr %202, ptr %3, align 8, !tbaa !37
  %203 = load ptr, ptr %143, align 8, !tbaa !37
  %204 = load i8, ptr %202, align 1, !tbaa !34
  %205 = zext i8 %204 to i64
  %206 = getelementptr inbounds i16, ptr %203, i64 %205
  %207 = load i16, ptr %206, align 2, !tbaa !39
  %208 = and i16 %207, 8192
  %209 = icmp eq i16 %208, 0
  br i1 %209, label %210, label %200, !llvm.loop !64

210:                                              ; preds = %200, %191
  %211 = phi ptr [ %181, %191 ], [ %202, %200 ]
  %212 = phi i8 [ %194, %191 ], [ %204, %200 ]
  switch i8 %212, label %238 [
    i8 44, label %213
    i8 47, label %213
    i8 58, label %213
    i8 43, label %215
    i8 45, label %215
  ]

213:                                              ; preds = %210, %210, %210
  %214 = getelementptr inbounds i8, ptr %211, i64 1
  store ptr %214, ptr %3, align 8, !tbaa !37
  br label %215

215:                                              ; preds = %210, %210, %213
  %216 = phi ptr [ %214, %213 ], [ %211, %210 ], [ %211, %210 ]
  br label %217

217:                                              ; preds = %215, %221
  %218 = phi ptr [ %225, %221 ], [ %216, %215 ]
  %219 = phi i32 [ %224, %221 ], [ %192, %215 ]
  %220 = load i8, ptr %218, align 1, !tbaa !34
  switch i8 %220, label %226 [
    i8 43, label %221
    i8 45, label %221
  ]

221:                                              ; preds = %217, %217
  %222 = icmp eq i8 %220, 45
  %223 = xor i32 %219, 64
  %224 = select i1 %222, i32 %223, i32 %219
  %225 = getelementptr inbounds i8, ptr %218, i64 1
  store ptr %225, ptr %3, align 8, !tbaa !37
  br label %217, !llvm.loop !65

226:                                              ; preds = %217
  store ptr %218, ptr %5, align 8, !tbaa !37
  %227 = call fastcc double @StringToDouble(ptr noundef nonnull %218, ptr noundef nonnull %3) #15
  %228 = load ptr, ptr %3, align 8, !tbaa !37
  %229 = load ptr, ptr %5, align 8, !tbaa !37
  %230 = icmp eq ptr %228, %229
  br i1 %230, label %238, label %231

231:                                              ; preds = %226
  %232 = or i32 %219, 2
  %233 = and i32 %219, 64
  %234 = icmp eq i32 %233, 0
  %235 = fneg double %227
  %236 = select i1 %234, double %227, double %235
  %237 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 3
  store double %236, ptr %237, align 8, !tbaa !66
  br label %238

238:                                              ; preds = %210, %226, %231
  %239 = phi ptr [ %228, %231 ], [ %228, %226 ], [ %211, %210 ]
  %240 = phi i32 [ %232, %231 ], [ %219, %226 ], [ %192, %210 ]
  %241 = load ptr, ptr %143, align 8, !tbaa !37
  %242 = load i8, ptr %239, align 1, !tbaa !34
  %243 = zext i8 %242 to i64
  %244 = getelementptr inbounds i16, ptr %241, i64 %243
  %245 = load i16, ptr %244, align 2, !tbaa !39
  %246 = and i16 %245, 8192
  %247 = icmp eq i16 %246, 0
  br i1 %247, label %258, label %248

248:                                              ; preds = %238, %248
  %249 = phi ptr [ %250, %248 ], [ %239, %238 ]
  %250 = getelementptr inbounds i8, ptr %249, i64 1
  store ptr %250, ptr %3, align 8, !tbaa !37
  %251 = load ptr, ptr %143, align 8, !tbaa !37
  %252 = load i8, ptr %250, align 1, !tbaa !34
  %253 = zext i8 %252 to i64
  %254 = getelementptr inbounds i16, ptr %251, i64 %253
  %255 = load i16, ptr %254, align 2, !tbaa !39
  %256 = and i16 %255, 8192
  %257 = icmp eq i16 %256, 0
  br i1 %257, label %258, label %248, !llvm.loop !67

258:                                              ; preds = %248, %238
  %259 = phi ptr [ %239, %238 ], [ %250, %248 ]
  %260 = phi i8 [ %242, %238 ], [ %252, %248 ]
  switch i8 %260, label %286 [
    i8 44, label %261
    i8 47, label %261
    i8 58, label %261
    i8 43, label %263
    i8 45, label %263
  ]

261:                                              ; preds = %258, %258, %258
  %262 = getelementptr inbounds i8, ptr %259, i64 1
  store ptr %262, ptr %3, align 8, !tbaa !37
  br label %263

263:                                              ; preds = %258, %258, %261
  %264 = phi ptr [ %262, %261 ], [ %259, %258 ], [ %259, %258 ]
  br label %265

265:                                              ; preds = %263, %269
  %266 = phi ptr [ %273, %269 ], [ %264, %263 ]
  %267 = phi i32 [ %272, %269 ], [ %240, %263 ]
  %268 = load i8, ptr %266, align 1, !tbaa !34
  switch i8 %268, label %274 [
    i8 43, label %269
    i8 45, label %269
  ]

269:                                              ; preds = %265, %265
  %270 = icmp eq i8 %268, 45
  %271 = xor i32 %267, 128
  %272 = select i1 %270, i32 %271, i32 %267
  %273 = getelementptr inbounds i8, ptr %266, i64 1
  store ptr %273, ptr %3, align 8, !tbaa !37
  br label %265, !llvm.loop !68

274:                                              ; preds = %265
  store ptr %266, ptr %5, align 8, !tbaa !37
  %275 = call fastcc double @StringToDouble(ptr noundef nonnull %266, ptr noundef nonnull %3) #15
  %276 = load ptr, ptr %3, align 8, !tbaa !37
  %277 = load ptr, ptr %5, align 8, !tbaa !37
  %278 = icmp eq ptr %276, %277
  br i1 %278, label %286, label %279

279:                                              ; preds = %274
  %280 = or i32 %267, 16
  %281 = and i32 %267, 128
  %282 = icmp eq i32 %281, 0
  %283 = fneg double %275
  %284 = select i1 %282, double %275, double %283
  %285 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 4
  store double %284, ptr %285, align 8, !tbaa !69
  br label %286

286:                                              ; preds = %258, %163, %279, %274
  %287 = phi i32 [ %280, %279 ], [ %267, %274 ], [ %145, %163 ], [ %240, %258 ]
  %288 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 58) #12
  %289 = icmp eq ptr %288, null
  br i1 %289, label %299, label %290

290:                                              ; preds = %286
  %291 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %292 = load double, ptr %291, align 8, !tbaa !60
  %293 = load double, ptr %1, align 8, !tbaa !56
  %294 = fdiv double %293, %292
  store double %294, ptr %1, align 8, !tbaa !56
  store double 1.000000e+00, ptr %291, align 8, !tbaa !60
  %295 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 2
  %296 = load double, ptr %295, align 8, !tbaa !63
  %297 = fcmp oeq double %296, 0.000000e+00
  br i1 %297, label %298, label %299

298:                                              ; preds = %290
  store double 2.000000e+00, ptr %291, align 8, !tbaa !60
  br label %299

299:                                              ; preds = %290, %298, %286
  %300 = and i32 %287, 11
  %301 = icmp eq i32 %300, 1
  br i1 %301, label %302, label %308

302:                                              ; preds = %299
  %303 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 2
  %304 = load double, ptr %303, align 8, !tbaa !63
  %305 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  store double %304, ptr %305, align 8, !tbaa !60
  store double 0.000000e+00, ptr %303, align 8, !tbaa !63
  %306 = and i32 %287, -12
  %307 = or disjoint i32 %306, 8
  br label %308

308:                                              ; preds = %302, %299
  %309 = phi i32 [ %307, %302 ], [ %287, %299 ]
  %310 = and i32 %309, 4096
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %324, label %312

312:                                              ; preds = %308
  %313 = and i32 %309, 524296
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %312
  %316 = load double, ptr %1, align 8, !tbaa !56
  %317 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  store double %316, ptr %317, align 8, !tbaa !60
  br label %324

318:                                              ; preds = %312
  %319 = and i32 %309, 524292
  %320 = icmp eq i32 %319, 524288
  br i1 %320, label %321, label %324

321:                                              ; preds = %318
  %322 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %323 = load double, ptr %322, align 8, !tbaa !60
  store double %323, ptr %1, align 8, !tbaa !56
  br label %324

324:                                              ; preds = %38, %13, %315, %308, %321, %318, %79, %10, %2, %7
  %325 = phi i32 [ 0, %7 ], [ 0, %2 ], [ 0, %10 ], [ %80, %79 ], [ %309, %318 ], [ %309, %321 ], [ %309, %308 ], [ %309, %315 ], [ 0, %13 ], [ %22, %38 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i32 %325
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @IsSceneGeometry(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %4 = icmp eq ptr %0, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  store ptr %0, ptr %3, align 8, !tbaa !37
  %6 = call fastcc double @StringToDouble(ptr noundef nonnull %0, ptr noundef nonnull %3) #15
  %7 = load ptr, ptr %3, align 8, !tbaa !37
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = call i64 @strspn(ptr noundef nonnull %0, ptr noundef nonnull @.str.148) #12
  %11 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 44) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %13
  br label %19

19:                                               ; preds = %15, %9, %5, %2, %18
  %20 = phi i32 [ 1, %18 ], [ 0, %2 ], [ 0, %5 ], [ 0, %9 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i32 %20
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ParseAbsoluteGeometry(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %5 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %6 = tail call i32 @GetGeometry(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %5) #15
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ParseAffineGeometry(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  tail call void @GetAffineMatrix(ptr noundef %1) #13
  store ptr %0, ptr %5, align 8, !tbaa !37
  %6 = load i8, ptr %0, align 1, !tbaa !34
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %43, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 5
  %10 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 4
  %11 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 3
  %12 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 2
  %13 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 1
  br label %14

14:                                               ; preds = %8, %37
  %15 = phi ptr [ %0, %8 ], [ %40, %37 ]
  %16 = phi i64 [ 0, %8 ], [ %39, %37 ]
  %17 = phi i32 [ 0, %8 ], [ %38, %37 ]
  call void @GetMagickToken(ptr noundef nonnull %15, ptr noundef nonnull %5, ptr noundef nonnull %4) #13
  %18 = load i8, ptr %4, align 16, !tbaa !34
  %19 = icmp eq i8 %18, 44
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load ptr, ptr %5, align 8, !tbaa !37
  call void @GetMagickToken(ptr noundef %21, ptr noundef nonnull %5, ptr noundef nonnull %4) #13
  br label %22

22:                                               ; preds = %20, %14
  switch i64 %16, label %43 [
    i64 0, label %23
    i64 1, label %25
    i64 2, label %27
    i64 3, label %29
    i64 4, label %31
    i64 5, label %34
  ]

23:                                               ; preds = %22
  %24 = call fastcc double @StringToDouble(ptr noundef nonnull %4, ptr noundef null) #15
  store double %24, ptr %1, align 8, !tbaa !70
  br label %37

25:                                               ; preds = %22
  %26 = call fastcc double @StringToDouble(ptr noundef nonnull %4, ptr noundef null) #15
  store double %26, ptr %13, align 8, !tbaa !72
  br label %37

27:                                               ; preds = %22
  %28 = call fastcc double @StringToDouble(ptr noundef nonnull %4, ptr noundef null) #15
  store double %28, ptr %12, align 8, !tbaa !73
  br label %37

29:                                               ; preds = %22
  %30 = call fastcc double @StringToDouble(ptr noundef nonnull %4, ptr noundef null) #15
  store double %30, ptr %11, align 8, !tbaa !74
  br label %37

31:                                               ; preds = %22
  %32 = call fastcc double @StringToDouble(ptr noundef nonnull %4, ptr noundef null) #15
  store double %32, ptr %10, align 8, !tbaa !75
  %33 = or i32 %17, 1
  br label %37

34:                                               ; preds = %22
  %35 = call fastcc double @StringToDouble(ptr noundef nonnull %4, ptr noundef null) #15
  store double %35, ptr %9, align 8, !tbaa !76
  %36 = or i32 %17, 2
  br label %43

37:                                               ; preds = %23, %25, %27, %29, %31
  %38 = phi i32 [ %33, %31 ], [ %17, %29 ], [ %17, %27 ], [ %17, %25 ], [ %17, %23 ]
  %39 = add nuw nsw i64 %16, 1
  %40 = load ptr, ptr %5, align 8, !tbaa !37
  %41 = load i8, ptr %40, align 1, !tbaa !34
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %14, !llvm.loop !77

43:                                               ; preds = %22, %37, %34, %3
  %44 = phi i32 [ 0, %3 ], [ %36, %34 ], [ %17, %22 ], [ %38, %37 ]
  %45 = load double, ptr %1, align 8, !tbaa !70
  %46 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 3
  %47 = load double, ptr %46, align 8, !tbaa !74
  %48 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 1
  %49 = load double, ptr %48, align 8, !tbaa !72
  %50 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 2
  %51 = load double, ptr %50, align 8, !tbaa !73
  %52 = fneg double %49
  %53 = fmul double %51, %52
  %54 = call double @llvm.fmuladd.f64(double %45, double %47, double %53)
  %55 = call double @llvm.fabs.f64(double %54)
  %56 = fcmp olt double %55, 1.000000e-15
  br i1 %56, label %57, label %59

57:                                               ; preds = %43
  %58 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 768, i32 noundef 410, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.150, ptr noundef nonnull %0) #13
  br label %59

59:                                               ; preds = %57, %43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #11
  ret i32 %44
}

; Function Attrs: optsize
declare void @GetAffineMatrix(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ParseGravityGeometry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._GeometryInfo, align 8
  tail call void @SetGeometry(ptr noundef %0, ptr noundef %2) #15
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %7 = load i64, ptr %6, align 8, !tbaa !78
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  store i64 %7, ptr %2, align 8, !tbaa !51
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !90
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 1
  store i64 %12, ptr %15, align 8, !tbaa !49
  br label %16

16:                                               ; preds = %14, %10
  %17 = tail call i32 @ParseAbsoluteGeometry(ptr noundef %1, ptr noundef %2) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 1157, i32 noundef 410, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.152, ptr noundef %1) #13
  br label %80

21:                                               ; preds = %16
  %22 = and i32 %17, 4096
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load <2 x i64>, ptr %2, align 8, !tbaa !43
  br label %52

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #11
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 35
  %28 = load i32, ptr %27, align 4, !tbaa !91
  %29 = icmp eq i32 %28, 0
  %30 = or i32 %17, 3
  %31 = select i1 %29, i32 %17, i32 %30
  %32 = call i32 @ParseGeometry(ptr noundef %1, ptr noundef nonnull %5) #15, !range !54
  %33 = load double, ptr %5, align 8, !tbaa !56
  %34 = and i32 %32, 4
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 1
  %37 = load double, ptr %36, align 8, !tbaa !60
  %38 = and i32 %32, 8
  %39 = icmp eq i32 %38, 0
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %41 = select i1 %35, double 1.000000e+02, double %33
  %42 = select i1 %39, double %41, double %37
  %43 = load <2 x i64>, ptr %40, align 8, !tbaa !43
  %44 = uitofp <2 x i64> %43 to <2 x double>
  %45 = insertelement <2 x double> poison, double %41, i64 0
  %46 = insertelement <2 x double> %45, double %42, i64 1
  %47 = fmul <2 x double> %46, %44
  %48 = fdiv <2 x double> %47, <double 1.000000e+02, double 1.000000e+02>
  %49 = fadd <2 x double> %48, <double 5.000000e-01, double 5.000000e-01>
  %50 = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %49)
  %51 = fptoui <2 x double> %50 to <2 x i64>
  store <2 x i64> %51, ptr %2, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #11
  br label %52

52:                                               ; preds = %24, %26
  %53 = phi i32 [ %31, %26 ], [ %17, %24 ]
  %54 = phi <2 x i64> [ %51, %26 ], [ %25, %24 ]
  %55 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 1
  %56 = extractelement <2 x i64> %54, i64 0
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load i64, ptr %6, align 8, !tbaa !78
  %60 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %61 = load i64, ptr %60, align 8, !tbaa !92
  %62 = or i64 %61, %59
  store i64 %62, ptr %2, align 8, !tbaa !51
  br label %63

63:                                               ; preds = %58, %52
  %64 = extractelement <2 x i64> %54, i64 1
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %68 = load i64, ptr %67, align 8, !tbaa !93
  br label %74

69:                                               ; preds = %63
  %70 = load i64, ptr %11, align 8, !tbaa !90
  %71 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %72 = load i64, ptr %71, align 8, !tbaa !93
  %73 = or i64 %72, %70
  store i64 %73, ptr %55, align 8, !tbaa !49
  br label %74

74:                                               ; preds = %66, %69
  %75 = phi i64 [ %68, %66 ], [ %72, %69 ]
  %76 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %77 = load i64, ptr %76, align 8, !tbaa !92
  %78 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 35
  %79 = load i32, ptr %78, align 4, !tbaa !91
  tail call void @GravityAdjustGeometry(i64 noundef %77, i64 noundef %75, i32 noundef %79, ptr noundef nonnull %2) #15
  store <2 x i64> %54, ptr %2, align 8, !tbaa !43
  br label %80

80:                                               ; preds = %74, %19
  %81 = phi i32 [ 0, %19 ], [ %53, %74 ]
  ret i32 %81
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SetGeometry(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !94
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 1543, ptr noundef nonnull @.str.146, ptr noundef nonnull %7) #13
  br label %9

9:                                                ; preds = %6, %2
  %10 = tail call ptr @ResetMagickMemory(ptr noundef %1, i32 noundef 0, i64 noundef 32) #13
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %12 = load <2 x i64>, ptr %11, align 8, !tbaa !43
  store <2 x i64> %12, ptr %1, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ParseMetaGeometry(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #11
  %7 = icmp eq ptr %0, null
  br i1 %7, label %177, label %8

8:                                                ; preds = %5
  %9 = load i8, ptr %0, align 1, !tbaa !34
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %177, label %11

11:                                               ; preds = %8
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 1275, ptr noundef nonnull @.str.146, ptr noundef nonnull %0) #13
  call void @SetGeometryInfo(ptr noundef nonnull %6) #15
  %13 = load i64, ptr %3, align 8, !tbaa !43
  %14 = load i64, ptr %4, align 8, !tbaa !43
  %15 = call i32 @GetGeometry(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  %16 = and i32 %15, 4096
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %42, label %18

18:                                               ; preds = %11
  %19 = call i32 @ParseGeometry(ptr noundef nonnull %0, ptr noundef nonnull %6) #15, !range !54
  %20 = load double, ptr %6, align 8, !tbaa !56
  %21 = and i32 %19, 4
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, double 1.000000e+02, double %20
  %24 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 1
  %25 = load double, ptr %24, align 8, !tbaa !60
  %26 = and i32 %19, 8
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, double %23, double %25
  %29 = uitofp i64 %13 to double
  %30 = fmul double %23, %29
  %31 = fdiv double %30, 1.000000e+02
  %32 = fadd double %31, 5.000000e-01
  %33 = call double @llvm.floor.f64(double %32)
  %34 = fptoui double %33 to i64
  store i64 %34, ptr %3, align 8, !tbaa !43
  %35 = uitofp i64 %14 to double
  %36 = fmul double %28, %35
  %37 = fdiv double %36, 1.000000e+02
  %38 = fadd double %37, 5.000000e-01
  %39 = call double @llvm.floor.f64(double %38)
  %40 = fptoui double %39 to i64
  store i64 %40, ptr %4, align 8, !tbaa !43
  %41 = load i64, ptr %3, align 8, !tbaa !43
  br label %42

42:                                               ; preds = %18, %11
  %43 = phi i64 [ %41, %18 ], [ %13, %11 ]
  %44 = phi i64 [ %40, %18 ], [ %14, %11 ]
  %45 = and i32 %15, 8192
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i64, ptr %3, align 8, !tbaa !43
  %49 = icmp eq i64 %48, %43
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i64, ptr %4, align 8, !tbaa !43
  %52 = icmp eq i64 %51, %44
  br i1 %52, label %53, label %60

53:                                               ; preds = %50, %42
  %54 = and i32 %15, 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i64 %43, ptr %3, align 8, !tbaa !43
  br label %57

57:                                               ; preds = %56, %53
  %58 = and i32 %15, 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %121, label %123

60:                                               ; preds = %50, %47
  %61 = icmp eq i64 %43, 0
  %62 = icmp eq i64 %44, 0
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %109, label %64

64:                                               ; preds = %60
  %65 = and i32 %15, 12
  %66 = icmp eq i32 %65, 12
  br i1 %66, label %67, label %83

67:                                               ; preds = %64
  %68 = uitofp i64 %48 to double
  %69 = uitofp i64 %43 to double
  %70 = fdiv double %68, %69
  %71 = and i32 %15, 65536
  %72 = icmp eq i32 %71, 0
  %73 = load i64, ptr %4, align 8, !tbaa !43
  %74 = uitofp i64 %73 to double
  %75 = uitofp i64 %44 to double
  %76 = fdiv double %74, %75
  br i1 %72, label %77, label %80

77:                                               ; preds = %67
  %78 = fcmp ogt double %70, %76
  br i1 %78, label %79, label %109

79:                                               ; preds = %77
  br label %109

80:                                               ; preds = %67
  %81 = fcmp olt double %70, %76
  br i1 %81, label %82, label %109

82:                                               ; preds = %80
  br label %109

83:                                               ; preds = %64
  %84 = and i32 %15, 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %83
  %87 = uitofp i64 %48 to double
  %88 = uitofp i64 %43 to double
  %89 = fdiv double %87, %88
  %90 = and i32 %15, 65536
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %109, label %92

92:                                               ; preds = %86
  %93 = uitofp i64 %44 to double
  %94 = fdiv double %87, %93
  %95 = fcmp olt double %89, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %92
  br label %109

97:                                               ; preds = %83
  %98 = load i64, ptr %4, align 8, !tbaa !43
  %99 = uitofp i64 %98 to double
  %100 = uitofp i64 %44 to double
  %101 = fdiv double %99, %100
  %102 = and i32 %15, 65536
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %97
  %105 = uitofp i64 %43 to double
  %106 = fdiv double %99, %105
  %107 = fcmp olt double %101, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %109

109:                                              ; preds = %60, %80, %82, %77, %79, %97, %104, %108, %86, %92, %96
  %110 = phi double [ %76, %79 ], [ %70, %77 ], [ %76, %82 ], [ %70, %80 ], [ %94, %96 ], [ %89, %92 ], [ %89, %86 ], [ %106, %108 ], [ %101, %104 ], [ %101, %97 ], [ 1.000000e+00, %60 ]
  %111 = uitofp i64 %43 to double
  %112 = call double @llvm.fmuladd.f64(double %110, double %111, double 5.000000e-01)
  %113 = call double @llvm.floor.f64(double %112)
  %114 = fptoui double %113 to i64
  %115 = call fastcc i64 @MagickMax(i64 noundef %114) #15
  store i64 %115, ptr %3, align 8, !tbaa !43
  %116 = uitofp i64 %44 to double
  %117 = call double @llvm.fmuladd.f64(double %110, double %116, double 5.000000e-01)
  %118 = call double @llvm.floor.f64(double %117)
  %119 = fptoui double %118 to i64
  %120 = call fastcc i64 @MagickMax(i64 noundef %119) #15
  br label %121

121:                                              ; preds = %57, %109
  %122 = phi i64 [ %120, %109 ], [ %44, %57 ]
  store i64 %122, ptr %4, align 8, !tbaa !43
  br label %123

123:                                              ; preds = %121, %57
  %124 = and i32 %15, 32768
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %123
  %127 = load i64, ptr %3, align 8, !tbaa !43
  %128 = icmp ult i64 %43, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i64 %43, ptr %3, align 8, !tbaa !43
  br label %130

130:                                              ; preds = %129, %126
  %131 = load i64, ptr %4, align 8, !tbaa !43
  %132 = icmp ult i64 %44, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  store i64 %44, ptr %4, align 8, !tbaa !43
  br label %134

134:                                              ; preds = %130, %133, %123
  %135 = and i32 %15, 16384
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %145, label %137

137:                                              ; preds = %134
  %138 = load i64, ptr %3, align 8, !tbaa !43
  %139 = icmp ugt i64 %43, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i64 %43, ptr %3, align 8, !tbaa !43
  br label %141

141:                                              ; preds = %140, %137
  %142 = load i64, ptr %4, align 8, !tbaa !43
  %143 = icmp ugt i64 %44, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i64 %44, ptr %4, align 8, !tbaa !43
  br label %145

145:                                              ; preds = %141, %144, %134
  %146 = and i32 %15, 131072
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %177, label %148

148:                                              ; preds = %145
  %149 = call i32 @ParseGeometry(ptr noundef nonnull %0, ptr noundef nonnull %6) #15, !range !54
  %150 = load double, ptr %6, align 8, !tbaa !56
  %151 = uitofp i64 %43 to double
  %152 = uitofp i64 %44 to double
  %153 = fmul double %151, %152
  %154 = call double @sqrt(double noundef %153) #13
  %155 = call double @sqrt(double noundef %150) #13
  %156 = fdiv double %154, %155
  %157 = fdiv double %151, %156
  %158 = call double @sqrt(double noundef %150) #13
  %159 = load i64, ptr %3, align 8, !tbaa !43
  %160 = uitofp i64 %159 to double
  %161 = fcmp olt double %157, %160
  br i1 %161, label %168, label %162

162:                                              ; preds = %148
  %163 = fdiv double %154, %158
  %164 = fdiv double %152, %163
  %165 = load i64, ptr %4, align 8, !tbaa !43
  %166 = uitofp i64 %165 to double
  %167 = fcmp olt double %164, %166
  br i1 %167, label %168, label %177

168:                                              ; preds = %162, %148
  %169 = call double @sqrt(double noundef %150) #13
  %170 = fdiv double %154, %169
  %171 = fdiv double %151, %170
  %172 = fptoui double %171 to i64
  store i64 %172, ptr %3, align 8, !tbaa !43
  %173 = call double @sqrt(double noundef %150) #13
  %174 = fdiv double %154, %173
  %175 = fdiv double %152, %174
  %176 = fptoui double %175 to i64
  store i64 %176, ptr %4, align 8, !tbaa !43
  br label %177

177:                                              ; preds = %145, %168, %162, %5, %8
  %178 = phi i32 [ 0, %8 ], [ 0, %5 ], [ %15, %162 ], [ %15, %168 ], [ %15, %145 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #11
  ret i32 %178
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SetGeometryInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 1575, ptr noundef nonnull @.str.153) #13
  %3 = tail call ptr @ResetMagickMemory(ptr noundef %0, i32 noundef 0, i64 noundef 40) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMax(i64 noundef %0) unnamed_addr #8 !PGOFuncName !95 {
  %2 = tail call i64 @llvm.umax.i64(i64 %0, i64 1)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ParsePageGeometry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call void @SetGeometry(ptr noundef %0, ptr noundef %2) #15
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %6 = load i64, ptr %5, align 8, !tbaa !78
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  store i64 %6, ptr %2, align 8, !tbaa !51
  br label %9

9:                                                ; preds = %8, %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !90
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 1
  store i64 %11, ptr %14, align 8, !tbaa !49
  br label %15

15:                                               ; preds = %13, %9
  %16 = tail call i32 @ParseAbsoluteGeometry(ptr noundef %1, ptr noundef %2) #15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 1444, i32 noundef 410, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.152, ptr noundef %1) #13
  br label %46

20:                                               ; preds = %15
  %21 = and i32 %16, 4096
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %25 = load <2 x i64>, ptr %24, align 8, !tbaa !43
  store <2 x i64> %25, ptr %2, align 8, !tbaa !43
  br label %26

26:                                               ; preds = %23, %20
  %27 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 2
  %28 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 3
  %29 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 1
  %30 = tail call i32 @ParseMetaGeometry(ptr noundef %1, ptr noundef nonnull %27, ptr noundef nonnull %28, ptr noundef %2, ptr noundef nonnull %29) #15
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  %33 = and i32 %30, 12
  %34 = icmp eq i32 %33, 0
  %35 = and i32 %30, 528384
  %36 = icmp eq i32 %35, 524288
  %37 = or i1 %34, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %26
  %39 = and i32 %30, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i64, ptr %29, align 8, !tbaa !49
  store i64 %42, ptr %2, align 8, !tbaa !51
  br label %43

43:                                               ; preds = %41, %38
  br i1 %32, label %44, label %46

44:                                               ; preds = %43
  %45 = load i64, ptr %2, align 8, !tbaa !51
  store i64 %45, ptr %29, align 8, !tbaa !49
  br label %46

46:                                               ; preds = %44, %43, %26, %18
  %47 = phi i32 [ 0, %18 ], [ %30, %26 ], [ %30, %43 ], [ %30, %44 ]
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ParseRegionGeometry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call void @SetGeometry(ptr noundef %0, ptr noundef %2) #15
  %5 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 2
  %6 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 3
  %7 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 1
  %8 = tail call i32 @ParseMetaGeometry(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %7) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 1509, i32 noundef 410, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.152, ptr noundef %1) #13
  br label %12

12:                                               ; preds = %10, %4
  ret i32 %8
}

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize willreturn memory(read) }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind optsize willreturn memory(none) }
attributes #15 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 11498625}
!4 = !{!"MaxCount", i64 3247920}
!5 = !{!"MaxInternalCount", i64 3247920}
!6 = !{!"MaxFunctionCount", i64 51090}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3247920, i32 3}
!14 = !{i32 100000, i64 3247920, i32 3}
!15 = !{i32 200000, i64 3247920, i32 3}
!16 = !{i32 300000, i64 3247920, i32 3}
!17 = !{i32 400000, i64 3247920, i32 3}
!18 = !{i32 500000, i64 3247920, i32 3}
!19 = !{i32 600000, i64 3247920, i32 3}
!20 = !{i32 700000, i64 3247920, i32 3}
!21 = !{i32 800000, i64 3247920, i32 3}
!22 = !{i32 900000, i64 1623960, i32 4}
!23 = !{i32 950000, i64 1623960, i32 4}
!24 = !{i32 990000, i64 51090, i32 6}
!25 = !{i32 999000, i64 25545, i32 7}
!26 = !{i32 999900, i64 3120, i32 8}
!27 = !{i32 999990, i64 3120, i32 8}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{!38, !38, i64 0}
!38 = !{!"any pointer", !35, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"short", !35, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!44, !44, i64 0}
!44 = !{!"long", !35, i64 0}
!45 = distinct !{!45, !42}
!46 = distinct !{!46, !42}
!47 = !{!"geometry.c:StringToDouble"}
!48 = distinct !{!48, !42}
!49 = !{!50, !44, i64 8}
!50 = !{!"_RectangleInfo", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24}
!51 = !{!50, !44, i64 0}
!52 = !{!50, !44, i64 16}
!53 = !{!50, !44, i64 24}
!54 = !{i32 0, i32 1048576}
!55 = distinct !{!55, !42}
!56 = !{!57, !58, i64 0}
!57 = !{!"_GeometryInfo", !58, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !58, i64 32}
!58 = !{!"double", !35, i64 0}
!59 = distinct !{!59, !42}
!60 = !{!57, !58, i64 8}
!61 = distinct !{!61, !42}
!62 = distinct !{!62, !42}
!63 = !{!57, !58, i64 16}
!64 = distinct !{!64, !42}
!65 = distinct !{!65, !42}
!66 = !{!57, !58, i64 24}
!67 = distinct !{!67, !42}
!68 = distinct !{!68, !42}
!69 = !{!57, !58, i64 32}
!70 = !{!71, !58, i64 0}
!71 = !{!"_AffineMatrix", !58, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !58, i64 40}
!72 = !{!71, !58, i64 8}
!73 = !{!71, !58, i64 16}
!74 = !{!71, !58, i64 24}
!75 = !{!71, !58, i64 32}
!76 = !{!71, !58, i64 40}
!77 = distinct !{!77, !42}
!78 = !{!79, !44, i64 280}
!79 = !{!"_Image", !80, i64 0, !80, i64 4, !80, i64 8, !44, i64 16, !80, i64 24, !80, i64 28, !80, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !38, i64 72, !81, i64 80, !81, i64 88, !81, i64 96, !58, i64 104, !82, i64 112, !80, i64 208, !38, i64 216, !80, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !44, i64 256, !58, i64 264, !58, i64 272, !50, i64 280, !50, i64 312, !50, i64 344, !58, i64 376, !58, i64 384, !58, i64 392, !80, i64 400, !80, i64 404, !80, i64 408, !80, i64 412, !80, i64 416, !80, i64 420, !38, i64 424, !44, i64 432, !44, i64 440, !44, i64 448, !44, i64 456, !44, i64 464, !44, i64 472, !84, i64 480, !85, i64 504, !38, i64 568, !38, i64 576, !38, i64 584, !38, i64 592, !38, i64 600, !38, i64 608, !35, i64 616, !35, i64 4712, !35, i64 8808, !44, i64 12904, !44, i64 12912, !87, i64 12920, !80, i64 12976, !44, i64 12984, !38, i64 12992, !88, i64 13000, !88, i64 13032, !38, i64 13064, !44, i64 13072, !44, i64 13080, !38, i64 13088, !38, i64 13096, !38, i64 13104, !80, i64 13112, !80, i64 13116, !81, i64 13120, !38, i64 13128, !50, i64 13136, !38, i64 13168, !38, i64 13176, !80, i64 13184, !80, i64 13188, !89, i64 13192, !80, i64 13200, !44, i64 13208, !44, i64 13216, !80, i64 13224, !44, i64 13232}
!80 = !{!"int", !35, i64 0}
!81 = !{!"_PixelPacket", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6}
!82 = !{!"_ChromaticityInfo", !83, i64 0, !83, i64 24, !83, i64 48, !83, i64 72}
!83 = !{!"_PrimaryInfo", !58, i64 0, !58, i64 8, !58, i64 16}
!84 = !{!"_ErrorInfo", !58, i64 0, !58, i64 8, !58, i64 16}
!85 = !{!"_TimerInfo", !86, i64 0, !86, i64 24, !80, i64 48, !44, i64 56}
!86 = !{!"_Timer", !58, i64 0, !58, i64 8, !58, i64 16}
!87 = !{!"_ExceptionInfo", !80, i64 0, !80, i64 4, !38, i64 8, !38, i64 16, !38, i64 24, !80, i64 32, !38, i64 40, !44, i64 48}
!88 = !{!"_ProfileInfo", !38, i64 0, !44, i64 8, !38, i64 16, !44, i64 24}
!89 = !{!"long long", !35, i64 0}
!90 = !{!79, !44, i64 288}
!91 = !{!79, !80, i64 412}
!92 = !{!79, !44, i64 40}
!93 = !{!79, !44, i64 48}
!94 = !{!79, !80, i64 12976}
!95 = !{!"geometry.c:MagickMax"}
