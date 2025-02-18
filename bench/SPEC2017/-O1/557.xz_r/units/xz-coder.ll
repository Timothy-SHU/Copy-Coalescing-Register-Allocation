; ModuleID = 'xz/coder.c'
source_filename = "xz/coder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_filter = type { i64, ptr }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%union.io_buf = type { [1024 x i64] }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.file_pair = type { ptr, ptr, i32, i32, i8, i8, i64 }

@opt_mode = dso_local local_unnamed_addr global i32 0, align 4
@opt_format = dso_local local_unnamed_addr global i32 0, align 4
@opt_auto_adjust = dso_local local_unnamed_addr global i8 1, align 1
@check = internal unnamed_addr global i32 0, align 4
@check_default = internal unnamed_addr global i1 false, align 1
@preset_number = internal unnamed_addr global i32 6, align 4
@filters_count = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Maximum number of filters is four\00", align 1
@filters = internal global [5 x %struct.lzma_filter] zeroinitializer, align 16
@coder_set_compression_settings.opt_lzma = internal global %struct.lzma_options_lzma zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Using a preset in raw mode is discouraged.\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"The exact options of the presets may vary between software versions.\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"The .lzma format supports only the LZMA1 filter\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"LZMA1 cannot be used with the .xz format\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Unsupported filter chain or filter options\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Decompression will need %s MiB of memory.\00", align 1
@.str.7 = private unnamed_addr constant [101 x i8] c"Adjusted LZMA%c dictionary size from %s MiB to %s MiB to not exceed the memory usage limit of %s MiB\00", align 1
@in_buf = internal global %union.io_buf zeroinitializer, align 8
@strm = internal global %struct.lzma_stream zeroinitializer, align 8
@user_abort = external local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [58 x i8] c"Memory usage limit is too low for the given filter setup.\00", align 1
@opt_stdout = external local_unnamed_addr global i8, align 1
@opt_force = external local_unnamed_addr global i8, align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@is_format_xz.magic = internal constant [6 x i8] c"\FD7zXZ\00", align 1
@__const.is_format_lzma.filter = private unnamed_addr constant %struct.lzma_filter { i64 4611686018427387905, ptr null }, align 8
@out_buf = internal global %union.io_buf zeroinitializer, align 8

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @coder_set_check(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  store i32 %0, ptr @check, align 4, !tbaa !35
  store i1 true, ptr @check_default, align 1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @coder_set_preset(i32 noundef %0) local_unnamed_addr #1 !prof !34 {
  %2 = load i32, ptr @preset_number, align 4, !tbaa !35
  %3 = and i32 %2, -32
  %4 = or i32 %3, %0
  store i32 %4, ptr @preset_number, align 4, !tbaa !35
  %5 = load i32, ptr @filters_count, align 4, !tbaa !35
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = zext i32 %5 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ %8, %7 ], [ %12, %9 ]
  %11 = add nsw i64 %10, -1
  %12 = add nsw i64 %10, -1
  %13 = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %11, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !39
  tail call void @free(ptr noundef %14) #8
  store ptr null, ptr %13, align 8, !tbaa !39
  %15 = icmp eq i64 %11, 0
  br i1 %15, label %16, label %9, !llvm.loop !43

16:                                               ; preds = %9
  store i32 0, ptr @filters_count, align 4, !tbaa !35
  br label %17

17:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @coder_set_extreme() local_unnamed_addr #1 !prof !34 {
  %1 = load i32, ptr @preset_number, align 4, !tbaa !35
  %2 = or i32 %1, -2147483648
  store i32 %2, ptr @preset_number, align 4, !tbaa !35
  %3 = load i32, ptr @filters_count, align 4, !tbaa !35
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %0
  %6 = zext i32 %3 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ %6, %5 ], [ %10, %7 ]
  %9 = add nsw i64 %8, -1
  %10 = add nsw i64 %8, -1
  %11 = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %9, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  tail call void @free(ptr noundef %12) #8
  store ptr null, ptr %11, align 8, !tbaa !39
  %13 = icmp eq i64 %9, 0
  br i1 %13, label %14, label %7, !llvm.loop !43

14:                                               ; preds = %7
  store i32 0, ptr @filters_count, align 4, !tbaa !35
  br label %15

