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
@filters = internal global [5 x %struct.lzma_filter] zeroinitializer, align 16
@.str = private unnamed_addr constant [34 x i8] c"Maximum number of filters is four\00", align 1
@coder_set_compression_settings.opt_lzma = internal global %struct.lzma_options_lzma zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Using a preset in raw mode is discouraged.\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"The exact options of the presets may vary between software versions.\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"The .lzma format supports only the LZMA1 filter\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"LZMA1 cannot be used with the .xz format\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Unsupported filter chain or filter options\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Decompression will need %s MiB of memory.\00", align 1
@.str.7 = private unnamed_addr constant [101 x i8] c"Adjusted LZMA%c dictionary size from %s MiB to %s MiB to not exceed the memory usage limit of %s MiB\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"Memory usage limit is too low for the given filter setup.\00", align 1
@in_buf = internal global %union.io_buf zeroinitializer, align 8
@strm = internal global %struct.lzma_stream zeroinitializer, align 8
@user_abort = external local_unnamed_addr global i32, align 4
@opt_stdout = external local_unnamed_addr global i8, align 1
@opt_force = external local_unnamed_addr global i8, align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@is_format_xz.magic = internal constant [6 x i8] c"\FD7zXZ\00", align 1
@__const.is_format_lzma.filter = private unnamed_addr constant %struct.lzma_filter { i64 4611686018427387905, ptr null }, align 8
@out_buf = internal global %union.io_buf zeroinitializer, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @coder_set_check(i32 noundef %0) local_unnamed_addr #0 {
  store i32 %0, ptr @check, align 4, !tbaa !6
  store i1 true, ptr @check_default, align 1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @coder_set_preset(i32 noundef %0) local_unnamed_addr #1 {
  %2 = load i32, ptr @preset_number, align 4, !tbaa !6
  %3 = and i32 %2, -32
  %4 = or i32 %3, %0
  store i32 %4, ptr @preset_number, align 4, !tbaa !6
  tail call fastcc void @forget_filter_chain() #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @forget_filter_chain() unnamed_addr #1 {
  %1 = load i32, ptr @filters_count, align 4, !tbaa !6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %12, label %3

3:                                                ; preds = %0
  %4 = zext i32 %1 to i64
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ %4, %3 ], [ %7, %5 ]
  %7 = add nsw i64 %6, -1
  %8 = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  tail call void @free(ptr noundef %9) #10
  store ptr null, ptr %8, align 8, !tbaa !10
  %10 = icmp eq i64 %7, 0
  br i1 %10, label %11, label %5, !llvm.loop !14

11:                                               ; preds = %5
  store i32 0, ptr @filters_count, align 4, !tbaa !6
  br label %12

