; ModuleID = 'src/config.c'
source_filename = "src/config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@line = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"pgp\00", align 1
@errtag = internal unnamed_addr global ptr null, align 8
@errCount = internal unnamed_addr global i32 0, align 4
@intrinsics = internal global [30 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], align 16
@intrinsicType = internal unnamed_addr constant [30 x i32] [i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 0, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 2, i32 1, i32 2, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1], align 16
@value = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Cannot open configuration file %s\0A\00", align 1
@hasError = internal unnamed_addr global i1 false, align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: line '%.30s...' too long\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"> %s\0A  \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%*s^\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"%s: bad character in command on line %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"%s: %s%d error(s) detected\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Maximum level of \00", align 1
@optstr = internal global [100 x i8] zeroinitializer, align 16
@.str.10 = private unnamed_addr constant [27 x i8] c"%s: unknown keyword: \22%s\22\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"%s: \22%s\22 is ambiguous\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"ARMOR\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"COMPRESS\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"SHOWPASS\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"KEEPBINARY\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"LANGUAGE\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"MYNAME\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"TEXTMODE\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"TMP\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"TZFIX\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"VERBOSE\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"BAKRING\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"ARMORLINES\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"COMPLETES_NEEDED\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"MARGINALS_NEEDED\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"PAGER\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"CERT_DEPTH\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"CHARSET\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"CLEARSIG\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"ENCRYPTTOSELF\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"INTERACTIVE\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"PUBRING\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"SECRING\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"RANDSEED\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"COMMENT\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"AUTOSIGN\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"LEGAL_KLUDGE\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"BATCHMODE\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"FORCE\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"NOMANUAL\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"MAKERANDOM\00", align 1
@emit_radix_64 = external local_unnamed_addr global i8, align 1
@pem_lines = external local_unnamed_addr global i32, align 4
@sign_new_userids = external local_unnamed_addr global i8, align 1
@floppyring = external global [0 x i8], align 1
@str = internal global [100 x i8] zeroinitializer, align 16
@batchmode = external local_unnamed_addr global i8, align 1
@max_cert_depth = external local_unnamed_addr global i32, align 4
@charset = external global [0 x i8], align 1
@clear_signatures = external local_unnamed_addr global i8, align 1
@globalCommentString = external global [128 x i8], align 16
@compl_min = external local_unnamed_addr global i32, align 4
@compress_enabled = external local_unnamed_addr global i8, align 1
@force_flag = external local_unnamed_addr global i8, align 1
@interactive_add = external local_unnamed_addr global i8, align 1
@keepctx = external local_unnamed_addr global i8, align 1
@language = external global [0 x i8], align 1
@version_byte = external local_unnamed_addr global i32, align 4
@makerandom = external local_unnamed_addr global i32, align 4
@marg_min = external local_unnamed_addr global i32, align 4
@my_name = external global [0 x i8], align 1
@nomanual = external local_unnamed_addr global i8, align 1
@pager = external global [0 x i8], align 1
@globalPubringName = external global [256 x i8], align 16
@globalRandseedName = external global [256 x i8], align 16
@globalSecringName = external global [256 x i8], align 16
@encrypt_to_self = external local_unnamed_addr global i8, align 1
@showpass = external local_unnamed_addr global i8, align 1
@literal_mode = external local_unnamed_addr global i8, align 1
@timeshift = external local_unnamed_addr global i64, align 8
@quietmode = external local_unnamed_addr global i8, align 1
@verbose = external local_unnamed_addr global i8, align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"%s: expected '=' in line %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"%s: expected '=' after \22%s\22\0A\00", align 1
@settings = internal global [2 x ptr] [ptr @.str.46, ptr @.str.47], align 16
@.str.44 = private unnamed_addr constant [42 x i8] c"%s: numeric argument expected in line %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [40 x i8] c"%s: numeric argument required for \22%s\22\0A\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.48 = private unnamed_addr constant [36 x i8] c"%s: unterminated string in line %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"unterminated string: '\22%s'\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @processConfigLine(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr @line, align 4, !tbaa !5
  store ptr @.str, ptr @errtag, align 8, !tbaa !9
  store i32 0, ptr @errCount, align 4, !tbaa !5
  br label %3

3:                                                ; preds = %1, %7
  %4 = phi i64 [ 0, %1 ], [ %8, %7 ]
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !11
  switch i8 %6, label %7 [
    i8 61, label %10
    i8 32, label %10
    i8 9, label %10
    i8 0, label %10
  ]

7:                                                ; preds = %3
  %8 = add nuw nsw i64 %4, 1
  %9 = icmp eq i64 %8, 100
  br i1 %9, label %12, label %3, !llvm.loop !12

10:                                               ; preds = %3, %3, %3, %3
  %11 = trunc i64 %4 to i32
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi i32 [ %11, %10 ], [ 100, %7 ]
  store i32 %13, ptr %2, align 4, !tbaa !5
  %14 = tail call fastcc i32 @lookup(ptr noundef %0, i32 noundef %13, ptr noundef nonnull @intrinsics, i32 noundef 30)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %38, label %16

16:                                               ; preds = %12
  %17 = zext nneg i32 %13 to i64
  %18 = getelementptr inbounds i8, ptr %0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !11
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = zext nneg i32 %14 to i64
  %23 = lshr i64 521011279, %22
  %24 = and i64 %23, 1
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 1, ptr @value, align 4, !tbaa !5
  br label %33

27:                                               ; preds = %21, %16
  %28 = sext i32 %14 to i64
  %29 = getelementptr inbounds [30 x i32], ptr @intrinsicType, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !5
  %31 = call fastcc i32 @getAssignment(ptr noundef nonnull %18, ptr noundef nonnull %2, i32 noundef %30)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %34, label %33

33:                                               ; preds = %27, %26
  tail call fastcc void @processAssignment(i32 noundef %14)
  br label %34

34:                                               ; preds = %33, %27
  %35 = load i32, ptr @errCount, align 4, !tbaa !5
  %36 = icmp ne i32 %35, 0
  %37 = sext i1 %36 to i32
  br label %38

38:                                               ; preds = %12, %34
  %39 = phi i32 [ %37, %34 ], [ -1, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %39
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @lookup(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = tail call ptr @strncpy(ptr noundef nonnull @optstr, ptr noundef %0, i64 noundef %5) #8
  %7 = getelementptr inbounds [100 x i8], ptr @optstr, i64 0, i64 %5
  store i8 0, ptr %7, align 1, !tbaa !11
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = zext nneg i32 %1 to i64
  br label %15

11:                                               ; preds = %15, %4
  %12 = icmp sgt i32 %3, 0
  br i1 %12, label %13, label %43

13:                                               ; preds = %11
  %14 = zext nneg i32 %3 to i64
  br label %24

15:                                               ; preds = %9, %15
  %16 = phi i64 [ 0, %9 ], [ %22, %15 ]
  %17 = getelementptr inbounds i8, ptr %0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !11
  %19 = sext i8 %18 to i32
  %20 = tail call i32 @to_upper(i32 noundef %19) #8
  %21 = trunc i32 %20 to i8
  store i8 %21, ptr %17, align 1, !tbaa !11
  %22 = add nuw nsw i64 %16, 1
  %23 = icmp eq i64 %22, %10
  br i1 %23, label %11, label %15, !llvm.loop !14

24:                                               ; preds = %13, %38
  %25 = phi i64 [ 0, %13 ], [ %41, %38 ]
  %26 = phi i32 [ 0, %13 ], [ %40, %38 ]
  %27 = phi i32 [ 0, %13 ], [ %39, %38 ]
  %28 = getelementptr inbounds ptr, ptr %2, i64 %25
  %29 = load ptr, ptr %28, align 8, !tbaa !9
  %30 = tail call i32 @strncmp(ptr noundef %0, ptr noundef %29, i64 noundef %5) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %29) #9
  %34 = icmp eq i64 %33, %5
  br i1 %34, label %54, label %35

35:                                               ; preds = %32
  %36 = add nsw i32 %26, 1
  %37 = trunc i64 %25 to i32
  br label %38

38:                                               ; preds = %24, %35
  %39 = phi i32 [ %27, %24 ], [ %37, %35 ]
  %40 = phi i32 [ %26, %24 ], [ %36, %35 ]
  %41 = add nuw nsw i64 %25, 1
  %42 = icmp eq i64 %41, %14
  br i1 %42, label %43, label %24, !llvm.loop !15

43:                                               ; preds = %38, %11
  %44 = phi i32 [ 0, %11 ], [ %39, %38 ]
  %45 = phi i32 [ 0, %11 ], [ %40, %38 ]
  switch i32 %45, label %50 [
    i32 0, label %46
    i32 1, label %56
  ]

46:                                               ; preds = %43
  %47 = load ptr, ptr @stderr, align 8, !tbaa !9
  %48 = load ptr, ptr @errtag, align 8, !tbaa !9
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.10, ptr noundef %48, ptr noundef nonnull @optstr) #10
  br label %56

50:                                               ; preds = %43
  %51 = load ptr, ptr @stderr, align 8, !tbaa !9
  %52 = load ptr, ptr @errtag, align 8, !tbaa !9
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.11, ptr noundef %52, ptr noundef nonnull @optstr) #10
  br label %56