15:                                               ; preds = %14, %0
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @coder_add_filter(i64 noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !34 {
  %3 = load i32, ptr @filters_count, align 4, !tbaa !35
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str) #8
  br label %6

6:                                                ; preds = %5, %2
  %7 = load i32, ptr @filters_count, align 4, !tbaa !35
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %8
  store i64 %0, ptr %9, align 16, !tbaa !46
  %10 = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %8, i32 1
  store ptr %1, ptr %10, align 8, !tbaa !39
  %11 = add i32 %7, 1
  store i32 %11, ptr @filters_count, align 4, !tbaa !35
  store i32 6, ptr @preset_number, align 4, !tbaa !35
  ret void
}

declare void @message_fatal(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @coder_set_compression_settings() local_unnamed_addr #1 !prof !34 {
  %1 = load i32, ptr @filters_count, align 4, !tbaa !35
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %16

3:                                                ; preds = %0
  %4 = load i32, ptr @opt_format, align 4, !tbaa !35
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void (i32, ptr, ...) @message(i32 noundef 2, ptr noundef nonnull @.str.1) #8
  tail call void (i32, ptr, ...) @message(i32 noundef 2, ptr noundef nonnull @.str.2) #8
  br label %7

7:                                                ; preds = %6, %3
  %8 = load i32, ptr @preset_number, align 4, !tbaa !35
  %9 = tail call zeroext i8 @lzma_lzma_preset(ptr noundef nonnull @coder_set_compression_settings.opt_lzma, i32 noundef %8) #8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @message_bug() #8
  br label %12

12:                                               ; preds = %11, %7
  %13 = load i32, ptr @opt_format, align 4, !tbaa !35
  %14 = icmp eq i32 %13, 2
  %15 = select i1 %14, i64 4611686018427387905, i64 33
  store i64 %15, ptr @filters, align 16, !tbaa !46
  store ptr @coder_set_compression_settings.opt_lzma, ptr getelementptr inbounds ([5 x %struct.lzma_filter], ptr @filters, i64 0, i64 0, i32 1), align 8, !tbaa !39
  store i32 1, ptr @filters_count, align 4, !tbaa !35
  br label %16

16:                                               ; preds = %12, %0
  %17 = load i32, ptr @filters_count, align 4, !tbaa !35
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %18
  store i64 -1, ptr %19, align 16, !tbaa !46
  %20 = load i32, ptr @opt_format, align 4, !tbaa !35
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = icmp ne i32 %17, 1
  %24 = load i64, ptr @filters, align 16
  %25 = icmp ne i64 %24, 4611686018427387905
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.3) #8
  br label %28

28:                                               ; preds = %22, %27, %16
  %29 = load i32, ptr @opt_format, align 4, !tbaa !35
  %30 = icmp eq i32 %29, 1
  %31 = load i32, ptr @filters_count, align 4
  %32 = icmp ne i32 %31, 0
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %45

34:                                               ; preds = %28, %40
  %35 = phi i64 [ %41, %40 ], [ 0, %28 ]
  %36 = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %35
  %37 = load i64, ptr %36, align 16, !tbaa !46
  %38 = icmp eq i64 %37, 4611686018427387905
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.4) #8
  br label %40

40:                                               ; preds = %34, %39
  %41 = add nuw nsw i64 %35, 1
  %42 = load i32, ptr @filters_count, align 4, !tbaa !35
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %34, label %45, !llvm.loop !47

45:                                               ; preds = %40, %28
  tail call void @message_filters_show(i32 noundef 4, ptr noundef nonnull @filters) #8
  %46 = load i32, ptr @opt_mode, align 4, !tbaa !35
  %47 = tail call i64 @hardware_memlimit_get(i32 noundef %46) #8
  %48 = load i32, ptr @opt_mode, align 4, !tbaa !35
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = tail call i64 @lzma_raw_encoder_memusage(ptr noundef nonnull @filters) #8
  br label %54

52:                                               ; preds = %45
  %53 = tail call i64 @lzma_raw_decoder_memusage(ptr noundef nonnull @filters) #8
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i64 [ %51, %50 ], [ %53, %52 ]
  %56 = icmp eq i64 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.5) #8
  br label %58

