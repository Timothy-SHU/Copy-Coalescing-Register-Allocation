; ModuleID = 'xz/options.c'
source_filename = "xz/options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option_map = type { ptr, ptr, i64, i64 }
%struct.name_id_map = type { ptr, i64 }
%struct.lzma_options_delta = type { i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

@options_delta.opts = internal constant [2 x %struct.option_map] [%struct.option_map { ptr @.str, ptr null, i64 1, i64 256 }, %struct.option_map zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"dist\00", align 1
@options_bcj.opts = internal constant [2 x %struct.option_map] [%struct.option_map { ptr @.str.1, ptr null, i64 0, i64 4294967295 }, %struct.option_map zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@options_lzma.modes = internal constant [3 x %struct.name_id_map] [%struct.name_id_map { ptr @.str.2, i64 1 }, %struct.name_id_map { ptr @.str.3, i64 2 }, %struct.name_id_map zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@options_lzma.mfs = internal constant [6 x %struct.name_id_map] [%struct.name_id_map { ptr @.str.4, i64 3 }, %struct.name_id_map { ptr @.str.5, i64 4 }, %struct.name_id_map { ptr @.str.6, i64 18 }, %struct.name_id_map { ptr @.str.7, i64 19 }, %struct.name_id_map { ptr @.str.8, i64 20 }, %struct.name_id_map zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [4 x i8] c"hc3\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"hc4\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"bt2\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"bt3\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"bt4\00", align 1
@options_lzma.opts = internal constant [10 x %struct.option_map] [%struct.option_map { ptr @.str.9, ptr null, i64 -1, i64 0 }, %struct.option_map { ptr @.str.10, ptr null, i64 4096, i64 1610612736 }, %struct.option_map { ptr @.str.11, ptr null, i64 0, i64 4 }, %struct.option_map { ptr @.str.12, ptr null, i64 0, i64 4 }, %struct.option_map { ptr @.str.13, ptr null, i64 0, i64 4 }, %struct.option_map { ptr @.str.14, ptr @options_lzma.modes, i64 0, i64 0 }, %struct.option_map { ptr @.str.15, ptr null, i64 2, i64 273 }, %struct.option_map { ptr @.str.16, ptr @options_lzma.mfs, i64 0, i64 0 }, %struct.option_map { ptr @.str.17, ptr null, i64 0, i64 4294967295 }, %struct.option_map zeroinitializer], align 16
@.str.9 = private unnamed_addr constant [7 x i8] c"preset\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"dict\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"lc\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"lp\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"pb\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"nice\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"mf\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"The sum of lc and lp must not exceed 4\00", align 1
@.str.19 = private unnamed_addr constant [52 x i8] c"The selected match finder requires at least nice=%u\00", align 1
@.str.20 = private unnamed_addr constant [61 x i8] c"%s: Options must be `name=value' pairs separated with commas\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"%s: Invalid option name\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"%s: Invalid option value\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"Unsupported LZMA1/LZMA2 preset: %s\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @options_delta(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call ptr @xrealloc(ptr noundef null, i64 noundef 40) #6
  store i32 0, ptr %2, align 8, !tbaa.struct !35
  %3 = getelementptr inbounds i8, ptr %2, i64 4
  store i32 1, ptr %3, align 4, !tbaa.struct !42
  %4 = getelementptr inbounds i8, ptr %2, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  tail call fastcc void @parse_options(ptr noundef %0, ptr noundef nonnull @options_delta.opts, ptr noundef nonnull @set_delta, ptr noundef nonnull %2) #7
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @parse_options(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 !prof !34 !PGOFuncName !43 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %83, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %0, align 1, !tbaa !44
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %83, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @xstrdup(ptr noundef nonnull %0) #6
  br label %11

11:                                               ; preds = %14, %9
  %12 = phi ptr [ %10, %9 ], [ %16, %14 ]
  %13 = load i8, ptr %12, align 1, !tbaa !44
  switch i8 %13, label %17 [
    i8 0, label %82
    i8 44, label %14
  ]

14:                                               ; preds = %11, %81
  %15 = phi ptr [ %18, %81 ], [ %12, %11 ]
  %16 = getelementptr inbounds i8, ptr %15, i64 1
  br label %11, !llvm.loop !45

17:                                               ; preds = %11
  %18 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %12, i32 noundef 44) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i8 0, ptr %18, align 1, !tbaa !44
  br label %21

21:                                               ; preds = %20, %17
  %22 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %12, i32 noundef 61) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, ptr %22, i64 1
  store i8 0, ptr %22, align 1, !tbaa !44
  %26 = load i8, ptr %25, align 1, !tbaa !44
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21, %24
  %29 = phi ptr [ %25, %24 ], [ null, %21 ]
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.20, ptr noundef nonnull %0) #6
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi ptr [ %29, %28 ], [ %25, %24 ]
  br label %32

32:                                               ; preds = %39, %30
  %33 = phi i64 [ 0, %30 ], [ %43, %39 ]
  %34 = getelementptr inbounds %struct.option_map, ptr %1, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !47
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.21, ptr noundef nonnull %12) #6
  %38 = load ptr, ptr %34, align 8, !tbaa !47
  br label %39

39:                                               ; preds = %37, %32
  %40 = phi ptr [ %38, %37 ], [ %35, %32 ]
  %41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %40) #8
  %42 = icmp eq i32 %41, 0
  %43 = add i64 %33, 1
  br i1 %42, label %44, label %32

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.option_map, ptr %1, i64 %33, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !50
  %47 = icmp eq ptr %46, null
  br i1 %47, label %70, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %46, align 8, !tbaa !51
  %50 = icmp eq ptr %49, null
  br i1 %50, label %61, label %51

51:                                               ; preds = %48, %56
  %52 = phi ptr [ %59, %56 ], [ %49, %48 ]
  %53 = phi i64 [ %57, %56 ], [ 0, %48 ]
  %54 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %52, ptr noundef nonnull dereferenceable(1) %31) #8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %51
  %57 = add i64 %53, 1
  %58 = getelementptr inbounds %struct.name_id_map, ptr %46, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !51
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %51, !llvm.loop !53

61:                                               ; preds = %56, %48
  %62 = phi i64 [ 0, %48 ], [ %57, %56 ]
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.22, ptr noundef %31) #6
  %63 = load ptr, ptr %45, align 8, !tbaa !50
  br label %64

