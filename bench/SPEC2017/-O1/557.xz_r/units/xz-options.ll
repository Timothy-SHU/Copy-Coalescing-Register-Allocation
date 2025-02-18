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

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @options_delta(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call ptr @xrealloc(ptr noundef null, i64 noundef 40) #6
  store i32 0, ptr %2, align 8, !tbaa.struct !35
  %3 = getelementptr inbounds i8, ptr %2, i64 4
  store i32 1, ptr %3, align 4, !tbaa.struct !42
  %4 = getelementptr inbounds i8, ptr %2, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  tail call fastcc void @parse_options(ptr noundef %0, ptr noundef nonnull @options_delta.opts, ptr noundef nonnull @set_delta, ptr noundef nonnull %2)
  ret ptr %2
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: cold nounwind uwtable
define internal fastcc void @parse_options(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 !prof !34 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %91, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %0, align 1, !tbaa !43
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %91, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @xstrdup(ptr noundef nonnull %0) #6
  br label %11

11:                                               ; preds = %16, %9
  %12 = phi ptr [ %10, %9 ], [ %17, %16 ]
  %13 = load i8, ptr %12, align 1, !tbaa !43
  switch i8 %13, label %18 [
    i8 0, label %90
    i8 44, label %14
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds i8, ptr %12, i64 1
  br label %16

16:                                               ; preds = %14, %87
  %17 = phi ptr [ %15, %14 ], [ %89, %87 ]
  br label %11, !llvm.loop !44

18:                                               ; preds = %11
  %19 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %12, i32 noundef 44) #7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i8 0, ptr %19, align 1, !tbaa !43
  br label %22

22:                                               ; preds = %21, %18
  %23 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %12, i32 noundef 61) #7
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, ptr %23, i64 1
  store i8 0, ptr %23, align 1, !tbaa !43
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi ptr [ %26, %25 ], [ null, %22 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i8, ptr %28, align 1, !tbaa !43
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %27
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.20, ptr noundef nonnull %0) #6
  br label %34

34:                                               ; preds = %33, %30
  br label %35

35:                                               ; preds = %34, %41
  %36 = phi i64 [ %45, %41 ], [ 0, %34 ]
  %37 = getelementptr inbounds %struct.option_map, ptr %1, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !47
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.21, ptr noundef nonnull %12) #6
  br label %41

41:                                               ; preds = %40, %35
  %42 = load ptr, ptr %37, align 8, !tbaa !47
  %43 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %42) #7
  %44 = icmp eq i32 %43, 0
  %45 = add i64 %36, 1
  br i1 %44, label %46, label %35, !llvm.loop !50

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.option_map, ptr %1, i64 %36, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !51
  %49 = icmp eq ptr %48, null
  br i1 %49, label %76, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %48, align 8, !tbaa !52
  %52 = icmp eq ptr %51, null
  br i1 %52, label %68, label %53

53:                                               ; preds = %50
  %54 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %51, ptr noundef nonnull dereferenceable(1) %28) #7
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %65, label %59

56:                                               ; preds = %59
  %57 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %63, ptr noundef nonnull dereferenceable(1) %28) #7
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %65, label %59, !llvm.loop !54

59:                                               ; preds = %53, %56
  %60 = phi i64 [ %61, %56 ], [ 0, %53 ]
  %61 = add i64 %60, 1
  %62 = getelementptr inbounds %struct.name_id_map, ptr %48, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !52
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %56, !llvm.loop !54

65:                                               ; preds = %56, %53
  %66 = phi i1 [ %52, %53 ], [ %64, %56 ]
  %67 = phi i64 [ 0, %53 ], [ %61, %56 ]
  br i1 %66, label %68, label %70

68:                                               ; preds = %59, %50, %65
  %69 = phi i64 [ %67, %65 ], [ 0, %50 ], [ %61, %59 ]
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.22, ptr noundef %28) #6
  br label %70

70:                                               ; preds = %68, %65
  %71 = phi i64 [ %69, %68 ], [ %67, %65 ]
  %72 = trunc i64 %36 to i32
  %73 = load ptr, ptr %47, align 8, !tbaa !51
  %74 = getelementptr inbounds %struct.name_id_map, ptr %73, i64 %71, i32 1
  %75 = load i64, ptr %74, align 8, !tbaa !55
  tail call void %2(ptr noundef %3, i32 noundef %72, i64 noundef %75, ptr noundef %28) #6, !callees !56
  br label %87

