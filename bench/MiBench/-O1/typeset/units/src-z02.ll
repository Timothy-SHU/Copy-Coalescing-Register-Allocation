; ModuleID = 'src/z02.c'
source_filename = "src/z02.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { ptr, ptr, ptr, ptr, i32, i8, ptr, i16, ptr, %struct.FILE_POS, i16, ptr, i32, i32, i32, i64, ptr }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%union.SECOND_UNION = type { %struct.anon.2 }
%struct.anon.2 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8 }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, ptr, ptr }
%struct.GAP = type { i16, i16 }

@chtbl = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@stack_free = internal unnamed_addr global i32 0, align 4
@.str.19 = private unnamed_addr constant [66 x i8] c"too many open files when opening include file %s; open files are:\00", align 1
@.str.20 = private unnamed_addr constant [67 x i8] c"too many open files when opening database file %s; open files are:\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@lex_stack = internal unnamed_addr global [10 x %struct.anon] zeroinitializer, align 16
@.str.22 = private unnamed_addr constant [12 x i8] c"exiting now\00", align 1
@chpt = internal unnamed_addr global ptr null, align 8
@frst = internal unnamed_addr global ptr null, align 8
@limit = internal unnamed_addr global ptr null, align 8
@buf = internal unnamed_addr global ptr null, align 8
@blksize = internal unnamed_addr global i32 0, align 4
@last_char = internal unnamed_addr global i8 0, align 1
@startline = internal unnamed_addr global ptr null, align 8
@this_file = internal unnamed_addr global i16 0, align 2
@fp = internal unnamed_addr global ptr null, align 8
@ftype = internal unnamed_addr global i16 0, align 2
@next_token = internal unnamed_addr global ptr null, align 8
@offset = internal unnamed_addr global i32 0, align 4
@first_line_num = internal unnamed_addr global i32 0, align 4
@same_file = internal unnamed_addr global i32 0, align 4
@mem_block = internal unnamed_addr global ptr null, align 8
@file_pos = internal global %struct.FILE_POS zeroinitializer, align 4
@.str.23 = private unnamed_addr constant [39 x i8] c"run out of memory when opening file %s\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"LexPop: stack_free <= 0!\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"illegal macro invocation in database\00", align 1
@zz_hold = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@StartSym = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [35 x i8] c"character %c outside quoted string\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"cannot open file %s\00", align 1
@FilterOutSym = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [18 x i8] c"unknown file type\00", align 1
@zz_size = external local_unnamed_addr global i32, align 4
@.str.30 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@.str.31 = private unnamed_addr constant [19 x i8] c"recursion in macro\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"%s expected (after %s)\00", align 1
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"name of include file expected here\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c".lt\00", align 1
@.str.36 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"unterminated string\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"skipping null character in string\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"LexGetToken: error in quoted string\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"LexGetToken: bad chtbl[]\00", align 1
@.str.41 = private unnamed_addr constant [44 x i8] c"line is too long (or final newline missing)\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"filter parameter in macro\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"end of file reached while reading %s\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"@RawVerbatim\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"@Verbatim\00", align 1
@.str.46 = private unnamed_addr constant [51 x i8] c"end of file reached while reading filter parameter\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"@End\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"@Include\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"@SysInclude\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"expected %s here (after %s)\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"expected file name here\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"cannot open include file %s\00", align 1
@.str.53 = private unnamed_addr constant [32 x i8] c"unreadable character (octal %o)\00", align 1
@.str.54 = private unnamed_addr constant [29 x i8] c"LexScanVerbatim: bad chtbl[]\00", align 1
@.str.55 = private unnamed_addr constant [58 x i8] c"a database file must end with a newline; this one doesn't\00", align 1
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@.str.56 = private unnamed_addr constant [4 x i8] c"1vx\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LexLegalName(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1, !tbaa !5
  %3 = zext i8 %2 to i64
  %4 = getelementptr inbounds [256 x i8], ptr @chtbl, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !5
  switch i8 %5, label %29 [
    i8 3, label %6
    i8 1, label %6
    i8 0, label %18
  ]

6:                                                ; preds = %1, %1
  br label %7

7:                                                ; preds = %6, %7
  %8 = phi i64 [ %15, %7 ], [ 1, %6 ]
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !5
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds [256 x i8], ptr @chtbl, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !5
  %14 = icmp eq i8 %13, 1
  %15 = add nuw i64 %8, 1
  br i1 %14, label %7, label %16

16:                                               ; preds = %7
  %17 = icmp eq i8 %10, 0
  br label %29

18:                                               ; preds = %1, %18
  %19 = phi i64 [ %26, %18 ], [ 1, %1 ]
  %20 = getelementptr inbounds i8, ptr %0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !5
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds [256 x i8], ptr @chtbl, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !5
  %25 = icmp eq i8 %24, 0
  %26 = add nuw i64 %19, 1
  br i1 %25, label %18, label %27

27:                                               ; preds = %18
  %28 = icmp eq i8 %21, 0
  br label %29

29:                                               ; preds = %1, %27, %16
  %30 = phi i1 [ %28, %27 ], [ %17, %16 ], [ false, %1 ]
  %31 = zext i1 %30 to i32
  ret i32 %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @LexInit() local_unnamed_addr #2 {
  store i8 1, ptr getelementptr inbounds ([256 x i8], ptr @chtbl, i64 0, i64 95), align 1, !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) getelementptr inbounds ([256 x i8], ptr @chtbl, i64 0, i64 64), i8 1, i64 27, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) getelementptr inbounds ([256 x i8], ptr @chtbl, i64 0, i64 97), i8 1, i64 26, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(23) getelementptr inbounds ([256 x i8], ptr @chtbl, i64 0, i64 192), i8 1, i64 23, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(31) getelementptr inbounds ([256 x i8], ptr @chtbl, i64 0, i64 216), i8 1, i64 31, i1 false)
  store i64 72340172838076673, ptr getelementptr inbounds ([256 x i8], ptr @chtbl, i64 0, i64 248), align 8
  store i8 2, ptr getelementptr inbounds ([256 x i8], ptr @chtbl, i64 0, i64 34), align 2, !tbaa !5
  store i8 3, ptr getelementptr inbounds ([256 x i8], ptr @chtbl, i64 0, i64 92), align 4, !tbaa !5
  store i8 4, ptr getelementptr inbounds ([256 x i8], ptr @chtbl, i64 0, i64 35), align 1, !tbaa !5
  store i8 5, ptr getelementptr inbounds ([256 x i8], ptr @chtbl, i64 0, i64 32), align 16, !tbaa !5
  store i8 6, ptr getelementptr inbounds ([256 x i8], ptr @chtbl, i64 0, i64 12), align 4, !tbaa !5
  store i8 7, ptr getelementptr inbounds ([256 x i8], ptr @chtbl, i64 0, i64 9), align 1, !tbaa !5
  store i8 8, ptr getelementptr inbounds ([256 x i8], ptr @chtbl, i64 0, i64 10), align 2, !tbaa !5
  store i8 9, ptr @chtbl, align 16, !tbaa !5
  store i32 -1, ptr @stack_free, align 4, !tbaa !8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @LexPush(i16 noundef zeroext %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
  %6 = load i32, ptr @stack_free, align 4, !tbaa !8
  %7 = icmp sgt i32 %6, 8
  br i1 %7, label %8, label %35

8:                                                ; preds = %5
  %9 = icmp eq i32 %2, 1
  %10 = tail call ptr @PosOfFile(i16 noundef zeroext %0) #10
  br i1 %9, label %11, label %14

11:                                               ; preds = %8
  %12 = tail call ptr @FullFileName(i16 noundef zeroext %0) #10
  %13 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 1, ptr noundef nonnull @.str.19, i32 noundef 2, ptr noundef %10, ptr noundef %12) #10
  br label %17

14:                                               ; preds = %8
  %15 = tail call ptr @FileName(i16 noundef zeroext %0) #10
  %16 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 2, ptr noundef nonnull @.str.20, i32 noundef 2, ptr noundef %10, ptr noundef %15) #10
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i32, ptr @stack_free, align 4, !tbaa !8
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = zext nneg i32 %18 to i64
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i64 [ %21, %20 ], [ %24, %22 ]
  %24 = add nsw i64 %23, -1
  %25 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %26 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %24, i32 7
  %27 = load i16, ptr %26, align 8, !tbaa !12
  %28 = tail call ptr @EchoFileSource(i16 noundef zeroext %27) #10
  %29 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 23, ptr noundef nonnull @.str.21, i32 noundef 2, ptr noundef %25, ptr noundef %28) #10
  %30 = icmp ugt i64 %23, 1
  br i1 %30, label %22, label %31

31:                                               ; preds = %22, %17
  %32 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %33 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 24, ptr noundef nonnull @.str.22, i32 noundef 1, ptr noundef %32) #10
  %34 = load i32, ptr @stack_free, align 4, !tbaa !8
  br label %35

35:                                               ; preds = %31, %5
  %36 = phi i32 [ %34, %31 ], [ %6, %5 ]
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %38, label %74

38:                                               ; preds = %35
  %39 = load ptr, ptr @chpt, align 8, !tbaa !10
  %40 = zext nneg i32 %36 to i64
  %41 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %40
  store ptr %39, ptr %41, align 8, !tbaa !17
  %42 = load ptr, ptr @frst, align 8, !tbaa !10
  %43 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %40, i32 1
  store ptr %42, ptr %43, align 8, !tbaa !18
  %44 = load ptr, ptr @limit, align 8, !tbaa !10
  %45 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %40, i32 2
  store ptr %44, ptr %45, align 8, !tbaa !19
  %46 = load ptr, ptr @buf, align 8, !tbaa !10
  %47 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %40, i32 3
  store ptr %46, ptr %47, align 8, !tbaa !20
  %48 = load i32, ptr @blksize, align 4, !tbaa !8
  %49 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %40, i32 4
  store i32 %48, ptr %49, align 8, !tbaa !21
  %50 = load i8, ptr @last_char, align 1, !tbaa !5
  %51 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %40, i32 5
  store i8 %50, ptr %51, align 4, !tbaa !22
  %52 = load ptr, ptr @startline, align 8, !tbaa !10
  %53 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %40, i32 6
  store ptr %52, ptr %53, align 8, !tbaa !23
  %54 = load i16, ptr @this_file, align 2, !tbaa !24
  %55 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %40, i32 7
  store i16 %54, ptr %55, align 8, !tbaa !12
  %56 = load ptr, ptr @fp, align 8, !tbaa !10
  %57 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %40, i32 8
  store ptr %56, ptr %57, align 8, !tbaa !25
  %58 = load i16, ptr @ftype, align 2, !tbaa !24
  %59 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %40, i32 10
  store i16 %58, ptr %59, align 8, !tbaa !26
  %60 = load ptr, ptr @next_token, align 8, !tbaa !10
  %61 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %40, i32 11
  store ptr %60, ptr %61, align 8, !tbaa !27
  %62 = load i32, ptr @offset, align 4, !tbaa !8
  %63 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %40, i32 12
  store i32 %62, ptr %63, align 8, !tbaa !28
  %64 = load i32, ptr @first_line_num, align 4, !tbaa !8
  %65 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %40, i32 13
  store i32 %64, ptr %65, align 4, !tbaa !29
  %66 = load i32, ptr @same_file, align 4, !tbaa !8
  %67 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %40, i32 14
  store i32 %66, ptr %67, align 8, !tbaa !30
  %68 = load ptr, ptr @mem_block, align 8, !tbaa !10
  %69 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %40, i32 16
  store ptr %68, ptr %69, align 8, !tbaa !31
  %70 = load i16, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 2), align 2, !tbaa !32
  %71 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %40, i32 9, i32 2
  store i16 %70, ptr %71, align 2, !tbaa !33
  %72 = load i32, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %73 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %40, i32 9, i32 3
  store i32 %72, ptr %73, align 4
  br label %74

74:                                               ; preds = %38, %35
  %75 = add nsw i32 %36, 1
  store i32 %75, ptr @stack_free, align 4, !tbaa !8
  %76 = tail call noalias dereferenceable_or_null(10242) ptr @malloc(i64 noundef 10242) #11
  store ptr %76, ptr @mem_block, align 8, !tbaa !10
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = tail call ptr @PosOfFile(i16 noundef zeroext %0) #10
  %80 = tail call ptr @FullFileName(i16 noundef zeroext %0) #10
  %81 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 3, ptr noundef nonnull @.str.23, i32 noundef 1, ptr noundef %79, ptr noundef %80) #10
  %82 = load ptr, ptr @mem_block, align 8, !tbaa !10
  br label %83

83:                                               ; preds = %78, %74
  %84 = phi ptr [ %82, %78 ], [ %76, %74 ]
  %85 = getelementptr inbounds i8, ptr %84, i64 2048
  store ptr %85, ptr @chpt, align 8, !tbaa !10
  store ptr %85, ptr @buf, align 8, !tbaa !10
  store i8 10, ptr @last_char, align 1, !tbaa !5
  store i16 %0, ptr @this_file, align 2, !tbaa !24
  store i32 %1, ptr @offset, align 4, !tbaa !8
  store i32 %3, ptr @first_line_num, align 4, !tbaa !8
  store i32 %4, ptr @same_file, align 4, !tbaa !8
  %86 = trunc i32 %2 to i16
  store i16 %86, ptr @ftype, align 2, !tbaa !24
  store ptr null, ptr @next_token, align 8, !tbaa !10
  store i8 0, ptr %85, align 1, !tbaa !5
  %87 = icmp eq i32 %4, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %83
  %89 = load ptr, ptr @fp, align 8, !tbaa !10
  %90 = tail call i64 @ftell(ptr noundef %89)
  %91 = load i32, ptr @stack_free, align 4, !tbaa !8
  %92 = add nsw i32 %91, -1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %93, i32 15
  store i64 %90, ptr %94, align 8, !tbaa !34
  br label %96

95:                                               ; preds = %83
  store ptr null, ptr @fp, align 8, !tbaa !10
  br label %96

96:                                               ; preds = %95, %88
  ret void
}

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @PosOfFile(i16 noundef zeroext) local_unnamed_addr #4

declare ptr @FullFileName(i16 noundef zeroext) local_unnamed_addr #4

declare ptr @FileName(i16 noundef zeroext) local_unnamed_addr #4

declare ptr @EchoFileSource(i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @LexPop() local_unnamed_addr #3 {
  %1 = load i32, ptr @stack_free, align 4, !tbaa !8
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %5 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef %4, ptr noundef nonnull @.str.25) #10
  %6 = load i32, ptr @stack_free, align 4, !tbaa !8
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi i32 [ %6, %3 ], [ %1, %0 ]
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr @stack_free, align 4, !tbaa !8
  %10 = load i32, ptr @same_file, align 4, !tbaa !8
  %11 = icmp eq i32 %10, 0
  %12 = load ptr, ptr @fp, align 8, !tbaa !10
  br i1 %11, label %18, label %13

13:                                               ; preds = %7
  %14 = sext i32 %9 to i64
  %15 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %14, i32 15
  %16 = load i64, ptr %15, align 8, !tbaa !34
  %17 = tail call i32 @fseek(ptr noundef %12, i64 noundef %16, i32 noundef 0)
  br label %22

18:                                               ; preds = %7
  %19 = icmp eq ptr %12, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = tail call i32 @fclose(ptr noundef nonnull %12)
  br label %22

22:                                               ; preds = %18, %20, %13
  %23 = load ptr, ptr @mem_block, align 8, !tbaa !10
  tail call void @free(ptr noundef %23) #10
  %24 = load i32, ptr @stack_free, align 4, !tbaa !8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %25, i32 16
  %27 = load ptr, ptr %26, align 8, !tbaa !31
  store ptr %27, ptr @mem_block, align 8, !tbaa !10
  %28 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %25
  %29 = load ptr, ptr %28, align 8, !tbaa !17
  store ptr %29, ptr @chpt, align 8, !tbaa !10
  %30 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %25, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !18
  store ptr %31, ptr @frst, align 8, !tbaa !10
  %32 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %25, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !19
  store ptr %33, ptr @limit, align 8, !tbaa !10
  %34 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %25, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !20
  store ptr %35, ptr @buf, align 8, !tbaa !10
  %36 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %25, i32 4
  %37 = load i32, ptr %36, align 8, !tbaa !21
  store i32 %37, ptr @blksize, align 4, !tbaa !8
  %38 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %25, i32 5
  %39 = load i8, ptr %38, align 4, !tbaa !22
  store i8 %39, ptr @last_char, align 1, !tbaa !5
  %40 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %25, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !23
  store ptr %41, ptr @startline, align 8, !tbaa !10
  %42 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %25, i32 7
  %43 = load i16, ptr %42, align 8, !tbaa !12
  store i16 %43, ptr @this_file, align 2, !tbaa !24
  %44 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %25, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !25
  store ptr %45, ptr @fp, align 8, !tbaa !10
  %46 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %25, i32 10
  %47 = load i16, ptr %46, align 8, !tbaa !26
  store i16 %47, ptr @ftype, align 2, !tbaa !24
  %48 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %25, i32 11
  %49 = load ptr, ptr %48, align 8, !tbaa !27
  store ptr %49, ptr @next_token, align 8, !tbaa !10
  %50 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %25, i32 12
  %51 = load i32, ptr %50, align 8, !tbaa !28
  store i32 %51, ptr @offset, align 4, !tbaa !8
  %52 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %25, i32 13
  %53 = load i32, ptr %52, align 4, !tbaa !29
  store i32 %53, ptr @first_line_num, align 4, !tbaa !8
  %54 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %25, i32 14
  %55 = load i32, ptr %54, align 8, !tbaa !30
  store i32 %55, ptr @same_file, align 4, !tbaa !8
  %56 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %25, i32 9, i32 2
  %57 = load i16, ptr %56, align 2, !tbaa !33
  store i16 %57, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 2), align 2, !tbaa !32
  %58 = getelementptr inbounds [10 x %struct.anon], ptr @lex_stack, i64 0, i64 %25, i32 9, i32 3
  %59 = load i32, ptr %58, align 4
  store i32 %59, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @LexNextTokenPos() local_unnamed_addr #3 {
  %1 = load ptr, ptr @next_token, align 8, !tbaa !10
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.word_type, ptr %1, i64 0, i32 1
  %5 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 4, ptr noundef nonnull @.str.26, i32 noundef 1, ptr noundef nonnull %4) #10
  br label %6

6:                                                ; preds = %3, %0
  %7 = load ptr, ptr @fp, align 8, !tbaa !10
  %8 = tail call i64 @ftell(ptr noundef %7)
  %9 = load ptr, ptr @limit, align 8, !tbaa !10
  %10 = load ptr, ptr @chpt, align 8, !tbaa !10
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = load ptr, ptr @buf, align 8, !tbaa !10
  %14 = load ptr, ptr @frst, align 8, !tbaa !10
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = add i64 %8, %12
  %18 = add i64 %11, %15
  %19 = sub i64 %17, %18
  %20 = add i64 %19, %16
  ret i64 %20
}

; Function Attrs: nounwind uwtable
define dso_local ptr @LexGetToken() local_unnamed_addr #3 {
  %1 = alloca ptr, align 8
  %2 = load ptr, ptr @next_token, align 8, !tbaa !10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %0
  store ptr %2, ptr @zz_hold, align 8, !tbaa !10
  %5 = getelementptr inbounds [2 x %struct.LIST], ptr %2, i64 0, i64 1, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, %2
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  store ptr %6, ptr @zz_res, align 8, !tbaa !10
  %9 = getelementptr inbounds [2 x %struct.LIST], ptr %2, i64 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = getelementptr inbounds [2 x %struct.LIST], ptr %6, i64 0, i64 1
  store ptr %10, ptr %11, align 8, !tbaa !5
  %12 = getelementptr inbounds [2 x %struct.LIST], ptr %10, i64 0, i64 1, i32 1
  store ptr %6, ptr %12, align 8, !tbaa !5
  store ptr %2, ptr %5, align 8, !tbaa !5
  store ptr %2, ptr %9, align 8, !tbaa !5
  br label %13

13:                                               ; preds = %4, %8
  %14 = phi ptr [ %6, %8 ], [ null, %4 ]
  store ptr %14, ptr @next_token, align 8, !tbaa !10
  br label %910

15:                                               ; preds = %0
  %16 = load ptr, ptr @chpt, align 8, !tbaa !10
  br label %17