54:                                               ; preds = %32
  %55 = trunc i64 %25 to i32
  br label %56

56:                                               ; preds = %54, %46, %50, %43
  %57 = phi i32 [ %44, %43 ], [ -1, %50 ], [ -1, %46 ], [ %55, %54 ]
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define internal fastcc void @processAssignment(i32 noundef %0) unnamed_addr #0 {
  %2 = load i1, ptr @hasError, align 1
  br i1 %2, label %92, label %3

3:                                                ; preds = %1
  switch i32 %0, label %92 [
    i32 0, label %4
    i32 11, label %7
    i32 24, label %9
    i32 10, label %12
    i32 26, label %14
    i32 15, label %17
    i32 16, label %21
    i32 17, label %23
    i32 23, label %26
    i32 12, label %28
    i32 1, label %32
    i32 27, label %35
    i32 19, label %38
    i32 3, label %41
    i32 4, label %44
    i32 25, label %46
    i32 29, label %50
    i32 13, label %52
    i32 5, label %55
    i32 28, label %57
    i32 14, label %60
    i32 20, label %62
    i32 22, label %64
    i32 21, label %66
    i32 18, label %68
    i32 2, label %71
    i32 6, label %74
    i32 7, label %79
    i32 8, label %80
    i32 9, label %84
  ]