64:                                               ; preds = %51, %61
  %65 = phi ptr [ %63, %61 ], [ %46, %51 ]
  %66 = phi i64 [ %62, %61 ], [ %53, %51 ]
  %67 = trunc i64 %33 to i32
  %68 = getelementptr inbounds %struct.name_id_map, ptr %65, i64 %66, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !54
  tail call void %2(ptr noundef %3, i32 noundef %67, i64 noundef %69, ptr noundef %31) #6, !callees !55
  br label %81

70:                                               ; preds = %44
  %71 = getelementptr inbounds %struct.option_map, ptr %1, i64 %33, i32 2
  %72 = load i64, ptr %71, align 8, !tbaa !56
  %73 = icmp eq i64 %72, -1
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = trunc i64 %33 to i32
  tail call void %2(ptr noundef %3, i32 noundef %75, i64 noundef 0, ptr noundef %31) #6, !callees !55
  br label %81

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.option_map, ptr %1, i64 %33, i32 3
  %78 = load i64, ptr %77, align 8, !tbaa !57
  %79 = tail call i64 @str_to_uint64(ptr noundef nonnull %12, ptr noundef %31, i64 noundef %72, i64 noundef %78) #6
  %80 = trunc i64 %33 to i32
  tail call void %2(ptr noundef %3, i32 noundef %80, i64 noundef %79, ptr noundef %31) #6, !callees !55
  br label %81

81:                                               ; preds = %74, %76, %64
  br i1 %19, label %82, label %14

82:                                               ; preds = %81, %11
  tail call void @free(ptr noundef %10) #6
  br label %83