17:                                               ; preds = %886, %15
  %18 = phi i8 [ 0, %15 ], [ %888, %886 ]
  %19 = phi i8 [ 0, %15 ], [ %889, %886 ]
  %20 = phi ptr [ %16, %15 ], [ %890, %886 ]
  %21 = getelementptr i8, ptr %20, i64 1
  %22 = load i8, ptr %20, align 1, !tbaa !5
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds [256 x i8], ptr @chtbl, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !5
  switch i8 %25, label %883 [
    i8 3, label %26
    i8 4, label %54
    i8 5, label %64
    i8 6, label %64
    i8 7, label %66
    i8 8, label %68
    i8 9, label %75
    i8 0, label %143
    i8 1, label %175
    i8 2, label %551
  ]

26:                                               ; preds = %17
  %27 = load i16, ptr @ftype, align 2, !tbaa !24
  %28 = icmp eq i16 %27, 3
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i8, ptr %21, align 1, !tbaa !5
  %31 = add i8 %30, -97
  %32 = icmp ult i8 %31, 26
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, ptr %20, i64 2
  %35 = load i8, ptr %34, align 1, !tbaa !5
  %36 = icmp eq i8 %35, 123
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load ptr, ptr @StartSym, align 8, !tbaa !10
  %39 = call ptr @NewToken(i8 noundef zeroext 102, ptr noundef nonnull @file_pos, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %30, ptr noundef %38) #10
  %40 = getelementptr inbounds i8, ptr %20, i64 3
  br label %886

41:                                               ; preds = %33, %29, %26
  %42 = load ptr, ptr @startline, align 8, !tbaa !10
  %43 = ptrtoint ptr %20 to i64
  %44 = ptrtoint ptr %42 to i64
  %45 = sub i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = load i32, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %48 = shl i32 %46, 20
  %49 = and i32 %47, 1048575
  %50 = or disjoint i32 %48, %49
  store i32 %50, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %51 = load i8, ptr %20, align 1, !tbaa !5
  %52 = zext i8 %51 to i32
  %53 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 6, ptr noundef nonnull @.str.27, i32 noundef 2, ptr noundef nonnull @file_pos, i32 noundef %52) #10
  br label %886

54:                                               ; preds = %17, %54
  %55 = phi ptr [ %56, %54 ], [ %21, %17 ]
  %56 = getelementptr inbounds i8, ptr %55, i64 1
  %57 = load i8, ptr %55, align 1, !tbaa !5
  switch i8 %57, label %54 [
    i8 10, label %58
    i8 0, label %886
  ]

58:                                               ; preds = %54
  store ptr %56, ptr @chpt, align 8, !tbaa !10
  call fastcc void @srcnext()
  %59 = load i32, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %60 = add i32 %59, 1
  %61 = and i32 %60, 1048575
  store i32 %61, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %62 = load ptr, ptr @chpt, align 8, !tbaa !10
  %63 = getelementptr inbounds i8, ptr %62, i64 -1
  store ptr %63, ptr @startline, align 8, !tbaa !10
  br label %886

64:                                               ; preds = %17, %17
  %65 = add i8 %19, 1
  br label %886

66:                                               ; preds = %17
  %67 = add i8 %19, 8
  br label %886

68:                                               ; preds = %17
  store ptr %21, ptr @chpt, align 8, !tbaa !10
  call fastcc void @srcnext()
  %69 = load i32, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %70 = add i32 %69, 1
  %71 = and i32 %70, 1048575
  store i32 %71, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %72 = add i8 %18, 1
  %73 = load ptr, ptr @chpt, align 8, !tbaa !10
  %74 = getelementptr inbounds i8, ptr %73, i64 -1
  store ptr %74, ptr @startline, align 8, !tbaa !10
  br label %886

75:                                               ; preds = %17
  %76 = load i32, ptr @same_file, align 4, !tbaa !8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %110

78:                                               ; preds = %75
  %79 = load ptr, ptr @fp, align 8, !tbaa !10
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i16, ptr @this_file, align 2, !tbaa !24
  br label %92

83:                                               ; preds = %78
  %84 = call i32 @fclose(ptr noundef nonnull %79)
  store ptr null, ptr @fp, align 8, !tbaa !10
  %85 = load i16, ptr @ftype, align 2, !tbaa !24
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i16, ptr @this_file, align 2, !tbaa !24
  %89 = call zeroext i16 @NextFile(i16 noundef zeroext %88) #10
  br label %90

90:                                               ; preds = %83, %87
  %91 = phi i16 [ %89, %87 ], [ 0, %83 ]
  store i16 %91, ptr @this_file, align 2, !tbaa !24
  br label %92

92:                                               ; preds = %81, %90
  %93 = phi i16 [ %82, %81 ], [ %91, %90 ]
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %110, label %95

95:                                               ; preds = %92, %106
  %96 = phi i16 [ %108, %106 ], [ %93, %92 ]
  store i16 %96, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 2), align 2, !tbaa !32
  store i32 1, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %97 = call ptr @OpenFile(i16 noundef zeroext %96, i32 noundef 0, i32 noundef 1) #10
  store ptr %97, ptr @fp, align 8, !tbaa !10
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %113

99:                                               ; preds = %95
  %100 = load i16, ptr @this_file, align 2, !tbaa !24
  %101 = call ptr @FullFileName(i16 noundef zeroext %100) #10
  %102 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 7, ptr noundef nonnull @.str.28, i32 noundef 2, ptr noundef nonnull @file_pos, ptr noundef %101) #10
  %103 = load i16, ptr @ftype, align 2, !tbaa !24
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %99
  store i16 0, ptr @this_file, align 2, !tbaa !24
  br label %110

106:                                              ; preds = %99
  %107 = load i16, ptr @this_file, align 2, !tbaa !24
  %108 = call zeroext i16 @NextFile(i16 noundef zeroext %107) #10
  store i16 %108, ptr @this_file, align 2, !tbaa !24
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %110, label %95

110:                                              ; preds = %106, %105, %92, %75
  %111 = load ptr, ptr @fp, align 8, !tbaa !10
  %112 = icmp eq ptr %111, null
  br i1 %112, label %129, label %113

113:                                              ; preds = %95, %110
  %114 = phi ptr [ %111, %110 ], [ %97, %95 ]
  %115 = load i32, ptr @offset, align 4, !tbaa !8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %113
  %118 = sext i32 %115 to i64
  %119 = call i32 @fseek(ptr noundef nonnull %114, i64 noundef %118, i32 noundef 0)
  store i32 0, ptr @offset, align 4, !tbaa !8
  %120 = load i32, ptr @first_line_num, align 4, !tbaa !8
  %121 = load i32, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %122 = and i32 %120, 1048575
  %123 = and i32 %121, -1048576
  %124 = or disjoint i32 %123, %122
  store i32 %124, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  br label %125

125:                                              ; preds = %117, %113
  %126 = load ptr, ptr @buf, align 8, !tbaa !10
  store ptr %126, ptr @chpt, align 8, !tbaa !10
  store ptr %126, ptr @limit, align 8, !tbaa !10
  store ptr %126, ptr @frst, align 8, !tbaa !10
  store i32 0, ptr @blksize, align 4, !tbaa !8
  store i8 10, ptr @last_char, align 1, !tbaa !5
  call fastcc void @srcnext()
  %127 = load ptr, ptr @chpt, align 8, !tbaa !10
  %128 = getelementptr inbounds i8, ptr %127, i64 -1
  store ptr %128, ptr @startline, align 8, !tbaa !10
  br label %886

129:                                              ; preds = %110
  %130 = load i16, ptr @ftype, align 2, !tbaa !24
  switch i16 %130, label %140 [
    i16 0, label %131
    i16 3, label %131
    i16 10, label %135
    i16 1, label %138
  ]

131:                                              ; preds = %129, %129
  %132 = load ptr, ptr @StartSym, align 8, !tbaa !10
  %133 = call ptr @NewToken(i8 noundef zeroext 105, ptr noundef nonnull @file_pos, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 2, ptr noundef %132) #10
  %134 = call ptr @NewToken(i8 noundef zeroext 111, ptr noundef nonnull @file_pos, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null) #10
  store ptr %134, ptr @next_token, align 8, !tbaa !10
  store ptr %20, ptr @startline, align 8, !tbaa !10
  br label %886

135:                                              ; preds = %129
  %136 = load ptr, ptr @FilterOutSym, align 8, !tbaa !10
  %137 = call ptr @NewToken(i8 noundef zeroext 105, ptr noundef nonnull @file_pos, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 2, ptr noundef %136) #10
  store ptr %20, ptr @startline, align 8, !tbaa !10
  br label %886

138:                                              ; preds = %129
  call void @LexPop()
  %139 = load ptr, ptr @chpt, align 8, !tbaa !10
  br label %886

140:                                              ; preds = %129
  %141 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %142 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef %141, ptr noundef nonnull @.str.29) #10
  br label %886

143:                                              ; preds = %17
  %144 = load ptr, ptr @startline, align 8, !tbaa !10
  %145 = ptrtoint ptr %20 to i64
  %146 = ptrtoint ptr %144 to i64
  %147 = sub i64 %145, %146
  %148 = trunc i64 %147 to i32
  %149 = load i32, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %150 = shl i32 %148, 20
  %151 = and i32 %149, 1048575
  %152 = or disjoint i32 %150, %151
  store i32 %152, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  br label %153

153:                                              ; preds = %153, %143
  %154 = phi ptr [ %21, %143 ], [ %155, %153 ]
  %155 = getelementptr inbounds i8, ptr %154, i64 1
  %156 = load i8, ptr %154, align 1, !tbaa !5
  %157 = zext i8 %156 to i64
  %158 = getelementptr inbounds [256 x i8], ptr @chtbl, i64 0, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !5
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %153, label %161

161:                                              ; preds = %153
  %162 = ptrtoint ptr %155 to i64
  %163 = xor i64 %145, -1
  %164 = add i64 %162, %163
  %165 = trunc i64 %164 to i32
  br label %166

166:                                              ; preds = %166, %161
  %167 = phi i32 [ %165, %161 ], [ %170, %166 ]
  %168 = phi ptr [ %155, %161 ], [ %171, %166 ]
  %169 = call ptr @SearchSym(ptr noundef nonnull %20, i32 noundef %167) #10
  %170 = add nsw i32 %167, -1
  %171 = getelementptr inbounds i8, ptr %168, i64 -1
  %172 = icmp sgt i32 %167, 1
  %173 = icmp eq ptr %169, null
  %174 = select i1 %172, i1 %173, i1 false
  br i1 %174, label %166, label %198

175:                                              ; preds = %17
  %176 = load ptr, ptr @startline, align 8, !tbaa !10
  %177 = ptrtoint ptr %20 to i64
  %178 = ptrtoint ptr %176 to i64
  %179 = sub i64 %177, %178
  %180 = trunc i64 %179 to i32
  %181 = load i32, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %182 = shl i32 %180, 20
  %183 = and i32 %181, 1048575
  %184 = or disjoint i32 %182, %183
  store i32 %184, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  br label %185

185:                                              ; preds = %185, %175
  %186 = phi ptr [ %21, %175 ], [ %187, %185 ]
  %187 = getelementptr inbounds i8, ptr %186, i64 1
  %188 = load i8, ptr %186, align 1, !tbaa !5
  %189 = zext i8 %188 to i64
  %190 = getelementptr inbounds [256 x i8], ptr @chtbl, i64 0, i64 %189
  %191 = load i8, ptr %190, align 1, !tbaa !5
  %192 = icmp eq i8 %191, 1
  br i1 %192, label %185, label %193

193:                                              ; preds = %185
  %194 = ptrtoint ptr %186 to i64
  %195 = sub i64 %194, %177
  %196 = trunc i64 %195 to i32
  %197 = call ptr @SearchSym(ptr noundef nonnull %20, i32 noundef %196) #10
  br label %198

198:                                              ; preds = %166, %193
  %199 = phi ptr [ %197, %193 ], [ %169, %166 ]
  %200 = phi ptr [ %186, %193 ], [ %171, %166 ]
  %201 = icmp eq ptr %199, null
  br i1 %201, label %202, label %289

202:                                              ; preds = %198
  %203 = ptrtoint ptr %200 to i64
  %204 = ptrtoint ptr %20 to i64
  %205 = sub i64 %203, %204
  %206 = shl i64 %205, 32
  %207 = add i64 %206, 292057776128
  %208 = ashr exact i64 %207, 32
  %209 = lshr i64 %208, 3
  %210 = trunc i64 %209 to i32
  %211 = add i32 %210, 1
  store i32 %211, ptr @zz_size, align 4, !tbaa !8
  %212 = icmp ugt i32 %211, 264
  br i1 %212, label %213, label %216

213:                                              ; preds = %202
  %214 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.30, i32 noundef 1, ptr noundef nonnull @file_pos) #10
  %215 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  br label %225

216:                                              ; preds = %202
  %217 = zext nneg i32 %211 to i64
  %218 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %217
  %219 = load ptr, ptr %218, align 8, !tbaa !10
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %223

221:                                              ; preds = %216
  %222 = call ptr @GetMemory(i32 noundef %211, ptr noundef nonnull @file_pos) #10
  store ptr %222, ptr @zz_hold, align 8, !tbaa !10
  br label %225

223:                                              ; preds = %216
  store ptr %219, ptr @zz_hold, align 8, !tbaa !10
  %224 = load ptr, ptr %219, align 8, !tbaa !5
  store ptr %224, ptr %218, align 8, !tbaa !10
  br label %225

225:                                              ; preds = %221, %223, %213
  %226 = phi ptr [ %222, %221 ], [ %219, %223 ], [ %215, %213 ]
  %227 = ptrtoint ptr %226 to i64
  %228 = load i32, ptr @zz_size, align 4, !tbaa !8
  %229 = trunc i32 %228 to i8
  %230 = getelementptr inbounds %struct.word_type, ptr %226, i64 0, i32 1, i32 0, i32 1
  store i8 %229, ptr %230, align 1, !tbaa !5
  %231 = getelementptr inbounds %struct.word_type, ptr %226, i64 0, i32 1
  store i8 11, ptr %231, align 8, !tbaa !5
  %232 = getelementptr inbounds [2 x %struct.LIST], ptr %226, i64 0, i64 1, i32 1
  store ptr %226, ptr %232, align 8, !tbaa !5
  %233 = getelementptr inbounds [2 x %struct.LIST], ptr %226, i64 0, i64 1
  store ptr %226, ptr %233, align 8, !tbaa !5
  %234 = getelementptr inbounds %struct.LIST, ptr %226, i64 0, i32 1
  store ptr %226, ptr %234, align 8, !tbaa !5
  store ptr %226, ptr %226, align 8, !tbaa !5
  %235 = load i16, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 2), align 2, !tbaa !32
  %236 = getelementptr inbounds %struct.word_type, ptr %226, i64 0, i32 1, i32 0, i32 2
  store i16 %235, ptr %236, align 2, !tbaa !5
  %237 = load i32, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %238 = getelementptr inbounds %struct.word_type, ptr %226, i64 0, i32 1, i32 0, i32 3
  store i32 %237, ptr %238, align 4
  %239 = icmp sgt i64 %205, 0
  br i1 %239, label %240, label %286

240:                                              ; preds = %225
  %241 = icmp ult i64 %205, 8
  br i1 %241, label %277, label %242

242:                                              ; preds = %240
  %243 = add i64 %227, 64
  %244 = sub i64 %243, %204
  %245 = icmp ult i64 %244, 32
  br i1 %245, label %277, label %246

246:                                              ; preds = %242
  %247 = icmp ult i64 %205, 32
  br i1 %247, label %265, label %248

248:                                              ; preds = %246
  %249 = and i64 %205, 9223372036854775776
  br label %250

250:                                              ; preds = %250, %248
  %251 = phi i64 [ 0, %248 ], [ %258, %250 ]
  %252 = getelementptr inbounds i8, ptr %20, i64 %251
  %253 = getelementptr inbounds i8, ptr %252, i64 16
  %254 = load <16 x i8>, ptr %252, align 1, !tbaa !5
  %255 = load <16 x i8>, ptr %253, align 1, !tbaa !5
  %256 = getelementptr inbounds %struct.word_type, ptr %226, i64 0, i32 4, i64 %251
  %257 = getelementptr inbounds i8, ptr %256, i64 16
  store <16 x i8> %254, ptr %256, align 1, !tbaa !5
  store <16 x i8> %255, ptr %257, align 1, !tbaa !5
  %258 = add nuw i64 %251, 32
  %259 = icmp eq i64 %258, %249
  br i1 %259, label %260, label %250, !llvm.loop !35

260:                                              ; preds = %250
  %261 = icmp eq i64 %205, %249
  br i1 %261, label %286, label %262

262:                                              ; preds = %260
  %263 = and i64 %205, 24
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %277, label %265

265:                                              ; preds = %246, %262
  %266 = phi i64 [ %249, %262 ], [ 0, %246 ]
  %267 = and i64 %205, 9223372036854775800
  br label %268

268:                                              ; preds = %268, %265
  %269 = phi i64 [ %266, %265 ], [ %273, %268 ]
  %270 = getelementptr inbounds i8, ptr %20, i64 %269
  %271 = load <8 x i8>, ptr %270, align 1, !tbaa !5
  %272 = getelementptr inbounds %struct.word_type, ptr %226, i64 0, i32 4, i64 %269
  store <8 x i8> %271, ptr %272, align 1, !tbaa !5
  %273 = add nuw i64 %269, 8
  %274 = icmp eq i64 %273, %267
  br i1 %274, label %275, label %268, !llvm.loop !38

275:                                              ; preds = %268
  %276 = icmp eq i64 %205, %267
  br i1 %276, label %286, label %277

277:                                              ; preds = %242, %240, %262, %275
  %278 = phi i64 [ 0, %240 ], [ 0, %242 ], [ %249, %262 ], [ %267, %275 ]
  br label %279

279:                                              ; preds = %277, %279
  %280 = phi i64 [ %284, %279 ], [ %278, %277 ]
  %281 = getelementptr inbounds i8, ptr %20, i64 %280
  %282 = load i8, ptr %281, align 1, !tbaa !5
  %283 = getelementptr inbounds %struct.word_type, ptr %226, i64 0, i32 4, i64 %280
  store i8 %282, ptr %283, align 1, !tbaa !5
  %284 = add nuw nsw i64 %280, 1
  %285 = icmp eq i64 %284, %205
  br i1 %285, label %286, label %279, !llvm.loop !39

286:                                              ; preds = %279, %260, %275, %225
  %287 = phi i64 [ 0, %225 ], [ %205, %275 ], [ %205, %260 ], [ %205, %279 ]
  %288 = getelementptr inbounds %struct.word_type, ptr %226, i64 0, i32 4, i64 %287
  store i8 0, ptr %288, align 1, !tbaa !5
  br label %892

289:                                              ; preds = %198
  %290 = getelementptr inbounds %struct.word_type, ptr %199, i64 0, i32 1
  %291 = load i8, ptr %290, align 8, !tbaa !5
  %292 = icmp eq i8 %291, -114
  br i1 %292, label %293, label %402

293:                                              ; preds = %289
  %294 = getelementptr inbounds i8, ptr %199, i64 41
  %295 = load i24, ptr %294, align 1
  %296 = and i24 %295, 1024
  %297 = icmp eq i24 %296, 0
  br i1 %297, label %386, label %298

298:                                              ; preds = %293
  %299 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 8, ptr noundef nonnull @.str.31, i32 noundef 2, ptr noundef nonnull @file_pos) #10
  %300 = ptrtoint ptr %200 to i64
  %301 = ptrtoint ptr %20 to i64
  %302 = sub i64 %300, %301
  %303 = shl i64 %302, 32
  %304 = add i64 %303, 292057776128
  %305 = ashr exact i64 %304, 32
  %306 = lshr i64 %305, 3
  %307 = trunc i64 %306 to i32
  %308 = add i32 %307, 1
  store i32 %308, ptr @zz_size, align 4, !tbaa !8
  %309 = icmp ugt i32 %308, 264
  br i1 %309, label %310, label %313

310:                                              ; preds = %298
  %311 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.30, i32 noundef 1, ptr noundef nonnull @file_pos) #10
  %312 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  br label %322

313:                                              ; preds = %298
  %314 = zext nneg i32 %308 to i64
  %315 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %314
  %316 = load ptr, ptr %315, align 8, !tbaa !10
  %317 = icmp eq ptr %316, null
  br i1 %317, label %318, label %320

318:                                              ; preds = %313
  %319 = call ptr @GetMemory(i32 noundef %308, ptr noundef nonnull @file_pos) #10
  store ptr %319, ptr @zz_hold, align 8, !tbaa !10
  br label %322

320:                                              ; preds = %313
  store ptr %316, ptr @zz_hold, align 8, !tbaa !10
  %321 = load ptr, ptr %316, align 8, !tbaa !5
  store ptr %321, ptr %315, align 8, !tbaa !10
  br label %322