4:                                                ; preds = %3
  %5 = load i32, ptr @value, align 4, !tbaa !5
  %6 = trunc i32 %5 to i8
  store i8 %6, ptr @emit_radix_64, align 1, !tbaa !11
  br label %92

7:                                                ; preds = %3
  %8 = load i32, ptr @value, align 4, !tbaa !5
  store i32 %8, ptr @pem_lines, align 4, !tbaa !5
  br label %92

9:                                                ; preds = %3
  %10 = load i32, ptr @value, align 4, !tbaa !5
  %11 = trunc i32 %10 to i8
  store i8 %11, ptr @sign_new_userids, align 1, !tbaa !11
  br label %92

12:                                               ; preds = %3
  %13 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @floppyring, ptr noundef nonnull dereferenceable(1) @str) #8
  br label %92

14:                                               ; preds = %3
  %15 = load i32, ptr @value, align 4, !tbaa !5
  %16 = trunc i32 %15 to i8
  store i8 %16, ptr @batchmode, align 1, !tbaa !11
  br label %92

17:                                               ; preds = %3
  %18 = load i32, ptr @value, align 4, !tbaa !5
  %19 = tail call i32 @llvm.smax.i32(i32 %18, i32 0)
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 8)
  store i32 %20, ptr @max_cert_depth, align 4
  br label %92

21:                                               ; preds = %3
  %22 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @charset, ptr noundef nonnull dereferenceable(1) @str, i64 noundef 16) #8
  br label %92

23:                                               ; preds = %3
  %24 = load i32, ptr @value, align 4, !tbaa !5
  %25 = trunc i32 %24 to i8
  store i8 %25, ptr @clear_signatures, align 1, !tbaa !11
  br label %92

26:                                               ; preds = %3
  %27 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @globalCommentString, ptr noundef nonnull dereferenceable(1) @str) #8
  br label %92

28:                                               ; preds = %3
  %29 = load i32, ptr @value, align 4, !tbaa !5
  %30 = tail call i32 @llvm.smax.i32(i32 %29, i32 1)
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 4)
  store i32 %31, ptr @compl_min, align 4
  br label %92

32:                                               ; preds = %3
  %33 = load i32, ptr @value, align 4, !tbaa !5
  %34 = trunc i32 %33 to i8
  store i8 %34, ptr @compress_enabled, align 1, !tbaa !11
  br label %92

35:                                               ; preds = %3
  %36 = load i32, ptr @value, align 4, !tbaa !5
  %37 = trunc i32 %36 to i8
  store i8 %37, ptr @force_flag, align 1, !tbaa !11
  br label %92

38:                                               ; preds = %3
  %39 = load i32, ptr @value, align 4, !tbaa !5
  %40 = trunc i32 %39 to i8
  store i8 %40, ptr @interactive_add, align 1, !tbaa !11
  br label %92

41:                                               ; preds = %3
  %42 = load i32, ptr @value, align 4, !tbaa !5
  %43 = trunc i32 %42 to i8
  store i8 %43, ptr @keepctx, align 1, !tbaa !11
  br label %92

44:                                               ; preds = %3
  %45 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @language, ptr noundef nonnull dereferenceable(1) @str, i64 noundef 15) #8
  br label %92

46:                                               ; preds = %3
  %47 = load i32, ptr @value, align 4, !tbaa !5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %92

49:                                               ; preds = %46
  store i32 2, ptr @version_byte, align 4, !tbaa !5
  br label %92

50:                                               ; preds = %3
  %51 = load i32, ptr @value, align 4, !tbaa !5
  store i32 %51, ptr @makerandom, align 4, !tbaa !5
  br label %92

52:                                               ; preds = %3
  %53 = load i32, ptr @value, align 4, !tbaa !5
  %54 = tail call i32 @llvm.smax.i32(i32 %53, i32 1)
  store i32 %54, ptr @marg_min, align 4
  br label %92

55:                                               ; preds = %3
  %56 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @my_name, ptr noundef nonnull dereferenceable(1) @str) #8
  br label %92

