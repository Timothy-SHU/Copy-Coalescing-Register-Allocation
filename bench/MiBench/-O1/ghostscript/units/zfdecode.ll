; ModuleID = 'zfdecode.c'
source_filename = "zfdecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.op_def = type { ptr, ptr }
%struct.stream_CF_state_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.stream_PDiff_state_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i8, i32, i32, i8, i8, i8, i8 }
%struct.stream_PNGP_state_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i8, i32, ptr, i32, i64, [32 x i8] }
%struct.stream_LZW_state_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %union._lzt, i32, i32, i32, i32, i32, i32, i32, i32 }
%union._lzt = type { ptr }
%struct.stream_CFD_state_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Uncompressed\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"EndOfLine\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"EncodedByteAlign\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Columns\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Rows\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"EndOfBlock\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"BlackIs1\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"DamagedRowsBeforeError\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"FirstBitLowOrder\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"DecodedByteAlign\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Predictor\00", align 1
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@s_PDiffD_template = external constant %struct.stream_template_s, align 8
@s_PNGPD_template = external constant %struct.stream_template_s, align 8
@.str.12 = private unnamed_addr constant [12 x i8] c"EarlyChange\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"InitialCodeLength\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"BlockData\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"Colors\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"BitsPerComponent\00", align 1
@zfdecode_op_defs.op_defs_ = internal constant [10 x %struct.op_def] [%struct.op_def { ptr @.str.17, ptr null }, %struct.op_def { ptr @.str.18, ptr @zA85E }, %struct.op_def { ptr @.str.19, ptr @zA85D }, %struct.op_def { ptr @.str.20, ptr @zCFD }, %struct.op_def { ptr @.str.21, ptr @zLZWD }, %struct.op_def { ptr @.str.22, ptr @zPDiffD }, %struct.op_def { ptr @.str.23, ptr @zPDiffE }, %struct.op_def { ptr @.str.24, ptr @zPNGPD }, %struct.op_def { ptr @.str.25, ptr @zPNGPE }, %struct.op_def { ptr null, ptr @zfdecode_init }], align 16
@.str.17 = private unnamed_addr constant [11 x i8] c"filterdict\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"1ASCII85Encode\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"1ASCII85Decode\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"2CCITTFaxDecode\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"1LZWDecode\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"2PixelDifferenceDecode\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"2PixelDifferenceEncode\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"2PNGPredictorDecode\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"2PNGPredictorEncode\00", align 1
@s_A85E_template = external constant %struct.stream_template_s, align 8
@s_A85D_template = external constant %struct.stream_template_s, align 8
@s_CFD_template = external constant %struct.stream_template_s, align 8
@s_LZWD_template = external constant %struct.stream_template_s, align 8
@s_PDiffE_template = external constant %struct.stream_template_s, align 8
@s_PNGPE_template = external constant %struct.stream_template_s, align 8
@scan_ascii85_template = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @zcf_setup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.stream_CF_state_s, ptr %1, i64 0, i32 6
  %4 = tail call i32 @dict_bool_param(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef nonnull %3) #7
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %51, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.stream_CF_state_s, ptr %1, i64 0, i32 7
  %8 = tail call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef -32000, i32 noundef 32000, i32 noundef 0, ptr noundef nonnull %7) #7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %51, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.stream_CF_state_s, ptr %1, i64 0, i32 8
  %12 = tail call i32 @dict_bool_param(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef nonnull %11) #7
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %51, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.stream_CF_state_s, ptr %1, i64 0, i32 9
  %16 = tail call i32 @dict_bool_param(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull %15) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %51, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.stream_CF_state_s, ptr %1, i64 0, i32 10
  %20 = tail call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 54613333, i32 noundef 1728, ptr noundef nonnull %19) #7
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.stream_CF_state_s, ptr %1, i64 0, i32 11
  %24 = tail call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 32000, i32 noundef 0, ptr noundef nonnull %23) #7
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %51, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.stream_CF_state_s, ptr %1, i64 0, i32 12
  %28 = tail call i32 @dict_bool_param(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %27) #7
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %51, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.stream_CF_state_s, ptr %1, i64 0, i32 13
  %32 = tail call i32 @dict_bool_param(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef nonnull %31) #7
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.stream_CF_state_s, ptr %1, i64 0, i32 14
  %36 = tail call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 32000, i32 noundef 0, ptr noundef nonnull %35) #7
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.stream_CF_state_s, ptr %1, i64 0, i32 3
  %40 = tail call i32 @dict_bool_param(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull %39) #7
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.stream_CF_state_s, ptr %1, i64 0, i32 15
  %44 = tail call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef 1, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %43) #7
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr %43, align 8, !tbaa !5
  %48 = tail call i32 @llvm.ctpop.i32(i32 %47), !range !11
  %49 = icmp ult i32 %48, 2
  %50 = select i1 %49, i32 0, i32 -15
  br label %51