322:                                              ; preds = %318, %320, %310
  %323 = phi ptr [ %319, %318 ], [ %316, %320 ], [ %312, %310 ]
  %324 = ptrtoint ptr %323 to i64
  %325 = load i32, ptr @zz_size, align 4, !tbaa !8
  %326 = trunc i32 %325 to i8
  %327 = getelementptr inbounds %struct.word_type, ptr %323, i64 0, i32 1, i32 0, i32 1
  store i8 %326, ptr %327, align 1, !tbaa !5
  %328 = getelementptr inbounds %struct.word_type, ptr %323, i64 0, i32 1
  store i8 11, ptr %328, align 8, !tbaa !5
  %329 = getelementptr inbounds [2 x %struct.LIST], ptr %323, i64 0, i64 1, i32 1
  store ptr %323, ptr %329, align 8, !tbaa !5
  %330 = getelementptr inbounds [2 x %struct.LIST], ptr %323, i64 0, i64 1
  store ptr %323, ptr %330, align 8, !tbaa !5
  %331 = getelementptr inbounds %struct.LIST, ptr %323, i64 0, i32 1
  store ptr %323, ptr %331, align 8, !tbaa !5
  store ptr %323, ptr %323, align 8, !tbaa !5
  %332 = load i16, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 2), align 2, !tbaa !32
  %333 = getelementptr inbounds %struct.word_type, ptr %323, i64 0, i32 1, i32 0, i32 2
  store i16 %332, ptr %333, align 2, !tbaa !5
  %334 = load i32, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %335 = getelementptr inbounds %struct.word_type, ptr %323, i64 0, i32 1, i32 0, i32 3
  store i32 %334, ptr %335, align 4
  %336 = icmp sgt i64 %302, 0
  br i1 %336, label %337, label %383

337:                                              ; preds = %322
  %338 = icmp ult i64 %302, 8
  br i1 %338, label %374, label %339

339:                                              ; preds = %337
  %340 = add i64 %324, 64
  %341 = sub i64 %340, %301
  %342 = icmp ult i64 %341, 32
  br i1 %342, label %374, label %343

343:                                              ; preds = %339
  %344 = icmp ult i64 %302, 32
  br i1 %344, label %362, label %345

345:                                              ; preds = %343
  %346 = and i64 %302, 9223372036854775776
  br label %347

347:                                              ; preds = %347, %345
  %348 = phi i64 [ 0, %345 ], [ %355, %347 ]
  %349 = getelementptr inbounds i8, ptr %20, i64 %348
  %350 = getelementptr inbounds i8, ptr %349, i64 16
  %351 = load <16 x i8>, ptr %349, align 1, !tbaa !5
  %352 = load <16 x i8>, ptr %350, align 1, !tbaa !5
  %353 = getelementptr inbounds %struct.word_type, ptr %323, i64 0, i32 4, i64 %348
  %354 = getelementptr inbounds i8, ptr %353, i64 16
  store <16 x i8> %351, ptr %353, align 1, !tbaa !5
  store <16 x i8> %352, ptr %354, align 1, !tbaa !5
  %355 = add nuw i64 %348, 32
  %356 = icmp eq i64 %355, %346
  br i1 %356, label %357, label %347, !llvm.loop !40

357:                                              ; preds = %347
  %358 = icmp eq i64 %302, %346
  br i1 %358, label %383, label %359

359:                                              ; preds = %357
  %360 = and i64 %302, 24
  %361 = icmp eq i64 %360, 0
  br i1 %361, label %374, label %362

362:                                              ; preds = %343, %359
  %363 = phi i64 [ %346, %359 ], [ 0, %343 ]
  %364 = and i64 %302, 9223372036854775800
  br label %365

365:                                              ; preds = %365, %362
  %366 = phi i64 [ %363, %362 ], [ %370, %365 ]
  %367 = getelementptr inbounds i8, ptr %20, i64 %366
  %368 = load <8 x i8>, ptr %367, align 1, !tbaa !5
  %369 = getelementptr inbounds %struct.word_type, ptr %323, i64 0, i32 4, i64 %366
  store <8 x i8> %368, ptr %369, align 1, !tbaa !5
  %370 = add nuw i64 %366, 8
  %371 = icmp eq i64 %370, %364
  br i1 %371, label %372, label %365, !llvm.loop !41

372:                                              ; preds = %365
  %373 = icmp eq i64 %302, %364
  br i1 %373, label %383, label %374

374:                                              ; preds = %339, %337, %359, %372
  %375 = phi i64 [ 0, %337 ], [ 0, %339 ], [ %346, %359 ], [ %364, %372 ]
  br label %376

376:                                              ; preds = %374, %376
  %377 = phi i64 [ %381, %376 ], [ %375, %374 ]
  %378 = getelementptr inbounds i8, ptr %20, i64 %377
  %379 = load i8, ptr %378, align 1, !tbaa !5
  %380 = getelementptr inbounds %struct.word_type, ptr %323, i64 0, i32 4, i64 %377
  store i8 %379, ptr %380, align 1, !tbaa !5
  %381 = add nuw nsw i64 %377, 1
  %382 = icmp eq i64 %381, %302
  br i1 %382, label %383, label %376, !llvm.loop !42

383:                                              ; preds = %376, %357, %372, %322
  %384 = phi i64 [ 0, %322 ], [ %302, %372 ], [ %302, %357 ], [ %302, %376 ]
  %385 = getelementptr inbounds %struct.word_type, ptr %323, i64 0, i32 4, i64 %384
  store i8 0, ptr %385, align 1, !tbaa !5
  br label %892

386:                                              ; preds = %293
  %387 = getelementptr inbounds %struct.symbol_type, ptr %199, i64 0, i32 4
  %388 = load ptr, ptr %387, align 8, !tbaa !5
  %389 = call ptr @CopyTokenList(ptr noundef %388, ptr noundef nonnull @file_pos) #10
  %390 = icmp eq ptr %389, null
  br i1 %390, label %886, label %391

391:                                              ; preds = %386
  store ptr %389, ptr @zz_hold, align 8, !tbaa !10
  %392 = getelementptr inbounds [2 x %struct.LIST], ptr %389, i64 0, i64 1, i32 1
  %393 = load ptr, ptr %392, align 8, !tbaa !5
  %394 = icmp eq ptr %393, %389
  br i1 %394, label %400, label %395

395:                                              ; preds = %391
  store ptr %393, ptr @zz_res, align 8, !tbaa !10
  %396 = getelementptr inbounds [2 x %struct.LIST], ptr %389, i64 0, i64 1
  %397 = load ptr, ptr %396, align 8, !tbaa !5
  %398 = getelementptr inbounds [2 x %struct.LIST], ptr %393, i64 0, i64 1
  store ptr %397, ptr %398, align 8, !tbaa !5
  %399 = getelementptr inbounds [2 x %struct.LIST], ptr %397, i64 0, i64 1, i32 1
  store ptr %393, ptr %399, align 8, !tbaa !5
  store ptr %389, ptr %392, align 8, !tbaa !5
  store ptr %389, ptr %396, align 8, !tbaa !5
  br label %400

400:                                              ; preds = %391, %395
  %401 = phi ptr [ %393, %395 ], [ null, %391 ]
  store ptr %401, ptr @next_token, align 8, !tbaa !10
  br label %892

402:                                              ; preds = %289
  %403 = getelementptr inbounds %struct.symbol_type, ptr %199, i64 0, i32 12
  %404 = load i16, ptr %403, align 8, !tbaa !5
  switch i16 %404, label %546 [
    i16 0, label %405
    i16 112, label %409
    i16 113, label %409
    i16 105, label %542
  ]

405:                                              ; preds = %402
  %406 = getelementptr inbounds %struct.word_type, ptr %199, i64 0, i32 2
  %407 = load i8, ptr %406, align 8, !tbaa !5
  %408 = call ptr @NewToken(i8 noundef zeroext 2, ptr noundef nonnull @file_pos, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %407, ptr noundef nonnull %199) #10
  br label %886

409:                                              ; preds = %402, %402
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #10
  store ptr %200, ptr @chpt, align 8, !tbaa !10
  %410 = call ptr @LexGetToken()
  store ptr %410, ptr %1, align 8, !tbaa !10
  %411 = getelementptr inbounds %struct.word_type, ptr %410, i64 0, i32 1
  %412 = load i8, ptr %411, align 8, !tbaa !5
  switch i8 %412, label %417 [
    i8 11, label %413
    i8 102, label %474
  ]

413:                                              ; preds = %409
  %414 = getelementptr inbounds %struct.word_type, ptr %410, i64 0, i32 4
  %415 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %414, ptr noundef nonnull dereferenceable(2) @.str.32) #12
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %438, label %417

417:                                              ; preds = %409, %413
  %418 = call ptr @SymName(ptr noundef nonnull %199) #10
  %419 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 9, ptr noundef nonnull @.str.33, i32 noundef 2, ptr noundef nonnull %411, ptr noundef nonnull @.str.32, ptr noundef %418) #10
  %420 = load ptr, ptr %1, align 8, !tbaa !10
  store ptr %420, ptr @zz_hold, align 8, !tbaa !10
  %421 = getelementptr inbounds %struct.word_type, ptr %420, i64 0, i32 1
  %422 = load i8, ptr %421, align 8, !tbaa !5
  %423 = add i8 %422, -11
  %424 = icmp ult i8 %423, 2
  %425 = getelementptr inbounds %struct.word_type, ptr %420, i64 0, i32 1, i32 0, i32 1
  %426 = zext i8 %422 to i64
  %427 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %426
  %428 = select i1 %424, ptr %425, ptr %427
  %429 = load i8, ptr %428, align 1, !tbaa !5
  %430 = zext i8 %429 to i32
  store i32 %430, ptr @zz_size, align 4, !tbaa !8
  %431 = zext i8 %429 to i64
  %432 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %431
  %433 = load ptr, ptr %432, align 8, !tbaa !10
  store ptr %433, ptr %420, align 8, !tbaa !5
  %434 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %435 = load i32, ptr @zz_size, align 4, !tbaa !8
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %436
  store ptr %434, ptr %437, align 8, !tbaa !10
  br label %538

438:                                              ; preds = %413
  call void @UnSuppressScope() #10
  %439 = load ptr, ptr %1, align 8, !tbaa !10
  store ptr %439, ptr @zz_hold, align 8, !tbaa !10
  %440 = getelementptr inbounds %struct.word_type, ptr %439, i64 0, i32 1
  %441 = load i8, ptr %440, align 8, !tbaa !5
  %442 = add i8 %441, -11
  %443 = icmp ult i8 %442, 2
  %444 = getelementptr inbounds %struct.word_type, ptr %439, i64 0, i32 1, i32 0, i32 1
  %445 = zext i8 %441 to i64
  %446 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %445
  %447 = select i1 %443, ptr %444, ptr %446
  %448 = load i8, ptr %447, align 1, !tbaa !5
  %449 = zext i8 %448 to i32
  store i32 %449, ptr @zz_size, align 4, !tbaa !8
  %450 = zext i8 %448 to i64
  %451 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %450
  %452 = load ptr, ptr %451, align 8, !tbaa !10
  store ptr %452, ptr %439, align 8, !tbaa !5
  %453 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %454 = load i32, ptr @zz_size, align 4, !tbaa !8
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %455
  store ptr %453, ptr %456, align 8, !tbaa !10
  %457 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 102), align 1, !tbaa !5
  %458 = zext i8 %457 to i32
  store i32 %458, ptr @zz_size, align 4, !tbaa !8
  %459 = zext i8 %457 to i64
  %460 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %459
  %461 = load ptr, ptr %460, align 8, !tbaa !10
  %462 = icmp eq ptr %461, null
  br i1 %462, label %463, label %466

463:                                              ; preds = %438
  %464 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %465 = call ptr @GetMemory(i32 noundef %458, ptr noundef %464) #10
  store ptr %465, ptr @zz_hold, align 8, !tbaa !10
  br label %468

466:                                              ; preds = %438
  store ptr %461, ptr @zz_hold, align 8, !tbaa !10
  %467 = load ptr, ptr %461, align 8, !tbaa !5
  store ptr %467, ptr %460, align 8, !tbaa !10
  br label %468

468:                                              ; preds = %463, %466
  %469 = phi ptr [ %465, %463 ], [ %461, %466 ]
  %470 = getelementptr inbounds %struct.word_type, ptr %469, i64 0, i32 1
  store i8 102, ptr %470, align 8, !tbaa !5
  %471 = getelementptr inbounds [2 x %struct.LIST], ptr %469, i64 0, i64 1, i32 1
  store ptr %469, ptr %471, align 8, !tbaa !5
  %472 = getelementptr inbounds [2 x %struct.LIST], ptr %469, i64 0, i64 1
  store ptr %469, ptr %472, align 8, !tbaa !5
  %473 = getelementptr inbounds %struct.LIST, ptr %469, i64 0, i32 1
  store ptr %469, ptr %473, align 8, !tbaa !5
  store ptr %469, ptr %469, align 8, !tbaa !5
  store ptr %469, ptr %1, align 8, !tbaa !10
  br label %474

474:                                              ; preds = %409, %468
  %475 = phi i1 [ true, %468 ], [ false, %409 ]
  %476 = call ptr @Parse(ptr noundef nonnull %1, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %477 = call ptr @ReplaceWithTidy(ptr noundef %476, i32 noundef 0) #10
  br i1 %475, label %478, label %479

478:                                              ; preds = %474
  call void @SuppressScope() #10
  br label %479

479:                                              ; preds = %478, %474
  %480 = getelementptr inbounds %struct.word_type, ptr %477, i64 0, i32 1
  %481 = load i8, ptr %480, align 8, !tbaa !5
  %482 = add i8 %481, -11
  %483 = icmp ult i8 %482, 2
  br i1 %483, label %502, label %484

484:                                              ; preds = %479
  %485 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 10, ptr noundef nonnull @.str.34, i32 noundef 2, ptr noundef nonnull %480) #10
  store ptr %477, ptr @zz_hold, align 8, !tbaa !10
  %486 = load i8, ptr %480, align 8, !tbaa !5
  %487 = add i8 %486, -11
  %488 = icmp ult i8 %487, 2
  %489 = getelementptr inbounds %struct.word_type, ptr %477, i64 0, i32 1, i32 0, i32 1
  %490 = zext i8 %486 to i64
  %491 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %490
  %492 = select i1 %488, ptr %489, ptr %491
  %493 = load i8, ptr %492, align 1, !tbaa !5
  %494 = zext i8 %493 to i32
  store i32 %494, ptr @zz_size, align 4, !tbaa !8
  %495 = zext i8 %493 to i64
  %496 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %495
  %497 = load ptr, ptr %496, align 8, !tbaa !10
  store ptr %497, ptr %477, align 8, !tbaa !5
  %498 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %499 = load i32, ptr @zz_size, align 4, !tbaa !8
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %500
  store ptr %498, ptr %501, align 8, !tbaa !10
  br label %538

502:                                              ; preds = %479
  %503 = getelementptr inbounds %struct.word_type, ptr %477, i64 0, i32 4
  %504 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %503) #12
  %505 = trunc i64 %504 to i32
  %506 = add i32 %505, -3
  %507 = icmp sgt i32 %506, -1
  br i1 %507, label %508, label %514

508:                                              ; preds = %502
  %509 = zext nneg i32 %506 to i64
  %510 = getelementptr inbounds %struct.word_type, ptr %477, i64 0, i32 4, i64 %509
  %511 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %510, ptr noundef nonnull dereferenceable(4) @.str.35) #12
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %514

513:                                              ; preds = %508
  store i8 0, ptr %510, align 1
  br label %514

514:                                              ; preds = %513, %508, %502
  %515 = load i16, ptr %403, align 8, !tbaa !5
  %516 = icmp eq i16 %515, 112
  %517 = select i1 %516, i32 1, i32 2
  %518 = call zeroext i16 @DefineFile(ptr noundef nonnull %503, ptr noundef nonnull @.str.36, ptr noundef nonnull %480, i32 noundef 1, i32 noundef %517) #10
  store ptr %477, ptr @zz_hold, align 8, !tbaa !10
  %519 = load i8, ptr %480, align 8, !tbaa !5
  %520 = add i8 %519, -11
  %521 = icmp ult i8 %520, 2
  %522 = getelementptr inbounds %struct.word_type, ptr %477, i64 0, i32 1, i32 0, i32 1
  %523 = zext i8 %519 to i64
  %524 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %523
  %525 = select i1 %521, ptr %522, ptr %524
  %526 = load i8, ptr %525, align 1, !tbaa !5
  %527 = zext i8 %526 to i32
  store i32 %527, ptr @zz_size, align 4, !tbaa !8
  %528 = zext i8 %526 to i64
  %529 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %528
  %530 = load ptr, ptr %529, align 8, !tbaa !10
  store ptr %530, ptr %477, align 8, !tbaa !5
  %531 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %532 = load i32, ptr @zz_size, align 4, !tbaa !8
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %533
  store ptr %531, ptr %534, align 8, !tbaa !10
  call void @LexPush(i16 noundef zeroext %518, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  %535 = call ptr @LexGetToken()
  %536 = add i8 %18, 1
  %537 = load ptr, ptr @chpt, align 8, !tbaa !10
  br label %538

538:                                              ; preds = %514, %484, %417
  %539 = phi ptr [ %535, %514 ], [ null, %484 ], [ null, %417 ]
  %540 = phi i8 [ %536, %514 ], [ %18, %484 ], [ %18, %417 ]
  %541 = phi ptr [ %537, %514 ], [ %200, %484 ], [ %200, %417 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #10
  br label %886

542:                                              ; preds = %402
  %543 = getelementptr inbounds %struct.word_type, ptr %199, i64 0, i32 2
  %544 = load i8, ptr %543, align 8, !tbaa !5
  %545 = call ptr @NewToken(i8 noundef zeroext 105, ptr noundef nonnull @file_pos, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %544, ptr noundef null) #10
  br label %886

546:                                              ; preds = %402
  %547 = trunc i16 %404 to i8
  %548 = getelementptr inbounds %struct.word_type, ptr %199, i64 0, i32 2
  %549 = load i8, ptr %548, align 8, !tbaa !5
  %550 = call ptr @NewToken(i8 noundef zeroext %547, ptr noundef nonnull @file_pos, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %549, ptr noundef nonnull %199) #10
  br label %886

551:                                              ; preds = %17
  %552 = ptrtoint ptr %20 to i64
  %553 = load ptr, ptr @startline, align 8, !tbaa !10
  %554 = ptrtoint ptr %20 to i64
  %555 = ptrtoint ptr %553 to i64
  %556 = sub i64 %554, %555
  %557 = trunc i64 %556 to i32
  %558 = load i32, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %559 = shl i32 %557, 20
  %560 = and i32 %558, 1048575
  %561 = or disjoint i32 %559, %560
  store i32 %561, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  br label %562

562:                                              ; preds = %874, %551
  %563 = phi ptr [ %21, %551 ], [ %875, %874 ]
  %564 = phi ptr [ %21, %551 ], [ %876, %874 ]
  %565 = getelementptr inbounds i8, ptr %564, i64 1
  %566 = load i8, ptr %564, align 1, !tbaa !5
  %567 = getelementptr inbounds i8, ptr %563, i64 1
  store i8 %566, ptr %563, align 1, !tbaa !5
  %568 = zext i8 %566 to i64
  %569 = getelementptr inbounds [256 x i8], ptr @chtbl, i64 0, i64 %568
  %570 = load i8, ptr %569, align 1, !tbaa !5
  switch i8 %570, label %881 [
    i8 0, label %874
    i8 1, label %874
    i8 4, label %874
    i8 5, label %874
    i8 6, label %874
    i8 7, label %874
    i8 8, label %571
    i8 9, label %571
    i8 2, label %659
    i8 3, label %746
  ]

571:                                              ; preds = %562, %562
  %572 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 11, ptr noundef nonnull @.str.37, i32 noundef 2, ptr noundef nonnull @file_pos) #10
  %573 = ptrtoint ptr %563 to i64
  %574 = ptrtoint ptr %21 to i64
  %575 = sub i64 %573, %574
  %576 = shl i64 %575, 32
  %577 = add i64 %576, 292057776128
  %578 = ashr exact i64 %577, 32
  %579 = lshr i64 %578, 3
  %580 = trunc i64 %579 to i32
  %581 = add i32 %580, 1
  store i32 %581, ptr @zz_size, align 4, !tbaa !8
  %582 = icmp ugt i32 %581, 264
  br i1 %582, label %583, label %586

583:                                              ; preds = %571
  %584 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.30, i32 noundef 1, ptr noundef nonnull @file_pos) #10
  %585 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  br label %595