57:                                               ; preds = %3
  %58 = load i32, ptr @value, align 4, !tbaa !5
  %59 = trunc i32 %58 to i8
  store i8 %59, ptr @nomanual, align 1, !tbaa !11
  br label %92

60:                                               ; preds = %3
  %61 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @pager, ptr noundef nonnull dereferenceable(1) @str) #8
  br label %92

62:                                               ; preds = %3
  %63 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @globalPubringName, ptr noundef nonnull dereferenceable(1) @str) #8
  br label %92

64:                                               ; preds = %3
  %65 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @globalRandseedName, ptr noundef nonnull dereferenceable(1) @str) #8
  br label %92

66:                                               ; preds = %3
  %67 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @globalSecringName, ptr noundef nonnull dereferenceable(1) @str) #8
  br label %92

68:                                               ; preds = %3
  %69 = load i32, ptr @value, align 4, !tbaa !5
  %70 = trunc i32 %69 to i8
  store i8 %70, ptr @encrypt_to_self, align 1, !tbaa !11
  br label %92

71:                                               ; preds = %3
  %72 = load i32, ptr @value, align 4, !tbaa !5
  %73 = trunc i32 %72 to i8
  store i8 %73, ptr @showpass, align 1, !tbaa !11
  br label %92

74:                                               ; preds = %3
  %75 = load i32, ptr @value, align 4, !tbaa !5
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  store i8 116, ptr @literal_mode, align 1, !tbaa !11
  br label %92

78:                                               ; preds = %74
  store i8 98, ptr @literal_mode, align 1, !tbaa !11
  br label %92

79:                                               ; preds = %3
  tail call void @settmpdir(ptr noundef nonnull @str) #8
  br label %92

80:                                               ; preds = %3
  %81 = load i32, ptr @value, align 4, !tbaa !5
  %82 = sext i32 %81 to i64
  %83 = mul nsw i64 %82, 3600
  store i64 %83, ptr @timeshift, align 8, !tbaa !16
  br label %92

84:                                               ; preds = %3
  %85 = load i32, ptr @value, align 4, !tbaa !5
  %86 = icmp slt i32 %85, 1
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i8 1, ptr @quietmode, align 1, !tbaa !11
  store i8 0, ptr @verbose, align 1, !tbaa !11
  br label %92

88:                                               ; preds = %84
  %89 = icmp eq i32 %85, 1
  store i8 0, ptr @quietmode, align 1, !tbaa !11
  br i1 %89, label %90, label %91

90:                                               ; preds = %88
  store i8 0, ptr @verbose, align 1, !tbaa !11
  br label %92

91:                                               ; preds = %88
  store i8 1, ptr @verbose, align 1, !tbaa !11
  br label %92

92:                                               ; preds = %28, %17, %4, %7, %9, %12, %14, %21, %23, %26, %32, %35, %38, %41, %44, %50, %52, %55, %57, %60, %62, %64, %66, %68, %71, %79, %80, %3, %49, %46, %78, %77, %90, %91, %87, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @getAssignment(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  br label %5

5:                                                ; preds = %12, %3
  %6 = phi i64 [ %13, %12 ], [ 0, %3 ]
  %7 = phi ptr [ %14, %12 ], [ %0, %3 ]
  %8 = load i8, ptr %7, align 1, !tbaa !11
  switch i8 %8, label %9 [
    i8 9, label %12
    i8 32, label %12
  ]

9:                                                ; preds = %5
  %10 = trunc i64 %6 to i32
  %11 = icmp ult i32 %10, 100
  br i1 %11, label %15, label %24

12:                                               ; preds = %5, %5
  %13 = add nuw i64 %6, 1
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  br label %5, !llvm.loop !18

15:                                               ; preds = %9, %19
  %16 = phi i64 [ %20, %19 ], [ %6, %9 ]
  %17 = getelementptr inbounds i8, ptr %0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !11
  switch i8 %18, label %19 [
    i8 32, label %22
    i8 9, label %22
    i8 0, label %22
  ]

19:                                               ; preds = %15
  %20 = add nuw i64 %16, 1
  %21 = icmp eq i64 %20, 100
  br i1 %21, label %24, label %15, !llvm.loop !19

22:                                               ; preds = %15, %15, %15
  %23 = trunc i64 %16 to i32
  br label %24

24:                                               ; preds = %19, %22, %9
  %25 = phi i32 [ %10, %9 ], [ %23, %22 ], [ 100, %19 ]
  %26 = load i32, ptr %1, align 4, !tbaa !5
  %27 = add nsw i32 %26, %25
  store i32 %27, ptr %1, align 4, !tbaa !5
  %28 = shl i64 %6, 32
  %29 = ashr exact i64 %28, 32
  %30 = getelementptr inbounds i8, ptr %0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !11
  %32 = icmp eq i8 %31, 61
  br i1 %32, label %45, label %33

33:                                               ; preds = %24
  %34 = load i32, ptr @line, align 4, !tbaa !5
  %35 = icmp eq i32 %34, 0
  %36 = load ptr, ptr @stderr, align 8, !tbaa !9
  %37 = load ptr, ptr @errtag, align 8, !tbaa !9
  br i1 %35, label %40, label %38

38:                                               ; preds = %33
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.42, ptr noundef %37, i32 noundef %34) #10
  br label %42