12:                                               ; preds = %11, %0
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @coder_set_extreme() local_unnamed_addr #1 {
  %1 = load i32, ptr @preset_number, align 4, !tbaa !6
  %2 = or i32 %1, -2147483648
  store i32 %2, ptr @preset_number, align 4, !tbaa !6
  tail call fastcc void @forget_filter_chain() #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @coder_add_filter(i64 noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr @filters_count, align 4, !tbaa !6
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str) #10
  %6 = load i32, ptr @filters_count, align 4, !tbaa !6
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ %3, %2 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %9
  store i64 %0, ptr %10, align 16, !tbaa !16
  %11 = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %9, i32 1
  store ptr %1, ptr %11, align 8, !tbaa !10
  %12 = add i32 %8, 1
  store i32 %12, ptr @filters_count, align 4, !tbaa !6
  store i32 6, ptr @preset_number, align 4, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare void @message_fatal(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @coder_set_compression_settings() local_unnamed_addr #1 {
  %1 = load i32, ptr @filters_count, align 4
  %2 = icmp eq i32 %1, 0
  %3 = load i32, ptr @opt_format, align 4, !tbaa !6
  br i1 %2, label %4, label %16

4:                                                ; preds = %0
  %5 = icmp eq i32 %3, 3
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void (i32, ptr, ...) @message(i32 noundef 2, ptr noundef nonnull @.str.1) #10
  tail call void (i32, ptr, ...) @message(i32 noundef 2, ptr noundef nonnull @.str.2) #10
  br label %7

7:                                                ; preds = %6, %4
  %8 = load i32, ptr @preset_number, align 4, !tbaa !6
  %9 = tail call zeroext i8 @lzma_lzma_preset(ptr noundef nonnull @coder_set_compression_settings.opt_lzma, i32 noundef %8) #10
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @message_bug() #10
  br label %12

12:                                               ; preds = %11, %7
  %13 = load i32, ptr @opt_format, align 4, !tbaa !6
  %14 = icmp eq i32 %13, 2
  %15 = select i1 %14, i64 4611686018427387905, i64 33
  store i64 %15, ptr @filters, align 16, !tbaa !16
  store ptr @coder_set_compression_settings.opt_lzma, ptr getelementptr inbounds ([5 x %struct.lzma_filter], ptr @filters, i64 0, i64 0, i32 1), align 8, !tbaa !10
  store i32 1, ptr @filters_count, align 4, !tbaa !6
  br label %16

16:                                               ; preds = %12, %0
  %17 = phi i32 [ %13, %12 ], [ %3, %0 ]
  %18 = phi i32 [ 1, %12 ], [ %1, %0 ]
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %19
  store i64 -1, ptr %20, align 16, !tbaa !16
  %21 = icmp eq i32 %17, 2
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = icmp ne i32 %18, 1
  %24 = load i64, ptr @filters, align 16
  %25 = icmp ne i64 %24, 4611686018427387905
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %22
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.3) #10
  %28 = load i32, ptr @opt_format, align 4, !tbaa !6
  %29 = load i32, ptr @filters_count, align 4
  br label %30

30:                                               ; preds = %27, %16
  %31 = phi i32 [ %18, %16 ], [ %29, %27 ]
  %32 = phi i32 [ %17, %16 ], [ %28, %27 ]
  %33 = icmp eq i32 %32, 1
  %34 = icmp ne i32 %31, 0
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %49

36:                                               ; preds = %30, %44
  %37 = phi i32 [ %45, %44 ], [ %31, %30 ]
  %38 = phi i64 [ %46, %44 ], [ 0, %30 ]
  %39 = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %38
  %40 = load i64, ptr %39, align 16, !tbaa !16
  %41 = icmp eq i64 %40, 4611686018427387905
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.4) #10
  %43 = load i32, ptr @filters_count, align 4, !tbaa !6
  br label %44

44:                                               ; preds = %36, %42
  %45 = phi i32 [ %37, %36 ], [ %43, %42 ]
  %46 = add nuw nsw i64 %38, 1
  %47 = zext i32 %45 to i64
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %36, label %49, !llvm.loop !17

49:                                               ; preds = %44, %22, %30
  tail call void @message_filters_show(i32 noundef 4, ptr noundef nonnull @filters) #10
  %50 = load i32, ptr @opt_mode, align 4, !tbaa !6
  %51 = tail call i64 @hardware_memlimit_get(i32 noundef %50) #10
  %52 = load i32, ptr @opt_mode, align 4, !tbaa !6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = tail call i64 @lzma_raw_encoder_memusage(ptr noundef nonnull @filters) #10
  br label %58

56:                                               ; preds = %49
  %57 = tail call i64 @lzma_raw_decoder_memusage(ptr noundef nonnull @filters) #10
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i64 [ %55, %54 ], [ %57, %56 ]
  %60 = icmp eq i64 %59, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.5) #10
  br label %62

62:                                               ; preds = %61, %58
  tail call void @message_mem_needed(i32 noundef 4, i64 noundef %59) #10
  %63 = load i32, ptr @opt_mode, align 4, !tbaa !6
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = tail call i64 @lzma_raw_decoder_memusage(ptr noundef nonnull @filters) #10
  %67 = icmp eq i64 %66, -1
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = tail call i64 @round_up_to_mib(i64 noundef %66) #10
  %70 = tail call ptr @uint64_to_str(i64 noundef %69, i32 noundef 0) #10
  tail call void (i32, ptr, ...) @message(i32 noundef 4, ptr noundef nonnull @.str.6, ptr noundef %70) #10
  br label %71

71:                                               ; preds = %65, %68, %62
  %72 = icmp ugt i64 %59, %51
  br i1 %72, label %73, label %120