586:                                              ; preds = %571
  %587 = zext nneg i32 %581 to i64
  %588 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %587
  %589 = load ptr, ptr %588, align 8, !tbaa !10
  %590 = icmp eq ptr %589, null
  br i1 %590, label %591, label %593

591:                                              ; preds = %586
  %592 = call ptr @GetMemory(i32 noundef %581, ptr noundef nonnull @file_pos) #10
  store ptr %592, ptr @zz_hold, align 8, !tbaa !10
  br label %595

593:                                              ; preds = %586
  store ptr %589, ptr @zz_hold, align 8, !tbaa !10
  %594 = load ptr, ptr %589, align 8, !tbaa !5
  store ptr %594, ptr %588, align 8, !tbaa !10
  br label %595

595:                                              ; preds = %591, %593, %583
  %596 = phi ptr [ %592, %591 ], [ %589, %593 ], [ %585, %583 ]
  %597 = ptrtoint ptr %596 to i64
  %598 = load i32, ptr @zz_size, align 4, !tbaa !8
  %599 = trunc i32 %598 to i8
  %600 = getelementptr inbounds %struct.word_type, ptr %596, i64 0, i32 1, i32 0, i32 1
  store i8 %599, ptr %600, align 1, !tbaa !5
  %601 = getelementptr inbounds %struct.word_type, ptr %596, i64 0, i32 1
  store i8 12, ptr %601, align 8, !tbaa !5
  %602 = getelementptr inbounds [2 x %struct.LIST], ptr %596, i64 0, i64 1, i32 1
  store ptr %596, ptr %602, align 8, !tbaa !5
  %603 = getelementptr inbounds [2 x %struct.LIST], ptr %596, i64 0, i64 1
  store ptr %596, ptr %603, align 8, !tbaa !5
  %604 = getelementptr inbounds %struct.LIST, ptr %596, i64 0, i32 1
  store ptr %596, ptr %604, align 8, !tbaa !5
  store ptr %596, ptr %596, align 8, !tbaa !5
  %605 = load i16, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 2), align 2, !tbaa !32
  %606 = getelementptr inbounds %struct.word_type, ptr %596, i64 0, i32 1, i32 0, i32 2
  store i16 %605, ptr %606, align 2, !tbaa !5
  %607 = load i32, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %608 = getelementptr inbounds %struct.word_type, ptr %596, i64 0, i32 1, i32 0, i32 3
  store i32 %607, ptr %608, align 4
  %609 = icmp sgt i64 %575, 0
  br i1 %609, label %610, label %656

610:                                              ; preds = %595
  %611 = icmp ult i64 %575, 8
  br i1 %611, label %647, label %612

612:                                              ; preds = %610
  %613 = add i64 %597, 63
  %614 = sub i64 %613, %552
  %615 = icmp ult i64 %614, 32
  br i1 %615, label %647, label %616

616:                                              ; preds = %612
  %617 = icmp ult i64 %575, 32
  br i1 %617, label %635, label %618

618:                                              ; preds = %616
  %619 = and i64 %575, 9223372036854775776
  br label %620

620:                                              ; preds = %620, %618
  %621 = phi i64 [ 0, %618 ], [ %628, %620 ]
  %622 = getelementptr inbounds i8, ptr %21, i64 %621
  %623 = getelementptr inbounds i8, ptr %622, i64 16
  %624 = load <16 x i8>, ptr %622, align 1, !tbaa !5
  %625 = load <16 x i8>, ptr %623, align 1, !tbaa !5
  %626 = getelementptr inbounds %struct.word_type, ptr %596, i64 0, i32 4, i64 %621
  %627 = getelementptr inbounds i8, ptr %626, i64 16
  store <16 x i8> %624, ptr %626, align 1, !tbaa !5
  store <16 x i8> %625, ptr %627, align 1, !tbaa !5
  %628 = add nuw i64 %621, 32
  %629 = icmp eq i64 %628, %619
  br i1 %629, label %630, label %620, !llvm.loop !43

630:                                              ; preds = %620
  %631 = icmp eq i64 %575, %619
  br i1 %631, label %656, label %632

632:                                              ; preds = %630
  %633 = and i64 %575, 24
  %634 = icmp eq i64 %633, 0
  br i1 %634, label %647, label %635

635:                                              ; preds = %616, %632
  %636 = phi i64 [ %619, %632 ], [ 0, %616 ]
  %637 = and i64 %575, 9223372036854775800
  br label %638

638:                                              ; preds = %638, %635
  %639 = phi i64 [ %636, %635 ], [ %643, %638 ]
  %640 = getelementptr inbounds i8, ptr %21, i64 %639
  %641 = load <8 x i8>, ptr %640, align 1, !tbaa !5
  %642 = getelementptr inbounds %struct.word_type, ptr %596, i64 0, i32 4, i64 %639
  store <8 x i8> %641, ptr %642, align 1, !tbaa !5
  %643 = add nuw i64 %639, 8
  %644 = icmp eq i64 %643, %637
  br i1 %644, label %645, label %638, !llvm.loop !44

645:                                              ; preds = %638
  %646 = icmp eq i64 %575, %637
  br i1 %646, label %656, label %647

647:                                              ; preds = %612, %610, %632, %645
  %648 = phi i64 [ 0, %610 ], [ 0, %612 ], [ %619, %632 ], [ %637, %645 ]
  br label %649

649:                                              ; preds = %647, %649
  %650 = phi i64 [ %654, %649 ], [ %648, %647 ]
  %651 = getelementptr inbounds i8, ptr %21, i64 %650
  %652 = load i8, ptr %651, align 1, !tbaa !5
  %653 = getelementptr inbounds %struct.word_type, ptr %596, i64 0, i32 4, i64 %650
  store i8 %652, ptr %653, align 1, !tbaa !5
  %654 = add nuw nsw i64 %650, 1
  %655 = icmp eq i64 %654, %575
  br i1 %655, label %656, label %649, !llvm.loop !45

656:                                              ; preds = %649, %630, %645, %595
  %657 = phi i64 [ 0, %595 ], [ %575, %645 ], [ %575, %630 ], [ %575, %649 ]
  %658 = getelementptr inbounds %struct.word_type, ptr %596, i64 0, i32 4, i64 %657
  store i8 0, ptr %658, align 1, !tbaa !5
  br label %892

659:                                              ; preds = %562
  %660 = ptrtoint ptr %563 to i64
  %661 = ptrtoint ptr %21 to i64
  %662 = sub i64 %660, %661
  %663 = shl i64 %662, 32
  %664 = add i64 %663, 292057776128
  %665 = ashr exact i64 %664, 32
  %666 = lshr i64 %665, 3
  %667 = trunc i64 %666 to i32
  %668 = add i32 %667, 1
  store i32 %668, ptr @zz_size, align 4, !tbaa !8
  %669 = icmp ugt i32 %668, 264
  br i1 %669, label %670, label %673

670:                                              ; preds = %659
  %671 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.30, i32 noundef 1, ptr noundef nonnull @file_pos) #10
  %672 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  br label %682

673:                                              ; preds = %659
  %674 = zext nneg i32 %668 to i64
  %675 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %674
  %676 = load ptr, ptr %675, align 8, !tbaa !10
  %677 = icmp eq ptr %676, null
  br i1 %677, label %678, label %680

678:                                              ; preds = %673
  %679 = call ptr @GetMemory(i32 noundef %668, ptr noundef nonnull @file_pos) #10
  store ptr %679, ptr @zz_hold, align 8, !tbaa !10
  br label %682

680:                                              ; preds = %673
  store ptr %676, ptr @zz_hold, align 8, !tbaa !10
  %681 = load ptr, ptr %676, align 8, !tbaa !5
  store ptr %681, ptr %675, align 8, !tbaa !10
  br label %682

682:                                              ; preds = %678, %680, %670
  %683 = phi ptr [ %679, %678 ], [ %676, %680 ], [ %672, %670 ]
  %684 = ptrtoint ptr %683 to i64
  %685 = load i32, ptr @zz_size, align 4, !tbaa !8
  %686 = trunc i32 %685 to i8
  %687 = getelementptr inbounds %struct.word_type, ptr %683, i64 0, i32 1, i32 0, i32 1
  store i8 %686, ptr %687, align 1, !tbaa !5
  %688 = getelementptr inbounds %struct.word_type, ptr %683, i64 0, i32 1
  store i8 12, ptr %688, align 8, !tbaa !5
  %689 = getelementptr inbounds [2 x %struct.LIST], ptr %683, i64 0, i64 1, i32 1
  store ptr %683, ptr %689, align 8, !tbaa !5
  %690 = getelementptr inbounds [2 x %struct.LIST], ptr %683, i64 0, i64 1
  store ptr %683, ptr %690, align 8, !tbaa !5
  %691 = getelementptr inbounds %struct.LIST, ptr %683, i64 0, i32 1
  store ptr %683, ptr %691, align 8, !tbaa !5
  store ptr %683, ptr %683, align 8, !tbaa !5
  %692 = load i16, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 2), align 2, !tbaa !32
  %693 = getelementptr inbounds %struct.word_type, ptr %683, i64 0, i32 1, i32 0, i32 2
  store i16 %692, ptr %693, align 2, !tbaa !5
  %694 = load i32, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %695 = getelementptr inbounds %struct.word_type, ptr %683, i64 0, i32 1, i32 0, i32 3
  store i32 %694, ptr %695, align 4
  %696 = icmp sgt i64 %662, 0
  br i1 %696, label %697, label %743

697:                                              ; preds = %682
  %698 = icmp ult i64 %662, 8
  br i1 %698, label %734, label %699

699:                                              ; preds = %697
  %700 = add i64 %684, 63
  %701 = sub i64 %700, %552
  %702 = icmp ult i64 %701, 32
  br i1 %702, label %734, label %703

703:                                              ; preds = %699
  %704 = icmp ult i64 %662, 32
  br i1 %704, label %722, label %705

705:                                              ; preds = %703
  %706 = and i64 %662, 9223372036854775776
  br label %707

707:                                              ; preds = %707, %705
  %708 = phi i64 [ 0, %705 ], [ %715, %707 ]
  %709 = getelementptr inbounds i8, ptr %21, i64 %708
  %710 = getelementptr inbounds i8, ptr %709, i64 16
  %711 = load <16 x i8>, ptr %709, align 1, !tbaa !5
  %712 = load <16 x i8>, ptr %710, align 1, !tbaa !5
  %713 = getelementptr inbounds %struct.word_type, ptr %683, i64 0, i32 4, i64 %708
  %714 = getelementptr inbounds i8, ptr %713, i64 16
  store <16 x i8> %711, ptr %713, align 1, !tbaa !5
  store <16 x i8> %712, ptr %714, align 1, !tbaa !5
  %715 = add nuw i64 %708, 32
  %716 = icmp eq i64 %715, %706
  br i1 %716, label %717, label %707, !llvm.loop !46

717:                                              ; preds = %707
  %718 = icmp eq i64 %662, %706
  br i1 %718, label %743, label %719

719:                                              ; preds = %717
  %720 = and i64 %662, 24
  %721 = icmp eq i64 %720, 0
  br i1 %721, label %734, label %722

722:                                              ; preds = %703, %719
  %723 = phi i64 [ %706, %719 ], [ 0, %703 ]
  %724 = and i64 %662, 9223372036854775800
  br label %725

725:                                              ; preds = %725, %722
  %726 = phi i64 [ %723, %722 ], [ %730, %725 ]
  %727 = getelementptr inbounds i8, ptr %21, i64 %726
  %728 = load <8 x i8>, ptr %727, align 1, !tbaa !5
  %729 = getelementptr inbounds %struct.word_type, ptr %683, i64 0, i32 4, i64 %726
  store <8 x i8> %728, ptr %729, align 1, !tbaa !5
  %730 = add nuw i64 %726, 8
  %731 = icmp eq i64 %730, %724
  br i1 %731, label %732, label %725, !llvm.loop !47

732:                                              ; preds = %725
  %733 = icmp eq i64 %662, %724
  br i1 %733, label %743, label %734

734:                                              ; preds = %699, %697, %719, %732
  %735 = phi i64 [ 0, %697 ], [ 0, %699 ], [ %706, %719 ], [ %724, %732 ]
  br label %736

736:                                              ; preds = %734, %736
  %737 = phi i64 [ %741, %736 ], [ %735, %734 ]
  %738 = getelementptr inbounds i8, ptr %21, i64 %737
  %739 = load i8, ptr %738, align 1, !tbaa !5
  %740 = getelementptr inbounds %struct.word_type, ptr %683, i64 0, i32 4, i64 %737
  store i8 %739, ptr %740, align 1, !tbaa !5
  %741 = add nuw nsw i64 %737, 1
  %742 = icmp eq i64 %741, %662
  br i1 %742, label %743, label %736, !llvm.loop !48

743:                                              ; preds = %736, %717, %732, %682
  %744 = phi i64 [ 0, %682 ], [ %662, %732 ], [ %662, %717 ], [ %662, %736 ]
  %745 = getelementptr inbounds %struct.word_type, ptr %683, i64 0, i32 4, i64 %744
  store i8 0, ptr %745, align 1, !tbaa !5
  br label %892

746:                                              ; preds = %562
  %747 = load i8, ptr %565, align 1, !tbaa !5
  %748 = zext i8 %747 to i64
  %749 = getelementptr inbounds [256 x i8], ptr @chtbl, i64 0, i64 %748
  %750 = load i8, ptr %749, align 1, !tbaa !5
  %751 = and i8 %750, -2
  %752 = icmp eq i8 %751, 8
  br i1 %752, label %753, label %841

753:                                              ; preds = %746
  %754 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 12, ptr noundef nonnull @.str.37, i32 noundef 2, ptr noundef nonnull @file_pos) #10
  %755 = ptrtoint ptr %563 to i64
  %756 = ptrtoint ptr %21 to i64
  %757 = sub i64 %755, %756
  %758 = shl i64 %757, 32
  %759 = add i64 %758, 292057776128
  %760 = ashr exact i64 %759, 32
  %761 = lshr i64 %760, 3
  %762 = trunc i64 %761 to i32
  %763 = add i32 %762, 1
  store i32 %763, ptr @zz_size, align 4, !tbaa !8
  %764 = icmp ugt i32 %763, 264
  br i1 %764, label %765, label %768

765:                                              ; preds = %753
  %766 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.30, i32 noundef 1, ptr noundef nonnull @file_pos) #10
  %767 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  br label %777

768:                                              ; preds = %753
  %769 = zext nneg i32 %763 to i64
  %770 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %769
  %771 = load ptr, ptr %770, align 8, !tbaa !10
  %772 = icmp eq ptr %771, null
  br i1 %772, label %773, label %775

773:                                              ; preds = %768
  %774 = call ptr @GetMemory(i32 noundef %763, ptr noundef nonnull @file_pos) #10
  store ptr %774, ptr @zz_hold, align 8, !tbaa !10
  br label %777

775:                                              ; preds = %768
  store ptr %771, ptr @zz_hold, align 8, !tbaa !10
  %776 = load ptr, ptr %771, align 8, !tbaa !5
  store ptr %776, ptr %770, align 8, !tbaa !10
  br label %777

777:                                              ; preds = %773, %775, %765
  %778 = phi ptr [ %774, %773 ], [ %771, %775 ], [ %767, %765 ]
  %779 = ptrtoint ptr %778 to i64
  %780 = load i32, ptr @zz_size, align 4, !tbaa !8
  %781 = trunc i32 %780 to i8
  %782 = getelementptr inbounds %struct.word_type, ptr %778, i64 0, i32 1, i32 0, i32 1
  store i8 %781, ptr %782, align 1, !tbaa !5
  %783 = getelementptr inbounds %struct.word_type, ptr %778, i64 0, i32 1
  store i8 12, ptr %783, align 8, !tbaa !5
  %784 = getelementptr inbounds [2 x %struct.LIST], ptr %778, i64 0, i64 1, i32 1
  store ptr %778, ptr %784, align 8, !tbaa !5
  %785 = getelementptr inbounds [2 x %struct.LIST], ptr %778, i64 0, i64 1
  store ptr %778, ptr %785, align 8, !tbaa !5
  %786 = getelementptr inbounds %struct.LIST, ptr %778, i64 0, i32 1
  store ptr %778, ptr %786, align 8, !tbaa !5
  store ptr %778, ptr %778, align 8, !tbaa !5
  %787 = load i16, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 2), align 2, !tbaa !32
  %788 = getelementptr inbounds %struct.word_type, ptr %778, i64 0, i32 1, i32 0, i32 2
  store i16 %787, ptr %788, align 2, !tbaa !5
  %789 = load i32, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %790 = getelementptr inbounds %struct.word_type, ptr %778, i64 0, i32 1, i32 0, i32 3
  store i32 %789, ptr %790, align 4
  %791 = icmp sgt i64 %757, 0
  br i1 %791, label %792, label %838

792:                                              ; preds = %777
  %793 = icmp ult i64 %757, 8
  br i1 %793, label %829, label %794

794:                                              ; preds = %792
  %795 = add i64 %779, 63
  %796 = sub i64 %795, %552
  %797 = icmp ult i64 %796, 32
  br i1 %797, label %829, label %798

798:                                              ; preds = %794
  %799 = icmp ult i64 %757, 32
  br i1 %799, label %817, label %800

800:                                              ; preds = %798
  %801 = and i64 %757, 9223372036854775776
  br label %802

802:                                              ; preds = %802, %800
  %803 = phi i64 [ 0, %800 ], [ %810, %802 ]
  %804 = getelementptr inbounds i8, ptr %21, i64 %803
  %805 = getelementptr inbounds i8, ptr %804, i64 16
  %806 = load <16 x i8>, ptr %804, align 1, !tbaa !5
  %807 = load <16 x i8>, ptr %805, align 1, !tbaa !5
  %808 = getelementptr inbounds %struct.word_type, ptr %778, i64 0, i32 4, i64 %803
  %809 = getelementptr inbounds i8, ptr %808, i64 16
  store <16 x i8> %806, ptr %808, align 1, !tbaa !5
  store <16 x i8> %807, ptr %809, align 1, !tbaa !5
  %810 = add nuw i64 %803, 32
  %811 = icmp eq i64 %810, %801
  br i1 %811, label %812, label %802, !llvm.loop !49

812:                                              ; preds = %802
  %813 = icmp eq i64 %757, %801
  br i1 %813, label %838, label %814

814:                                              ; preds = %812
  %815 = and i64 %757, 24
  %816 = icmp eq i64 %815, 0
  br i1 %816, label %829, label %817

817:                                              ; preds = %798, %814
  %818 = phi i64 [ %801, %814 ], [ 0, %798 ]
  %819 = and i64 %757, 9223372036854775800
  br label %820

820:                                              ; preds = %820, %817
  %821 = phi i64 [ %818, %817 ], [ %825, %820 ]
  %822 = getelementptr inbounds i8, ptr %21, i64 %821
  %823 = load <8 x i8>, ptr %822, align 1, !tbaa !5
  %824 = getelementptr inbounds %struct.word_type, ptr %778, i64 0, i32 4, i64 %821
  store <8 x i8> %823, ptr %824, align 1, !tbaa !5
  %825 = add nuw i64 %821, 8
  %826 = icmp eq i64 %825, %819
  br i1 %826, label %827, label %820, !llvm.loop !50

827:                                              ; preds = %820
  %828 = icmp eq i64 %757, %819
  br i1 %828, label %838, label %829

829:                                              ; preds = %794, %792, %814, %827
  %830 = phi i64 [ 0, %792 ], [ 0, %794 ], [ %801, %814 ], [ %819, %827 ]
  br label %831

831:                                              ; preds = %829, %831
  %832 = phi i64 [ %836, %831 ], [ %830, %829 ]
  %833 = getelementptr inbounds i8, ptr %21, i64 %832
  %834 = load i8, ptr %833, align 1, !tbaa !5
  %835 = getelementptr inbounds %struct.word_type, ptr %778, i64 0, i32 4, i64 %832
  store i8 %834, ptr %835, align 1, !tbaa !5
  %836 = add nuw nsw i64 %832, 1
  %837 = icmp eq i64 %836, %757
  br i1 %837, label %838, label %831, !llvm.loop !51

838:                                              ; preds = %831, %812, %827, %777
  %839 = phi i64 [ 0, %777 ], [ %757, %827 ], [ %757, %812 ], [ %757, %831 ]
  %840 = getelementptr inbounds %struct.word_type, ptr %778, i64 0, i32 4, i64 %839
  store i8 0, ptr %840, align 1, !tbaa !5
  br label %892