58:                                               ; preds = %57, %54
  tail call void @message_mem_needed(i32 noundef 4, i64 noundef %55) #8
  %59 = load i32, ptr @opt_mode, align 4, !tbaa !35
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = tail call i64 @lzma_raw_decoder_memusage(ptr noundef nonnull @filters) #8
  %63 = icmp eq i64 %62, -1
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = tail call i64 @round_up_to_mib(i64 noundef %62) #8
  %66 = tail call ptr @uint64_to_str(i64 noundef %65, i32 noundef 0) #8
  tail call void (i32, ptr, ...) @message(i32 noundef 4, ptr noundef nonnull @.str.6, ptr noundef %66) #8
  br label %67

67:                                               ; preds = %61, %64, %58
  %68 = icmp ugt i64 %55, %47
  br i1 %68, label %69, label %116

69:                                               ; preds = %67
  %70 = load i8, ptr @opt_auto_adjust, align 1, !tbaa !48, !range !50, !noundef !51
  %71 = icmp eq i8 %70, 0
  %72 = load i32, ptr @opt_format, align 4
  %73 = icmp eq i32 %72, 3
  %74 = select i1 %71, i1 true, i1 %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  tail call void (i32, ptr, ...) @message(i32 noundef 1, ptr noundef nonnull @.str.8) #8
  tail call void @message_mem_needed(i32 noundef 1, i64 noundef %55) #8
  tail call void @tuklib_exit(i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  br label %76

76:                                               ; preds = %69, %75
  br label %77

77:                                               ; preds = %76, %82
  %78 = phi i64 [ %83, %82 ], [ 0, %76 ]
  %79 = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %78
  %80 = load i64, ptr %79, align 16, !tbaa !46
  switch i64 %80, label %82 [
    i64 33, label %84
    i64 4611686018427387905, label %84
    i64 -1, label %81
  ]

81:                                               ; preds = %77
  tail call void (i32, ptr, ...) @message(i32 noundef 1, ptr noundef nonnull @.str.8) #8
  tail call void @message_mem_needed(i32 noundef 1, i64 noundef %55) #8
  tail call void @tuklib_exit(i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  br label %82

82:                                               ; preds = %77, %81
  %83 = add i64 %78, 1
  br label %77, !llvm.loop !52

84:                                               ; preds = %77, %77
  %85 = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %78, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !39
  %87 = load i32, ptr %86, align 8, !tbaa !53
  %88 = and i32 %87, -1048576
  br label %89

89:                                               ; preds = %100, %84
  %90 = phi i32 [ %88, %84 ], [ %102, %100 ]
  %91 = phi i64 [ %55, %84 ], [ %95, %100 ]
  store i32 %90, ptr %86, align 8, !tbaa !53
  %92 = icmp ult i32 %90, 1048576
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  tail call void (i32, ptr, ...) @message(i32 noundef 1, ptr noundef nonnull @.str.8) #8
  tail call void @message_mem_needed(i32 noundef 1, i64 noundef %91) #8
  tail call void @tuklib_exit(i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  br label %94

94:                                               ; preds = %93, %89
  %95 = tail call i64 @lzma_raw_encoder_memusage(ptr noundef nonnull @filters) #8
  %96 = icmp eq i64 %95, -1
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  tail call void @message_bug() #8
  br label %98

98:                                               ; preds = %97, %94
  %99 = icmp ugt i64 %95, %47
  br i1 %99, label %100, label %103

100:                                              ; preds = %98
  %101 = load i32, ptr %86, align 8, !tbaa !53
  %102 = add i32 %101, -1048576
  br label %89, !llvm.loop !55

103:                                              ; preds = %98
  %104 = load i64, ptr %79, align 16, !tbaa !46
  %105 = icmp eq i64 %104, 33
  %106 = select i1 %105, i32 50, i32 49
  %107 = lshr i32 %87, 20
  %108 = zext nneg i32 %107 to i64
  %109 = tail call ptr @uint64_to_str(i64 noundef %108, i32 noundef 0) #8
  %110 = load i32, ptr %86, align 8, !tbaa !53
  %111 = lshr i32 %110, 20
  %112 = zext nneg i32 %111 to i64
  %113 = tail call ptr @uint64_to_str(i64 noundef %112, i32 noundef 1) #8
  %114 = tail call i64 @round_up_to_mib(i64 noundef %47) #8
  %115 = tail call ptr @uint64_to_str(i64 noundef %114, i32 noundef 2) #8
  tail call void (i32, ptr, ...) @message(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %106, ptr noundef %109, ptr noundef %113, ptr noundef %115) #8
  br label %116

116:                                              ; preds = %103, %67
  %117 = load i1, ptr @check_default, align 1
  br i1 %117, label %122, label %118

118:                                              ; preds = %116
  store i32 4, ptr @check, align 4, !tbaa !35
  %119 = tail call zeroext i8 @lzma_check_is_supported(i32 noundef 4) #8
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 1, ptr @check, align 4, !tbaa !35
  br label %122

122:                                              ; preds = %118, %121, %116
  ret void
}

declare void @message(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare zeroext i8 @lzma_lzma_preset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @message_bug() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare void @message_filters_show(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @hardware_memlimit_get(i32 noundef) local_unnamed_addr #2

declare i64 @lzma_raw_encoder_memusage(ptr noundef) local_unnamed_addr #2

declare i64 @lzma_raw_decoder_memusage(ptr noundef) local_unnamed_addr #2

declare void @message_mem_needed(i32 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @uint64_to_str(i64 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @round_up_to_mib(i64 noundef) local_unnamed_addr #2

declare zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @coder_run(ptr noundef %0) local_unnamed_addr #1 !prof !34 {
  tail call void @message_filename(ptr noundef %0) #8
  %2 = tail call ptr @io_open_src(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %192, label %4

4:                                                ; preds = %1
  store ptr @in_buf, ptr @strm, align 8, !tbaa !56
  %5 = tail call i64 @io_read(ptr noundef nonnull %2, ptr noundef nonnull @in_buf, i64 noundef 8192) #8
  store i64 %5, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 1), align 8, !tbaa !58
  %6 = icmp eq i64 %5, -1
  br i1 %6, label %190, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr @opt_mode, align 4, !tbaa !35
  %9 = icmp eq i32 %8, 0
  %10 = load i32, ptr @opt_format, align 4, !tbaa !35
  br i1 %9, label %11, label %20

11:                                               ; preds = %7
  switch i32 %10, label %69 [
    i32 3, label %18
    i32 1, label %12
    i32 2, label %15
  ]

12:                                               ; preds = %11
  %13 = load i32, ptr @check, align 4, !tbaa !35
  %14 = tail call i32 @lzma_stream_encoder(ptr noundef nonnull @strm, ptr noundef nonnull @filters, i32 noundef %13) #8
  br label %69

15:                                               ; preds = %11
  %16 = load ptr, ptr getelementptr inbounds ([5 x %struct.lzma_filter], ptr @filters, i64 0, i64 0, i32 1), align 8, !tbaa !39
  %17 = tail call i32 @lzma_alone_encoder(ptr noundef nonnull @strm, ptr noundef %16) #8
  br label %69

18:                                               ; preds = %11
  %19 = tail call i32 @lzma_raw_encoder(ptr noundef nonnull @strm, ptr noundef nonnull @filters) #8
  br label %69

20:                                               ; preds = %7
  switch i32 %10, label %39 [
    i32 0, label %21
    i32 1, label %29
    i32 2, label %35
    i32 3, label %38
  ]

21:                                               ; preds = %20
  %22 = icmp ugt i64 %5, 5
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @in_buf, ptr noundef nonnull dereferenceable(6) @is_format_xz.magic, i64 6)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %23, %21
  %27 = tail call fastcc zeroext i1 @is_format_lzma()
  %28 = select i1 %27, i32 2, i32 0
  br label %39

29:                                               ; preds = %20
  %30 = icmp ugt i64 %5, 5
  br i1 %30, label %31, label %39

31:                                               ; preds = %29
  %32 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @in_buf, ptr noundef nonnull dereferenceable(6) @is_format_xz.magic, i64 6)
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  br label %39

35:                                               ; preds = %20
  %36 = tail call fastcc zeroext i1 @is_format_lzma()
  %37 = select i1 %36, i32 2, i32 0
  br label %39

38:                                               ; preds = %20
  br label %39

39:                                               ; preds = %29, %31, %38, %35, %26, %23, %20
  %40 = phi i1 [ true, %20 ], [ false, %38 ], [ true, %23 ], [ true, %26 ], [ true, %35 ], [ true, %31 ], [ true, %29 ]
  %41 = phi i32 [ 0, %20 ], [ 3, %38 ], [ 1, %23 ], [ %28, %26 ], [ %37, %35 ], [ %34, %31 ], [ 0, %29 ]
  switch i32 %41, label %59 [
    i32 0, label %42
    i32 1, label %51
    i32 2, label %54
    i32 3, label %57
  ]

42:                                               ; preds = %39
  %43 = load i32, ptr @opt_mode, align 4, !tbaa !35
  %44 = icmp ne i32 %43, 1
  %45 = load i8, ptr @opt_stdout, align 1, !range !50
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %44, i1 true, i1 %46
  %48 = load i8, ptr @opt_force, align 1, !range !50
  %49 = icmp eq i8 %48, 0
  %50 = select i1 %47, i1 true, i1 %49
  br i1 %50, label %60, label %66

51:                                               ; preds = %39
  %52 = tail call i64 @hardware_memlimit_get(i32 noundef 1) #8
  %53 = tail call i32 @lzma_stream_decoder(ptr noundef nonnull @strm, i64 noundef %52, i32 noundef 10) #8
  br label %60

54:                                               ; preds = %39
  %55 = tail call i64 @hardware_memlimit_get(i32 noundef 1) #8
  %56 = tail call i32 @lzma_alone_decoder(ptr noundef nonnull @strm, i64 noundef %55) #8
  br label %60

57:                                               ; preds = %39
  %58 = tail call i32 @lzma_raw_decoder(ptr noundef nonnull @strm, ptr noundef nonnull @filters) #8
  br label %60

59:                                               ; preds = %39
  unreachable

60:                                               ; preds = %57, %54, %51, %42
  %61 = phi i32 [ %58, %57 ], [ %56, %54 ], [ %53, %51 ], [ 7, %42 ]
  %62 = icmp eq i32 %61, 0
  %63 = and i1 %40, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 3), i8 0, i64 16, i1 false)
  %65 = tail call i32 @lzma_code(ptr noundef nonnull @strm, i32 noundef 0) #8
  br label %66

66:                                               ; preds = %42, %64, %60
  %67 = phi i32 [ %65, %64 ], [ %61, %60 ], [ 11, %42 ]
  %68 = phi i1 [ true, %64 ], [ true, %60 ], [ false, %42 ]
  br i1 %68, label %69, label %78

69:                                               ; preds = %66, %18, %15, %12, %11
  %70 = phi i32 [ 11, %11 ], [ %17, %15 ], [ %14, %12 ], [ %19, %18 ], [ %67, %66 ]
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %2, align 8, !tbaa !59
  %74 = tail call ptr @message_strm(i32 noundef %70) #8
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.9, ptr noundef %73, ptr noundef %74) #8
  %75 = icmp eq i32 %70, 6
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = tail call i64 @lzma_memusage(ptr noundef nonnull @strm) #8
  tail call void @message_mem_needed(i32 noundef 1, i64 noundef %77) #8
  br label %78

78:                                               ; preds = %69, %66, %72, %76
  %79 = phi i1 [ false, %66 ], [ true, %76 ], [ true, %72 ], [ false, %69 ]
  %80 = phi i1 [ false, %66 ], [ false, %76 ], [ false, %72 ], [ true, %69 ]
  %81 = load i32, ptr @user_abort, align 4
  %82 = icmp ne i32 %81, 0
  %83 = select i1 %79, i1 true, i1 %82
  br i1 %83, label %190, label %84

84:                                               ; preds = %78
  %85 = load i32, ptr @opt_mode, align 4, !tbaa !35
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = tail call zeroext i1 @io_open_dest(ptr noundef nonnull %2) #8
  br i1 %88, label %190, label %89

89:                                               ; preds = %87, %84
  tail call void @message_progress_start(ptr noundef nonnull @strm, i64 noundef 0) #8
  br i1 %80, label %90, label %174

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.file_pair, ptr %2, i64 0, i32 4
  %92 = load i8, ptr %91, align 8, !tbaa !61, !range !50, !noundef !51
  store ptr @out_buf, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 3), align 8, !tbaa !62
  store i64 8192, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 4), align 8, !tbaa !63
  %93 = load i32, ptr @user_abort, align 4, !tbaa !35
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %188