73:                                               ; preds = %71
  %74 = load i8, ptr @opt_auto_adjust, align 1, !tbaa !18, !range !20, !noundef !21
  %75 = icmp eq i8 %74, 0
  %76 = load i32, ptr @opt_format, align 4
  %77 = icmp eq i32 %76, 3
  %78 = select i1 %75, i1 true, i1 %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  tail call fastcc void @memlimit_too_small(i64 noundef %59) #9
  br label %80

80:                                               ; preds = %73, %79
  br label %81

81:                                               ; preds = %80, %86
  %82 = phi i64 [ %87, %86 ], [ 0, %80 ]
  %83 = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %82
  %84 = load i64, ptr %83, align 16, !tbaa !16
  switch i64 %84, label %86 [
    i64 33, label %88
    i64 4611686018427387905, label %88
    i64 -1, label %85
  ]

85:                                               ; preds = %81
  tail call fastcc void @memlimit_too_small(i64 noundef %59) #9
  br label %86

86:                                               ; preds = %81, %85
  %87 = add i64 %82, 1
  br label %81, !llvm.loop !22

88:                                               ; preds = %81, %81
  %89 = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %82, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !10
  %91 = load i32, ptr %90, align 8, !tbaa !23
  %92 = and i32 %91, -1048576
  br label %93

93:                                               ; preds = %104, %88
  %94 = phi i32 [ %92, %88 ], [ %106, %104 ]
  %95 = phi i64 [ %59, %88 ], [ %99, %104 ]
  store i32 %94, ptr %90, align 8, !tbaa !23
  %96 = icmp ult i32 %94, 1048576
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  tail call fastcc void @memlimit_too_small(i64 noundef %95) #9
  br label %98

98:                                               ; preds = %97, %93
  %99 = tail call i64 @lzma_raw_encoder_memusage(ptr noundef nonnull @filters) #10
  %100 = icmp eq i64 %99, -1
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  tail call void @message_bug() #10
  br label %102

102:                                              ; preds = %101, %98
  %103 = icmp ugt i64 %99, %51
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = load i32, ptr %90, align 8, !tbaa !23
  %106 = add i32 %105, -1048576
  br label %93

107:                                              ; preds = %102
  %108 = load i64, ptr %83, align 16, !tbaa !16
  %109 = icmp eq i64 %108, 33
  %110 = select i1 %109, i32 50, i32 49
  %111 = lshr i32 %91, 20
  %112 = zext nneg i32 %111 to i64
  %113 = tail call ptr @uint64_to_str(i64 noundef %112, i32 noundef 0) #10
  %114 = load i32, ptr %90, align 8, !tbaa !23
  %115 = lshr i32 %114, 20
  %116 = zext nneg i32 %115 to i64
  %117 = tail call ptr @uint64_to_str(i64 noundef %116, i32 noundef 1) #10
  %118 = tail call i64 @round_up_to_mib(i64 noundef %51) #10
  %119 = tail call ptr @uint64_to_str(i64 noundef %118, i32 noundef 2) #10
  tail call void (i32, ptr, ...) @message(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %110, ptr noundef %113, ptr noundef %117, ptr noundef %119) #10
  br label %120

120:                                              ; preds = %107, %71
  %121 = load i1, ptr @check_default, align 1
  br i1 %121, label %126, label %122

122:                                              ; preds = %120
  store i32 4, ptr @check, align 4, !tbaa !6
  %123 = tail call zeroext i8 @lzma_check_is_supported(i32 noundef 4) #10
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 1, ptr @check, align 4, !tbaa !6
  br label %126

126:                                              ; preds = %122, %125, %120
  ret void
}