51:                                               ; preds = %46, %2, %6, %10, %14, %18, %22, %26, %30, %34, %38, %42
  %52 = phi i32 [ %4, %2 ], [ %8, %6 ], [ %12, %10 ], [ %16, %14 ], [ %20, %18 ], [ %24, %22 ], [ %28, %26 ], [ %32, %30 ], [ %36, %34 ], [ %40, %38 ], [ %44, %42 ], [ %50, %46 ]
  ret i32 %52
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @dict_bool_param(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dict_int_param(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @filter_read_predictor(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.stream_PDiff_state_s, align 8
  %7 = alloca %struct.stream_PNGP_state_s, align 8
  %8 = alloca %struct.ref_s, align 8
  %9 = alloca %struct.ref_s, align 8
  %10 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %7) #7
  %11 = getelementptr inbounds i8, ptr %0, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !12
  %13 = icmp eq i8 %12, 2
  br i1 %13, label %14, label %27

14:                                               ; preds = %4
  %15 = call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 15, i32 noundef 1, ptr noundef nonnull %5) #7
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %53, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %5, align 4, !tbaa !13
  switch i32 %18, label %53 [
    i32 0, label %19
    i32 1, label %24
    i32 2, label %20
    i32 10, label %22
    i32 11, label %22
    i32 12, label %22
    i32 13, label %22
    i32 14, label %22
    i32 15, label %22
  ]

19:                                               ; preds = %17
  store i32 1, ptr %5, align 4, !tbaa !13
  br label %24

20:                                               ; preds = %17
  %21 = call i32 @zpd_setup(ptr noundef %0, ptr noundef nonnull %6)
  br label %24

22:                                               ; preds = %17, %17, %17, %17, %17, %17
  %23 = call i32 @zpp_setup(ptr noundef %0, ptr noundef nonnull %7)
  br label %24

24:                                               ; preds = %22, %20, %19, %17
  %25 = phi i32 [ %23, %22 ], [ %21, %20 ], [ %15, %17 ], [ %15, %19 ]
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %53, label %28

27:                                               ; preds = %4
  store i32 1, ptr %5, align 4, !tbaa !13
  br label %28

28:                                               ; preds = %24, %27
  %29 = load i32, ptr %5, align 4, !tbaa !13
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @filter_read(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0) #7
  br label %53

33:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #7
  %34 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %34, i64 16, i1 false), !tbaa.struct !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !14
  %35 = call i32 @filter_read(ptr noundef %0, i32 noundef 1, ptr noundef %2, ptr noundef %3, i32 noundef 0) #7
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @o_stack, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %38, i64 16, i1 false), !tbaa.struct !14
  %39 = load i32, ptr %5, align 4, !tbaa !13
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @filter_read(ptr noundef %38, i32 noundef 0, ptr noundef nonnull @s_PDiffD_template, ptr noundef nonnull %6, i32 noundef 0) #7
  br label %45

43:                                               ; preds = %37
  %44 = call i32 @filter_read(ptr noundef %38, i32 noundef 0, ptr noundef nonnull @s_PNGPD_template, ptr noundef nonnull %7, i32 noundef 0) #7
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.ref_s, ptr %38, i64 1
  store ptr %49, ptr @o_stack, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %49, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !14
  br label %51

50:                                               ; preds = %45
  call void @filter_mark_temp(ptr noundef nonnull %10, i32 noundef 2) #7
  br label %51

51:                                               ; preds = %33, %50, %48
  %52 = phi i32 [ %46, %48 ], [ %46, %50 ], [ %35, %33 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8)
  br label %53

53:                                               ; preds = %24, %17, %14, %51, %31
  %54 = phi i32 [ %32, %31 ], [ %52, %51 ], [ %15, %14 ], [ -15, %17 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zpd_setup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !12
  %6 = icmp eq i8 %5, 2
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @check_type_failed(ptr noundef %0) #7
  br label %37

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = load i16, ptr %11, align 8, !tbaa !26
  %13 = and i16 %12, 32
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %1, i64 0, i32 3
  %17 = tail call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef 1, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %16) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef 1, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %3) #7
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr %3, align 4, !tbaa !13
  %24 = call i32 @llvm.ctpop.i32(i32 %23), !range !11
  %25 = icmp ult i32 %24, 2
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %1, i64 0, i32 5
  %28 = call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef 1, i32 noundef 2147483647, i32 noundef 1, ptr noundef nonnull %27) #7
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26, %22, %19, %15
  %31 = phi i32 [ %17, %15 ], [ %20, %19 ], [ %20, %22 ], [ %28, %26 ]
  %32 = icmp slt i32 %31, 0
  %33 = select i1 %32, i32 %31, i32 -15
  br label %37