76:                                               ; preds = %46
  %77 = getelementptr inbounds %struct.option_map, ptr %1, i64 %36, i32 2
  %78 = load i64, ptr %77, align 8, !tbaa !57
  %79 = icmp eq i64 %78, -1
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = trunc i64 %36 to i32
  tail call void %2(ptr noundef %3, i32 noundef %81, i64 noundef 0, ptr noundef %28) #6, !callees !56
  br label %87

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.option_map, ptr %1, i64 %36, i32 3
  %84 = load i64, ptr %83, align 8, !tbaa !58
  %85 = tail call i64 @str_to_uint64(ptr noundef nonnull %12, ptr noundef %28, i64 noundef %78, i64 noundef %84) #6
  %86 = trunc i64 %36 to i32
  tail call void %2(ptr noundef %3, i32 noundef %86, i64 noundef %85, ptr noundef %28) #6, !callees !56
  br label %87

87:                                               ; preds = %80, %82, %70
  %88 = getelementptr inbounds i8, ptr %19, i64 1
  %89 = select i1 %20, ptr %12, ptr %88
  br i1 %20, label %90, label %16

90:                                               ; preds = %87, %11
  tail call void @free(ptr noundef %10) #6
  br label %91

91:                                               ; preds = %4, %6, %90
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @set_delta(ptr nocapture noundef writeonly %0, i32 noundef %1, i64 noundef %2, ptr nocapture readnone %3) #3 !prof !34 {
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

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @options_bcj(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call ptr @xrealloc(ptr noundef null, i64 noundef 4) #6
  store i32 0, ptr %2, align 4, !tbaa.struct !61
  tail call fastcc void @parse_options(ptr noundef %0, ptr noundef nonnull @options_bcj.opts, ptr noundef nonnull @set_bcj, ptr noundef nonnull %2)
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @set_bcj(ptr nocapture noundef writeonly %0, i32 noundef %1, i64 noundef %2, ptr nocapture readnone %3) #3 !prof !34 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = trunc i64 %2 to i32
  store i32 %7, ptr %0, align 4, !tbaa !62
  br label %8

8:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @options_lzma(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call ptr @xrealloc(ptr noundef null, i64 noundef 112) #6
  %3 = tail call zeroext i8 @lzma_lzma_preset(ptr noundef %2, i32 noundef 6) #6
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @message_bug() #6
  br label %6

6:                                                ; preds = %5, %1
  tail call fastcc void @parse_options(ptr noundef %0, ptr noundef nonnull @options_lzma.opts, ptr noundef nonnull @set_lzma, ptr noundef %2)
  %7 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !64
  %9 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !66
  %11 = add i32 %10, %8
  %12 = icmp ugt i32 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.18) #6
  br label %14

14:                                               ; preds = %13, %6
  %15 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 8
  %16 = load i32, ptr %15, align 8, !tbaa !67
  %17 = and i32 %16, 15
  %18 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 7
  %19 = load i32, ptr %18, align 4, !tbaa !68
  %20 = icmp ult i32 %19, %17
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.19, i32 noundef %17) #6
  br label %22

22:                                               ; preds = %21, %14
  ret ptr %2
}

declare zeroext i8 @lzma_lzma_preset(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @message_bug() local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal void @set_lzma(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) #0 !prof !34 {
  switch i32 %1, label %53 [
    i32 0, label %5
    i32 1, label %30
    i32 2, label %32
    i32 3, label %35
    i32 4, label %38
    i32 5, label %41
    i32 6, label %44
    i32 7, label %47
    i32 8, label %50
  ]

5:                                                ; preds = %4
  %6 = load i8, ptr %3, align 1, !tbaa !43
  %7 = add i8 %6, -58
  %8 = icmp ult i8 %7, -10
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.23, ptr noundef nonnull %3) #6
  br label %10

10:                                               ; preds = %5, %9
  %11 = load i8, ptr %3, align 1, !tbaa !43
  %12 = sext i8 %11 to i32
  %13 = add nsw i32 %12, -48
  %14 = getelementptr inbounds i8, ptr %3, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !43
  switch i8 %15, label %18 [
    i8 0, label %25
    i8 101, label %16
  ]

16:                                               ; preds = %10
  %17 = or i32 %13, -2147483648
  br label %19

