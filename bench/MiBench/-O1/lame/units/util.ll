; ModuleID = 'util.c'
source_filename = "util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon = type { i32 }
%struct.bit_stream_struc = type { ptr, i32, ptr, ptr, i32, i64, i32, i32 }

@s_freq_table = dso_local local_unnamed_addr global [2 x [4 x double]] [[4 x double] [double 2.205000e+01, double 2.400000e+01, double 1.600000e+01, double 0.000000e+00], [4 x double] [double 4.410000e+01, double 4.800000e+01, double 3.200000e+01, double 0.000000e+00]], align 16
@bitrate_table = dso_local local_unnamed_addr global [2 x [15 x i32]] [[15 x i32] [i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 144, i32 160], [15 x i32] [i32 0, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 160, i32 192, i32 224, i32 256, i32 320]], align 16
@NativeByteOrder = dso_local local_unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"MPEG1 samplerates(kHz): 32 44.1 48 \0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"bitrates(kbs): \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%i \00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"MPEG2 samplerates(kHz): 16 22.05 24 \0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [51 x i8] c"Bitrate %dkbs not legal for %iHz output sampling.\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"SmpFrqIndex: %ldHz is not a legal sample rate\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Unable to allocate %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"ABCD\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"DCBA\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@putmask = dso_local local_unnamed_addr global [9 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255], align 16
@.str.11 = private unnamed_addr constant [51 x i8] c"Cannot read or write more than %d bits at a time.\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @getframebits(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 43
  %7 = load i32, ptr %6, align 8, !tbaa !13
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 50
  %10 = load i32, ptr %9, align 4, !tbaa !14
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [2 x [15 x i32]], ptr @bitrate_table, i64 0, i64 %8, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !15
  %14 = icmp eq i32 %7, 1
  %15 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  %16 = load i32, ptr %15, align 4, !tbaa !16
  %17 = icmp eq i32 %16, 1
  %18 = select i1 %17, i32 168, i32 288
  %19 = select i1 %17, i32 104, i32 168
  %20 = select i1 %14, i32 %18, i32 %19
  %21 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 14
  %22 = load i32, ptr %21, align 4, !tbaa !17
  %23 = icmp eq i32 %22, 0
  %24 = or disjoint i32 %20, 16
  %25 = select i1 %23, i32 %20, i32 %24
  %26 = sitofp i32 %13 to double
  %27 = sitofp i32 %5 to double
  %28 = fdiv double %27, 1.000000e+03
  %29 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 42
  %30 = load i32, ptr %29, align 4, !tbaa !18
  %31 = sitofp i32 %30 to double
  %32 = fdiv double %31, %28
  %33 = fmul double %26, 1.250000e-01
  %34 = tail call double @llvm.fmuladd.f64(double %32, double %33, double 1.000000e-09)
  %35 = tail call double @llvm.floor.f64(double %34)
  %36 = fptosi double %35 to i32
  %37 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 44
  %38 = load i32, ptr %37, align 4, !tbaa !19
  %39 = add i32 %38, %36
  %40 = shl i32 %39, 3
  store i32 %40, ptr %1, align 4, !tbaa !15
  %41 = sub nsw i32 %40, %25
  %42 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 45
  %43 = load i32, ptr %42, align 8, !tbaa !20
  %44 = sdiv i32 %41, %43
  store i32 %44, ptr %2, align 4, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @display_bitrates(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = tail call i32 @fputc(i32 10, ptr %0)
  %3 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 36, i64 1, ptr %0)
  %4 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %0)
  br label %5

5:                                                ; preds = %1, %5
  %6 = phi i64 [ 1, %1 ], [ %10, %5 ]
  %7 = getelementptr inbounds [2 x [15 x i32]], ptr @bitrate_table, i64 0, i64 1, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !15
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %8)
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, 15
  br i1 %11, label %12, label %5, !llvm.loop !21

12:                                               ; preds = %5
  %13 = tail call i32 @fputc(i32 10, ptr %0)
  %14 = tail call i32 @fputc(i32 10, ptr %0)
  %15 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 37, i64 1, ptr %0)
  %16 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %0)
  br label %17

17:                                               ; preds = %12, %17
  %18 = phi i64 [ 1, %12 ], [ %22, %17 ]
  %19 = getelementptr inbounds [15 x i32], ptr @bitrate_table, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !15
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %20)
  %22 = add nuw nsw i64 %18, 1
  %23 = icmp eq i64 %22, 15
  br i1 %23, label %24, label %17, !llvm.loop !23