95:                                               ; preds = %90
  %96 = icmp eq i8 %92, 0
  %97 = select i1 %96, i32 0, i32 3
  br label %98

98:                                               ; preds = %95, %166
  %99 = phi i32 [ %114, %166 ], [ %97, %95 ]
  %100 = phi i8 [ %167, %166 ], [ 0, %95 ]
  %101 = load i64, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 1), align 8, !tbaa !58
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %98
  %104 = load i8, ptr %91, align 8, !tbaa !61, !range !50, !noundef !51
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  store ptr @in_buf, ptr @strm, align 8, !tbaa !56
  %107 = tail call i64 @io_read(ptr noundef nonnull %2, ptr noundef nonnull @in_buf, i64 noundef 8192) #8
  store i64 %107, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 1), align 8, !tbaa !58
  %108 = icmp eq i64 %107, -1
  br i1 %108, label %170, label %109

109:                                              ; preds = %106
  %110 = load i8, ptr %91, align 8, !tbaa !61, !range !50, !noundef !51
  %111 = icmp eq i8 %110, 0
  %112 = select i1 %111, i32 %99, i32 3
  br label %113

113:                                              ; preds = %109, %103, %98
  %114 = phi i32 [ %99, %103 ], [ %99, %98 ], [ %112, %109 ]
  %115 = tail call i32 @lzma_code(ptr noundef nonnull @strm, i32 noundef %114) #8
  %116 = load i64, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 4), align 8, !tbaa !63
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load i32, ptr @opt_mode, align 4, !tbaa !35
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %123, label %121