841:                                              ; preds = %746
  %842 = and i8 %747, -8
  %843 = icmp eq i8 %842, 48
  br i1 %843, label %844, label %879

844:                                              ; preds = %841
  %845 = getelementptr inbounds i8, ptr %564, i64 2
  %846 = zext nneg i8 %747 to i32
  %847 = add nsw i32 %846, -48
  %848 = load i8, ptr %845, align 1, !tbaa !5
  %849 = icmp ugt i8 %848, 47
  %850 = icmp ult i8 %848, 56
  %851 = and i1 %849, %850
  br i1 %851, label %852, label %868

852:                                              ; preds = %844
  %853 = shl nuw nsw i32 %847, 3
  %854 = getelementptr inbounds i8, ptr %564, i64 3
  %855 = zext nneg i8 %848 to i32
  %856 = add nsw i32 %853, -48
  %857 = add nsw i32 %856, %855
  %858 = load i8, ptr %854, align 1, !tbaa !5
  %859 = icmp ugt i8 %858, 47
  %860 = icmp ult i8 %858, 56
  %861 = and i1 %859, %860
  br i1 %861, label %862, label %868

862:                                              ; preds = %852
  %863 = shl nsw i32 %857, 3
  %864 = getelementptr inbounds i8, ptr %564, i64 4
  %865 = zext nneg i8 %858 to i32
  %866 = add nsw i32 %863, -48
  %867 = add i32 %866, %865
  br label %868

868:                                              ; preds = %862, %852, %844
  %869 = phi ptr [ %845, %844 ], [ %854, %852 ], [ %864, %862 ]
  %870 = phi i32 [ %847, %844 ], [ %857, %852 ], [ %867, %862 ]
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %872, label %877

872:                                              ; preds = %868
  %873 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 13, ptr noundef nonnull @.str.38, i32 noundef 2, ptr noundef nonnull @file_pos) #10
  br label %874

874:                                              ; preds = %872, %877, %881, %562, %562, %562, %562, %562, %562, %879
  %875 = phi ptr [ %567, %881 ], [ %567, %879 ], [ %567, %562 ], [ %567, %562 ], [ %567, %562 ], [ %567, %562 ], [ %567, %562 ], [ %567, %562 ], [ %563, %872 ], [ %567, %877 ]
  %876 = phi ptr [ %565, %881 ], [ %880, %879 ], [ %565, %562 ], [ %565, %562 ], [ %565, %562 ], [ %565, %562 ], [ %565, %562 ], [ %565, %562 ], [ %869, %872 ], [ %869, %877 ]
  br label %562

877:                                              ; preds = %868
  %878 = trunc i32 %870 to i8
  store i8 %878, ptr %563, align 1, !tbaa !5
  br label %874

879:                                              ; preds = %841
  %880 = getelementptr inbounds i8, ptr %564, i64 2
  store i8 %747, ptr %563, align 1, !tbaa !5
  br label %874

881:                                              ; preds = %562
  %882 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 14, ptr noundef nonnull @.str.39, i32 noundef 0, ptr noundef nonnull @file_pos) #10
  br label %874

883:                                              ; preds = %17
  %884 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %885 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef %884, ptr noundef nonnull @.str.40) #10
  br label %886

886:                                              ; preds = %54, %386, %538, %64, %66, %68, %883, %41, %37, %58, %131, %135, %138, %140, %125, %546, %542, %405
  %887 = phi ptr [ null, %883 ], [ %408, %405 ], [ %539, %538 ], [ %545, %542 ], [ %550, %546 ], [ null, %125 ], [ null, %140 ], [ null, %138 ], [ %137, %135 ], [ %133, %131 ], [ null, %68 ], [ null, %66 ], [ null, %64 ], [ null, %58 ], [ %39, %37 ], [ null, %41 ], [ null, %386 ], [ null, %54 ]
  %888 = phi i8 [ %18, %883 ], [ %18, %405 ], [ %540, %538 ], [ %18, %542 ], [ %18, %546 ], [ %18, %125 ], [ %18, %140 ], [ %18, %138 ], [ %18, %135 ], [ %18, %131 ], [ %72, %68 ], [ %18, %66 ], [ %18, %64 ], [ %18, %58 ], [ %18, %37 ], [ %18, %41 ], [ %18, %386 ], [ %18, %54 ]
  %889 = phi i8 [ %19, %883 ], [ %19, %405 ], [ %19, %538 ], [ %19, %542 ], [ %19, %546 ], [ 0, %125 ], [ %19, %140 ], [ 0, %138 ], [ %19, %135 ], [ %19, %131 ], [ 0, %68 ], [ %67, %66 ], [ %65, %64 ], [ %19, %58 ], [ %19, %37 ], [ %19, %41 ], [ 0, %386 ], [ %19, %54 ]
  %890 = phi ptr [ %21, %883 ], [ %200, %405 ], [ %541, %538 ], [ %200, %542 ], [ %200, %546 ], [ %127, %125 ], [ %21, %140 ], [ %139, %138 ], [ %20, %135 ], [ %20, %131 ], [ %73, %68 ], [ %21, %66 ], [ %21, %64 ], [ %62, %58 ], [ %40, %37 ], [ %21, %41 ], [ %200, %386 ], [ %55, %54 ]
  %891 = icmp eq ptr %887, null
  br i1 %891, label %17, label %892

892:                                              ; preds = %886, %656, %743, %838, %400, %383, %286
  %893 = phi ptr [ %200, %400 ], [ %200, %383 ], [ %200, %286 ], [ %564, %656 ], [ %565, %743 ], [ %565, %838 ], [ %890, %886 ]
  %894 = phi i8 [ %19, %400 ], [ %19, %383 ], [ %19, %286 ], [ %19, %656 ], [ %19, %743 ], [ %19, %838 ], [ %889, %886 ]
  %895 = phi i8 [ %18, %400 ], [ %18, %383 ], [ %18, %286 ], [ %18, %656 ], [ %18, %743 ], [ %18, %838 ], [ %888, %886 ]
  %896 = phi ptr [ %389, %400 ], [ %323, %383 ], [ %226, %286 ], [ %596, %656 ], [ %683, %743 ], [ %778, %838 ], [ %887, %886 ]
  %897 = load ptr, ptr @startline, align 8, !tbaa !10
  %898 = ptrtoint ptr %893 to i64
  %899 = ptrtoint ptr %897 to i64
  %900 = sub i64 %898, %899
  %901 = icmp sgt i64 %900, 2047
  br i1 %901, label %902, label %907

902:                                              ; preds = %892
  %903 = load i32, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %904 = and i32 %903, 1048575
  %905 = or disjoint i32 %904, 1048576
  store i32 %905, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %906 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 15, ptr noundef nonnull @.str.41, i32 noundef 1, ptr noundef nonnull @file_pos) #10
  br label %907

907:                                              ; preds = %902, %892
  store ptr %893, ptr @chpt, align 8, !tbaa !10
  %908 = getelementptr inbounds i8, ptr %896, i64 42
  store i8 %895, ptr %908, align 2, !tbaa !5
  %909 = getelementptr inbounds i8, ptr %896, i64 41
  store i8 %894, ptr %909, align 1, !tbaa !5
  br label %910

910:                                              ; preds = %907, %13
  %911 = phi ptr [ %2, %13 ], [ %896, %907 ]
  ret ptr %911
}

declare ptr @NewToken(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @srcnext() unnamed_addr #3 {
  %1 = load i32, ptr @blksize, align 4, !tbaa !8
  %2 = icmp ne i32 %1, 0
  %3 = load ptr, ptr @chpt, align 8, !tbaa !10
  %4 = load ptr, ptr @limit, align 8, !tbaa !10
  %5 = icmp ult ptr %3, %4
  %6 = select i1 %2, i1 %5, i1 false
  br i1 %6, label %7, label %17

7:                                                ; preds = %0
  %8 = load ptr, ptr @buf, align 8, !tbaa !10
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi ptr [ %4, %7 ], [ %12, %9 ]
  %11 = phi ptr [ %8, %7 ], [ %14, %9 ]
  %12 = getelementptr inbounds i8, ptr %10, i64 -1
  %13 = load i8, ptr %12, align 1, !tbaa !5
  %14 = getelementptr inbounds i8, ptr %11, i64 -1
  store i8 %13, ptr %14, align 1, !tbaa !5
  %15 = icmp eq i8 %13, 10
  br i1 %15, label %16, label %9

16:                                               ; preds = %9
  store ptr %11, ptr @frst, align 8, !tbaa !10
  store ptr %10, ptr @limit, align 8, !tbaa !10
  store i32 0, ptr @blksize, align 4, !tbaa !8
  br label %17

17:                                               ; preds = %16, %0
  %18 = phi ptr [ %10, %16 ], [ %4, %0 ]
  %19 = icmp ult ptr %3, %18
  br i1 %19, label %66, label %20

20:                                               ; preds = %17
  %21 = icmp ugt ptr %3, %18
  br i1 %21, label %22, label %27

22:                                               ; preds = %20
  %23 = load i32, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %24 = and i32 %23, 1048575
  %25 = or disjoint i32 %24, 1048576
  store i32 %25, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %26 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 5, ptr noundef nonnull @.str.41, i32 noundef 1, ptr noundef nonnull @file_pos) #10
  br label %27

27:                                               ; preds = %22, %20
  %28 = load ptr, ptr @frst, align 8, !tbaa !10
  store ptr %28, ptr @chpt, align 8, !tbaa !10
  %29 = load ptr, ptr @buf, align 8, !tbaa !10
  %30 = load ptr, ptr @fp, align 8, !tbaa !10
  %31 = tail call i64 @fread(ptr noundef %29, i64 noundef 1, i64 noundef 8192, ptr noundef %30)
  %32 = trunc i64 %31 to i32
  store i32 %32, ptr @blksize, align 4, !tbaa !8
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i8, ptr @last_char, align 1
  %36 = load ptr, ptr @buf, align 8, !tbaa !10
  br label %43

37:                                               ; preds = %27
  %38 = load ptr, ptr @buf, align 8, !tbaa !10
  %39 = and i64 %31, 4294967295
  %40 = getelementptr inbounds i8, ptr %38, i64 %39
  %41 = getelementptr inbounds i8, ptr %40, i64 -1
  %42 = load i8, ptr %41, align 1, !tbaa !5
  store i8 %42, ptr @last_char, align 1, !tbaa !5
  br label %43

43:                                               ; preds = %34, %37
  %44 = phi ptr [ %36, %34 ], [ %38, %37 ]
  %45 = phi i8 [ %35, %34 ], [ %42, %37 ]
  %46 = icmp slt i32 %32, 8192
  %47 = icmp ne i8 %45, 10
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  %50 = add nsw i32 %32, 1
  store i32 %50, ptr @blksize, align 4, !tbaa !8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %44, i64 %51
  %53 = getelementptr inbounds i8, ptr %52, i64 -1
  store i8 10, ptr %53, align 1, !tbaa !5
  store i8 10, ptr @last_char, align 1, !tbaa !5
  %54 = load i16, ptr @ftype, align 2, !tbaa !24
  %55 = icmp eq i16 %54, 3
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  store i32 0, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %57 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 25, ptr noundef nonnull @.str.55, i32 noundef 1, ptr noundef nonnull @file_pos) #10
  %58 = load ptr, ptr @buf, align 8, !tbaa !10
  %59 = load i32, ptr @blksize, align 4, !tbaa !8
  br label %60

60:                                               ; preds = %49, %56, %43
  %61 = phi i32 [ %50, %49 ], [ %59, %56 ], [ %32, %43 ]
  %62 = phi ptr [ %44, %49 ], [ %58, %56 ], [ %44, %43 ]
  store ptr %62, ptr @frst, align 8, !tbaa !10
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, ptr %62, i64 %63
  store ptr %64, ptr @limit, align 8, !tbaa !10
  store i8 10, ptr %64, align 1, !tbaa !5
  %65 = load ptr, ptr @chpt, align 8, !tbaa !10
  br label %66

66:                                               ; preds = %60, %17
  %67 = phi ptr [ %64, %60 ], [ %18, %17 ]
  %68 = phi ptr [ %65, %60 ], [ %3, %17 ]
  %69 = icmp ult ptr %68, %67
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr @buf, align 8, !tbaa !10
  store ptr %71, ptr @limit, align 8, !tbaa !10
  store ptr %71, ptr @chpt, align 8, !tbaa !10
  store i8 0, ptr %71, align 1, !tbaa !5
  br label %72

72:                                               ; preds = %70, %66
  ret void
}

declare zeroext i16 @NextFile(i16 noundef zeroext) local_unnamed_addr #4