; Function Attrs: optsize
declare void @message(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @lzma_lzma_preset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @message_bug() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare void @message_filters_show(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @hardware_memlimit_get(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @lzma_raw_encoder_memusage(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @lzma_raw_decoder_memusage(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @message_mem_needed(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uint64_to_str(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @round_up_to_mib(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @memlimit_too_small(i64 noundef %0) unnamed_addr #1 {
  tail call void (i32, ptr, ...) @message(i32 noundef 1, ptr noundef nonnull @.str.8) #10
  tail call void @message_mem_needed(i32 noundef 1, i64 noundef %0) #10
  tail call void @tuklib_exit(i32 noundef 1, i32 noundef 1, i32 noundef 0) #10
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @tuklib_exit(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @coder_run(ptr noundef %0) local_unnamed_addr #1 {
  tail call void @message_filename(ptr noundef %0) #10
  %2 = tail call ptr @io_open_src(ptr noundef %0) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  store ptr @in_buf, ptr @strm, align 8, !tbaa !25
  %5 = tail call i64 @io_read(ptr noundef nonnull %2, ptr noundef nonnull @in_buf, i64 noundef 8192) #10
  store i64 %5, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 1), align 8, !tbaa !27
  %6 = icmp eq i64 %5, -1
  br i1 %6, label %26, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @coder_init(ptr noundef nonnull %2) #9, !range !28
  %9 = icmp eq i32 %8, 2
  %10 = load i32, ptr @user_abort, align 4
  %11 = icmp ne i32 %10, 0
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %26, label %13

13:                                               ; preds = %7
  %14 = load i32, ptr @opt_mode, align 4, !tbaa !6
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = tail call zeroext i1 @io_open_dest(ptr noundef nonnull %2) #10
  br i1 %17, label %26, label %18

18:                                               ; preds = %16, %13
  tail call void @message_progress_start(ptr noundef nonnull @strm, i64 noundef 0) #10
  %19 = icmp eq i32 %8, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = tail call fastcc zeroext i1 @coder_normal(ptr noundef nonnull %2) #9
  br label %24

22:                                               ; preds = %18
  %23 = tail call fastcc zeroext i1 @coder_passthru(ptr noundef nonnull %2) #9
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i1 [ %21, %20 ], [ %23, %22 ]
  tail call void @message_progress_end(i1 noundef zeroext %25) #10
  br label %26

26:                                               ; preds = %7, %24, %16, %4
  %27 = phi i1 [ false, %4 ], [ false, %7 ], [ %25, %24 ], [ false, %16 ]
  tail call void @io_close(ptr noundef nonnull %2, i1 noundef zeroext %27) #10
  br label %28

28:                                               ; preds = %1, %26
  ret void
}

; Function Attrs: optsize
declare void @message_filename(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @io_open_src(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @io_read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @coder_init(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load i32, ptr @opt_mode, align 4, !tbaa !6
  %3 = icmp eq i32 %2, 0
  %4 = load i32, ptr @opt_format, align 4, !tbaa !6
  br i1 %3, label %5, label %14

5:                                                ; preds = %1
  switch i32 %4, label %48 [
    i32 3, label %12
    i32 1, label %6
    i32 2, label %9
  ]

6:                                                ; preds = %5
  %7 = load i32, ptr @check, align 4, !tbaa !6
  %8 = tail call i32 @lzma_stream_encoder(ptr noundef nonnull @strm, ptr noundef nonnull @filters, i32 noundef %7) #10
  br label %45

9:                                                ; preds = %5
  %10 = load ptr, ptr getelementptr inbounds ([5 x %struct.lzma_filter], ptr @filters, i64 0, i64 0, i32 1), align 8, !tbaa !10
  %11 = tail call i32 @lzma_alone_encoder(ptr noundef nonnull @strm, ptr noundef %10) #10
  br label %45

12:                                               ; preds = %5
  %13 = tail call i32 @lzma_raw_encoder(ptr noundef nonnull @strm, ptr noundef nonnull @filters) #10
  br label %45

14:                                               ; preds = %1
  switch i32 %4, label %23 [
    i32 0, label %15
    i32 1, label %19
    i32 2, label %21
    i32 3, label %38
  ]

15:                                               ; preds = %14
  %16 = tail call fastcc zeroext i1 @is_format_xz() #9
  br i1 %16, label %32, label %17

17:                                               ; preds = %15
  %18 = tail call fastcc zeroext i1 @is_format_lzma() #9
  br i1 %18, label %35, label %23

19:                                               ; preds = %14
  %20 = tail call fastcc zeroext i1 @is_format_xz() #9
  br i1 %20, label %32, label %23

21:                                               ; preds = %14
  %22 = tail call fastcc zeroext i1 @is_format_lzma() #9
  br i1 %22, label %35, label %23

23:                                               ; preds = %14, %17, %19, %21
  %24 = load i32, ptr @opt_mode, align 4, !tbaa !6
  %25 = icmp ne i32 %24, 1
  %26 = load i8, ptr @opt_stdout, align 1, !range !20
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %25, i1 true, i1 %27
  %29 = load i8, ptr @opt_force, align 1, !range !20
  %30 = icmp eq i8 %29, 0
  %31 = select i1 %28, i1 true, i1 %30
  br i1 %31, label %48, label %55

32:                                               ; preds = %19, %15
  %33 = tail call i64 @hardware_memlimit_get(i32 noundef 1) #10
  %34 = tail call i32 @lzma_stream_decoder(ptr noundef nonnull @strm, i64 noundef %33, i32 noundef 10) #10
  br label %40

35:                                               ; preds = %21, %17
  %36 = tail call i64 @hardware_memlimit_get(i32 noundef 1) #10
  %37 = tail call i32 @lzma_alone_decoder(ptr noundef nonnull @strm, i64 noundef %36) #10
  br label %40

38:                                               ; preds = %14
  %39 = tail call i32 @lzma_raw_decoder(ptr noundef nonnull @strm, ptr noundef nonnull @filters) #10
  br label %45

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %37, %35 ], [ %34, %32 ]
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 3), i8 0, i64 16, i1 false)
  %44 = tail call i32 @lzma_code(ptr noundef nonnull @strm, i32 noundef 0) #10
  br label %45

45:                                               ; preds = %38, %43, %6, %9, %12
  %46 = phi i32 [ %11, %9 ], [ %8, %6 ], [ %13, %12 ], [ %44, %43 ], [ %39, %38 ]
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %40, %23, %5, %45
  %49 = phi i32 [ %46, %45 ], [ 11, %5 ], [ 7, %23 ], [ %41, %40 ]
  %50 = load ptr, ptr %0, align 8, !tbaa !29
  %51 = tail call ptr @message_strm(i32 noundef %49) #10
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.9, ptr noundef %50, ptr noundef %51) #10
  %52 = icmp eq i32 %49, 6
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = tail call i64 @lzma_memusage(ptr noundef nonnull @strm) #10
  tail call void @message_mem_needed(i32 noundef 1, i64 noundef %54) #10
  br label %55

55:                                               ; preds = %23, %45, %48, %53
  %56 = phi i32 [ 2, %53 ], [ 2, %48 ], [ 0, %45 ], [ 1, %23 ]
  ret i32 %56
}

; Function Attrs: optsize
declare zeroext i1 @io_open_dest(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @message_progress_start(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @coder_normal(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.file_pair, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !31, !range !20, !noundef !21
  store ptr @out_buf, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 3), align 8, !tbaa !32
  store i64 8192, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 4), align 8, !tbaa !33
  %4 = load i32, ptr @user_abort, align 4, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %71

6:                                                ; preds = %1
  %7 = icmp eq i8 %3, 0
  %8 = select i1 %7, i32 0, i32 3
  br label %9

9:                                                ; preds = %6, %67
  %10 = phi i32 [ %24, %67 ], [ %8, %6 ]
  %11 = load i64, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 1), align 8, !tbaa !27
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load i8, ptr %2, align 8, !tbaa !31, !range !20, !noundef !21
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  store ptr @in_buf, ptr @strm, align 8, !tbaa !25
  %17 = tail call i64 @io_read(ptr noundef nonnull %0, ptr noundef nonnull @in_buf, i64 noundef 8192) #10
  store i64 %17, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 1), align 8, !tbaa !27
  %18 = icmp eq i64 %17, -1
  br i1 %18, label %71, label %19

19:                                               ; preds = %16
  %20 = load i8, ptr %2, align 8, !tbaa !31, !range !20, !noundef !21
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, i32 %10, i32 3
  br label %23

23:                                               ; preds = %19, %13, %9
  %24 = phi i32 [ %10, %13 ], [ %10, %9 ], [ %22, %19 ]
  %25 = tail call i32 @lzma_code(ptr noundef nonnull @strm, i32 noundef %24) #10
  %26 = load i64, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 4), align 8, !tbaa !33
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, ptr @opt_mode, align 4, !tbaa !6
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = tail call zeroext i1 @io_write(ptr noundef %0, ptr noundef nonnull @out_buf, i64 noundef 8192) #10
  br i1 %32, label %71, label %33

33:                                               ; preds = %31, %28
  store ptr @out_buf, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 3), align 8, !tbaa !32
  store i64 8192, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 4), align 8, !tbaa !33
  br label %34

34:                                               ; preds = %33, %23
  %35 = phi i64 [ 8192, %33 ], [ %26, %23 ]
  %36 = icmp eq i32 %25, 0
  br i1 %36, label %67, label %37

37:                                               ; preds = %34
  %38 = add i32 %25, -4
  %39 = icmp ult i32 %38, -2
  %40 = load i32, ptr @opt_mode, align 4
  %41 = icmp ne i32 %40, 2
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = sub i64 8192, %35
  %45 = tail call zeroext i1 @io_write(ptr noundef %0, ptr noundef nonnull @out_buf, i64 noundef %44) #10
  br i1 %45, label %71, label %46

46:                                               ; preds = %43, %37
  %47 = icmp eq i32 %25, 1
  br i1 %47, label %48, label %56

48:                                               ; preds = %46
  %49 = load i64, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 1), align 8, !tbaa !27
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i8, ptr %2, align 8, !tbaa !31, !range !20, !noundef !21
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %51
  %55 = tail call i64 @io_read(ptr noundef nonnull %0, ptr noundef nonnull @in_buf, i64 noundef 1) #10
  store i64 %55, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 1), align 8, !tbaa !27
  switch i64 %55, label %57 [
    i64 -1, label %71
    i64 0, label %70
  ]