121:                                              ; preds = %118
  %122 = tail call zeroext i1 @io_write(ptr noundef nonnull %2, ptr noundef nonnull @out_buf, i64 noundef 8192) #8
  br i1 %122, label %170, label %123

123:                                              ; preds = %121, %118
  store ptr @out_buf, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 3), align 8, !tbaa !62
  store i64 8192, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 4), align 8, !tbaa !63
  br label %124

124:                                              ; preds = %123, %113
  %125 = icmp eq i32 %115, 0
  br i1 %125, label %166, label %126

126:                                              ; preds = %124
  %127 = add i32 %115, -4
  %128 = icmp ult i32 %127, -2
  %129 = load i32, ptr @opt_mode, align 4
  %130 = icmp ne i32 %129, 2
  %131 = select i1 %128, i1 %130, i1 false
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load i64, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 4), align 8, !tbaa !63
  %134 = sub i64 8192, %133
  %135 = tail call zeroext i1 @io_write(ptr noundef nonnull %2, ptr noundef nonnull @out_buf, i64 noundef %134) #8
  br i1 %135, label %162, label %136

136:                                              ; preds = %132, %126
  %137 = icmp eq i32 %115, 1
  br i1 %137, label %138, label %150

138:                                              ; preds = %136
  %139 = load i64, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 1), align 8, !tbaa !58
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = load i8, ptr %91, align 8, !tbaa !61, !range !50, !noundef !51
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = tail call i64 @io_read(ptr noundef nonnull %2, ptr noundef nonnull @in_buf, i64 noundef 1) #8
  store i64 %145, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 1), align 8, !tbaa !58
  %146 = icmp eq i64 %145, -1
  br i1 %146, label %162, label %147