declare ptr @OpenFile(i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @SearchSym(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @CopyTokenList(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

declare ptr @SymName(ptr noundef) local_unnamed_addr #4

declare void @UnSuppressScope() local_unnamed_addr #4

declare ptr @Parse(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @ReplaceWithTidy(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @SuppressScope() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

declare zeroext i16 @DefineFile(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @LexScanVerbatim(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = alloca [512 x i8], align 16
  %6 = alloca [512 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  %9 = load ptr, ptr @next_token, align 8, !tbaa !10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 16, ptr noundef nonnull @.str.42, i32 noundef 1, ptr noundef %2) #10
  br label %13

13:                                               ; preds = %11, %4
  %14 = load ptr, ptr @chpt, align 8, !tbaa !10
  store i32 0, ptr %7, align 4, !tbaa !8
  %15 = icmp eq ptr %0, null
  %16 = icmp eq i32 %1, 0
  %17 = icmp eq i32 %3, 0
  %18 = select i1 %17, ptr @.str.45, ptr @.str.44
  br label %19

19:                                               ; preds = %554, %13
  %20 = phi ptr [ %14, %13 ], [ %555, %554 ]
  %21 = phi i32 [ 0, %13 ], [ %556, %554 ]
  %22 = phi i32 [ 1, %13 ], [ %557, %554 ]
  %23 = phi ptr [ null, %13 ], [ %558, %554 ]
  %24 = phi i32 [ 0, %13 ], [ %559, %554 ]
  %25 = getelementptr inbounds i8, ptr %20, i64 1
  %26 = load i8, ptr %20, align 1, !tbaa !5
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds [256 x i8], ptr @chtbl, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !5
  switch i8 %29, label %589 [
    i8 3, label %30
    i8 4, label %30
    i8 2, label %30
    i8 5, label %83
    i8 7, label %83
    i8 6, label %83
    i8 8, label %124
    i8 9, label %174
    i8 0, label %179
    i8 1, label %348
  ]

30:                                               ; preds = %19, %19, %19
  %31 = icmp sgt i32 %24, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %30
  %33 = zext nneg i32 %24 to i64
  br label %34

34:                                               ; preds = %32, %58
  %35 = phi i64 [ 0, %32 ], [ %60, %58 ]
  %36 = phi ptr [ %23, %32 ], [ %59, %58 ]
  br i1 %15, label %37, label %53

37:                                               ; preds = %34
  %38 = load i32, ptr %7, align 4, !tbaa !8
  %39 = icmp slt i32 %38, 512
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = getelementptr inbounds [512 x i8], ptr %5, i64 0, i64 %35
  %42 = load i8, ptr %41, align 1, !tbaa !5
  %43 = zext i8 %42 to i64
  %44 = getelementptr inbounds [256 x i8], ptr @chtbl, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !5
  %46 = icmp eq i8 %45, 8
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = call fastcc ptr @BuildLines(ptr noundef %36, ptr noundef nonnull %6, ptr noundef nonnull %7)
  br label %58

49:                                               ; preds = %40
  %50 = add nsw i32 %38, 1
  store i32 %50, ptr %7, align 4, !tbaa !8
  %51 = sext i32 %38 to i64
  %52 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %51
  store i8 %42, ptr %52, align 1, !tbaa !5
  br label %58

53:                                               ; preds = %34
  %54 = getelementptr inbounds [512 x i8], ptr %5, i64 0, i64 %35
  %55 = load i8, ptr %54, align 1, !tbaa !5
  %56 = zext i8 %55 to i32
  %57 = call i32 @putc(i32 noundef %56, ptr noundef nonnull %0)
  br label %58

58:                                               ; preds = %53, %47, %49, %37
  %59 = phi ptr [ %48, %47 ], [ %36, %49 ], [ %36, %37 ], [ %36, %53 ]
  %60 = add nuw nsw i64 %35, 1
  %61 = icmp eq i64 %60, %33
  br i1 %61, label %62, label %34

62:                                               ; preds = %58, %30
  %63 = phi ptr [ %23, %30 ], [ %59, %58 ]
  br i1 %15, label %64, label %79

64:                                               ; preds = %62
  %65 = load i32, ptr %7, align 4, !tbaa !8
  %66 = icmp slt i32 %65, 512
  br i1 %66, label %67, label %554

67:                                               ; preds = %64
  %68 = load i8, ptr %20, align 1, !tbaa !5
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds [256 x i8], ptr @chtbl, i64 0, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !5
  %72 = icmp eq i8 %71, 8
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = call fastcc ptr @BuildLines(ptr noundef %63, ptr noundef nonnull %6, ptr noundef nonnull %7)
  br label %554

75:                                               ; preds = %67
  %76 = add nsw i32 %65, 1
  store i32 %76, ptr %7, align 4, !tbaa !8
  %77 = sext i32 %65 to i64
  %78 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %77
  store i8 %68, ptr %78, align 1, !tbaa !5
  br label %554

79:                                               ; preds = %62
  %80 = load i8, ptr %20, align 1, !tbaa !5
  %81 = zext i8 %80 to i32
  %82 = call i32 @putc(i32 noundef %81, ptr noundef nonnull %0)
  br label %554

83:                                               ; preds = %19, %19, %19
  %84 = icmp eq i32 %22, 0
  br i1 %84, label %85, label %554

85:                                               ; preds = %83
  %86 = icmp eq i32 %24, 512
  br i1 %86, label %87, label %117

87:                                               ; preds = %85, %111
  %88 = phi i64 [ %113, %111 ], [ 0, %85 ]
  %89 = phi ptr [ %112, %111 ], [ %23, %85 ]
  br i1 %15, label %90, label %106

90:                                               ; preds = %87
  %91 = load i32, ptr %7, align 4, !tbaa !8
  %92 = icmp slt i32 %91, 512
  br i1 %92, label %93, label %111

93:                                               ; preds = %90
  %94 = getelementptr inbounds [512 x i8], ptr %5, i64 0, i64 %88
  %95 = load i8, ptr %94, align 1, !tbaa !5
  %96 = zext i8 %95 to i64
  %97 = getelementptr inbounds [256 x i8], ptr @chtbl, i64 0, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !5
  %99 = icmp eq i8 %98, 8
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = call fastcc ptr @BuildLines(ptr noundef %89, ptr noundef nonnull %6, ptr noundef nonnull %7)
  br label %111

102:                                              ; preds = %93
  %103 = add nsw i32 %91, 1
  store i32 %103, ptr %7, align 4, !tbaa !8
  %104 = sext i32 %91 to i64
  %105 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %104
  store i8 %95, ptr %105, align 1, !tbaa !5
  br label %111

106:                                              ; preds = %87
  %107 = getelementptr inbounds [512 x i8], ptr %5, i64 0, i64 %88
  %108 = load i8, ptr %107, align 1, !tbaa !5
  %109 = zext i8 %108 to i32
  %110 = call i32 @putc(i32 noundef %109, ptr noundef nonnull %0)
  br label %111

111:                                              ; preds = %106, %100, %102, %90
  %112 = phi ptr [ %101, %100 ], [ %89, %102 ], [ %89, %90 ], [ %89, %106 ]
  %113 = add nuw nsw i64 %88, 1
  %114 = icmp eq i64 %113, 512
  br i1 %114, label %115, label %87

115:                                              ; preds = %111
  %116 = load i8, ptr %20, align 1, !tbaa !5
  br label %117

117:                                              ; preds = %115, %85
  %118 = phi i8 [ %26, %85 ], [ %116, %115 ]
  %119 = phi i32 [ %24, %85 ], [ 0, %115 ]
  %120 = phi ptr [ %23, %85 ], [ %112, %115 ]
  %121 = add nsw i32 %119, 1
  %122 = sext i32 %119 to i64
  %123 = getelementptr inbounds [512 x i8], ptr %5, i64 0, i64 %122
  store i8 %118, ptr %123, align 1, !tbaa !5
  br label %554

124:                                              ; preds = %19
  %125 = icmp eq i32 %22, 0
  br i1 %125, label %126, label %165

126:                                              ; preds = %124
  %127 = icmp eq i32 %24, 512
  br i1 %127, label %128, label %158

128:                                              ; preds = %126, %152
  %129 = phi i64 [ %154, %152 ], [ 0, %126 ]
  %130 = phi ptr [ %153, %152 ], [ %23, %126 ]
  br i1 %15, label %131, label %147

131:                                              ; preds = %128
  %132 = load i32, ptr %7, align 4, !tbaa !8
  %133 = icmp slt i32 %132, 512
  br i1 %133, label %134, label %152

134:                                              ; preds = %131
  %135 = getelementptr inbounds [512 x i8], ptr %5, i64 0, i64 %129
  %136 = load i8, ptr %135, align 1, !tbaa !5
  %137 = zext i8 %136 to i64
  %138 = getelementptr inbounds [256 x i8], ptr @chtbl, i64 0, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !5
  %140 = icmp eq i8 %139, 8
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = call fastcc ptr @BuildLines(ptr noundef %130, ptr noundef nonnull %6, ptr noundef nonnull %7)
  br label %152

143:                                              ; preds = %134
  %144 = add nsw i32 %132, 1
  store i32 %144, ptr %7, align 4, !tbaa !8
  %145 = sext i32 %132 to i64
  %146 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %145
  store i8 %136, ptr %146, align 1, !tbaa !5
  br label %152

147:                                              ; preds = %128
  %148 = getelementptr inbounds [512 x i8], ptr %5, i64 0, i64 %129
  %149 = load i8, ptr %148, align 1, !tbaa !5
  %150 = zext i8 %149 to i32
  %151 = call i32 @putc(i32 noundef %150, ptr noundef nonnull %0)
  br label %152

152:                                              ; preds = %147, %141, %143, %131
  %153 = phi ptr [ %142, %141 ], [ %130, %143 ], [ %130, %131 ], [ %130, %147 ]
  %154 = add nuw nsw i64 %129, 1
  %155 = icmp eq i64 %154, 512
  br i1 %155, label %156, label %128

156:                                              ; preds = %152
  %157 = load i8, ptr %20, align 1, !tbaa !5
  br label %158

158:                                              ; preds = %156, %126
  %159 = phi i8 [ %26, %126 ], [ %157, %156 ]
  %160 = phi i32 [ %24, %126 ], [ 0, %156 ]
  %161 = phi ptr [ %23, %126 ], [ %153, %156 ]
  %162 = add nsw i32 %160, 1
  %163 = sext i32 %160 to i64
  %164 = getelementptr inbounds [512 x i8], ptr %5, i64 0, i64 %163
  store i8 %159, ptr %164, align 1, !tbaa !5
  br label %165

165:                                              ; preds = %158, %124
  %166 = phi i32 [ %24, %124 ], [ %162, %158 ]
  %167 = phi ptr [ %23, %124 ], [ %161, %158 ]
  %168 = select i1 %17, i32 %22, i32 0
  store ptr %25, ptr @chpt, align 8, !tbaa !10
  call fastcc void @srcnext()
  %169 = load i32, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %170 = add i32 %169, 1
  %171 = and i32 %170, 1048575
  store i32 %171, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %172 = load ptr, ptr @chpt, align 8, !tbaa !10
  %173 = getelementptr inbounds i8, ptr %172, i64 -1
  store ptr %173, ptr @startline, align 8, !tbaa !10
  br label %554

174:                                              ; preds = %19
  br i1 %15, label %175, label %177

175:                                              ; preds = %174
  %176 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 22, ptr noundef nonnull @.str.43, i32 noundef 1, ptr noundef %2, ptr noundef nonnull %18) #10
  br label %554

177:                                              ; preds = %174
  %178 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 17, ptr noundef nonnull @.str.46, i32 noundef 1, ptr noundef %2) #10
  br label %554

179:                                              ; preds = %19
  switch i8 %26, label %184 [
    i8 123, label %180
    i8 125, label %240
  ]

180:                                              ; preds = %179
  %181 = icmp sgt i32 %24, 0
  br i1 %181, label %182, label %216

182:                                              ; preds = %180
  %183 = zext nneg i32 %24 to i64
  br label %188

184:                                              ; preds = %179
  %185 = icmp sgt i32 %24, 0
  br i1 %185, label %186, label %327

186:                                              ; preds = %184
  %187 = zext nneg i32 %24 to i64
  br label %299

188:                                              ; preds = %182, %212
  %189 = phi i64 [ 0, %182 ], [ %214, %212 ]
  %190 = phi ptr [ %23, %182 ], [ %213, %212 ]
  br i1 %15, label %191, label %207

191:                                              ; preds = %188
  %192 = load i32, ptr %7, align 4, !tbaa !8
  %193 = icmp slt i32 %192, 512
  br i1 %193, label %194, label %212

194:                                              ; preds = %191
  %195 = getelementptr inbounds [512 x i8], ptr %5, i64 0, i64 %189
  %196 = load i8, ptr %195, align 1, !tbaa !5
  %197 = zext i8 %196 to i64
  %198 = getelementptr inbounds [256 x i8], ptr @chtbl, i64 0, i64 %197
  %199 = load i8, ptr %198, align 1, !tbaa !5
  %200 = icmp eq i8 %199, 8
  br i1 %200, label %201, label %203

201:                                              ; preds = %194
  %202 = call fastcc ptr @BuildLines(ptr noundef %190, ptr noundef nonnull %6, ptr noundef nonnull %7)
  br label %212

203:                                              ; preds = %194
  %204 = add nsw i32 %192, 1
  store i32 %204, ptr %7, align 4, !tbaa !8
  %205 = sext i32 %192 to i64
  %206 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %205
  store i8 %196, ptr %206, align 1, !tbaa !5
  br label %212

207:                                              ; preds = %188
  %208 = getelementptr inbounds [512 x i8], ptr %5, i64 0, i64 %189
  %209 = load i8, ptr %208, align 1, !tbaa !5
  %210 = zext i8 %209 to i32
  %211 = call i32 @putc(i32 noundef %210, ptr noundef nonnull %0)
  br label %212

212:                                              ; preds = %207, %201, %203, %191
  %213 = phi ptr [ %202, %201 ], [ %190, %203 ], [ %190, %191 ], [ %190, %207 ]
  %214 = add nuw nsw i64 %189, 1
  %215 = icmp eq i64 %214, %183
  br i1 %215, label %216, label %188

216:                                              ; preds = %212, %180
  %217 = phi ptr [ %23, %180 ], [ %213, %212 ]
  br i1 %15, label %218, label %233

218:                                              ; preds = %216
  %219 = load i32, ptr %7, align 4, !tbaa !8
  %220 = icmp slt i32 %219, 512
  br i1 %220, label %221, label %237

221:                                              ; preds = %218
  %222 = load i8, ptr %20, align 1, !tbaa !5
  %223 = zext i8 %222 to i64
  %224 = getelementptr inbounds [256 x i8], ptr @chtbl, i64 0, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !5
  %226 = icmp eq i8 %225, 8
  br i1 %226, label %227, label %229

227:                                              ; preds = %221
  %228 = call fastcc ptr @BuildLines(ptr noundef %217, ptr noundef nonnull %6, ptr noundef nonnull %7)
  br label %237

229:                                              ; preds = %221
  %230 = add nsw i32 %219, 1
  store i32 %230, ptr %7, align 4, !tbaa !8
  %231 = sext i32 %219 to i64
  %232 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %231
  store i8 %222, ptr %232, align 1, !tbaa !5
  br label %237

233:                                              ; preds = %216
  %234 = load i8, ptr %20, align 1, !tbaa !5
  %235 = zext i8 %234 to i32
  %236 = call i32 @putc(i32 noundef %235, ptr noundef nonnull %0)
  br label %237

237:                                              ; preds = %218, %229, %227, %233
  %238 = phi ptr [ %228, %227 ], [ %217, %229 ], [ %217, %218 ], [ %217, %233 ]
  %239 = add nsw i32 %21, 1
  br label %554

240:                                              ; preds = %179
  %241 = icmp eq i32 %21, 0
  %242 = select i1 %16, i1 %241, i1 false
  br i1 %242, label %594, label %243

243:                                              ; preds = %240
  %244 = icmp sgt i32 %24, 0
  br i1 %244, label %245, label %275

245:                                              ; preds = %243
  %246 = zext nneg i32 %24 to i64
  br label %247

247:                                              ; preds = %245, %271
  %248 = phi i64 [ 0, %245 ], [ %273, %271 ]
  %249 = phi ptr [ %23, %245 ], [ %272, %271 ]
  br i1 %15, label %250, label %266

250:                                              ; preds = %247
  %251 = load i32, ptr %7, align 4, !tbaa !8
  %252 = icmp slt i32 %251, 512
  br i1 %252, label %253, label %271

253:                                              ; preds = %250
  %254 = getelementptr inbounds [512 x i8], ptr %5, i64 0, i64 %248
  %255 = load i8, ptr %254, align 1, !tbaa !5
  %256 = zext i8 %255 to i64
  %257 = getelementptr inbounds [256 x i8], ptr @chtbl, i64 0, i64 %256
  %258 = load i8, ptr %257, align 1, !tbaa !5
  %259 = icmp eq i8 %258, 8
  br i1 %259, label %260, label %262

260:                                              ; preds = %253
  %261 = call fastcc ptr @BuildLines(ptr noundef %249, ptr noundef nonnull %6, ptr noundef nonnull %7)
  br label %271

262:                                              ; preds = %253
  %263 = add nsw i32 %251, 1
  store i32 %263, ptr %7, align 4, !tbaa !8
  %264 = sext i32 %251 to i64
  %265 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %264
  store i8 %255, ptr %265, align 1, !tbaa !5
  br label %271

266:                                              ; preds = %247
  %267 = getelementptr inbounds [512 x i8], ptr %5, i64 0, i64 %248
  %268 = load i8, ptr %267, align 1, !tbaa !5
  %269 = zext i8 %268 to i32
  %270 = call i32 @putc(i32 noundef %269, ptr noundef nonnull %0)
  br label %271

271:                                              ; preds = %266, %260, %262, %250
  %272 = phi ptr [ %261, %260 ], [ %249, %262 ], [ %249, %250 ], [ %249, %266 ]
  %273 = add nuw nsw i64 %248, 1
  %274 = icmp eq i64 %273, %246
  br i1 %274, label %275, label %247

275:                                              ; preds = %271, %243
  %276 = phi ptr [ %23, %243 ], [ %272, %271 ]
  br i1 %15, label %277, label %292

277:                                              ; preds = %275
  %278 = load i32, ptr %7, align 4, !tbaa !8
  %279 = icmp slt i32 %278, 512
  br i1 %279, label %280, label %296

280:                                              ; preds = %277
  %281 = load i8, ptr %20, align 1, !tbaa !5
  %282 = zext i8 %281 to i64
  %283 = getelementptr inbounds [256 x i8], ptr @chtbl, i64 0, i64 %282
  %284 = load i8, ptr %283, align 1, !tbaa !5
  %285 = icmp eq i8 %284, 8
  br i1 %285, label %286, label %288

286:                                              ; preds = %280
  %287 = call fastcc ptr @BuildLines(ptr noundef %276, ptr noundef nonnull %6, ptr noundef nonnull %7)
  br label %296

288:                                              ; preds = %280
  %289 = add nsw i32 %278, 1
  store i32 %289, ptr %7, align 4, !tbaa !8
  %290 = sext i32 %278 to i64
  %291 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %290
  store i8 %281, ptr %291, align 1, !tbaa !5
  br label %296

292:                                              ; preds = %275
  %293 = load i8, ptr %20, align 1, !tbaa !5
  %294 = zext i8 %293 to i32
  %295 = call i32 @putc(i32 noundef %294, ptr noundef nonnull %0)
  br label %296

296:                                              ; preds = %277, %288, %286, %292
  %297 = phi ptr [ %287, %286 ], [ %276, %288 ], [ %276, %277 ], [ %276, %292 ]
  %298 = add nsw i32 %21, -1
  br label %554

299:                                              ; preds = %186, %323
  %300 = phi i64 [ 0, %186 ], [ %325, %323 ]
  %301 = phi ptr [ %23, %186 ], [ %324, %323 ]
  br i1 %15, label %302, label %318

302:                                              ; preds = %299
  %303 = load i32, ptr %7, align 4, !tbaa !8
  %304 = icmp slt i32 %303, 512
  br i1 %304, label %305, label %323

305:                                              ; preds = %302
  %306 = getelementptr inbounds [512 x i8], ptr %5, i64 0, i64 %300
  %307 = load i8, ptr %306, align 1, !tbaa !5
  %308 = zext i8 %307 to i64
  %309 = getelementptr inbounds [256 x i8], ptr @chtbl, i64 0, i64 %308
  %310 = load i8, ptr %309, align 1, !tbaa !5
  %311 = icmp eq i8 %310, 8
  br i1 %311, label %312, label %314

312:                                              ; preds = %305
  %313 = call fastcc ptr @BuildLines(ptr noundef %301, ptr noundef nonnull %6, ptr noundef nonnull %7)
  br label %323

314:                                              ; preds = %305
  %315 = add nsw i32 %303, 1
  store i32 %315, ptr %7, align 4, !tbaa !8
  %316 = sext i32 %303 to i64
  %317 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %316
  store i8 %307, ptr %317, align 1, !tbaa !5
  br label %323

318:                                              ; preds = %299
  %319 = getelementptr inbounds [512 x i8], ptr %5, i64 0, i64 %300
  %320 = load i8, ptr %319, align 1, !tbaa !5
  %321 = zext i8 %320 to i32
  %322 = call i32 @putc(i32 noundef %321, ptr noundef nonnull %0)
  br label %323

323:                                              ; preds = %318, %312, %314, %302
  %324 = phi ptr [ %313, %312 ], [ %301, %314 ], [ %301, %302 ], [ %301, %318 ]
  %325 = add nuw nsw i64 %300, 1
  %326 = icmp eq i64 %325, %187
  br i1 %326, label %327, label %299

327:                                              ; preds = %323, %184
  %328 = phi ptr [ %23, %184 ], [ %324, %323 ]
  br i1 %15, label %329, label %344

329:                                              ; preds = %327
  %330 = load i32, ptr %7, align 4, !tbaa !8
  %331 = icmp slt i32 %330, 512
  br i1 %331, label %332, label %554

332:                                              ; preds = %329
  %333 = load i8, ptr %20, align 1, !tbaa !5
  %334 = zext i8 %333 to i64
  %335 = getelementptr inbounds [256 x i8], ptr @chtbl, i64 0, i64 %334
  %336 = load i8, ptr %335, align 1, !tbaa !5
  %337 = icmp eq i8 %336, 8
  br i1 %337, label %338, label %340

338:                                              ; preds = %332
  %339 = call fastcc ptr @BuildLines(ptr noundef %328, ptr noundef nonnull %6, ptr noundef nonnull %7)
  br label %554

340:                                              ; preds = %332
  %341 = add nsw i32 %330, 1
  store i32 %341, ptr %7, align 4, !tbaa !8
  %342 = sext i32 %330 to i64
  %343 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %342
  store i8 %333, ptr %343, align 1, !tbaa !5
  br label %554

344:                                              ; preds = %327
  %345 = load i8, ptr %20, align 1, !tbaa !5
  %346 = zext i8 %345 to i32
  %347 = call i32 @putc(i32 noundef %346, ptr noundef nonnull %0)
  br label %554

348:                                              ; preds = %19
  %349 = icmp eq i8 %26, 64
  br i1 %349, label %376, label %350

350:                                              ; preds = %348
  %351 = icmp sgt i32 %24, 0
  br i1 %351, label %352, label %568

352:                                              ; preds = %350
  %353 = zext nneg i32 %24 to i64
  br i1 %15, label %354, label %560

354:                                              ; preds = %352, %372
  %355 = phi i64 [ %374, %372 ], [ 0, %352 ]
  %356 = phi ptr [ %373, %372 ], [ %23, %352 ]
  %357 = load i32, ptr %7, align 4, !tbaa !8
  %358 = icmp slt i32 %357, 512
  br i1 %358, label %359, label %372

359:                                              ; preds = %354
  %360 = getelementptr inbounds [512 x i8], ptr %5, i64 0, i64 %355
  %361 = load i8, ptr %360, align 1, !tbaa !5
  %362 = zext i8 %361 to i64
  %363 = getelementptr inbounds [256 x i8], ptr @chtbl, i64 0, i64 %362
  %364 = load i8, ptr %363, align 1, !tbaa !5
  %365 = icmp eq i8 %364, 8
  br i1 %365, label %370, label %366

366:                                              ; preds = %359
  %367 = add nsw i32 %357, 1
  store i32 %367, ptr %7, align 4, !tbaa !8
  %368 = sext i32 %357 to i64
  %369 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %368
  store i8 %361, ptr %369, align 1, !tbaa !5
  br label %372

370:                                              ; preds = %359
  %371 = call fastcc ptr @BuildLines(ptr noundef %356, ptr noundef nonnull %6, ptr noundef nonnull %7)
  br label %372

372:                                              ; preds = %370, %366, %354
  %373 = phi ptr [ %371, %370 ], [ %356, %366 ], [ %356, %354 ]
  %374 = add nuw nsw i64 %355, 1
  %375 = icmp eq i64 %374, %353
  br i1 %375, label %568, label %354

376:                                              ; preds = %348
  br i1 %16, label %380, label %377

377:                                              ; preds = %376
  %378 = call i32 @StringBeginsWith(ptr noundef nonnull %20, ptr noundef nonnull @.str.47) #10
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %594

380:                                              ; preds = %377, %376
  %381 = call i32 @StringBeginsWith(ptr noundef nonnull %20, ptr noundef nonnull @.str.48) #10
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %412

383:                                              ; preds = %380
  %384 = call i32 @StringBeginsWith(ptr noundef nonnull %20, ptr noundef nonnull @.str.49) #10
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %412

386:                                              ; preds = %383
  %387 = icmp sgt i32 %24, 0
  br i1 %387, label %388, label %533

388:                                              ; preds = %386
  %389 = zext nneg i32 %24 to i64
  br i1 %15, label %390, label %525

390:                                              ; preds = %388, %408
  %391 = phi i64 [ %410, %408 ], [ 0, %388 ]
  %392 = phi ptr [ %409, %408 ], [ %23, %388 ]
  %393 = load i32, ptr %7, align 4, !tbaa !8
  %394 = icmp slt i32 %393, 512
  br i1 %394, label %395, label %408

395:                                              ; preds = %390
  %396 = getelementptr inbounds [512 x i8], ptr %5, i64 0, i64 %391
  %397 = load i8, ptr %396, align 1, !tbaa !5
  %398 = zext i8 %397 to i64
  %399 = getelementptr inbounds [256 x i8], ptr @chtbl, i64 0, i64 %398
  %400 = load i8, ptr %399, align 1, !tbaa !5
  %401 = icmp eq i8 %400, 8
  br i1 %401, label %406, label %402

402:                                              ; preds = %395
  %403 = add nsw i32 %393, 1
  store i32 %403, ptr %7, align 4, !tbaa !8
  %404 = sext i32 %393 to i64
  %405 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %404
  store i8 %397, ptr %405, align 1, !tbaa !5
  br label %408

406:                                              ; preds = %395
  %407 = call fastcc ptr @BuildLines(ptr noundef %392, ptr noundef nonnull %6, ptr noundef nonnull %7)
  br label %408

408:                                              ; preds = %406, %402, %390
  %409 = phi ptr [ %407, %406 ], [ %392, %402 ], [ %392, %390 ]
  %410 = add nuw nsw i64 %391, 1
  %411 = icmp eq i64 %410, %389
  br i1 %411, label %533, label %390

412:                                              ; preds = %383, %380
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  %413 = call i32 @StringBeginsWith(ptr noundef nonnull %20, ptr noundef nonnull @.str.49) #10
  %414 = icmp sgt i32 %24, 0
  br i1 %414, label %415, label %447

415:                                              ; preds = %412
  %416 = zext nneg i32 %24 to i64
  br i1 %15, label %417, label %439

417:                                              ; preds = %415, %435
  %418 = phi i64 [ %437, %435 ], [ 0, %415 ]
  %419 = phi ptr [ %436, %435 ], [ %23, %415 ]
  %420 = load i32, ptr %7, align 4, !tbaa !8
  %421 = icmp slt i32 %420, 512
  br i1 %421, label %422, label %435

422:                                              ; preds = %417
  %423 = getelementptr inbounds [512 x i8], ptr %5, i64 0, i64 %418
  %424 = load i8, ptr %423, align 1, !tbaa !5
  %425 = zext i8 %424 to i64
  %426 = getelementptr inbounds [256 x i8], ptr @chtbl, i64 0, i64 %425
  %427 = load i8, ptr %426, align 1, !tbaa !5
  %428 = icmp eq i8 %427, 8
  br i1 %428, label %433, label %429

429:                                              ; preds = %422
  %430 = add nsw i32 %420, 1
  store i32 %430, ptr %7, align 4, !tbaa !8
  %431 = sext i32 %420 to i64
  %432 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %431
  store i8 %424, ptr %432, align 1, !tbaa !5
  br label %435

433:                                              ; preds = %422
  %434 = call fastcc ptr @BuildLines(ptr noundef %419, ptr noundef nonnull %6, ptr noundef nonnull %7)
  br label %435

435:                                              ; preds = %433, %429, %417
  %436 = phi ptr [ %434, %433 ], [ %419, %429 ], [ %419, %417 ]
  %437 = add nuw nsw i64 %418, 1
  %438 = icmp eq i64 %437, %416
  br i1 %438, label %447, label %417

439:                                              ; preds = %415, %439
  %440 = phi i64 [ %445, %439 ], [ 0, %415 ]
  %441 = getelementptr inbounds [512 x i8], ptr %5, i64 0, i64 %440
  %442 = load i8, ptr %441, align 1, !tbaa !5
  %443 = zext i8 %442 to i32
  %444 = call i32 @putc(i32 noundef %443, ptr noundef nonnull %0)
  %445 = add nuw nsw i64 %440, 1
  %446 = icmp eq i64 %445, %416
  br i1 %446, label %447, label %439

447:                                              ; preds = %439, %435, %412
  %448 = phi ptr [ %23, %412 ], [ %436, %435 ], [ %23, %439 ]
  %449 = icmp eq i32 %413, 0
  %450 = select i1 %449, i64 8, i64 11
  %451 = getelementptr inbounds i8, ptr %20, i64 %450
  store ptr %451, ptr @chpt, align 8, !tbaa !10
  %452 = call ptr @LexGetToken()
  store ptr %452, ptr %8, align 8, !tbaa !10
  %453 = getelementptr inbounds %struct.word_type, ptr %452, i64 0, i32 1
  %454 = load i8, ptr %453, align 8, !tbaa !5
  %455 = icmp eq i8 %454, 102
  br i1 %455, label %459, label %456

456:                                              ; preds = %447
  %457 = select i1 %449, ptr @.str.48, ptr @.str.49
  %458 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 18, ptr noundef nonnull @.str.50, i32 noundef 1, ptr noundef nonnull %453, ptr noundef nonnull @.str.32, ptr noundef nonnull %457) #10
  br label %459

459:                                              ; preds = %456, %447
  %460 = call ptr @Parse(ptr noundef nonnull %8, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %461 = load ptr, ptr @chpt, align 8, !tbaa !10
  %462 = call ptr @ReplaceWithTidy(ptr noundef %460, i32 noundef 0) #10
  %463 = getelementptr inbounds %struct.word_type, ptr %462, i64 0, i32 1
  %464 = load i8, ptr %463, align 8, !tbaa !5
  %465 = add i8 %464, -11
  %466 = icmp ult i8 %465, 2
  br i1 %466, label %469, label %467

467:                                              ; preds = %459
  %468 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 19, ptr noundef nonnull @.str.51, i32 noundef 1, ptr noundef nonnull %463) #10
  br label %469

469:                                              ; preds = %459, %467
  %470 = getelementptr inbounds %struct.word_type, ptr %462, i64 0, i32 4
  %471 = select i1 %449, i32 1, i32 2
  %472 = call zeroext i16 @DefineFile(ptr noundef nonnull %470, ptr noundef nonnull @.str.36, ptr noundef nonnull %463, i32 noundef 1, i32 noundef %471) #10
  store ptr %462, ptr @zz_hold, align 8, !tbaa !10
  %473 = load i8, ptr %463, align 8, !tbaa !5
  %474 = add i8 %473, -11
  %475 = icmp ult i8 %474, 2
  %476 = getelementptr inbounds %struct.word_type, ptr %462, i64 0, i32 1, i32 0, i32 1
  %477 = zext i8 %473 to i64
  %478 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %477
  %479 = select i1 %475, ptr %476, ptr %478
  %480 = load i8, ptr %479, align 1, !tbaa !5
  %481 = zext i8 %480 to i32
  store i32 %481, ptr @zz_size, align 4, !tbaa !8
  %482 = zext i8 %480 to i64
  %483 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %482
  %484 = load ptr, ptr %483, align 8, !tbaa !10
  store ptr %484, ptr %462, align 8, !tbaa !5
  %485 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %486 = load i32, ptr @zz_size, align 4, !tbaa !8
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %487
  store ptr %485, ptr %488, align 8, !tbaa !10
  %489 = call ptr @OpenFile(i16 noundef zeroext %472, i32 noundef 0, i32 noundef 1) #10
  %490 = icmp eq ptr %489, null
  br i1 %490, label %491, label %495

491:                                              ; preds = %469
  %492 = call ptr @PosOfFile(i16 noundef zeroext %472) #10
  %493 = call ptr @FullFileName(i16 noundef zeroext %472) #10
  %494 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 20, ptr noundef nonnull @.str.52, i32 noundef 1, ptr noundef %492, ptr noundef %493) #10
  br label %495

495:                                              ; preds = %491, %469
  %496 = call i32 @getc(ptr noundef %489)
  %497 = icmp eq i32 %496, -1
  br i1 %497, label %522, label %498

498:                                              ; preds = %495, %518
  %499 = phi i32 [ %520, %518 ], [ %496, %495 ]
  %500 = phi ptr [ %519, %518 ], [ %448, %495 ]
  br i1 %15, label %501, label %516

501:                                              ; preds = %498
  %502 = load i32, ptr %7, align 4, !tbaa !8
  %503 = icmp slt i32 %502, 512
  br i1 %503, label %504, label %518

504:                                              ; preds = %501
  %505 = sext i32 %499 to i64
  %506 = getelementptr inbounds [256 x i8], ptr @chtbl, i64 0, i64 %505
  %507 = load i8, ptr %506, align 1, !tbaa !5
  %508 = icmp eq i8 %507, 8
  br i1 %508, label %509, label %511

509:                                              ; preds = %504
  %510 = call fastcc ptr @BuildLines(ptr noundef %500, ptr noundef nonnull %6, ptr noundef nonnull %7)
  br label %518

511:                                              ; preds = %504
  %512 = trunc i32 %499 to i8
  %513 = add nsw i32 %502, 1
  store i32 %513, ptr %7, align 4, !tbaa !8
  %514 = sext i32 %502 to i64
  %515 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %514
  store i8 %512, ptr %515, align 1, !tbaa !5
  br label %518

516:                                              ; preds = %498
  %517 = call i32 @putc(i32 noundef %499, ptr noundef nonnull %0)
  br label %518

518:                                              ; preds = %501, %511, %509, %516
  %519 = phi ptr [ %510, %509 ], [ %500, %511 ], [ %500, %501 ], [ %500, %516 ]
  %520 = call i32 @getc(ptr noundef %489)
  %521 = icmp eq i32 %520, -1
  br i1 %521, label %522, label %498

522:                                              ; preds = %518, %495
  %523 = phi ptr [ %448, %495 ], [ %519, %518 ]
  %524 = call i32 @fclose(ptr noundef %489)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  br label %554

525:                                              ; preds = %388, %525
  %526 = phi i64 [ %531, %525 ], [ 0, %388 ]
  %527 = getelementptr inbounds [512 x i8], ptr %5, i64 0, i64 %526
  %528 = load i8, ptr %527, align 1, !tbaa !5
  %529 = zext i8 %528 to i32
  %530 = call i32 @putc(i32 noundef %529, ptr noundef nonnull %0)
  %531 = add nuw nsw i64 %526, 1
  %532 = icmp eq i64 %531, %389
  br i1 %532, label %533, label %525

533:                                              ; preds = %525, %408, %386
  %534 = phi ptr [ %23, %386 ], [ %409, %408 ], [ %23, %525 ]
  br i1 %15, label %535, label %550

535:                                              ; preds = %533
  %536 = load i32, ptr %7, align 4, !tbaa !8
  %537 = icmp slt i32 %536, 512
  br i1 %537, label %538, label %554

538:                                              ; preds = %535
  %539 = load i8, ptr %20, align 1, !tbaa !5
  %540 = zext i8 %539 to i64
  %541 = getelementptr inbounds [256 x i8], ptr @chtbl, i64 0, i64 %540
  %542 = load i8, ptr %541, align 1, !tbaa !5
  %543 = icmp eq i8 %542, 8
  br i1 %543, label %544, label %546

544:                                              ; preds = %538
  %545 = call fastcc ptr @BuildLines(ptr noundef %534, ptr noundef nonnull %6, ptr noundef nonnull %7)
  br label %554

546:                                              ; preds = %538
  %547 = add nsw i32 %536, 1
  store i32 %547, ptr %7, align 4, !tbaa !8
  %548 = sext i32 %536 to i64
  %549 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %548
  store i8 %539, ptr %549, align 1, !tbaa !5
  br label %554

550:                                              ; preds = %533
  %551 = load i8, ptr %20, align 1, !tbaa !5
  %552 = zext i8 %551 to i32
  %553 = call i32 @putc(i32 noundef %552, ptr noundef nonnull %0)
  br label %554

554:                                              ; preds = %550, %544, %546, %535, %522, %570, %581, %579, %585, %237, %344, %338, %340, %329, %296, %175, %177, %83, %117, %79, %73, %75, %64, %589, %165
  %555 = phi ptr [ %25, %589 ], [ %461, %522 ], [ %25, %579 ], [ %25, %581 ], [ %25, %570 ], [ %25, %585 ], [ %25, %237 ], [ %25, %296 ], [ %25, %338 ], [ %25, %340 ], [ %25, %329 ], [ %25, %344 ], [ %25, %175 ], [ %25, %177 ], [ %172, %165 ], [ %25, %83 ], [ %25, %117 ], [ %25, %73 ], [ %25, %75 ], [ %25, %64 ], [ %25, %79 ], [ %25, %535 ], [ %25, %546 ], [ %25, %544 ], [ %25, %550 ]
  %556 = phi i32 [ %21, %589 ], [ %21, %522 ], [ %21, %579 ], [ %21, %581 ], [ %21, %570 ], [ %21, %585 ], [ %239, %237 ], [ %298, %296 ], [ %21, %338 ], [ %21, %340 ], [ %21, %329 ], [ %21, %344 ], [ %21, %175 ], [ %21, %177 ], [ %21, %165 ], [ %21, %83 ], [ %21, %117 ], [ %21, %73 ], [ %21, %75 ], [ %21, %64 ], [ %21, %79 ], [ %21, %535 ], [ %21, %546 ], [ %21, %544 ], [ %21, %550 ]
  %557 = phi i32 [ %22, %589 ], [ 0, %522 ], [ 0, %579 ], [ 0, %581 ], [ 0, %570 ], [ 0, %585 ], [ 0, %237 ], [ 0, %296 ], [ 0, %338 ], [ 0, %340 ], [ 0, %329 ], [ 0, %344 ], [ %22, %175 ], [ %22, %177 ], [ %168, %165 ], [ 1, %83 ], [ 0, %117 ], [ 0, %73 ], [ 0, %75 ], [ 0, %64 ], [ 0, %79 ], [ 0, %535 ], [ 0, %546 ], [ 0, %544 ], [ 0, %550 ]
  %558 = phi ptr [ %23, %589 ], [ %523, %522 ], [ %580, %579 ], [ %569, %581 ], [ %569, %570 ], [ %569, %585 ], [ %238, %237 ], [ %297, %296 ], [ %339, %338 ], [ %328, %340 ], [ %328, %329 ], [ %328, %344 ], [ %23, %175 ], [ %23, %177 ], [ %167, %165 ], [ %23, %83 ], [ %120, %117 ], [ %74, %73 ], [ %63, %75 ], [ %63, %64 ], [ %63, %79 ], [ %534, %535 ], [ %534, %546 ], [ %545, %544 ], [ %534, %550 ]
  %559 = phi i32 [ %24, %589 ], [ 0, %522 ], [ 0, %579 ], [ 0, %581 ], [ 0, %570 ], [ 0, %585 ], [ 0, %237 ], [ 0, %296 ], [ 0, %338 ], [ 0, %340 ], [ 0, %329 ], [ 0, %344 ], [ %24, %175 ], [ %24, %177 ], [ %166, %165 ], [ %24, %83 ], [ %121, %117 ], [ 0, %73 ], [ 0, %75 ], [ 0, %64 ], [ 0, %79 ], [ 0, %535 ], [ 0, %546 ], [ 0, %544 ], [ 0, %550 ]
  br label %19

560:                                              ; preds = %352, %560
  %561 = phi i64 [ %566, %560 ], [ 0, %352 ]
  %562 = getelementptr inbounds [512 x i8], ptr %5, i64 0, i64 %561
  %563 = load i8, ptr %562, align 1, !tbaa !5
  %564 = zext i8 %563 to i32
  %565 = call i32 @putc(i32 noundef %564, ptr noundef nonnull %0)
  %566 = add nuw nsw i64 %561, 1
  %567 = icmp eq i64 %566, %353
  br i1 %567, label %568, label %560

568:                                              ; preds = %560, %372, %350
  %569 = phi ptr [ %23, %350 ], [ %373, %372 ], [ %23, %560 ]
  br i1 %15, label %570, label %585

570:                                              ; preds = %568
  %571 = load i32, ptr %7, align 4, !tbaa !8
  %572 = icmp slt i32 %571, 512
  br i1 %572, label %573, label %554

573:                                              ; preds = %570
  %574 = load i8, ptr %20, align 1, !tbaa !5
  %575 = zext i8 %574 to i64
  %576 = getelementptr inbounds [256 x i8], ptr @chtbl, i64 0, i64 %575
  %577 = load i8, ptr %576, align 1, !tbaa !5
  %578 = icmp eq i8 %577, 8
  br i1 %578, label %579, label %581

579:                                              ; preds = %573
  %580 = call fastcc ptr @BuildLines(ptr noundef %569, ptr noundef nonnull %6, ptr noundef nonnull %7)
  br label %554

581:                                              ; preds = %573
  %582 = add nsw i32 %571, 1
  store i32 %582, ptr %7, align 4, !tbaa !8
  %583 = sext i32 %571 to i64
  %584 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %583
  store i8 %574, ptr %584, align 1, !tbaa !5
  br label %554

585:                                              ; preds = %568
  %586 = load i8, ptr %20, align 1, !tbaa !5
  %587 = zext i8 %586 to i32
  %588 = call i32 @putc(i32 noundef %587, ptr noundef nonnull %0)
  br label %554

589:                                              ; preds = %19
  %590 = zext i8 %26 to i32
  %591 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 22, ptr noundef nonnull @.str.53, i32 noundef 0, ptr noundef nonnull @file_pos, i32 noundef %590) #10
  %592 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %593 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef %592, ptr noundef nonnull @.str.54) #10
  br label %554

594:                                              ; preds = %240, %377
  br i1 %15, label %595, label %603

595:                                              ; preds = %594
  %596 = load i32, ptr %7, align 4, !tbaa !8
  %597 = icmp slt i32 %596, 512
  %598 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @chtbl, i64 0, i64 10), align 2
  %599 = icmp eq i8 %598, 8
  %600 = select i1 %597, i1 %599, i1 false
  br i1 %600, label %601, label %605