40:                                               ; preds = %33
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.43, ptr noundef %37, ptr noundef nonnull @optstr) #10
  br label %42

42:                                               ; preds = %40, %38
  store i1 true, ptr @hasError, align 1
  %43 = load i32, ptr @errCount, align 4, !tbaa !5
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr @errCount, align 4, !tbaa !5
  br label %173

45:                                               ; preds = %24
  %46 = getelementptr inbounds i8, ptr %30, i64 1
  br label %47

47:                                               ; preds = %54, %45
  %48 = phi i64 [ %55, %54 ], [ 0, %45 ]
  %49 = phi ptr [ %56, %54 ], [ %46, %45 ]
  %50 = load i8, ptr %49, align 1, !tbaa !11
  switch i8 %50, label %51 [
    i8 9, label %54
    i8 32, label %54
  ]

51:                                               ; preds = %47
  %52 = trunc i64 %48 to i32
  %53 = icmp ult i32 %52, 100
  br i1 %53, label %57, label %66

54:                                               ; preds = %47, %47
  %55 = add nuw i64 %48, 1
  %56 = getelementptr inbounds i8, ptr %46, i64 %55
  br label %47, !llvm.loop !18

57:                                               ; preds = %51, %61
  %58 = phi i64 [ %62, %61 ], [ %48, %51 ]
  %59 = getelementptr inbounds i8, ptr %46, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !11
  switch i8 %60, label %61 [
    i8 32, label %64
    i8 9, label %64
    i8 0, label %64
  ]

61:                                               ; preds = %57
  %62 = add nuw i64 %58, 1
  %63 = icmp eq i64 %62, 100
  br i1 %63, label %66, label %57, !llvm.loop !19

64:                                               ; preds = %57, %57, %57
  %65 = trunc i64 %58 to i32
  br label %66

66:                                               ; preds = %61, %64, %51
  %67 = phi i32 [ %52, %51 ], [ %65, %64 ], [ 100, %61 ]
  %68 = add nsw i32 %67, %27
  store i32 %68, ptr %1, align 4, !tbaa !5
  %69 = sub nsw i32 %67, %52
  %70 = shl i64 %48, 32
  %71 = ashr exact i64 %70, 32
  %72 = getelementptr inbounds i8, ptr %46, i64 %71
  switch i32 %2, label %173 [
    i32 0, label %73
    i32 2, label %82
    i32 1, label %149
  ]

73:                                               ; preds = %66
  %74 = tail call fastcc i32 @lookup(ptr noundef nonnull %72, i32 noundef %69, ptr noundef nonnull @settings, i32 noundef 2)
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  store i1 true, ptr @hasError, align 1
  %77 = load i32, ptr @errCount, align 4, !tbaa !5
  %78 = add nsw i32 %77, 1
  store i32 %78, ptr @errCount, align 4, !tbaa !5
  br label %173

79:                                               ; preds = %73
  %80 = icmp ne i32 %74, 0
  %81 = zext i1 %80 to i32
  store i32 %81, ptr @value, align 4, !tbaa !5
  br label %173

82:                                               ; preds = %66, %86
  %83 = phi i64 [ %87, %86 ], [ 1, %66 ]
  %84 = phi ptr [ %88, %86 ], [ %72, %66 ]
  %85 = load i8, ptr %84, align 1, !tbaa !11
  switch i8 %85, label %89 [
    i8 9, label %86
    i8 32, label %86
  ]

86:                                               ; preds = %82, %82
  %87 = add nuw i64 %83, 1
  %88 = getelementptr inbounds i8, ptr %72, i64 %83
  br label %82, !llvm.loop !20

89:                                               ; preds = %82
  %90 = icmp ne i8 %85, 34
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = icmp eq i8 %85, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %91
  store i8 0, ptr @str, align 16, !tbaa !11
  br label %173

94:                                               ; preds = %89
  %95 = add i64 %83, 1
  %96 = and i64 %83, 4294967295
  %97 = getelementptr inbounds i8, ptr %72, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !11
  br label %99

99:                                               ; preds = %94, %91
  %100 = phi i64 [ %95, %94 ], [ %83, %91 ]
  %101 = phi i8 [ %98, %94 ], [ %85, %91 ]
  %102 = shl i64 %100, 32
  %103 = ashr exact i64 %102, 32
  br label %104

104:                                              ; preds = %111, %99
  %105 = phi i64 [ %114, %111 ], [ %103, %99 ]
  %106 = phi i64 [ %112, %111 ], [ 0, %99 ]
  %107 = phi i8 [ %116, %111 ], [ %101, %99 ]
  switch i8 %107, label %108 [
    i8 34, label %117
    i8 0, label %117
  ]