56:                                               ; preds = %46
  br i1 %39, label %57, label %64

57:                                               ; preds = %56, %48, %54
  %58 = phi i32 [ 9, %48 ], [ 9, %54 ], [ %25, %56 ]
  %59 = load ptr, ptr %0, align 8, !tbaa !29
  %60 = tail call ptr @message_strm(i32 noundef %58) #10
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.9, ptr noundef %59, ptr noundef %60) #10
  %61 = icmp eq i32 %58, 6
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = tail call i64 @lzma_memusage(ptr noundef nonnull @strm) #10
  tail call void @message_mem_needed(i32 noundef 1, i64 noundef %63) #10
  br label %71

64:                                               ; preds = %56
  %65 = load ptr, ptr %0, align 8, !tbaa !29
  %66 = tail call ptr @message_strm(i32 noundef %25) #10
  tail call void (ptr, ...) @message_warning(ptr noundef nonnull @.str.9, ptr noundef %65, ptr noundef %66) #10
  br label %67

67:                                               ; preds = %64, %34
  tail call void @message_progress_update() #10
  %68 = load i32, ptr @user_abort, align 4, !tbaa !6
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %9, label %71, !llvm.loop !34

70:                                               ; preds = %54
  br label %71

71:                                               ; preds = %67, %16, %31, %43, %57, %62, %51, %54, %70, %1
  %72 = phi i1 [ false, %1 ], [ false, %54 ], [ true, %51 ], [ true, %70 ], [ false, %62 ], [ false, %57 ], [ false, %43 ], [ false, %31 ], [ false, %16 ], [ false, %67 ]
  ret i1 %72
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i1 @coder_passthru(ptr noundef %0) unnamed_addr #1 {
  %2 = load i64, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 1), align 8, !tbaa !27
  br label %3

