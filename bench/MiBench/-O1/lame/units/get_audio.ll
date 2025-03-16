; ModuleID = 'get_audio.c'
source_filename = "get_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@count_samples_carefully = internal unnamed_addr global i1 false, align 4
@get_audio.num_samples_read = internal unnamed_addr global i64 0, align 8
@num_samples = internal global i64 0, align 8
@musicin = internal unnamed_addr global ptr null, align 8
@input_bitrate = internal global i32 0, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [34 x i8] c"Could not close audio input file\0A\00", align 1
@samp_freq = internal global i32 0, align 4
@num_channels = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Could not find \22%s\22.\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Error reading headers in mp3 input file %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Assuming raw pcm input file\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c" : Forcing byte-swapping\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Error reading input file\0A\00", align 1
@NativeByteOrder = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"byte order not determined\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"%d-bit sample-size is not supported!\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Sound data is not PCM in \22%s\22.\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"Sound data is not %d bits in \22%s\22.\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"Sound data is not mono or stereo in \22%s\22.\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Block size is not %d bytes in \22%s\22.\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Block offset is not %d bytes in \22%s\22.\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @lame_init_infile(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store i1 false, ptr @count_samples_carefully, align 4
  %2 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 31
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !13
  %6 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !14
  %8 = tail call ptr @OpenSndFile(ptr noundef %0, ptr noundef %3, i32 noundef %5, i32 noundef %7)
  %9 = load i32, ptr @samp_freq, align 4, !tbaa !15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 %9, ptr %4, align 4, !tbaa !13
  br label %12

12:                                               ; preds = %11, %1
  %13 = load i32, ptr @num_channels, align 4, !tbaa !15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i32 %13, ptr %6, align 8, !tbaa !14
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i64, ptr @num_samples, align 8, !tbaa !16
  store i64 %17, ptr %0, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @OpenSndFile(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %5) #12
  store i64 4294967295, ptr @num_samples, align 8, !tbaa !16
  store i32 %2, ptr @samp_freq, align 4, !tbaa !15
  store i32 %3, ptr @num_channels, align 4, !tbaa !15
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.1) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load ptr, ptr @stdin, align 8, !tbaa !18
  store ptr %9, ptr @musicin, align 8, !tbaa !18
  br label %16

10:                                               ; preds = %4
  %11 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.2)
  store ptr %11, ptr @musicin, align 8, !tbaa !18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load ptr, ptr @stderr, align 8, !tbaa !18
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.3, ptr noundef %1) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

16:                                               ; preds = %10, %8
  store i32 0, ptr @input_bitrate, align 4, !tbaa !15
  %17 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 29
  %18 = load i32, ptr %17, align 8, !tbaa !19
  switch i32 %18, label %26 [
    i32 3, label %19
    i32 4, label %28
  ]

19:                                               ; preds = %16
  %20 = load ptr, ptr @musicin, align 8, !tbaa !18
  %21 = tail call i32 @lame_decode_initfile(ptr noundef %20, ptr noundef nonnull @num_channels, ptr noundef nonnull @samp_freq, ptr noundef nonnull @input_bitrate, ptr noundef nonnull @num_samples) #12
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load ptr, ptr @stderr, align 8, !tbaa !18
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.4, ptr noundef %1) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

26:                                               ; preds = %16
  %27 = load ptr, ptr @musicin, align 8, !tbaa !18
  tail call void @parse_file_header(ptr noundef %0, ptr noundef %27)
  br label %28

28:                                               ; preds = %16, %26
  %29 = load i32, ptr %17, align 8, !tbaa !19
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load ptr, ptr @stderr, align 8, !tbaa !18
  %33 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 27, i64 1, ptr %32) #14
  %34 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 30
  %35 = load i32, ptr %34, align 4, !tbaa !20
  %36 = icmp eq i32 %35, 1
  %37 = load ptr, ptr @stderr, align 8, !tbaa !18
  br i1 %36, label %38, label %40

38:                                               ; preds = %31
  %39 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 25, i64 1, ptr %37) #14
  br label %42

40:                                               ; preds = %31
  %41 = tail call i32 @fputc(i32 10, ptr %37)
  br label %42