147:                                              ; preds = %144, %141, %138
  %148 = load i64, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 1), align 8, !tbaa !58
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %162, label %150

150:                                              ; preds = %147, %136
  %151 = phi i32 [ %115, %136 ], [ 9, %147 ]
  %152 = load ptr, ptr %2, align 8, !tbaa !59
  %153 = tail call ptr @message_strm(i32 noundef %151) #8
  br i1 %128, label %154, label %155

154:                                              ; preds = %150
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.9, ptr noundef %152, ptr noundef %153) #8
  br label %156

155:                                              ; preds = %150
  tail call void (ptr, ...) @message_warning(ptr noundef nonnull @.str.9, ptr noundef %152, ptr noundef %153) #8
  br label %156

156:                                              ; preds = %155, %154
  %157 = icmp eq i32 %151, 6
  br i1 %157, label %158, label %160

158:                                              ; preds = %156
  %159 = tail call i64 @lzma_memusage(ptr noundef nonnull @strm) #8
  tail call void @message_mem_needed(i32 noundef 1, i64 noundef %159) #8
  br label %160

160:                                              ; preds = %158, %156
  %161 = select i1 %128, i32 3, i32 0
  br label %162

162:                                              ; preds = %147, %144, %160, %132
  %163 = phi i8 [ %100, %132 ], [ %100, %160 ], [ %100, %144 ], [ 1, %147 ]
  %164 = phi i32 [ 3, %132 ], [ %161, %160 ], [ 3, %144 ], [ 3, %147 ]
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %162, %124
  %167 = phi i8 [ %163, %162 ], [ %100, %124 ]
  tail call void @message_progress_update() #8
  %168 = load i32, ptr @user_abort, align 4, !tbaa !35
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %98, label %170, !llvm.loop !64