601:                                              ; preds = %595
  %602 = call fastcc ptr @BuildLines(ptr noundef %23, ptr noundef nonnull %6, ptr noundef nonnull %7)
  br label %605

603:                                              ; preds = %594
  %604 = call i32 @putc(i32 noundef 10, ptr noundef nonnull %0)
  br label %605

605:                                              ; preds = %595, %601, %603
  %606 = phi ptr [ %602, %601 ], [ %23, %595 ], [ %23, %603 ]
  %607 = load ptr, ptr @startline, align 8, !tbaa !10
  %608 = ptrtoint ptr %20 to i64
  %609 = ptrtoint ptr %607 to i64
  %610 = sub i64 %608, %609
  %611 = icmp sgt i64 %610, 2047
  br i1 %611, label %612, label %617

612:                                              ; preds = %605
  %613 = load i32, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %614 = and i32 %613, 1048575
  %615 = or disjoint i32 %614, 1048576
  store i32 %615, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %616 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 21, ptr noundef nonnull @.str.41, i32 noundef 1, ptr noundef nonnull @file_pos) #10
  br label %617

617:                                              ; preds = %612, %605
  store ptr %20, ptr @chpt, align 8, !tbaa !10
  %618 = icmp eq ptr %606, null
  %619 = select i1 %15, i1 %618, i1 false
  br i1 %619, label %620, label %622

620:                                              ; preds = %617
  %621 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.36, ptr noundef nonnull @file_pos) #10
  br label %622

622:                                              ; preds = %620, %617
  %623 = phi ptr [ %621, %620 ], [ %606, %617 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #10
  ret ptr %623
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @BuildLines(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #3 {
  %4 = load i32, ptr %2, align 4, !tbaa !8
  %5 = add i32 %4, 68
  %6 = ashr i32 %5, 3
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @zz_size, align 4, !tbaa !8
  %8 = icmp ugt i32 %7, 264
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.30, i32 noundef 1, ptr noundef nonnull @file_pos) #10
  %11 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  br label %21

12:                                               ; preds = %3
  %13 = zext nneg i32 %7 to i64
  %14 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = tail call ptr @GetMemory(i32 noundef %7, ptr noundef nonnull @file_pos) #10
  store ptr %18, ptr @zz_hold, align 8, !tbaa !10
  br label %21

19:                                               ; preds = %12
  store ptr %15, ptr @zz_hold, align 8, !tbaa !10
  %20 = load ptr, ptr %15, align 8, !tbaa !5
  store ptr %20, ptr %14, align 8, !tbaa !10
  br label %21

21:                                               ; preds = %17, %19, %9
  %22 = phi ptr [ %18, %17 ], [ %15, %19 ], [ %11, %9 ]
  %23 = load i32, ptr @zz_size, align 4, !tbaa !8
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 1, i32 0, i32 1
  store i8 %24, ptr %25, align 1, !tbaa !5
  %26 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 1
  store i8 11, ptr %26, align 8, !tbaa !5
  %27 = getelementptr inbounds [2 x %struct.LIST], ptr %22, i64 0, i64 1
  %28 = getelementptr inbounds [2 x %struct.LIST], ptr %22, i64 0, i64 1, i32 1
  store ptr %22, ptr %28, align 8, !tbaa !5
  store ptr %22, ptr %27, align 8, !tbaa !5
  %29 = getelementptr inbounds %struct.LIST, ptr %22, i64 0, i32 1
  store ptr %22, ptr %29, align 8, !tbaa !5
  store ptr %22, ptr %22, align 8, !tbaa !5
  %30 = load i16, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 2), align 2, !tbaa !32
  %31 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 1, i32 0, i32 2
  store i16 %30, ptr %31, align 2, !tbaa !5
  %32 = load i32, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %33 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 1, i32 0, i32 3
  store i32 %32, ptr %33, align 4
  %34 = load i32, ptr %2, align 4, !tbaa !8
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %21, %36
  %37 = phi i64 [ %41, %36 ], [ 0, %21 ]
  %38 = getelementptr inbounds i8, ptr %1, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !5
  %40 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 4, i64 %37
  store i8 %39, ptr %40, align 1, !tbaa !5
  %41 = add nuw nsw i64 %37, 1
  %42 = load i32, ptr %2, align 4, !tbaa !8
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %36, label %45

45:                                               ; preds = %36
  %46 = and i64 %41, 4294967295
  br label %47

47:                                               ; preds = %45, %21
  %48 = phi i64 [ 0, %21 ], [ %46, %45 ]
  %49 = getelementptr inbounds %struct.word_type, ptr %22, i64 0, i32 4, i64 %48
  store i8 0, ptr %49, align 1, !tbaa !5
  store i32 0, ptr %2, align 4, !tbaa !8
  %50 = icmp eq ptr %0, null
  br i1 %50, label %255, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %53 = load i8, ptr %52, align 8, !tbaa !5
  %54 = icmp eq i8 %53, 11
  br i1 %54, label %55, label %121

55:                                               ; preds = %51
  %56 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 19), align 1, !tbaa !5
  %57 = zext i8 %56 to i32
  store i32 %57, ptr @zz_size, align 4, !tbaa !8
  %58 = zext i8 %56 to i64
  %59 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !10
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %64 = tail call ptr @GetMemory(i32 noundef %57, ptr noundef %63) #10
  store ptr %64, ptr @zz_hold, align 8, !tbaa !10
  br label %67

65:                                               ; preds = %55
  store ptr %60, ptr @zz_hold, align 8, !tbaa !10
  %66 = load ptr, ptr %60, align 8, !tbaa !5
  store ptr %66, ptr %59, align 8, !tbaa !10
  br label %67