42:                                               ; preds = %28, %40, %38, %19
  %43 = load i64, ptr @num_samples, align 8, !tbaa !16
  %44 = icmp eq i64 %43, 4294967295
  br i1 %44, label %45, label %76

45:                                               ; preds = %42
  %46 = load ptr, ptr @musicin, align 8, !tbaa !18
  %47 = load ptr, ptr @stdin, align 8, !tbaa !18
  %48 = icmp eq ptr %46, %47
  br i1 %48, label %76, label %49

49:                                               ; preds = %45
  %50 = call i32 @stat(ptr noundef %1, ptr noundef nonnull %5) #12
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %49
  %53 = load i32, ptr %17, align 8, !tbaa !19
  %54 = icmp eq i32 %53, 3
  %55 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 8
  %56 = load i64, ptr %55, align 8, !tbaa !21
  br i1 %54, label %57, label %69

57:                                               ; preds = %52
  %58 = sitofp i64 %56 to double
  %59 = fmul double %58, 8.000000e+00
  %60 = load i32, ptr @input_bitrate, align 4, !tbaa !15
  %61 = sitofp i32 %60 to double
  %62 = fmul double %61, 1.000000e+03
  %63 = fdiv double %59, %62
  %64 = fptrunc double %63 to float
  %65 = load i32, ptr @samp_freq, align 4, !tbaa !15
  %66 = sitofp i32 %65 to float
  %67 = fmul float %66, %64
  %68 = fptoui float %67 to i64
  br label %74

69:                                               ; preds = %52
  %70 = load i32, ptr @num_channels, align 4, !tbaa !15
  %71 = shl nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = sdiv i64 %56, %72
  br label %74

74:                                               ; preds = %57, %69
  %75 = phi i64 [ %73, %69 ], [ %68, %57 ]
  store i64 %75, ptr @num_samples, align 8, !tbaa !16
  br label %76