18:                                               ; preds = %10
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.23, ptr noundef nonnull %3) #6
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ %13, %18 ]
  %21 = getelementptr inbounds i8, ptr %3, i64 2
  %22 = load i8, ptr %21, align 1, !tbaa !43
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.23, ptr noundef nonnull %3) #6
  br label %25

25:                                               ; preds = %10, %19, %24
  %26 = phi i32 [ %20, %24 ], [ %20, %19 ], [ %13, %10 ]
  %27 = tail call zeroext i8 @lzma_lzma_preset(ptr noundef %0, i32 noundef %26) #6
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %53, label %29

29:                                               ; preds = %25
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.23, ptr noundef nonnull %3) #6
  br label %53

30:                                               ; preds = %4
  %31 = trunc i64 %2 to i32
  store i32 %31, ptr %0, align 8, !tbaa !69
  br label %53

32:                                               ; preds = %4
  %33 = trunc i64 %2 to i32
  %34 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 3
  store i32 %33, ptr %34, align 4, !tbaa !64
  br label %53

35:                                               ; preds = %4
  %36 = trunc i64 %2 to i32
  %37 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 4
  store i32 %36, ptr %37, align 8, !tbaa !66
  br label %53

38:                                               ; preds = %4
  %39 = trunc i64 %2 to i32
  %40 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 5
  store i32 %39, ptr %40, align 4, !tbaa !70
  br label %53

41:                                               ; preds = %4
  %42 = trunc i64 %2 to i32
  %43 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 6
  store i32 %42, ptr %43, align 8, !tbaa !71
  br label %53

44:                                               ; preds = %4
  %45 = trunc i64 %2 to i32
  %46 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 7
  store i32 %45, ptr %46, align 4, !tbaa !68
  br label %53

47:                                               ; preds = %4
  %48 = trunc i64 %2 to i32
  %49 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 8
  store i32 %48, ptr %49, align 8, !tbaa !67
  br label %53

50:                                               ; preds = %4
  %51 = trunc i64 %2 to i32
  %52 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 9
  store i32 %51, ptr %52, align 4, !tbaa !72
  br label %53

53:                                               ; preds = %25, %29, %4, %50, %47, %44, %41, %38, %35, %32, %30
  ret void
}

declare void @message_fatal(ptr noundef, ...) local_unnamed_addr #1

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare i64 @str_to_uint64(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!35 = !{i64 0, i64 4, !36, i64 4, i64 4, !36, i64 8, i64 4, !36, i64 12, i64 4, !36, i64 16, i64 4, !36, i64 20, i64 4, !36, i64 24, i64 8, !40, i64 32, i64 8, !40}
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !38, i64 0}
!42 = !{i64 0, i64 4, !36, i64 4, i64 4, !36, i64 8, i64 4, !36, i64 12, i64 4, !36, i64 16, i64 4, !36, i64 20, i64 8, !40, i64 28, i64 8, !40}
!43 = !{!38, !38, i64 0}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!48, !41, i64 0}
!48 = !{!"", !41, i64 0, !41, i64 8, !49, i64 16, !49, i64 24}
!49 = !{!"long", !38, i64 0}
!50 = distinct !{!50, !46}
!51 = !{!48, !41, i64 8}
!52 = !{!53, !41, i64 0}
!53 = !{!"", !41, i64 0, !49, i64 8}
!54 = distinct !{!54, !45, !46}
!55 = !{!53, !49, i64 8}
!56 = !{ptr @set_bcj, ptr @set_delta, ptr @set_lzma}
!57 = !{!48, !49, i64 16}
!58 = !{!48, !49, i64 24}
!59 = !{!60, !37, i64 4}
!60 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !41, i64 24, !41, i64 32}
!61 = !{i64 0, i64 4, !36}
!62 = !{!63, !37, i64 0}
!63 = !{!"", !37, i64 0}
!64 = !{!65, !37, i64 20}
!65 = !{!"", !37, i64 0, !41, i64 8, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !37, i64 52, !37, i64 56, !37, i64 60, !37, i64 64, !37, i64 68, !37, i64 72, !37, i64 76, !37, i64 80, !37, i64 84, !37, i64 88, !37, i64 92, !41, i64 96, !41, i64 104}
!66 = !{!65, !37, i64 24}
!67 = !{!65, !37, i64 40}
!68 = !{!65, !37, i64 36}
!69 = !{!65, !37, i64 0}
!70 = !{!65, !37, i64 28}
!71 = !{!65, !37, i64 32}
!72 = !{!65, !37, i64 44}