83:                                               ; preds = %4, %6, %82
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @set_delta(ptr nocapture noundef writeonly %0, i32 noundef %1, i64 noundef %2, ptr nocapture readnone %3) #3 !prof !34 !PGOFuncName !58 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = trunc i64 %2 to i32
  %8 = getelementptr inbounds %struct.lzma_options_delta, ptr %0, i64 0, i32 1
  store i32 %7, ptr %8, align 4, !tbaa !59
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @options_bcj(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call ptr @xrealloc(ptr noundef null, i64 noundef 4) #6
  store i32 0, ptr %2, align 4, !tbaa.struct !61
  tail call fastcc void @parse_options(ptr noundef %0, ptr noundef nonnull @options_bcj.opts, ptr noundef nonnull @set_bcj, ptr noundef nonnull %2) #7
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @set_bcj(ptr nocapture noundef writeonly %0, i32 noundef %1, i64 noundef %2, ptr nocapture readnone %3) #3 !prof !34 !PGOFuncName !62 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = trunc i64 %2 to i32
  store i32 %7, ptr %0, align 4, !tbaa !63
  br label %8

8:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @options_lzma(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call ptr @xrealloc(ptr noundef null, i64 noundef 112) #6
  %3 = tail call zeroext i8 @lzma_lzma_preset(ptr noundef %2, i32 noundef 6) #6
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @message_bug() #6
  br label %6

6:                                                ; preds = %5, %1
  tail call fastcc void @parse_options(ptr noundef %0, ptr noundef nonnull @options_lzma.opts, ptr noundef nonnull @set_lzma, ptr noundef %2) #7
  %7 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !65
  %9 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !67
  %11 = add i32 %10, %8
  %12 = icmp ugt i32 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.18) #6
  br label %14

14:                                               ; preds = %13, %6
  %15 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 8
  %16 = load i32, ptr %15, align 8, !tbaa !68
  %17 = and i32 %16, 15
  %18 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 7
  %19 = load i32, ptr %18, align 4, !tbaa !69
  %20 = icmp ult i32 %19, %17
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.19, i32 noundef %17) #6
  br label %22

22:                                               ; preds = %21, %14
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @lzma_lzma_preset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @message_bug() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @set_lzma(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) #0 !prof !34 !PGOFuncName !70 {
  switch i32 %1, label %54 [
    i32 0, label %5
    i32 1, label %31
    i32 2, label %33
    i32 3, label %36
    i32 4, label %39
    i32 5, label %42
    i32 6, label %45
    i32 7, label %48
    i32 8, label %51
  ]

5:                                                ; preds = %4
  %6 = load i8, ptr %3, align 1, !tbaa !44
  %7 = add i8 %6, -58
  %8 = icmp ult i8 %7, -10
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  tail call fastcc void @error_lzma_preset(ptr noundef nonnull %3) #7
  %10 = load i8, ptr %3, align 1, !tbaa !44
  br label %11

11:                                               ; preds = %5, %9
  %12 = phi i8 [ %6, %5 ], [ %10, %9 ]
  %13 = sext i8 %12 to i32
  %14 = add nsw i32 %13, -48
  %15 = getelementptr inbounds i8, ptr %3, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !44
  switch i8 %16, label %19 [
    i8 0, label %26
    i8 101, label %17
  ]

17:                                               ; preds = %11
  %18 = or i32 %14, -2147483648
  br label %20

19:                                               ; preds = %11
  tail call fastcc void @error_lzma_preset(ptr noundef nonnull %3) #7
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ %14, %19 ]
  %22 = getelementptr inbounds i8, ptr %3, i64 2
  %23 = load i8, ptr %22, align 1, !tbaa !44
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  tail call fastcc void @error_lzma_preset(ptr noundef nonnull %3) #7
  br label %26

26:                                               ; preds = %11, %20, %25
  %27 = phi i32 [ %21, %25 ], [ %21, %20 ], [ %14, %11 ]
  %28 = tail call zeroext i8 @lzma_lzma_preset(ptr noundef %0, i32 noundef %27) #6
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %54, label %30

30:                                               ; preds = %26
  tail call fastcc void @error_lzma_preset(ptr noundef nonnull %3) #7
  br label %54

31:                                               ; preds = %4
  %32 = trunc i64 %2 to i32
  store i32 %32, ptr %0, align 8, !tbaa !71
  br label %54

33:                                               ; preds = %4
  %34 = trunc i64 %2 to i32
  %35 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 3
  store i32 %34, ptr %35, align 4, !tbaa !65
  br label %54

36:                                               ; preds = %4
  %37 = trunc i64 %2 to i32
  %38 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 4
  store i32 %37, ptr %38, align 8, !tbaa !67
  br label %54

39:                                               ; preds = %4
  %40 = trunc i64 %2 to i32
  %41 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 5
  store i32 %40, ptr %41, align 4, !tbaa !72
  br label %54

42:                                               ; preds = %4
  %43 = trunc i64 %2 to i32
  %44 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 6
  store i32 %43, ptr %44, align 8, !tbaa !73
  br label %54

45:                                               ; preds = %4
  %46 = trunc i64 %2 to i32
  %47 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 7
  store i32 %46, ptr %47, align 4, !tbaa !69
  br label %54