108:                                              ; preds = %104
  %109 = icmp eq i8 %107, 35
  %110 = and i1 %90, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %108
  %112 = add nuw i64 %106, 1
  %113 = getelementptr inbounds [100 x i8], ptr @str, i64 0, i64 %106
  store i8 %107, ptr %113, align 1, !tbaa !11
  %114 = add i64 %105, 1
  %115 = getelementptr inbounds i8, ptr %72, i64 %105
  %116 = load i8, ptr %115, align 1, !tbaa !11
  br label %104, !llvm.loop !21

117:                                              ; preds = %108, %104, %104
  %118 = and i64 %106, 4294967295
  %119 = icmp ne i64 %118, 0
  %120 = select i1 %90, i1 %119, i1 false
  br i1 %120, label %121, label %130

121:                                              ; preds = %117, %128
  %122 = phi i64 [ %123, %128 ], [ %106, %117 ]
  %123 = add nsw i64 %122, -1
  %124 = and i64 %123, 4294967295
  %125 = getelementptr inbounds [100 x i8], ptr @str, i64 0, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !11
  %127 = icmp eq i8 %126, 32
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = icmp sgt i64 %122, 1
  br i1 %129, label %121, label %130

130:                                              ; preds = %128, %121, %117
  %131 = phi i64 [ %106, %117 ], [ 0, %128 ], [ %122, %121 ]
  %132 = shl i64 %131, 32
  %133 = ashr exact i64 %132, 32
  %134 = getelementptr inbounds [100 x i8], ptr @str, i64 0, i64 %133
  store i8 0, ptr %134, align 1, !tbaa !11
  %135 = icmp eq i8 %107, 34
  %136 = or i1 %90, %135
  br i1 %136, label %173, label %137

137:                                              ; preds = %130
  %138 = load i32, ptr @line, align 4, !tbaa !5
  %139 = icmp eq i32 %138, 0
  %140 = load ptr, ptr @stderr, align 8, !tbaa !9
  br i1 %139, label %144, label %141

141:                                              ; preds = %137
  %142 = load ptr, ptr @errtag, align 8, !tbaa !9
  %143 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %140, ptr noundef nonnull @.str.48, ptr noundef %142, i32 noundef %138) #10
  br label %146

144:                                              ; preds = %137
  %145 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %140, ptr noundef nonnull @.str.49, ptr noundef nonnull @str) #10
  br label %146

146:                                              ; preds = %144, %141
  store i1 true, ptr @hasError, align 1
  %147 = load i32, ptr @errCount, align 4, !tbaa !5
  %148 = add nsw i32 %147, 1
  store i32 %148, ptr @errCount, align 4, !tbaa !5
  br label %173

149:                                              ; preds = %66
  %150 = call i64 @strtol(ptr noundef nonnull %72, ptr noundef nonnull %4, i32 noundef 0) #8
  %151 = load ptr, ptr %4, align 8, !tbaa !9
  %152 = sext i32 %69 to i64
  %153 = getelementptr inbounds i8, ptr %72, i64 %152
  %154 = icmp eq ptr %151, %153
  %155 = icmp slt i64 %150, 2147483648
  %156 = select i1 %154, i1 %155, i1 false
  %157 = icmp sgt i64 %150, -2147483649
  %158 = select i1 %156, i1 %157, i1 false
  br i1 %158, label %159, label %161

159:                                              ; preds = %149
  %160 = trunc i64 %150 to i32
  store i32 %160, ptr @value, align 4, !tbaa !5
  br label %173

161:                                              ; preds = %149
  %162 = load i32, ptr @line, align 4, !tbaa !5
  %163 = icmp eq i32 %162, 0
  %164 = load ptr, ptr @stderr, align 8, !tbaa !9
  %165 = load ptr, ptr @errtag, align 8, !tbaa !9
  br i1 %163, label %168, label %166

166:                                              ; preds = %161
  %167 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %164, ptr noundef nonnull @.str.44, ptr noundef %165, i32 noundef %162) #10
  br label %170

168:                                              ; preds = %161
  %169 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %164, ptr noundef nonnull @.str.45, ptr noundef %165, ptr noundef nonnull @optstr) #10
  br label %170

170:                                              ; preds = %168, %166
  store i1 true, ptr @hasError, align 1
  %171 = load i32, ptr @errCount, align 4, !tbaa !5
  %172 = add nsw i32 %171, 1
  store i32 %172, ptr @errCount, align 4, !tbaa !5
  br label %173