76:                                               ; preds = %74, %49, %45, %42
  %77 = load ptr, ptr @musicin, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #12
  ret ptr %77
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @GetSndSampleRate() local_unnamed_addr #1 {
  %1 = load i32, ptr @samp_freq, align 4, !tbaa !15
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @GetSndChannels() local_unnamed_addr #1 {
  %1 = load i32, ptr @num_channels, align 4, !tbaa !15
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i64 @GetSndSamples() local_unnamed_addr #1 {
  %1 = load i64, ptr @num_samples, align 8, !tbaa !16
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define dso_local void @lame_close_infile(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @musicin, align 8, !tbaa !18
  %3 = tail call i32 @fclose(ptr noundef %2)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @stderr, align 8, !tbaa !18
  %7 = tail call i64 @fwrite(ptr nonnull @.str, i64 33, i64 1, ptr %6) #14
  tail call void @exit(i32 noundef 2) #15
  unreachable

8:                                                ; preds = %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CloseSndFile(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @musicin, align 8, !tbaa !18
  %3 = tail call i32 @fclose(ptr noundef %2)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @stderr, align 8, !tbaa !18
  %7 = tail call i64 @fwrite(ptr nonnull @.str, i64 33, i64 1, ptr %6) #14
  tail call void @exit(i32 noundef 2) #15
  unreachable

8:                                                ; preds = %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lame_readframe(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @get_audio(ptr noundef %0, ptr noundef %1, i32 poison)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 40
  %7 = load i64, ptr %6, align 8, !tbaa !24
  %8 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 39
  %9 = load i64, ptr %8, align 8, !tbaa !25
  %10 = add nsw i64 %9, 2
  %11 = tail call i64 @llvm.smin.i64(i64 %7, i64 %10)
  store i64 %11, ptr %6, align 8, !tbaa !24
  br label %12

12:                                               ; preds = %5, %2
  %13 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 39
  %14 = load i64, ptr %13, align 8, !tbaa !25
  %15 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 40
  %16 = load i64, ptr %15, align 8, !tbaa !24
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store i64 %14, ptr %15, align 8, !tbaa !24
  br label %19

19:                                               ; preds = %18, %12
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @get_audio(ptr nocapture noundef readonly %0, ptr noundef %1, i32 %2) local_unnamed_addr #0 {
  %4 = alloca [2304 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 4608, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 39
  %8 = load i64, ptr %7, align 8, !tbaa !25
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i64 0, ptr @get_audio.num_samples_read, align 8, !tbaa !16
  br label %11

11:                                               ; preds = %10, %3
  %12 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 45
  %13 = load i32, ptr %12, align 8, !tbaa !26
  %14 = mul i32 %13, 576
  %15 = load i1, ptr @count_samples_carefully, align 4
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load i64, ptr @num_samples, align 8
  %18 = load i64, ptr @get_audio.num_samples_read, align 8
  %19 = tail call i64 @llvm.usub.sat.i64(i64 %17, i64 %18)
  %20 = sext i32 %14 to i64
  %21 = icmp ult i64 %19, %20
  %22 = trunc i64 %19 to i32
  %23 = select i1 %21, i32 %22, i32 %14
  br label %24

24:                                               ; preds = %16, %11
  %25 = phi i32 [ %14, %11 ], [ %23, %16 ]
  %26 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 29
  %27 = load i32, ptr %26, align 8, !tbaa !19
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load ptr, ptr @musicin, align 8, !tbaa !18
  %31 = getelementptr inbounds [1152 x i16], ptr %1, i64 1
  %32 = tail call i32 @lame_decode_fromfile(ptr noundef %30, ptr noundef %1, ptr noundef nonnull %31) #12
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %62

34:                                               ; preds = %29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(4608) %1, i8 0, i64 4608, i1 false)
  br label %62

35:                                               ; preds = %24
  %36 = mul nsw i32 %14, %6
  %37 = mul nsw i32 %25, %6
  %38 = call i32 @read_samples_pcm(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %36, i32 noundef %37)
  %39 = sdiv i32 %38, %6
  %40 = icmp sgt i32 %13, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %35
  %42 = icmp eq i32 %6, 2
  %43 = sext i32 %6 to i64
  %44 = call i32 @llvm.smax.i32(i32 %14, i32 1)
  %45 = zext nneg i32 %44 to i64
  br label %46

46:                                               ; preds = %41, %57
  %47 = phi i64 [ 0, %41 ], [ %60, %57 ]
  %48 = mul nsw i64 %47, %43
  %49 = getelementptr inbounds [2304 x i16], ptr %4, i64 0, i64 %48
  %50 = load i16, ptr %49, align 2, !tbaa !27
  %51 = getelementptr inbounds [1152 x i16], ptr %1, i64 0, i64 %47
  store i16 %50, ptr %51, align 2, !tbaa !27
  br i1 %42, label %52, label %57

52:                                               ; preds = %46
  %53 = shl nuw nsw i64 %47, 1
  %54 = or disjoint i64 %53, 1
  %55 = getelementptr inbounds [2304 x i16], ptr %4, i64 0, i64 %54
  %56 = load i16, ptr %55, align 2, !tbaa !27
  br label %57

57:                                               ; preds = %46, %52
  %58 = phi i16 [ %56, %52 ], [ 0, %46 ]
  %59 = getelementptr inbounds [1152 x i16], ptr %1, i64 1, i64 %47
  store i16 %58, ptr %59, align 2, !tbaa !27
  %60 = add nuw nsw i64 %47, 1
  %61 = icmp eq i64 %60, %45
  br i1 %61, label %62, label %46, !llvm.loop !29

62:                                               ; preds = %57, %35, %34, %29
  %63 = phi i32 [ %32, %29 ], [ 0, %34 ], [ %39, %35 ], [ %39, %57 ]
  %64 = load i64, ptr @num_samples, align 8, !tbaa !16
  %65 = icmp eq i64 %64, 4294967295
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = sext i32 %63 to i64
  %68 = load i64, ptr @get_audio.num_samples_read, align 8, !tbaa !16
  %69 = add i64 %68, %67
  store i64 %69, ptr @get_audio.num_samples_read, align 8, !tbaa !16
  br label %70

70:                                               ; preds = %66, %62
  call void @llvm.lifetime.end.p0(i64 4608, ptr nonnull %4) #12
  ret i32 %63
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @read_samples_mp3(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds [1152 x i16], ptr %2, i64 1
  %6 = tail call i32 @lame_decode_fromfile(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #12
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(4608) %2, i8 0, i64 4608, i1 false)
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ %6, %4 ], [ 0, %8 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @read_samples_pcm(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 29
  %6 = load i32, ptr %5, align 8, !tbaa !19
  %7 = icmp eq i32 %6, 1
  %8 = sext i32 %3 to i64
  %9 = load ptr, ptr @musicin, align 8, !tbaa !18
  %10 = tail call i64 @fread(ptr noundef %1, i64 noundef 2, i64 noundef %8, ptr noundef %9)
  %11 = trunc i64 %10 to i32
  %12 = load ptr, ptr @musicin, align 8, !tbaa !18
  %13 = tail call i32 @ferror(ptr noundef %12) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load ptr, ptr @stderr, align 8, !tbaa !18
  %17 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 25, i64 1, ptr %16) #14
  tail call void @exit(i32 noundef 2) #15
  unreachable

18:                                               ; preds = %4
  %19 = load i32, ptr @NativeByteOrder, align 4, !tbaa !15
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = tail call i32 @DetermineByteOrder() #12
  store i32 %22, ptr @NativeByteOrder, align 4, !tbaa !15
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load ptr, ptr @stderr, align 8, !tbaa !18
  %26 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 26, i64 1, ptr %25) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

27:                                               ; preds = %21, %18
  %28 = load i32, ptr @NativeByteOrder, align 4
  %29 = icmp ne i32 %28, 2
  %30 = select i1 %7, i1 true, i1 %29
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @SwapBytesInWords(ptr noundef %1, i32 noundef %11) #12
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i32, ptr @NativeByteOrder, align 4
  %34 = icmp eq i32 %33, 1
  %35 = select i1 %7, i1 %34, i1 false
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call void @SwapBytesInWords(ptr noundef %1, i32 noundef %11) #12
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 30
  %39 = load i32, ptr %38, align 4, !tbaa !20
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  tail call void @SwapBytesInWords(ptr noundef %1, i32 noundef %11) #12
  br label %42

42:                                               ; preds = %41, %37
  %43 = icmp slt i32 %11, %2
  %44 = tail call i32 @llvm.smax.i32(i32 %11, i32 0)
  %45 = icmp slt i32 %44, %2
  %46 = and i1 %43, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = shl nuw i32 %44, 1
  %49 = zext i32 %48 to i64
  %50 = getelementptr i8, ptr %1, i64 %49
  %51 = xor i32 %44, -1
  %52 = add i32 %51, %2
  %53 = zext i32 %52 to i64
  %54 = shl nuw nsw i64 %53, 1
  %55 = add nuw nsw i64 %54, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %50, i8 0, i64 %55, i1 false), !tbaa !27
  br label %56

56:                                               ; preds = %47, %42
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @GetSndBitrate() local_unnamed_addr #1 {
  %1 = load i32, ptr @input_bitrate, align 4, !tbaa !15
  ret i32 %1
}

declare i32 @lame_decode_fromfile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @fskip(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #12
  %5 = icmp sgt i64 %1, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3, %6
  %7 = phi i64 [ %10, %6 ], [ %1, %3 ]
  %8 = tail call i64 @llvm.smin.i64(i64 %7, i64 1024)
  %9 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef %8, ptr noundef %0)
  %10 = sub i64 %7, %9
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %6, label %12, !llvm.loop !31

12:                                               ; preds = %6, %3
  %13 = phi i64 [ %1, %3 ], [ %10, %6 ]
  %14 = trunc i64 %13 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #12
  ret i32 %14
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

declare i32 @lame_decode_initfile(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @parse_file_header(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  %8 = tail call i32 @Read32BitsHighLow(ptr noundef %1) #12
  store i1 false, ptr @count_samples_carefully, align 4
  %9 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 29
  store i32 4, ptr %9, align 8, !tbaa !19
  switch i32 %8, label %221 [
    i32 1380533830, label %10
    i32 1179603533, label %91
  ]

10:                                               ; preds = %2
  %11 = tail call i32 @Read32BitsHighLow(ptr noundef %1) #12
  %12 = tail call i32 @Read32BitsHighLow(ptr noundef %1) #12
  %13 = icmp eq i32 %12, 1463899717
  br i1 %13, label %14, label %221

14:                                               ; preds = %10, %74
  %15 = phi i32 [ %75, %74 ], [ 0, %10 ]
  %16 = phi i32 [ %72, %74 ], [ 0, %10 ]
  %17 = phi i64 [ %71, %74 ], [ 0, %10 ]
  %18 = phi i16 [ %70, %74 ], [ 0, %10 ]
  %19 = phi i64 [ %69, %74 ], [ 0, %10 ]
  %20 = phi i16 [ %68, %74 ], [ 0, %10 ]
  %21 = tail call i32 @Read32BitsHighLow(ptr noundef %1) #12
  %22 = tail call i32 @Read32Bits(ptr noundef %1) #12
  switch i32 %21, label %50 [
    i32 1718449184, label %23
    i32 1684108385, label %48
  ]

23:                                               ; preds = %14
  %24 = icmp slt i32 %22, 16
  br i1 %24, label %67, label %25

25:                                               ; preds = %23
  %26 = tail call i32 @Read16BitsLowHigh(ptr noundef %1) #12
  %27 = tail call i32 @Read16BitsLowHigh(ptr noundef %1) #12
  %28 = trunc i32 %27 to i16
  %29 = tail call i32 @Read32Bits(ptr noundef %1) #12
  %30 = zext i32 %29 to i64
  %31 = tail call i32 @Read32Bits(ptr noundef %1) #12
  %32 = tail call i32 @Read16BitsLowHigh(ptr noundef %1) #12
  %33 = tail call i32 @Read16BitsLowHigh(ptr noundef %1) #12
  %34 = trunc i32 %33 to i16
  %35 = icmp eq i32 %22, 16
  br i1 %35, label %63, label %36

36:                                               ; preds = %25
  %37 = zext nneg i32 %22 to i64
  %38 = add nsw i64 %37, -16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #12
  br label %39

39:                                               ; preds = %39, %36
  %40 = phi i64 [ %43, %39 ], [ %38, %36 ]
  %41 = tail call i64 @llvm.smin.i64(i64 %40, i64 1024)
  %42 = call i64 @fread(ptr noundef nonnull %7, i64 noundef 1, i64 noundef %41, ptr noundef %1)
  %43 = sub i64 %40, %42
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %39, label %45, !llvm.loop !31

45:                                               ; preds = %39
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #12
  %46 = and i64 %43, 4294967295
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %63, label %67

48:                                               ; preds = %14
  %49 = sext i32 %22 to i64
  br label %67

50:                                               ; preds = %14
  %51 = sext i32 %22 to i64
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #12
  %52 = icmp sgt i32 %22, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50, %53
  %54 = phi i64 [ %57, %53 ], [ %51, %50 ]
  %55 = tail call i64 @llvm.smin.i64(i64 %54, i64 1024)
  %56 = call i64 @fread(ptr noundef nonnull %6, i64 noundef 1, i64 noundef %55, ptr noundef %1)
  %57 = sub i64 %54, %56
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %53, label %59, !llvm.loop !31

59:                                               ; preds = %53, %50
  %60 = phi i64 [ %51, %50 ], [ %57, %53 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #12
  %61 = and i64 %60, 4294967295
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59, %45, %25
  %64 = phi i16 [ %20, %59 ], [ %28, %25 ], [ %28, %45 ]
  %65 = phi i64 [ %19, %59 ], [ %30, %25 ], [ %30, %45 ]
  %66 = phi i16 [ %18, %59 ], [ %34, %25 ], [ %34, %45 ]
  br label %67

67:                                               ; preds = %63, %59, %48, %45, %23
  %68 = phi i16 [ %64, %63 ], [ %20, %59 ], [ %20, %48 ], [ %20, %23 ], [ %28, %45 ]
  %69 = phi i64 [ %65, %63 ], [ %19, %59 ], [ %19, %48 ], [ %19, %23 ], [ %30, %45 ]
  %70 = phi i16 [ %66, %63 ], [ %18, %59 ], [ %18, %48 ], [ %18, %23 ], [ %34, %45 ]
  %71 = phi i64 [ %17, %63 ], [ %17, %59 ], [ %49, %48 ], [ %17, %23 ], [ %17, %45 ]
  %72 = phi i32 [ %16, %63 ], [ %16, %59 ], [ 1, %48 ], [ %16, %23 ], [ %16, %45 ]
  %73 = phi i32 [ 0, %63 ], [ 1, %59 ], [ 2, %48 ], [ 1, %23 ], [ 1, %45 ]
  switch i32 %73, label %221 [
    i32 0, label %74
    i32 2, label %77
  ]

74:                                               ; preds = %67
  %75 = add nuw nsw i32 %15, 1
  %76 = icmp eq i32 %75, 20
  br i1 %76, label %77, label %14, !llvm.loop !32

77:                                               ; preds = %74, %67
  %78 = icmp eq i32 %72, 0
  br i1 %78, label %221, label %79

79:                                               ; preds = %77
  %80 = icmp eq i16 %70, 16
  br i1 %80, label %85, label %81

81:                                               ; preds = %79
  %82 = zext i16 %70 to i32
  %83 = load ptr, ptr @stderr, align 8, !tbaa !18
  %84 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef nonnull @.str.11, i32 noundef %82) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

85:                                               ; preds = %79
  %86 = zext i16 %68 to i32
  store i32 %86, ptr @num_channels, align 4, !tbaa !15
  %87 = trunc i64 %69 to i32
  store i32 %87, ptr @samp_freq, align 4, !tbaa !15
  %88 = zext i16 %68 to i64
  %89 = shl nuw nsw i64 %88, 1
  %90 = sdiv i64 %71, %89
  br label %218

91:                                               ; preds = %2
  %92 = tail call i32 @Read32BitsHighLow(ptr noundef %1) #12
  %93 = tail call i32 @Read32BitsHighLow(ptr noundef %1) #12
  %94 = icmp eq i32 %93, 1095321158
  br i1 %94, label %95, label %221

95:                                               ; preds = %91
  %96 = sext i32 %92 to i64
  br label %97

97:                                               ; preds = %169, %95
  %98 = phi i64 [ %170, %169 ], [ 0, %95 ]
  %99 = phi i16 [ %171, %169 ], [ 0, %95 ]
  %100 = phi i16 [ %172, %169 ], [ 0, %95 ]
  %101 = phi float [ %173, %169 ], [ 0.000000e+00, %95 ]
  %102 = phi i64 [ %174, %169 ], [ 0, %95 ]
  %103 = phi i64 [ %175, %169 ], [ 0, %95 ]
  %104 = phi i64 [ %176, %169 ], [ 0, %95 ]
  %105 = phi i32 [ %177, %169 ], [ 0, %95 ]
  %106 = phi i64 [ %113, %169 ], [ %96, %95 ]
  %107 = icmp sgt i64 %106, 0
  br i1 %107, label %108, label %179

108:                                              ; preds = %97
  %109 = add nsw i64 %106, -4
  %110 = tail call i32 @Read32BitsHighLow(ptr noundef %1) #12
  %111 = tail call i32 @Read32BitsHighLow(ptr noundef %1) #12
  %112 = sext i32 %111 to i64
  %113 = sub nsw i64 %109, %112
  switch i32 %110, label %152 [
    i32 1129270605, label %114
    i32 1397968452, label %135
  ]

114:                                              ; preds = %108
  %115 = tail call i32 @Read16BitsHighLow(ptr noundef %1) #12
  %116 = trunc i32 %115 to i16
  %117 = tail call i32 @Read32BitsHighLow(ptr noundef %1) #12
  %118 = sext i32 %117 to i64
  %119 = tail call i32 @Read16BitsHighLow(ptr noundef %1) #12
  %120 = trunc i32 %119 to i16
  %121 = tail call double @ReadIeeeExtendedHighLow(ptr noundef %1) #12
  %122 = fptrunc double %121 to float
  %123 = add nsw i64 %112, -18
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #12
  %124 = icmp sgt i32 %111, 18
  br i1 %124, label %125, label %131

125:                                              ; preds = %114, %125
  %126 = phi i64 [ %129, %125 ], [ %123, %114 ]
  %127 = tail call i64 @llvm.smin.i64(i64 %126, i64 1024)
  %128 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 1, i64 noundef %127, ptr noundef %1)
  %129 = sub i64 %126, %128
  %130 = icmp sgt i64 %129, 0
  br i1 %130, label %125, label %131, !llvm.loop !31

131:                                              ; preds = %125, %114
  %132 = phi i64 [ %123, %114 ], [ %129, %125 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #12
  %133 = and i64 %132, 4294967295
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %164, label %169

135:                                              ; preds = %108
  %136 = tail call i32 @Read32BitsHighLow(ptr noundef %1) #12
  %137 = sext i32 %136 to i64
  %138 = tail call i32 @Read32BitsHighLow(ptr noundef %1) #12
  %139 = sext i32 %138 to i64
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #12
  %140 = icmp sgt i32 %136, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %135, %141
  %142 = phi i64 [ %145, %141 ], [ %137, %135 ]
  %143 = tail call i64 @llvm.smin.i64(i64 %142, i64 1024)
  %144 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef %143, ptr noundef %1)
  %145 = sub i64 %142, %144
  %146 = icmp sgt i64 %145, 0
  br i1 %146, label %141, label %147, !llvm.loop !31

147:                                              ; preds = %141, %135
  %148 = phi i64 [ %137, %135 ], [ %145, %141 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #12
  %149 = and i64 %148, 4294967295
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %169

151:                                              ; preds = %147
  br label %169

152:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #12
  %153 = icmp sgt i32 %111, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %152, %154
  %155 = phi i64 [ %158, %154 ], [ %112, %152 ]
  %156 = tail call i64 @llvm.smin.i64(i64 %155, i64 1024)
  %157 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef %156, ptr noundef %1)
  %158 = sub i64 %155, %157
  %159 = icmp sgt i64 %158, 0
  br i1 %159, label %154, label %160, !llvm.loop !31

160:                                              ; preds = %154, %152
  %161 = phi i64 [ %112, %152 ], [ %158, %154 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #12
  %162 = and i64 %161, 4294967295
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %160, %131
  %165 = phi i64 [ %98, %160 ], [ %118, %131 ]
  %166 = phi i16 [ %99, %160 ], [ %120, %131 ]
  %167 = phi i16 [ %100, %160 ], [ %116, %131 ]
  %168 = phi float [ %101, %160 ], [ %122, %131 ]
  br label %169

169:                                              ; preds = %164, %160, %151, %147, %131
  %170 = phi i64 [ %165, %164 ], [ %98, %160 ], [ %98, %151 ], [ %98, %147 ], [ %118, %131 ]
  %171 = phi i16 [ %166, %164 ], [ %99, %160 ], [ %99, %151 ], [ %99, %147 ], [ %120, %131 ]
  %172 = phi i16 [ %167, %164 ], [ %100, %160 ], [ %100, %151 ], [ %100, %147 ], [ %116, %131 ]
  %173 = phi float [ %168, %164 ], [ %101, %160 ], [ %101, %151 ], [ %101, %147 ], [ %122, %131 ]
  %174 = phi i64 [ %102, %164 ], [ %102, %160 ], [ 1397968452, %151 ], [ %102, %147 ], [ %102, %131 ]
  %175 = phi i64 [ %103, %164 ], [ %103, %160 ], [ %137, %151 ], [ %137, %147 ], [ %103, %131 ]
  %176 = phi i64 [ %104, %164 ], [ %104, %160 ], [ %139, %151 ], [ %139, %147 ], [ %104, %131 ]
  %177 = phi i32 [ %105, %164 ], [ %105, %160 ], [ 1, %151 ], [ %105, %147 ], [ %105, %131 ]
  %178 = phi i32 [ 0, %164 ], [ 1, %160 ], [ 3, %151 ], [ 1, %147 ], [ 1, %131 ]
  switch i32 %178, label %221 [
    i32 0, label %97
    i32 3, label %179
  ], !llvm.loop !33

179:                                              ; preds = %169, %97
  %180 = phi i64 [ %170, %169 ], [ %98, %97 ]
  %181 = phi i16 [ %171, %169 ], [ %99, %97 ]
  %182 = phi i16 [ %172, %169 ], [ %100, %97 ]
  %183 = phi float [ %173, %169 ], [ %101, %97 ]
  %184 = phi i64 [ %174, %169 ], [ %102, %97 ]
  %185 = phi i64 [ %175, %169 ], [ %103, %97 ]
  %186 = phi i64 [ %176, %169 ], [ %104, %97 ]
  %187 = phi i32 [ %177, %169 ], [ %105, %97 ]
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %221, label %189

189:                                              ; preds = %179
  %190 = icmp eq i64 %184, 1397968452
  br i1 %190, label %194, label %191

191:                                              ; preds = %189
  %192 = load ptr, ptr @stderr, align 8, !tbaa !18
  %193 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %192, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

194:                                              ; preds = %189
  %195 = icmp eq i16 %181, 16
  br i1 %195, label %199, label %196

196:                                              ; preds = %194
  %197 = load ptr, ptr @stderr, align 8, !tbaa !18
  %198 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %197, ptr noundef nonnull @.str.13, i32 noundef 16, ptr noundef nonnull @.str.10) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

199:                                              ; preds = %194
  %200 = add i16 %182, -1
  %201 = icmp ult i16 %200, 2
  br i1 %201, label %205, label %202

202:                                              ; preds = %199
  %203 = load ptr, ptr @stderr, align 8, !tbaa !18
  %204 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %203, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

205:                                              ; preds = %199
  %206 = icmp eq i64 %186, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %205
  %208 = load ptr, ptr @stderr, align 8, !tbaa !18
  %209 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %208, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.10) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

210:                                              ; preds = %205
  %211 = icmp eq i64 %185, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %210
  %213 = load ptr, ptr @stderr, align 8, !tbaa !18
  %214 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %213, ptr noundef nonnull @.str.16, i32 noundef 0, ptr noundef nonnull @.str.10) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