34:                                               ; preds = %26
  %35 = load i32, ptr %3, align 4, !tbaa !13
  %36 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %1, i64 0, i32 4
  store i32 %35, ptr %36, align 4, !tbaa !28
  br label %37

37:                                               ; preds = %9, %34, %30, %7
  %38 = phi i32 [ %33, %30 ], [ 0, %34 ], [ %8, %7 ], [ -7, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zpp_setup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !12
  %6 = icmp eq i8 %5, 2
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @check_type_failed(ptr noundef %0) #7
  br label %41

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = load i16, ptr %11, align 8, !tbaa !26
  %13 = and i16 %12, 32
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %41, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %1, i64 0, i32 3
  %17 = tail call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef 1, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %16) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %15
  %20 = call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef 1, i32 noundef 16, i32 noundef 8, ptr noundef nonnull %3) #7
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr %3, align 4, !tbaa !13
  %24 = call i32 @llvm.ctpop.i32(i32 %23), !range !11
  %25 = icmp ult i32 %24, 2
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %1, i64 0, i32 5
  %28 = call i32 @dict_uint_param(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef 1, i32 noundef -1, i32 noundef 1, ptr noundef nonnull %27) #7
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %1, i64 0, i32 6
  %32 = call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef 10, i32 noundef 15, i32 noundef 15, ptr noundef nonnull %31) #7
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30, %26, %22, %19, %15
  %35 = phi i32 [ %17, %15 ], [ %20, %19 ], [ %20, %22 ], [ %28, %26 ], [ %32, %30 ]
  %36 = icmp slt i32 %35, 0
  %37 = select i1 %36, i32 %35, i32 -15
  br label %41

38:                                               ; preds = %30
  %39 = load i32, ptr %3, align 4, !tbaa !13
  %40 = getelementptr inbounds %struct.stream_PNGP_state_s, ptr %1, i64 0, i32 4
  store i32 %39, ptr %40, align 4, !tbaa !30
  br label %41

41:                                               ; preds = %9, %38, %34, %7
  %42 = phi i32 [ %37, %34 ], [ 0, %38 ], [ %8, %7 ], [ -7, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %42
}

declare i32 @filter_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @filter_mark_temp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @zlz_setup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !12
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = load i16, ptr %8, align 8, !tbaa !26
  %10 = and i16 %9, 32
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %2, %6
  %13 = phi ptr [ %0, %6 ], [ null, %2 ]
  %14 = phi i32 [ 1, %6 ], [ 0, %2 ]
  %15 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %1, i64 0, i32 6
  %16 = tail call i32 @dict_int_param(ptr noundef %13, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %15) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %1, i64 0, i32 3
  %20 = tail call i32 @dict_int_param(ptr noundef %13, ptr noundef nonnull @.str.13, i32 noundef 2, i32 noundef 11, i32 noundef 8, ptr noundef nonnull %19) #7
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %1, i64 0, i32 4
  %24 = tail call i32 @dict_bool_param(ptr noundef %13, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull %23) #7
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %1, i64 0, i32 5
  %28 = tail call i32 @dict_bool_param(ptr noundef %13, ptr noundef nonnull @.str.14, i32 noundef 0, ptr noundef nonnull %27) #7
  %29 = icmp slt i32 %28, 0
  %30 = select i1 %29, i32 %28, i32 %14
  br label %31

31:                                               ; preds = %26, %12, %18, %22, %6
  %32 = phi i32 [ -7, %6 ], [ %16, %12 ], [ %20, %18 ], [ %24, %22 ], [ %30, %26 ]
  ret i32 %32
}

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #2

declare i32 @dict_uint_param(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zfdecode_op_defs() local_unnamed_addr #4 {
  ret ptr @zfdecode_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zA85E(ptr noundef %0) #0 {
  %2 = tail call i32 @filter_write_simple(ptr noundef %0, ptr noundef nonnull @s_A85E_template) #7
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @zA85D(ptr noundef %0) #0 {
  %2 = tail call i32 @filter_read_simple(ptr noundef %0, ptr noundef nonnull @s_A85D_template) #7
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @zCFD(ptr noundef %0) #0 {
  %2 = alloca %struct.stream_CFD_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %2) #7
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !12
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = load i16, ptr %8, align 8, !tbaa !26
  %10 = and i16 %9, 32
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1, %6
  %13 = phi ptr [ %0, %6 ], [ null, %1 ]
  %14 = phi i32 [ 1, %6 ], [ 0, %1 ]
  %15 = call i32 @zcf_setup(ptr noundef %13, ptr noundef nonnull %2), !range !32
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = call i32 @filter_read(ptr noundef %0, i32 noundef %14, ptr noundef nonnull @s_CFD_template, ptr noundef nonnull %2, i32 noundef 0) #7
  br label %19