173:                                              ; preds = %146, %130, %93, %79, %159, %66, %170, %76, %42
  %174 = phi i32 [ -1, %42 ], [ -1, %170 ], [ -1, %76 ], [ 0, %66 ], [ 0, %159 ], [ %74, %79 ], [ 0, %93 ], [ 0, %130 ], [ 0, %146 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 %174
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @processConfigFile(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %3) #8
  store i32 1, ptr @line, align 4, !tbaa !5
  store i32 0, ptr @errCount, align 4, !tbaa !5
  %4 = tail call ptr @file_tail(ptr noundef %0) #8
  store ptr %4, ptr @errtag, align 8, !tbaa !9
  %5 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.1)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr @stderr, align 8, !tbaa !9
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.2, ptr noundef %0) #10
  br label %127

10:                                               ; preds = %1, %115
  %11 = phi i32 [ %48, %115 ], [ 0, %1 ]
  br label %12

12:                                               ; preds = %14, %10
  %13 = call i32 @getc(ptr noundef nonnull %5)
  switch i32 %13, label %15 [
    i32 32, label %14
    i32 9, label %14
  ]

14:                                               ; preds = %12, %12
  br label %12

15:                                               ; preds = %12
  store i1 false, ptr @hasError, align 1
  br label %16

16:                                               ; preds = %36, %15
  %17 = phi i32 [ %13, %15 ], [ %39, %36 ]
  %18 = phi i32 [ 0, %15 ], [ %37, %36 ]
  %19 = phi i32 [ %11, %15 ], [ %28, %36 ]
  %20 = phi i32 [ 0, %15 ], [ %38, %36 ]
  switch i32 %17, label %21 [
    i32 -1, label %45
    i32 26, label %45
    i32 13, label %45
    i32 10, label %45
  ]

21:                                               ; preds = %16
  %22 = add i32 %17, -127
  %23 = icmp ult i32 %22, -95
  %24 = icmp ne i32 %17, 9
  %25 = and i1 %24, %23
  %26 = icmp eq i32 %18, 0
  %27 = select i1 %25, i1 %26, i1 false
  %28 = select i1 %27, i32 %20, i32 %19
  %29 = icmp sgt i32 %20, 100
  br i1 %29, label %36, label %30

30:                                               ; preds = %21
  %31 = select i1 %25, i32 1, i32 %18
  %32 = trunc i32 %17 to i8
  %33 = add nsw i32 %20, 1
  %34 = sext i32 %20 to i64
  %35 = getelementptr inbounds [100 x i8], ptr %3, i64 0, i64 %34
  store i8 %32, ptr %35, align 1, !tbaa !11
  br label %36

36:                                               ; preds = %21, %30
  %37 = phi i32 [ %31, %30 ], [ 2, %21 ]
  %38 = phi i32 [ %33, %30 ], [ %20, %21 ]
  %39 = call i32 @getc(ptr noundef nonnull %5)
  %40 = icmp eq i32 %39, 35
  br i1 %40, label %41, label %16, !llvm.loop !22

41:                                               ; preds = %36, %43
  %42 = phi i32 [ %44, %43 ], [ 35, %36 ]
  switch i32 %42, label %43 [
    i32 -1, label %45
    i32 26, label %45
    i32 13, label %45
    i32 10, label %45
  ]

43:                                               ; preds = %41
  %44 = call i32 @getc(ptr noundef nonnull %5)
  br label %41, !llvm.loop !23

45:                                               ; preds = %16, %16, %16, %16, %41, %41, %41, %41
  %46 = phi i32 [ %42, %41 ], [ %42, %41 ], [ %42, %41 ], [ %42, %41 ], [ %17, %16 ], [ %17, %16 ], [ %17, %16 ], [ %17, %16 ]
  %47 = phi i32 [ %37, %41 ], [ %37, %41 ], [ %37, %41 ], [ %37, %41 ], [ %18, %16 ], [ %18, %16 ], [ %18, %16 ], [ %18, %16 ]
  %48 = phi i32 [ %28, %41 ], [ %28, %41 ], [ %28, %41 ], [ %28, %41 ], [ %19, %16 ], [ %19, %16 ], [ %19, %16 ], [ %19, %16 ]
  %49 = phi i32 [ %38, %41 ], [ %38, %41 ], [ %38, %41 ], [ %38, %41 ], [ %20, %16 ], [ %20, %16 ], [ %20, %16 ], [ %20, %16 ]
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %45
  %52 = sext i32 %49 to i64
  br label %53

53:                                               ; preds = %51, %59
  %54 = phi i64 [ %52, %51 ], [ %56, %59 ]
  %55 = phi i1 [ %50, %51 ], [ %61, %59 ]
  %56 = add nsw i64 %54, -1
  %57 = getelementptr inbounds [100 x i8], ptr %3, i64 0, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !11
  switch i8 %58, label %62 [
    i8 32, label %59
    i8 9, label %59
  ]

59:                                               ; preds = %53, %53
  %60 = and i64 %56, 4294967295
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %53, label %64, !llvm.loop !24

62:                                               ; preds = %53
  %63 = trunc i64 %54 to i32
  br label %64