67:                                               ; preds = %62, %65
  %68 = phi ptr [ %64, %62 ], [ %60, %65 ]
  %69 = getelementptr inbounds %struct.word_type, ptr %68, i64 0, i32 1
  store i8 19, ptr %69, align 8, !tbaa !5
  %70 = getelementptr inbounds [2 x %struct.LIST], ptr %68, i64 0, i64 1, i32 1
  store ptr %68, ptr %70, align 8, !tbaa !5
  %71 = getelementptr inbounds [2 x %struct.LIST], ptr %68, i64 0, i64 1
  store ptr %68, ptr %71, align 8, !tbaa !5
  %72 = getelementptr inbounds %struct.LIST, ptr %68, i64 0, i32 1
  store ptr %68, ptr %72, align 8, !tbaa !5
  store ptr %68, ptr %68, align 8, !tbaa !5
  %73 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 2
  %74 = load i16, ptr %73, align 2, !tbaa !5
  %75 = getelementptr inbounds %struct.word_type, ptr %68, i64 0, i32 1, i32 0, i32 2
  store i16 %74, ptr %75, align 2, !tbaa !5
  %76 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, 1048575
  %79 = getelementptr inbounds %struct.word_type, ptr %68, i64 0, i32 1, i32 0, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, -1048576
  %82 = or disjoint i32 %81, %78
  store i32 %82, ptr %79, align 4
  %83 = load i32, ptr %76, align 4
  %84 = and i32 %83, -1048576
  %85 = or disjoint i32 %84, %78
  store i32 %85, ptr %79, align 4
  %86 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %87 = zext i8 %86 to i32
  store i32 %87, ptr @zz_size, align 4, !tbaa !8
  %88 = zext i8 %86 to i64
  %89 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !10
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %67
  %93 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %94 = tail call ptr @GetMemory(i32 noundef %87, ptr noundef %93) #10
  br label %97

95:                                               ; preds = %67
  store ptr %90, ptr @zz_hold, align 8, !tbaa !10
  %96 = load ptr, ptr %90, align 8, !tbaa !5
  store ptr %96, ptr %89, align 8, !tbaa !10
  br label %97

97:                                               ; preds = %92, %95
  %98 = phi ptr [ %94, %92 ], [ %90, %95 ]
  %99 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 1
  store i8 0, ptr %99, align 8, !tbaa !5
  %100 = getelementptr inbounds [2 x %struct.LIST], ptr %98, i64 0, i64 1, i32 1
  store ptr %98, ptr %100, align 8, !tbaa !5
  %101 = getelementptr inbounds [2 x %struct.LIST], ptr %98, i64 0, i64 1
  store ptr %98, ptr %101, align 8, !tbaa !5
  %102 = getelementptr inbounds %struct.LIST, ptr %98, i64 0, i32 1
  store ptr %98, ptr %102, align 8, !tbaa !5
  store ptr %98, ptr %98, align 8, !tbaa !5
  store ptr %98, ptr @xx_link, align 8, !tbaa !10
  store ptr %98, ptr @zz_res, align 8, !tbaa !10
  store ptr %68, ptr @zz_hold, align 8, !tbaa !10
  %103 = load ptr, ptr %68, align 8, !tbaa !5
  store ptr %103, ptr @zz_tmp, align 8, !tbaa !10
  %104 = load ptr, ptr %98, align 8, !tbaa !5
  store ptr %104, ptr %68, align 8, !tbaa !5
  %105 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %106 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %107 = load ptr, ptr %106, align 8, !tbaa !5
  %108 = getelementptr inbounds %struct.LIST, ptr %107, i64 0, i32 1
  store ptr %105, ptr %108, align 8, !tbaa !5
  %109 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %109, ptr %106, align 8, !tbaa !5
  %110 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %111 = getelementptr inbounds %struct.LIST, ptr %109, i64 0, i32 1
  store ptr %110, ptr %111, align 8, !tbaa !5
  %112 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %112, ptr @zz_res, align 8, !tbaa !10
  store ptr %0, ptr @zz_hold, align 8, !tbaa !10
  %113 = icmp eq ptr %112, null
  br i1 %113, label %121, label %114

114:                                              ; preds = %97
  %115 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !5
  store ptr %116, ptr @zz_tmp, align 8, !tbaa !10
  %117 = getelementptr inbounds [2 x %struct.LIST], ptr %112, i64 0, i64 1
  %118 = load ptr, ptr %117, align 8, !tbaa !5
  store ptr %118, ptr %115, align 8, !tbaa !5
  %119 = getelementptr inbounds [2 x %struct.LIST], ptr %118, i64 0, i64 1, i32 1
  store ptr %0, ptr %119, align 8, !tbaa !5
  store ptr %116, ptr %117, align 8, !tbaa !5
  %120 = getelementptr inbounds [2 x %struct.LIST], ptr %116, i64 0, i64 1, i32 1
  store ptr %112, ptr %120, align 8, !tbaa !5
  br label %121

121:                                              ; preds = %51, %97, %114
  %122 = phi ptr [ %68, %114 ], [ %68, %97 ], [ %0, %51 ]
  %123 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 1), align 1, !tbaa !5
  %124 = zext i8 %123 to i32
  store i32 %124, ptr @zz_size, align 4, !tbaa !8
  %125 = zext i8 %123 to i64
  %126 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !10
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %121
  %130 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %131 = tail call ptr @GetMemory(i32 noundef %124, ptr noundef %130) #10
  store ptr %131, ptr @zz_hold, align 8, !tbaa !10
  br label %134

132:                                              ; preds = %121
  store ptr %127, ptr @zz_hold, align 8, !tbaa !10
  %133 = load ptr, ptr %127, align 8, !tbaa !5
  store ptr %133, ptr %126, align 8, !tbaa !10
  br label %134

134:                                              ; preds = %129, %132
  %135 = phi ptr [ %131, %129 ], [ %127, %132 ]
  %136 = getelementptr inbounds %struct.word_type, ptr %135, i64 0, i32 1
  store i8 1, ptr %136, align 8, !tbaa !5
  %137 = getelementptr inbounds [2 x %struct.LIST], ptr %135, i64 0, i64 1
  %138 = getelementptr inbounds [2 x %struct.LIST], ptr %135, i64 0, i64 1, i32 1
  store ptr %135, ptr %138, align 8, !tbaa !5
  store ptr %135, ptr %137, align 8, !tbaa !5
  %139 = getelementptr inbounds %struct.LIST, ptr %135, i64 0, i32 1
  store ptr %135, ptr %139, align 8, !tbaa !5
  store ptr %135, ptr %135, align 8, !tbaa !5
  %140 = getelementptr inbounds %struct.gapobj_type, ptr %135, i64 0, i32 3
  %141 = load i16, ptr %140, align 4
  %142 = and i16 %141, -769
  store i16 %142, ptr %140, align 4
  %143 = load i16, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 2), align 2, !tbaa !32
  %144 = getelementptr inbounds %struct.word_type, ptr %135, i64 0, i32 1, i32 0, i32 2
  store i16 %143, ptr %144, align 2, !tbaa !5
  %145 = load i32, ptr getelementptr inbounds (%struct.FILE_POS, ptr @file_pos, i64 0, i32 3), align 4
  %146 = getelementptr inbounds %struct.word_type, ptr %135, i64 0, i32 1, i32 0, i32 3
  store i32 %145, ptr %146, align 4
  %147 = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.56, ptr noundef nonnull @file_pos) #10
  %148 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %149 = zext i8 %148 to i32
  store i32 %149, ptr @zz_size, align 4, !tbaa !8
  %150 = zext i8 %148 to i64
  %151 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !10
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %134
  %155 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %156 = tail call ptr @GetMemory(i32 noundef %149, ptr noundef %155) #10
  br label %159

157:                                              ; preds = %134
  store ptr %152, ptr @zz_hold, align 8, !tbaa !10
  %158 = load ptr, ptr %152, align 8, !tbaa !5
  store ptr %158, ptr %151, align 8, !tbaa !10
  br label %159

159:                                              ; preds = %154, %157
  %160 = phi ptr [ %156, %154 ], [ %152, %157 ]
  %161 = getelementptr inbounds %struct.word_type, ptr %160, i64 0, i32 1
  store i8 0, ptr %161, align 8, !tbaa !5
  %162 = getelementptr inbounds [2 x %struct.LIST], ptr %160, i64 0, i64 1, i32 1
  store ptr %160, ptr %162, align 8, !tbaa !5
  %163 = getelementptr inbounds [2 x %struct.LIST], ptr %160, i64 0, i64 1
  store ptr %160, ptr %163, align 8, !tbaa !5
  %164 = getelementptr inbounds %struct.LIST, ptr %160, i64 0, i32 1
  store ptr %160, ptr %164, align 8, !tbaa !5
  store ptr %160, ptr %160, align 8, !tbaa !5
  store ptr %160, ptr @xx_link, align 8, !tbaa !10
  store ptr %160, ptr @zz_res, align 8, !tbaa !10
  store ptr %135, ptr @zz_hold, align 8, !tbaa !10
  %165 = load ptr, ptr %135, align 8, !tbaa !5
  store ptr %165, ptr @zz_tmp, align 8, !tbaa !10
  %166 = load ptr, ptr %160, align 8, !tbaa !5
  store ptr %166, ptr %135, align 8, !tbaa !5
  %167 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %168 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %169 = load ptr, ptr %168, align 8, !tbaa !5
  %170 = getelementptr inbounds %struct.LIST, ptr %169, i64 0, i32 1
  store ptr %167, ptr %170, align 8, !tbaa !5
  %171 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %171, ptr %168, align 8, !tbaa !5
  %172 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %173 = getelementptr inbounds %struct.LIST, ptr %171, i64 0, i32 1
  store ptr %172, ptr %173, align 8, !tbaa !5
  %174 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %174, ptr @zz_res, align 8, !tbaa !10
  store ptr %147, ptr @zz_hold, align 8, !tbaa !10
  %175 = icmp eq ptr %147, null
  %176 = icmp eq ptr %174, null
  %177 = select i1 %175, i1 true, i1 %176
  br i1 %177, label %185, label %178

178:                                              ; preds = %159
  %179 = getelementptr inbounds [2 x %struct.LIST], ptr %147, i64 0, i64 1
  %180 = load ptr, ptr %179, align 8, !tbaa !5
  store ptr %180, ptr @zz_tmp, align 8, !tbaa !10
  %181 = getelementptr inbounds [2 x %struct.LIST], ptr %174, i64 0, i64 1
  %182 = load ptr, ptr %181, align 8, !tbaa !5
  store ptr %182, ptr %179, align 8, !tbaa !5
  %183 = getelementptr inbounds [2 x %struct.LIST], ptr %182, i64 0, i64 1, i32 1
  store ptr %147, ptr %183, align 8, !tbaa !5
  store ptr %180, ptr %181, align 8, !tbaa !5
  %184 = getelementptr inbounds [2 x %struct.LIST], ptr %180, i64 0, i64 1, i32 1
  store ptr %174, ptr %184, align 8, !tbaa !5
  br label %185

185:                                              ; preds = %159, %178
  %186 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %187 = zext i8 %186 to i32
  store i32 %187, ptr @zz_size, align 4, !tbaa !8
  %188 = zext i8 %186 to i64
  %189 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %188
  %190 = load ptr, ptr %189, align 8, !tbaa !10
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %185
  %193 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %194 = tail call ptr @GetMemory(i32 noundef %187, ptr noundef %193) #10
  br label %197

195:                                              ; preds = %185
  store ptr %190, ptr @zz_hold, align 8, !tbaa !10
  %196 = load ptr, ptr %190, align 8, !tbaa !5
  store ptr %196, ptr %189, align 8, !tbaa !10
  br label %197

197:                                              ; preds = %192, %195
  %198 = phi ptr [ %194, %192 ], [ %190, %195 ]
  %199 = getelementptr inbounds %struct.word_type, ptr %198, i64 0, i32 1
  store i8 0, ptr %199, align 8, !tbaa !5
  %200 = getelementptr inbounds [2 x %struct.LIST], ptr %198, i64 0, i64 1, i32 1
  store ptr %198, ptr %200, align 8, !tbaa !5
  %201 = getelementptr inbounds [2 x %struct.LIST], ptr %198, i64 0, i64 1
  store ptr %198, ptr %201, align 8, !tbaa !5
  %202 = getelementptr inbounds %struct.LIST, ptr %198, i64 0, i32 1
  store ptr %198, ptr %202, align 8, !tbaa !5
  store ptr %198, ptr %198, align 8, !tbaa !5
  store ptr %198, ptr @xx_link, align 8, !tbaa !10
  store ptr %198, ptr @zz_res, align 8, !tbaa !10
  store ptr %122, ptr @zz_hold, align 8, !tbaa !10
  %203 = load ptr, ptr %122, align 8, !tbaa !5
  store ptr %203, ptr @zz_tmp, align 8, !tbaa !10
  %204 = load ptr, ptr %198, align 8, !tbaa !5
  store ptr %204, ptr %122, align 8, !tbaa !5
  %205 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %206 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %207 = load ptr, ptr %206, align 8, !tbaa !5
  %208 = getelementptr inbounds %struct.LIST, ptr %207, i64 0, i32 1
  store ptr %205, ptr %208, align 8, !tbaa !5
  %209 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %209, ptr %206, align 8, !tbaa !5
  %210 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %211 = getelementptr inbounds %struct.LIST, ptr %209, i64 0, i32 1
  store ptr %210, ptr %211, align 8, !tbaa !5
  %212 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %212, ptr @zz_res, align 8, !tbaa !10
  store ptr %135, ptr @zz_hold, align 8, !tbaa !10
  %213 = icmp eq ptr %212, null
  br i1 %213, label %220, label %214

214:                                              ; preds = %197
  %215 = load ptr, ptr %137, align 8, !tbaa !5
  store ptr %215, ptr @zz_tmp, align 8, !tbaa !10
  %216 = getelementptr inbounds [2 x %struct.LIST], ptr %212, i64 0, i64 1
  %217 = load ptr, ptr %216, align 8, !tbaa !5
  store ptr %217, ptr %137, align 8, !tbaa !5
  %218 = getelementptr inbounds [2 x %struct.LIST], ptr %217, i64 0, i64 1, i32 1
  store ptr %135, ptr %218, align 8, !tbaa !5
  store ptr %215, ptr %216, align 8, !tbaa !5
  %219 = getelementptr inbounds [2 x %struct.LIST], ptr %215, i64 0, i64 1, i32 1
  store ptr %212, ptr %219, align 8, !tbaa !5
  br label %220

220:                                              ; preds = %197, %214
  %221 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %222 = zext i8 %221 to i32
  store i32 %222, ptr @zz_size, align 4, !tbaa !8
  %223 = zext i8 %221 to i64
  %224 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %223
  %225 = load ptr, ptr %224, align 8, !tbaa !10
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %230

227:                                              ; preds = %220
  %228 = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %229 = tail call ptr @GetMemory(i32 noundef %222, ptr noundef %228) #10
  br label %232

230:                                              ; preds = %220
  store ptr %225, ptr @zz_hold, align 8, !tbaa !10
  %231 = load ptr, ptr %225, align 8, !tbaa !5
  store ptr %231, ptr %224, align 8, !tbaa !10
  br label %232

232:                                              ; preds = %227, %230
  %233 = phi ptr [ %229, %227 ], [ %225, %230 ]
  %234 = getelementptr inbounds %struct.word_type, ptr %233, i64 0, i32 1
  store i8 0, ptr %234, align 8, !tbaa !5
  %235 = getelementptr inbounds [2 x %struct.LIST], ptr %233, i64 0, i64 1, i32 1
  store ptr %233, ptr %235, align 8, !tbaa !5
  %236 = getelementptr inbounds [2 x %struct.LIST], ptr %233, i64 0, i64 1
  store ptr %233, ptr %236, align 8, !tbaa !5
  %237 = getelementptr inbounds %struct.LIST, ptr %233, i64 0, i32 1
  store ptr %233, ptr %237, align 8, !tbaa !5
  store ptr %233, ptr %233, align 8, !tbaa !5
  store ptr %233, ptr @xx_link, align 8, !tbaa !10
  store ptr %233, ptr @zz_res, align 8, !tbaa !10
  store ptr %122, ptr @zz_hold, align 8, !tbaa !10
  %238 = load ptr, ptr %122, align 8, !tbaa !5
  store ptr %238, ptr @zz_tmp, align 8, !tbaa !10
  %239 = load ptr, ptr %233, align 8, !tbaa !5
  store ptr %239, ptr %122, align 8, !tbaa !5
  %240 = load ptr, ptr @zz_hold, align 8, !tbaa !10
  %241 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %242 = load ptr, ptr %241, align 8, !tbaa !5
  %243 = getelementptr inbounds %struct.LIST, ptr %242, i64 0, i32 1
  store ptr %240, ptr %243, align 8, !tbaa !5
  %244 = load ptr, ptr @zz_tmp, align 8, !tbaa !10
  store ptr %244, ptr %241, align 8, !tbaa !5
  %245 = load ptr, ptr @zz_res, align 8, !tbaa !10
  %246 = getelementptr inbounds %struct.LIST, ptr %244, i64 0, i32 1
  store ptr %245, ptr %246, align 8, !tbaa !5
  %247 = load ptr, ptr @xx_link, align 8, !tbaa !10
  store ptr %247, ptr @zz_res, align 8, !tbaa !10
  store ptr %22, ptr @zz_hold, align 8, !tbaa !10
  %248 = icmp eq ptr %247, null
  br i1 %248, label %255, label %249

249:                                              ; preds = %232
  %250 = load ptr, ptr %27, align 8, !tbaa !5
  store ptr %250, ptr @zz_tmp, align 8, !tbaa !10
  %251 = getelementptr inbounds [2 x %struct.LIST], ptr %247, i64 0, i64 1
  %252 = load ptr, ptr %251, align 8, !tbaa !5
  store ptr %252, ptr %27, align 8, !tbaa !5
  %253 = getelementptr inbounds [2 x %struct.LIST], ptr %252, i64 0, i64 1, i32 1
  store ptr %22, ptr %253, align 8, !tbaa !5
  store ptr %250, ptr %251, align 8, !tbaa !5
  %254 = getelementptr inbounds [2 x %struct.LIST], ptr %250, i64 0, i64 1, i32 1
  store ptr %247, ptr %254, align 8, !tbaa !5
  br label %255

255:                                              ; preds = %232, %47, %249
  %256 = phi ptr [ %122, %249 ], [ %22, %47 ], [ %122, %232 ]
  ret ptr %256
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

declare i32 @StringBeginsWith(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #6

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !14, i64 48}
!13 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !9, i64 32, !6, i64 36, !11, i64 40, !14, i64 48, !11, i64 56, !15, i64 64, !14, i64 72, !11, i64 80, !9, i64 88, !9, i64 92, !9, i64 96, !16, i64 104, !11, i64 112}
!14 = !{!"short", !6, i64 0}
!15 = !{!"", !6, i64 0, !6, i64 1, !14, i64 2, !9, i64 4, !9, i64 6}
!16 = !{!"long", !6, i64 0}
!17 = !{!13, !11, i64 0}
!18 = !{!13, !11, i64 8}
!19 = !{!13, !11, i64 16}
!20 = !{!13, !11, i64 24}
!21 = !{!13, !9, i64 32}
!22 = !{!13, !6, i64 36}
!23 = !{!13, !11, i64 40}
!24 = !{!14, !14, i64 0}
!25 = !{!13, !11, i64 56}
!26 = !{!13, !14, i64 72}
!27 = !{!13, !11, i64 80}
!28 = !{!13, !9, i64 88}
!29 = !{!13, !9, i64 92}
!30 = !{!13, !9, i64 96}
!31 = !{!13, !11, i64 112}
!32 = !{!15, !14, i64 2}
!33 = !{!13, !14, i64 66}
!34 = !{!13, !16, i64 104}
!35 = distinct !{!35, !36, !37}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = distinct !{!38, !36, !37}
!39 = distinct !{!39, !36}
!40 = distinct !{!40, !36, !37}
!41 = distinct !{!41, !36, !37}
!42 = distinct !{!42, !36}
!43 = distinct !{!43, !36, !37}
!44 = distinct !{!44, !36, !37}
!45 = distinct !{!45, !36}
!46 = distinct !{!46, !36, !37}
!47 = distinct !{!47, !36, !37}
!48 = distinct !{!48, !36}
!49 = distinct !{!49, !36, !37}
!50 = distinct !{!50, !36, !37}
!51 = distinct !{!51, !36}