215:                                              ; preds = %210
  %216 = zext nneg i16 %182 to i32
  store i32 %216, ptr @num_channels, align 4, !tbaa !15
  %217 = fptosi float %183 to i32
  store i32 %217, ptr @samp_freq, align 4, !tbaa !15
  br label %218

218:                                              ; preds = %85, %215
  %219 = phi i64 [ %180, %215 ], [ %90, %85 ]
  %220 = phi i32 [ 2, %215 ], [ 1, %85 ]
  store i64 %219, ptr @num_samples, align 8, !tbaa !16
  store i32 %220, ptr %9, align 8, !tbaa !19
  store i1 true, ptr @count_samples_carefully, align 4
  br label %221

221:                                              ; preds = %169, %67, %218, %91, %179, %10, %77, %2
  %222 = load i32, ptr %9, align 8, !tbaa !19
  %223 = icmp eq i32 %222, 4
  br i1 %223, label %224, label %226

224:                                              ; preds = %221
  %225 = tail call i32 @fseek(ptr noundef %1, i64 noundef 0, i32 noundef 0)
  store i32 4, ptr %9, align 8, !tbaa !19
  br label %226

226:                                              ; preds = %224, %221
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #8

declare i32 @DetermineByteOrder() local_unnamed_addr #3

declare void @SwapBytesInWords(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @Read32BitsHighLow(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

declare i32 @Read32Bits(ptr noundef) local_unnamed_addr #3

declare i32 @Read16BitsLowHigh(ptr noundef) local_unnamed_addr #3

declare i32 @Read16BitsHighLow(ptr noundef) local_unnamed_addr #3

declare double @ReadIeeeExtendedHighLow(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { cold }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !11, i64 128}
!6 = !{!"", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !11, i64 128, !11, i64 136, !10, i64 144, !10, i64 148, !12, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !7, i64 168, !7, i64 176, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !10, i64 208, !10, i64 212, !12, i64 216, !10, i64 220, !10, i64 224, !10, i64 228, !12, i64 232, !12, i64 236, !12, i64 240, !12, i64 244, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!6, !10, i64 12}
!14 = !{!6, !10, i64 8}
!15 = !{!10, !10, i64 0}
!16 = !{!7, !7, i64 0}
!17 = !{!6, !7, i64 0}
!18 = !{!11, !11, i64 0}
!19 = !{!6, !10, i64 120}
!20 = !{!6, !10, i64 124}
!21 = !{!22, !7, i64 48}
!22 = !{!"stat", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !23, i64 72, !23, i64 88, !23, i64 104, !8, i64 120}
!23 = !{!"timespec", !7, i64 0, !7, i64 8}
!24 = !{!6, !7, i64 176}
!25 = !{!6, !7, i64 168}
!26 = !{!6, !10, i64 200}
!27 = !{!28, !28, i64 0}
!28 = !{!"short", !8, i64 0}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = distinct !{!31, !30}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !30}