24:                                               ; preds = %17
  %25 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @BitrateIndex(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = sext i32 %1 to i64
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i32 [ 0, %3 ], [ %14, %5 ]
  %7 = phi i32 [ 0, %3 ], [ %13, %5 ]
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [2 x [15 x i32]], ptr @bitrate_table, i64 0, i64 %4, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !15
  %11 = icmp ne i32 %10, %0
  %12 = zext i1 %11 to i32
  %13 = add nuw nsw i32 %7, %12
  %14 = select i1 %11, i32 %6, i32 1
  %15 = icmp eq i32 %14, 0
  %16 = icmp ult i32 %13, 15
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %5, label %18, !llvm.loop !24

18:                                               ; preds = %5
  br i1 %15, label %19, label %22

19:                                               ; preds = %18
  %20 = load ptr, ptr @stderr, align 8, !tbaa !25
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.5, i32 noundef %0, i32 noundef %2) #18
  br label %22

22:                                               ; preds = %18, %19
  %23 = phi i32 [ -1, %19 ], [ %13, %18 ]
  ret i32 %23
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @SmpFrqIndex(i64 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  store i32 0, ptr %1, align 4, !tbaa !15
  switch i64 %0, label %9 [
    i64 44100, label %3
    i64 48000, label %4
    i64 32000, label %5
    i64 24000, label %6
    i64 22050, label %7
    i64 16000, label %8
  ]

3:                                                ; preds = %2
  store i32 1, ptr %1, align 4, !tbaa !15
  br label %12

4:                                                ; preds = %2
  store i32 1, ptr %1, align 4, !tbaa !15
  br label %12

5:                                                ; preds = %2
  store i32 1, ptr %1, align 4, !tbaa !15
  br label %12

6:                                                ; preds = %2
  store i32 0, ptr %1, align 4, !tbaa !15
  br label %12

7:                                                ; preds = %2
  store i32 0, ptr %1, align 4, !tbaa !15
  br label %12

8:                                                ; preds = %2
  store i32 0, ptr %1, align 4, !tbaa !15
  br label %12

9:                                                ; preds = %2
  %10 = load ptr, ptr @stderr, align 8, !tbaa !25
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.6, i64 noundef %0) #18
  br label %12

12:                                               ; preds = %9, %8, %7, %6, %5, %4, %3
  %13 = phi i32 [ 0, %3 ], [ 1, %4 ], [ 2, %5 ], [ 1, %6 ], [ 0, %7 ], [ 2, %8 ], [ -1, %9 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @mem_alloc(i64 noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = tail call noalias ptr @malloc(i64 noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %3, i8 0, i64 %0, i1 false)
  ret ptr %3

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8, !tbaa !25
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.7, ptr noundef %1) #18
  tail call void @exit(i32 noundef 1) #20
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @DetermineByteOrder() local_unnamed_addr #9 {
  %1 = alloca [5 x i8], align 1
  %2 = alloca %union.anon, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  store i32 1094861636, ptr %2, align 4, !tbaa !26
  %3 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %2, i64 noundef 4) #21
  %4 = getelementptr inbounds [5 x i8], ptr %1, i64 0, i64 4
  store i8 0, ptr %4, align 1, !tbaa !26
  %5 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %1, ptr noundef nonnull dereferenceable(5) @.str.8, i64 5)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %1, ptr noundef nonnull dereferenceable(5) @.str.9, i64 5)
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 2, i32 0
  br label %11

11:                                               ; preds = %7, %0
  %12 = phi i32 [ 1, %0 ], [ %10, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %1) #21
  ret i32 %12
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SwapBytesInWords(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %11, %4 ], [ %0, %2 ]
  %6 = phi i32 [ %13, %4 ], [ 0, %2 ]
  %7 = load i16, ptr %5, align 2, !tbaa !27
  %8 = trunc i16 %7 to i8
  %9 = lshr i16 %7, 8
  %10 = trunc i16 %9 to i8
  %11 = getelementptr inbounds i16, ptr %5, i64 1
  store i8 %10, ptr %5, align 1, !tbaa !26
  %12 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 %8, ptr %12, align 1, !tbaa !26
  %13 = add nuw nsw i32 %6, 1
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %4, !llvm.loop !29

15:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @empty_buffer(ptr nocapture noundef %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.bit_stream_struc, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !30
  %4 = getelementptr inbounds %struct.bit_stream_struc, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !32
  %6 = sub i32 %3, %5
  %7 = icmp sgt i32 %6, -2
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = add nsw i32 %5, -1
  store i32 %9, ptr %2, align 8, !tbaa !30
  %10 = getelementptr inbounds %struct.bit_stream_struc, ptr %0, i64 0, i32 7
  store i32 8, ptr %10, align 4, !tbaa !33
  %11 = getelementptr inbounds %struct.bit_stream_struc, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = sext i32 %9 to i64
  %14 = getelementptr inbounds i8, ptr %12, i64 %13
  store i8 0, ptr %14, align 1, !tbaa !26
  br label %15

15:                                               ; preds = %1, %8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @copy_buffer(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #11 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.bit_stream_struc, ptr %2, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !32
  %8 = getelementptr inbounds %struct.bit_stream_struc, ptr %2, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !30
  %10 = xor i32 %9, -1
  %11 = add i32 %7, %10
  %12 = icmp sgt i32 %11, %1
  br i1 %12, label %52, label %13

13:                                               ; preds = %5, %3
  %14 = getelementptr inbounds %struct.bit_stream_struc, ptr %2, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !32
  %16 = getelementptr inbounds %struct.bit_stream_struc, ptr %2, i64 0, i32 6
  %17 = add nsw i32 %15, -1
  %18 = load i32, ptr %16, align 8, !tbaa !30
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.bit_stream_struc, ptr %2, i64 0, i32 3
  %22 = sext i32 %15 to i64
  %23 = add nsw i64 %22, -1
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi i64 [ 0, %20 ], [ %30, %24 ]
  %26 = phi i64 [ %23, %20 ], [ %32, %24 ]
  %27 = load ptr, ptr %21, align 8, !tbaa !34
  %28 = getelementptr inbounds i8, ptr %27, i64 %26
  %29 = load i8, ptr %28, align 1, !tbaa !26
  %30 = add nuw i64 %25, 1
  %31 = getelementptr inbounds i8, ptr %0, i64 %25
  store i8 %29, ptr %31, align 1, !tbaa !26
  %32 = add nsw i64 %26, -1
  %33 = load i32, ptr %16, align 8, !tbaa !30
  %34 = sext i32 %33 to i64
  %35 = icmp sgt i64 %32, %34
  br i1 %35, label %24, label %36, !llvm.loop !35

36:                                               ; preds = %24
  %37 = trunc i64 %30 to i32
  br label %38

38:                                               ; preds = %36, %13
  %39 = phi i32 [ 0, %13 ], [ %37, %36 ]
  %40 = phi i32 [ %18, %13 ], [ %33, %36 ]
  %41 = load i32, ptr %14, align 8, !tbaa !32
  %42 = sub i32 %40, %41
  %43 = icmp sgt i32 %42, -2
  br i1 %43, label %52, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.bit_stream_struc, ptr %2, i64 0, i32 6
  %46 = add nsw i32 %41, -1
  store i32 %46, ptr %45, align 8, !tbaa !30
  %47 = getelementptr inbounds %struct.bit_stream_struc, ptr %2, i64 0, i32 7
  store i32 8, ptr %47, align 4, !tbaa !33
  %48 = getelementptr inbounds %struct.bit_stream_struc, ptr %2, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  %50 = sext i32 %46 to i64
  %51 = getelementptr inbounds i8, ptr %49, i64 %50
  store i8 0, ptr %51, align 1, !tbaa !26
  br label %52

52:                                               ; preds = %44, %38, %5
  %53 = phi i32 [ -1, %5 ], [ %39, %38 ], [ %39, %44 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define dso_local void @init_bit_stream_w(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  %2 = tail call noalias dereferenceable_or_null(16384) ptr @malloc(i64 noundef 16384) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr @stderr, align 8, !tbaa !25
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10) #18
  tail call void @exit(i32 noundef 1) #20
  unreachable

7:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16384) %2, i8 0, i64 16384, i1 false)
  %8 = getelementptr inbounds %struct.bit_stream_struc, ptr %0, i64 0, i32 3
  store ptr %2, ptr %8, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.bit_stream_struc, ptr %0, i64 0, i32 4
  store i32 16384, ptr %9, align 8, !tbaa !32
  %10 = getelementptr inbounds %struct.bit_stream_struc, ptr %0, i64 0, i32 6
  store i32 16383, ptr %10, align 8, !tbaa !30
  %11 = getelementptr inbounds %struct.bit_stream_struc, ptr %0, i64 0, i32 7
  store i32 8, ptr %11, align 4, !tbaa !33
  %12 = getelementptr inbounds %struct.bit_stream_struc, ptr %0, i64 0, i32 5
  store i64 0, ptr %12, align 8, !tbaa !36
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @alloc_buffer(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = sext i32 %1 to i64
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8, !tbaa !25
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10) #18
  tail call void @exit(i32 noundef 1) #20
  unreachable

9:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %4, i8 0, i64 %3, i1 false)
  %10 = getelementptr inbounds %struct.bit_stream_struc, ptr %0, i64 0, i32 3
  store ptr %4, ptr %10, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.bit_stream_struc, ptr %0, i64 0, i32 4
  store i32 %1, ptr %11, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @desalloc_buffer(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.bit_stream_struc, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @free(ptr noundef %3) #21
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind uwtable
define dso_local void @putbits(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = icmp sgt i32 %2, 32
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = load ptr, ptr @stderr, align 8, !tbaa !25
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.11, i32 noundef 32) #18
  br label %8

8:                                                ; preds = %5, %3
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds %struct.bit_stream_struc, ptr %0, i64 0, i32 5
  %11 = load i64, ptr %10, align 8, !tbaa !36
  %12 = add i64 %11, %9
  store i64 %12, ptr %10, align 8, !tbaa !36
  %13 = icmp sgt i32 %2, 0
  br i1 %13, label %14, label %48

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.bit_stream_struc, ptr %0, i64 0, i32 7
  %16 = getelementptr inbounds %struct.bit_stream_struc, ptr %0, i64 0, i32 3
  %17 = getelementptr inbounds %struct.bit_stream_struc, ptr %0, i64 0, i32 6
  br label %18

18:                                               ; preds = %14, %46
  %19 = phi i32 [ %2, %14 ], [ %22, %46 ]
  %20 = load i32, ptr %15, align 4, !tbaa !33
  %21 = tail call i32 @llvm.smin.i32(i32 %19, i32 %20)
  %22 = sub nsw i32 %19, %21
  %23 = lshr i32 %1, %22
  %24 = sext i32 %21 to i64
  %25 = getelementptr inbounds [9 x i32], ptr @putmask, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !15
  %27 = and i32 %23, %26
  %28 = sub nsw i32 %20, %21
  %29 = shl i32 %27, %28
  %30 = load ptr, ptr %16, align 8, !tbaa !34
  %31 = load i32, ptr %17, align 8, !tbaa !30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, ptr %30, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !26
  %35 = trunc i32 %29 to i8
  %36 = or i8 %34, %35
  store i8 %36, ptr %33, align 1, !tbaa !26
  %37 = load i32, ptr %15, align 4, !tbaa !33
  %38 = sub nsw i32 %37, %21
  store i32 %38, ptr %15, align 4, !tbaa !33
  %39 = icmp eq i32 %37, %21
  br i1 %39, label %40, label %46

40:                                               ; preds = %18
  store i32 8, ptr %15, align 4, !tbaa !33
  %41 = load i32, ptr %17, align 8, !tbaa !30
  %42 = add nsw i32 %41, -1
  store i32 %42, ptr %17, align 8, !tbaa !30
  %43 = load ptr, ptr %16, align 8, !tbaa !34
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, ptr %43, i64 %44
  store i8 0, ptr %45, align 1, !tbaa !26
  br label %46

46:                                               ; preds = %40, %18
  %47 = icmp sgt i32 %22, 0
  br i1 %47, label %18, label %48, !llvm.loop !37

48:                                               ; preds = %46, %8
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nofree nounwind willreturn memory(argmem: read) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { cold }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 16}
!6 = !{!"", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !11, i64 128, !11, i64 136, !10, i64 144, !10, i64 148, !12, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !7, i64 168, !7, i64 176, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !10, i64 208, !10, i64 212, !12, i64 216, !10, i64 220, !10, i64 224, !10, i64 228, !12, i64 232, !12, i64 236, !12, i64 240, !12, i64 244, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!6, !10, i64 192}
!14 = !{!6, !10, i64 220}
!15 = !{!10, !10, i64 0}
!16 = !{!6, !10, i64 204}
!17 = !{!6, !10, i64 60}
!18 = !{!6, !10, i64 188}
!19 = !{!6, !10, i64 196}
!20 = !{!6, !10, i64 200}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = !{!11, !11, i64 0}
!26 = !{!8, !8, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"short", !8, i64 0}
!29 = distinct !{!29, !22}
!30 = !{!31, !10, i64 48}
!31 = !{!"bit_stream_struc", !11, i64 0, !10, i64 8, !11, i64 16, !11, i64 24, !10, i64 32, !7, i64 40, !10, i64 48, !10, i64 52}
!32 = !{!31, !10, i64 32}
!33 = !{!31, !10, i64 52}
!34 = !{!31, !11, i64 24}
!35 = distinct !{!35, !22}
!36 = !{!31, !7, i64 40}
!37 = distinct !{!37, !22}