3:                                                ; preds = %11, %1
  %4 = phi i64 [ %15, %11 ], [ %2, %1 ]
  %5 = icmp eq i64 %4, 0
  %6 = load i32, ptr @user_abort, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = tail call zeroext i1 @io_write(ptr noundef %0, ptr noundef nonnull @in_buf, i64 noundef %4) #10
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = load i64, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 1), align 8, !tbaa !27
  %13 = load i64, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 2), align 8, !tbaa !35
  %14 = add i64 %13, %12
  store i64 %14, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 2), align 8, !tbaa !35
  store i64 %14, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 5), align 8, !tbaa !36
  tail call void @message_progress_update() #10
  %15 = tail call i64 @io_read(ptr noundef %0, ptr noundef nonnull @in_buf, i64 noundef 8192) #10
  store i64 %15, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 1), align 8, !tbaa !27
  %16 = icmp eq i64 %15, -1
  br i1 %16, label %17, label %3, !llvm.loop !37

17:                                               ; preds = %3, %11, %9
  %18 = phi i1 [ %5, %3 ], [ false, %11 ], [ false, %9 ]
  ret i1 %18
}

; Function Attrs: optsize
declare void @message_progress_end(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @io_close(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @lzma_stream_encoder(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @lzma_alone_encoder(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @lzma_raw_encoder(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc zeroext i1 @is_format_xz() unnamed_addr #5 {
  %1 = load i64, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 1), align 8, !tbaa !27
  %2 = icmp ugt i64 %1, 5
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @in_buf, ptr noundef nonnull dereferenceable(6) @is_format_xz.magic, i64 6)
  %5 = icmp eq i32 %4, 0
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i1 [ false, %0 ], [ %5, %3 ]
  ret i1 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i1 @is_format_lzma() unnamed_addr #1 {
  %1 = alloca %struct.lzma_filter, align 8
  %2 = load i64, ptr getelementptr inbounds (%struct.lzma_stream, ptr @strm, i64 0, i32 1), align 8, !tbaa !27
  %3 = icmp ult i64 %2, 13
  br i1 %3, label %46, label %4

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) @__const.is_format_lzma.filter, i64 16, i1 false)
  %5 = call i32 @lzma_properties_decode(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull @in_buf, i64 noundef 5) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %44

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  %10 = load i32, ptr %9, align 8, !tbaa !23
  call void @free(ptr noundef %9) #10
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
  %37 = load i8, ptr %36, align 1, !tbaa !38
  %38 = zext i8 %37 to i64
  %39 = shl nuw nsw i64 %33, 3
  %40 = shl nuw i64 %38, %39
  %41 = or i64 %40, %34
  %42 = add nuw nsw i64 %33, 1
  %43 = icmp eq i64 %42, 8
  br i1 %43, label %29, label %32, !llvm.loop !39

44:                                               ; preds = %29, %13, %4
  %45 = phi i1 [ false, %4 ], [ %31, %29 ], [ false, %13 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #11
  br label %46

46:                                               ; preds = %0, %44
  %47 = phi i1 [ %45, %44 ], [ false, %0 ]
  ret i1 %47
}

; Function Attrs: optsize
declare i32 @lzma_stream_decoder(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @lzma_alone_decoder(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @lzma_raw_decoder(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @lzma_code(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @message_error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @message_strm(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @lzma_memusage(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare i32 @lzma_properties_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i1 @io_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @message_warning(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @message_progress_update() local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !13, i64 8}
!11 = !{!"", !12, i64 0, !13, i64 8}
!12 = !{!"long", !8, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!11, !12, i64 0}
!17 = distinct !{!17, !15}
!18 = !{!19, !19, i64 0}
!19 = !{!"_Bool", !8, i64 0}
!20 = !{i8 0, i8 2}
!21 = !{}
!22 = distinct !{!22, !15}
!23 = !{!24, !7, i64 0}
!24 = !{!"", !7, i64 0, !13, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !13, i64 96, !13, i64 104}
!25 = !{!26, !13, i64 0}
!26 = !{!"", !13, i64 0, !12, i64 8, !12, i64 16, !13, i64 24, !12, i64 32, !12, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !7, i64 128, !7, i64 132}
!27 = !{!26, !12, i64 8}
!28 = !{i32 0, i32 3}
!29 = !{!30, !13, i64 0}
!30 = !{!"", !13, i64 0, !13, i64 8, !7, i64 16, !7, i64 20, !19, i64 24, !19, i64 25, !12, i64 32}
!31 = !{!30, !19, i64 24}
!32 = !{!26, !13, i64 24}
!33 = !{!26, !12, i64 32}
!34 = distinct !{!34, !15}
!35 = !{!26, !12, i64 16}
!36 = !{!26, !12, i64 40}
!37 = distinct !{!37, !15}
!38 = !{!8, !8, i64 0}
!39 = distinct !{!39, !15}