19:                                               ; preds = %12, %6, %17
  %20 = phi i32 [ %18, %17 ], [ -7, %6 ], [ %15, %12 ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %2) #7
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @zLZWD(ptr noundef %0) #0 {
  %2 = alloca %struct.stream_LZW_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #7
  %3 = call i32 @zlz_setup(ptr noundef %0, ptr noundef nonnull %2), !range !33
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 @filter_read_predictor(ptr noundef %0, i32 noundef %3, ptr noundef nonnull @s_LZWD_template, ptr noundef nonnull %2)
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ %3, %1 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #7
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @zPDiffD(ptr noundef %0) #0 {
  %2 = alloca %struct.stream_PDiff_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #7
  %3 = call i32 @zpd_setup(ptr noundef %0, ptr noundef nonnull %2)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 @filter_read(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @s_PDiffD_template, ptr noundef nonnull %2, i32 noundef 0) #7
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ %3, %1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #7
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @zPDiffE(ptr noundef %0) #0 {
  %2 = alloca %struct.stream_PDiff_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #7
  %3 = call i32 @zpd_setup(ptr noundef %0, ptr noundef nonnull %2)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 @filter_write(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @s_PDiffE_template, ptr noundef nonnull %2, i32 noundef 0) #7
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ %3, %1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #7
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @zPNGPD(ptr noundef %0) #0 {
  %2 = alloca %struct.stream_PNGP_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %2) #7
  %3 = call i32 @zpp_setup(ptr noundef %0, ptr noundef nonnull %2)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 @filter_read(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @s_PNGPD_template, ptr noundef nonnull %2, i32 noundef 0) #7
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ %3, %1 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %2) #7
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @zPNGPE(ptr noundef %0) #0 {
  %2 = alloca %struct.stream_PNGP_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %2) #7
  %3 = call i32 @zpp_setup(ptr noundef %0, ptr noundef nonnull %2)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 @filter_write(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @s_PNGPE_template, ptr noundef nonnull %2, i32 noundef 0) #7
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ %3, %1 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %2) #7
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @zfdecode_init() #5 {
  store ptr @s_A85D_template, ptr @scan_ascii85_template, align 8, !tbaa !21
  ret void
}

declare i32 @filter_write_simple(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @filter_read_simple(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @filter_write(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 72}
!6 = !{!"stream_CF_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !7, i64 80, !7, i64 88, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{i32 0, i32 33}
!12 = !{!8, !8, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{i64 0, i64 2, !15, i64 2, i64 2, !15, i64 8, i64 8, !17, i64 8, i64 2, !15, i64 8, i64 4, !19, i64 8, i64 8, !17, i64 8, i64 8, !21, i64 8, i64 8, !21, i64 8, i64 8, !21, i64 8, i64 8, !21, i64 8, i64 8, !21, i64 8, i64 8, !21, i64 8, i64 8, !21, i64 8, i64 8, !21, i64 8, i64 8, !21, i64 8, i64 8, !21, i64 8, i64 8, !21, i64 8, i64 8, !21, i64 8, i64 8, !21}
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !8, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"long", !8, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"float", !8, i64 0}
!21 = !{!7, !7, i64 0}
!22 = !{!23, !7, i64 0}
!23 = !{!"ref_stack_s", !7, i64 0, !7, i64 8, !7, i64 16, !24, i64 24, !10, i64 40, !10, i64 44, !24, i64 48, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !24, i64 88, !10, i64 104, !10, i64 108, !10, i64 112, !7, i64 120}
!24 = !{!"ref_s", !25, i64 0, !8, i64 8}
!25 = !{!"tas_s", !16, i64 0, !16, i64 2}
!26 = !{!27, !16, i64 0}
!27 = !{!"dict_s", !24, i64 0, !24, i64 16, !24, i64 32, !24, i64 48}
!28 = !{!29, !10, i64 28}
!29 = !{!"stream_PDiff_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !8, i64 40, !10, i64 44, !10, i64 48, !8, i64 52, !8, i64 53, !8, i64 54, !8, i64 55}
!30 = !{!31, !10, i64 28}
!31 = !{!"stream_PNGP_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !8, i64 44, !10, i64 48, !7, i64 56, !10, i64 64, !18, i64 72, !8, i64 80}
!32 = !{i32 -2147483648, i32 1}
!33 = !{i32 -2147483648, i32 2}