170:                                              ; preds = %166, %106, %121, %162
  %171 = phi i8 [ %163, %162 ], [ %100, %121 ], [ %100, %106 ], [ %167, %166 ]
  %172 = and i8 %171, 1
  %173 = icmp ne i8 %172, 0
  br label %188

174:                                              ; preds = %89, %182
  %175 = load i64, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 1), align 8, !tbaa !58
  %176 = icmp eq i64 %175, 0
  %177 = load i32, ptr @user_abort, align 4
  %178 = icmp ne i32 %177, 0
  %179 = select i1 %176, i1 true, i1 %178
  br i1 %179, label %188, label %180

180:                                              ; preds = %174
  %181 = tail call zeroext i1 @io_write(ptr noundef nonnull %2, ptr noundef nonnull @in_buf, i64 noundef %175) #8
  br i1 %181, label %188, label %182

182:                                              ; preds = %180
  %183 = load i64, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 1), align 8, !tbaa !58
  %184 = load i64, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 2), align 8, !tbaa !65
  %185 = add i64 %184, %183
  store i64 %185, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 2), align 8, !tbaa !65
  store i64 %185, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 5), align 8, !tbaa !66
  tail call void @message_progress_update() #8
  %186 = tail call i64 @io_read(ptr noundef nonnull %2, ptr noundef nonnull @in_buf, i64 noundef 8192) #8
  store i64 %186, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 1), align 8, !tbaa !58
  %187 = icmp eq i64 %186, -1
  br i1 %187, label %188, label %174, !llvm.loop !67

188:                                              ; preds = %182, %180, %174, %90, %170
  %189 = phi i1 [ false, %90 ], [ %173, %170 ], [ %176, %174 ], [ false, %180 ], [ false, %182 ]
  tail call void @message_progress_end(i1 noundef zeroext %189) #8
  br label %190

190:                                              ; preds = %78, %188, %87, %4
  %191 = phi i1 [ false, %4 ], [ false, %78 ], [ %189, %188 ], [ false, %87 ]
  tail call void @io_close(ptr noundef nonnull %2, i1 noundef zeroext %191) #8
  br label %192

192:                                              ; preds = %1, %190
  ret void
}

declare void @message_filename(ptr noundef) local_unnamed_addr #2

declare ptr @io_open_src(ptr noundef) local_unnamed_addr #2

declare i64 @io_read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @io_open_dest(ptr noundef) local_unnamed_addr #2