64:                                               ; preds = %62, %59, %45
  %65 = phi i32 [ %49, %45 ], [ %63, %62 ], [ 0, %59 ]
  %66 = phi i1 [ %50, %45 ], [ %55, %62 ], [ %61, %59 ]
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds [100 x i8], ptr %3, i64 0, i64 %67
  store i8 0, ptr %68, align 1, !tbaa !11
  %69 = load i8, ptr %3, align 16
  %70 = icmp ne i8 %69, 35
  %71 = select i1 %66, i1 %70, i1 false
  br i1 %71, label %72, label %111

72:                                               ; preds = %64
  switch i32 %47, label %90 [
    i32 2, label %73
    i32 1, label %79
  ]

73:                                               ; preds = %72
  %74 = load ptr, ptr @stderr, align 8, !tbaa !9
  %75 = load ptr, ptr @errtag, align 8, !tbaa !9
  %76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.3, ptr noundef %75, ptr noundef nonnull %3) #10
  %77 = load i32, ptr @errCount, align 4, !tbaa !5
  %78 = add nsw i32 %77, 1
  store i32 %78, ptr @errCount, align 4, !tbaa !5
  br label %111

79:                                               ; preds = %72
  %80 = load ptr, ptr @stderr, align 8, !tbaa !9
  %81 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #10
  %82 = load ptr, ptr @stderr, align 8, !tbaa !9
  %83 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef nonnull @.str.5, i32 noundef %48, ptr noundef nonnull @.str.6) #10
  %84 = load ptr, ptr @stderr, align 8, !tbaa !9
  %85 = load ptr, ptr @errtag, align 8, !tbaa !9
  %86 = load i32, ptr @line, align 4, !tbaa !5
  %87 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %84, ptr noundef nonnull @.str.7, ptr noundef %85, i32 noundef %86) #10
  %88 = load i32, ptr @errCount, align 4, !tbaa !5
  %89 = add nsw i32 %88, 1
  store i32 %89, ptr @errCount, align 4, !tbaa !5
  br label %111

90:                                               ; preds = %72, %94
  %91 = phi i64 [ %95, %94 ], [ 0, %72 ]
  %92 = getelementptr inbounds [100 x i8], ptr %3, i64 0, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !11
  switch i8 %93, label %94 [
    i8 61, label %97
    i8 32, label %97
    i8 9, label %97
    i8 0, label %97
  ]

94:                                               ; preds = %90
  %95 = add nuw nsw i64 %91, 1
  %96 = icmp eq i64 %95, 100
  br i1 %96, label %99, label %90, !llvm.loop !25

97:                                               ; preds = %90, %90, %90, %90
  %98 = trunc i64 %91 to i32
  br label %99

99:                                               ; preds = %94, %97
  %100 = phi i32 [ %98, %97 ], [ 100, %94 ]
  %101 = sext i8 %93 to i32
  store i32 %100, ptr %2, align 4, !tbaa !5
  %102 = call fastcc i32 @lookup(ptr noundef nonnull %3, i32 noundef %100, ptr noundef nonnull @intrinsics, i32 noundef 26)
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %111, label %104

104:                                              ; preds = %99
  %105 = zext nneg i32 %100 to i64
  %106 = getelementptr inbounds i8, ptr %3, i64 %105
  %107 = sext i32 %102 to i64
  %108 = getelementptr inbounds [30 x i32], ptr @intrinsicType, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !5
  %110 = call fastcc i32 @getAssignment(ptr noundef nonnull %106, ptr noundef nonnull %2, i32 noundef %109)
  call fastcc void @processAssignment(i32 noundef %102)
  br label %111

111:                                              ; preds = %73, %79, %104, %99, %64
  %112 = phi i32 [ %101, %99 ], [ %101, %104 ], [ %46, %79 ], [ %46, %73 ], [ %46, %64 ]
  %113 = load i32, ptr @errCount, align 4, !tbaa !5
  %114 = icmp sgt i32 %113, 2
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = load i32, ptr @line, align 4, !tbaa !5
  %117 = add nsw i32 %116, 1
  store i32 %117, ptr @line, align 4, !tbaa !5
  switch i32 %112, label %10 [
    i32 -1, label %118
    i32 26, label %118
  ]

118:                                              ; preds = %115, %115, %111
  %119 = call i32 @fclose(ptr noundef nonnull %5)
  %120 = load i32, ptr @errCount, align 4, !tbaa !5
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr @stderr, align 8, !tbaa !9
  %124 = icmp sgt i32 %120, 2
  %125 = select i1 %124, ptr @.str.9, ptr @.str.6
  %126 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %123, ptr noundef nonnull @.str.8, ptr noundef %0, ptr noundef nonnull %125, i32 noundef %120) #10
  br label %127

127:                                              ; preds = %118, %122, %7
  %128 = phi i32 [ 0, %7 ], [ -1, %122 ], [ 0, %118 ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %128
}

declare ptr @file_tail(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #4

declare i32 @to_upper(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

declare void @settmpdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