48:                                               ; preds = %4
  %49 = trunc i64 %2 to i32
  %50 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 8
  store i32 %49, ptr %50, align 8, !tbaa !68
  br label %54

51:                                               ; preds = %4
  %52 = trunc i64 %2 to i32
  %53 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 9
  store i32 %52, ptr %53, align 4, !tbaa !74
  br label %54

54:                                               ; preds = %26, %30, %4, %51, %48, %45, %42, %39, %36, %33, %31
  ret void
}

; Function Attrs: optsize
declare void @message_fatal(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xstrdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @str_to_uint64(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @error_lzma_preset(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !75 {
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.23, ptr noundef %0) #6
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 42596457582}
!4 = !{!"MaxCount", i64 3509320374}
!5 = !{!"MaxInternalCount", i64 1880543368}
!6 = !{!"MaxFunctionCount", i64 3509320374}
!7 = !{!"NumCounts", i64 1899}
!8 = !{!"NumFunctions", i64 428}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3509320374, i32 1}
!14 = !{i32 100000, i64 3323890816, i32 2}
!15 = !{i32 200000, i64 2354835913, i32 3}
!16 = !{i32 300000, i64 1717654358, i32 5}
!17 = !{i32 400000, i64 1697273389, i32 8}
!18 = !{i32 500000, i64 1349259993, i32 11}
!19 = !{i32 600000, i64 759326020, i32 16}
!20 = !{i32 700000, i64 575792475, i32 22}
!21 = !{i32 800000, i64 285720408, i32 36}
!22 = !{i32 900000, i64 154264530, i32 55}
!23 = !{i32 950000, i64 86561411, i32 73}
!24 = !{i32 990000, i64 20049460, i32 113}
!25 = !{i32 999000, i64 3293392, i32 158}
!26 = !{i32 999900, i64 80863, i32 231}
!27 = !{i32 999990, i64 33328, i32 274}
!28 = !{i32 999999, i64 3584, i32 298}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{i64 0, i64 4, !36, i64 4, i64 4, !36, i64 8, i64 4, !36, i64 12, i64 4, !36, i64 16, i64 4, !36, i64 20, i64 4, !36, i64 24, i64 8, !40, i64 32, i64 8, !40}
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !38, i64 0}
!42 = !{i64 0, i64 4, !36, i64 4, i64 4, !36, i64 8, i64 4, !36, i64 12, i64 4, !36, i64 16, i64 4, !36, i64 20, i64 8, !40, i64 28, i64 8, !40}
!43 = !{!"options.c:parse_options"}
!44 = !{!38, !38, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!48, !41, i64 0}
!48 = !{!"", !41, i64 0, !41, i64 8, !49, i64 16, !49, i64 24}
!49 = !{!"long", !38, i64 0}
!50 = !{!48, !41, i64 8}
!51 = !{!52, !41, i64 0}
!52 = !{!"", !41, i64 0, !49, i64 8}
!53 = distinct !{!53, !46}
!54 = !{!52, !49, i64 8}
!55 = !{ptr @set_bcj, ptr @set_delta, ptr @set_lzma}
!56 = !{!48, !49, i64 16}
!57 = !{!48, !49, i64 24}
!58 = !{!"options.c:set_delta"}
!59 = !{!60, !37, i64 4}
!60 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !41, i64 24, !41, i64 32}
!61 = !{i64 0, i64 4, !36}
!62 = !{!"options.c:set_bcj"}
!63 = !{!64, !37, i64 0}
!64 = !{!"", !37, i64 0}
!65 = !{!66, !37, i64 20}
!66 = !{!"", !37, i64 0, !41, i64 8, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !37, i64 52, !37, i64 56, !37, i64 60, !37, i64 64, !37, i64 68, !37, i64 72, !37, i64 76, !37, i64 80, !37, i64 84, !37, i64 88, !37, i64 92, !41, i64 96, !41, i64 104}
!67 = !{!66, !37, i64 24}
!68 = !{!66, !37, i64 40}
!69 = !{!66, !37, i64 36}
!70 = !{!"options.c:set_lzma"}
!71 = !{!66, !37, i64 0}
!72 = !{!66, !37, i64 28}
!73 = !{!66, !37, i64 32}
!74 = !{!66, !37, i64 44}
!75 = !{!"options.c:error_lzma_preset"}