declare void @message_progress_start(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @message_progress_end(i1 noundef zeroext) local_unnamed_addr #2

declare void @io_close(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

declare void @tuklib_exit(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lzma_stream_encoder(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lzma_alone_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lzma_raw_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i1 @is_format_lzma() unnamed_addr #1 !prof !34 {
  %1 = alloca %struct.lzma_filter, align 8
  %2 = load i64, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 1), align 8, !tbaa !58
  %3 = icmp ult i64 %2, 13
  br i1 %3, label %46, label %4

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) @__const.is_format_lzma.filter, i64 16, i1 false)
  %5 = call i32 @lzma_properties_decode(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull @in_buf, i64 noundef 5) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %44

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = load i32, ptr %9, align 8, !tbaa !53
  call void @free(ptr noundef %9) #8
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %13, %7
  br label %32

13:                                               ; preds = %7
  %14 = add i32 %10, -1
  %15 = lshr i32 %14, 2
  %16 = or i32 %15, %14
  %17 = lshr i32 %16, 3
  %18 = or i32 %17, %16
  %19 = lshr i32 %18, 4
  %20 = or i32 %19, %18
  %21 = lshr i32 %20, 8
  %22 = or i32 %21, %20
  %23 = lshr i32 %22, 16
  %24 = or i32 %23, %22
  %25 = add i32 %24, 1
  %26 = icmp eq i32 %25, %10
  %27 = icmp ne i32 %10, 0
  %28 = and i1 %27, %26
  br i1 %28, label %12, label %44

29:                                               ; preds = %32
  %30 = add i64 %41, 1
  %31 = icmp ult i64 %30, 274877906946
  br label %44

32:                                               ; preds = %12, %32
  %33 = phi i64 [ %42, %32 ], [ 0, %12 ]
  %34 = phi i64 [ %41, %32 ], [ 0, %12 ]
  %35 = add nuw nsw i64 %33, 5
  %36 = getelementptr inbounds [8192 x i8], ptr @in_buf, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !68
  %38 = zext i8 %37 to i64
  %39 = shl nuw nsw i64 %33, 3
  %40 = shl nuw i64 %38, %39
  %41 = or i64 %40, %34
  %42 = add nuw nsw i64 %33, 1
  %43 = icmp eq i64 %42, 8
  br i1 %43, label %29, label %32, !llvm.loop !69

44:                                               ; preds = %29, %13, %4
  %45 = phi i1 [ false, %4 ], [ %31, %29 ], [ false, %13 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #8
  br label %46

46:                                               ; preds = %0, %44
  %47 = phi i1 [ %45, %44 ], [ false, %0 ]
  ret i1 %47
}

declare i32 @lzma_stream_decoder(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lzma_alone_decoder(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @lzma_raw_decoder(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lzma_code(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @message_error(ptr noundef, ...) local_unnamed_addr #2

declare ptr @message_strm(i32 noundef) local_unnamed_addr #2

declare i64 @lzma_memusage(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @lzma_properties_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @io_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @message_warning(ptr noundef, ...) local_unnamed_addr #2

declare void @message_progress_update() local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind willreturn memory(argmem: read) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 47149273342}
!8 = !{!"MaxCount", i64 6329676010}
!9 = !{!"MaxInternalCount", i64 6329676010}
!10 = !{!"MaxFunctionCount", i64 1717654358}
!11 = !{!"NumCounts", i64 2810}
!12 = !{!"NumFunctions", i64 379}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6329676010, i32 1}
!18 = !{i32 100000, i64 6329676010, i32 1}
!19 = !{i32 200000, i64 5133904873, i32 2}
!20 = !{i32 300000, i64 1880543368, i32 4}
!21 = !{i32 400000, i64 1717654358, i32 6}
!22 = !{i32 500000, i64 1179118894, i32 9}
!23 = !{i32 600000, i64 845267354, i32 14}
!24 = !{i32 700000, i64 611059789, i32 20}
!25 = !{i32 800000, i64 289033984, i32 32}
!26 = !{i32 900000, i64 144512423, i32 55}
!27 = !{i32 950000, i64 47630439, i32 82}
!28 = !{i32 990000, i64 5873050, i32 171}
!29 = !{i32 999000, i64 869247, i32 334}
!30 = !{i32 999900, i64 80863, i32 461}
!31 = !{i32 999990, i64 32025, i32 533}
!32 = !{i32 999999, i64 3325, i32 567}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !42, i64 8}
!40 = !{!"", !41, i64 0, !42, i64 8}
!41 = !{!"long", !37, i64 0}
!42 = !{!"any pointer", !37, i64 0}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!40, !41, i64 0}
!47 = distinct !{!47, !44, !45}
!48 = !{!49, !49, i64 0}
!49 = !{!"_Bool", !37, i64 0}
!50 = !{i8 0, i8 2}
!51 = !{}
!52 = distinct !{!52, !44, !45}
!53 = !{!54, !36, i64 0}
!54 = !{!"", !36, i64 0, !42, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !36, i64 88, !36, i64 92, !42, i64 96, !42, i64 104}
!55 = distinct !{!55, !45}
!56 = !{!57, !42, i64 0}
!57 = !{!"", !42, i64 0, !41, i64 8, !41, i64 16, !42, i64 24, !41, i64 32, !41, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !36, i64 128, !36, i64 132}
!58 = !{!57, !41, i64 8}
!59 = !{!60, !42, i64 0}
!60 = !{!"", !42, i64 0, !42, i64 8, !36, i64 16, !36, i64 20, !49, i64 24, !49, i64 25, !41, i64 32}
!61 = !{!60, !49, i64 24}
!62 = !{!57, !42, i64 24}
!63 = !{!57, !41, i64 32}
!64 = distinct !{!64, !44, !45}
!65 = !{!57, !41, i64 16}
!66 = !{!57, !41, i64 40}
!67 = distinct !{!67, !44, !45}
!68 = !{!37, !37, i64 0}
!69 = distinct !{!69, !44, !45}
