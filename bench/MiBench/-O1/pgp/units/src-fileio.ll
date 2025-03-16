; ModuleID = 'src/fileio.c'
source_filename = "src/fileio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { [256 x i8], i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@ASC_EXTENSION = external global [0 x i8], align 1
@PGP_EXTENSION = external global [0 x i8], align 1
@SIG_EXTENSION = external global [0 x i8], align 1
@getyesno.yes = internal global [8 x i8] zeroinitializer, align 1
@getyesno.no = internal global [8 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@batchmode = external local_unnamed_addr global i8, align 1
@maybe_force_extension.newname = internal global [256 x i8] zeroinitializer, align 16
@pgpout = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"\0AShould '%s' be renamed to '%s' (Y/n)? \00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"/usr/local/lib/pgp/\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"\0ADisk full.\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"\0AFile write error.\0A\00", align 1
@textbuf = dso_local global [4096 x i8] zeroinitializer, align 16
@CONVERSION = external local_unnamed_addr global i32, align 4
@textbuf2 = internal global [2048 x i32] zeroinitializer, align 16
@strip_spaces = external local_unnamed_addr global i8, align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@verbose = external local_unnamed_addr global i8, align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"writing stdin to file %s\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [27 x i8] c"writing file %s to stdout\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [25 x i8] c"\07Write error on stdout.\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [18 x i8] c"\0A\07Out of memory.\0A\00", align 1
@tmpdir = internal global [256 x i8] zeroinitializer, align 16
@.str.16 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@outdir = internal global [256 x i8] zeroinitializer, align 16
@tmpbasename = internal global [64 x i8] c"pgptemp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@tmpf = internal global [8 x %struct.anon] zeroinitializer, align 16
@.str.17 = private unnamed_addr constant [26 x i8] c"\0A\07Out of temporary files\0A\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"%s%s.%c%02d\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"\0A\07tempfile: cannot find unique name\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"/tmp/\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"\0A\07Cannot create temporary file '%s'\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"tempfile: created '%s'\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"rmtemp: removing '%s'\0A\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"\0Armtemp: Failed to remove %s\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"\0AError\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"rmtemp: not removing '%s'\0A\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"savetemp: not renaming '%s' to '%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"savetemp: renaming '%s' to '%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Can't create output file '%s'\0A\00", align 1
@ck_dup_output.buf = internal global [256 x i8] zeroinitializer, align 16
@force_flag = external local_unnamed_addr global i8, align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"\0A\07Output file '%s' already exists.\0A\00", align 1
@.str.31 = private unnamed_addr constant [54 x i8] c"\0A\07Output file '%s' already exists.  Overwrite (y/N)? \00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"Enter new file name:\00", align 1
@BAK_EXTENSION = external global [0 x i8], align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"$PGPPATH\00", align 1
@.str.36 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"pgp\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"pgp26\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"pgp263\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"$HOME/.pgp\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"$HOME\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"$HOME/pgp\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"$HOME/pgp26\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@manual_dirs = dso_local local_unnamed_addr constant [12 x ptr] [ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.7, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr null], align 16
@.str.45 = private unnamed_addr constant [26 x i8] c"Truncating filename '%s' \00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"to '%s'\0A\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ$_\00", align 1
@files_missing.names = internal unnamed_addr constant [3 x ptr] [ptr @.str.49, ptr @.str.50, ptr null], align 16
@.str.49 = private unnamed_addr constant [8 x i8] c"pgpdoc1\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"pgpdoc2\00", align 1
@ext_missing.extensions = internal unnamed_addr constant [6 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.36, ptr null], align 16
@.str.51 = private unnamed_addr constant [5 x i8] c".doc\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c".txt\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c".man\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c".tex\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef zeroext i8 @file_exists(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 @access(ptr noundef %0, i32 noundef 0) #22
  %3 = icmp eq i32 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @wipefile(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  tail call fastcc void @wipeout(ptr noundef nonnull %2)
  %5 = tail call i32 @fclose(ptr noundef nonnull %2)
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ 0, %4 ], [ -1, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @wipeout(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 2)
  %3 = tail call i64 @ftell(ptr noundef %0)
  tail call void @rewind(ptr noundef %0)
  %4 = xor i64 %3, -1
  br label %5

5:                                                ; preds = %18, %1
  %6 = phi ptr [ getelementptr inbounds ([2048 x i32], ptr @textbuf2, i64 0, i64 55), %1 ], [ %20, %18 ]
  %7 = phi i64 [ %4, %1 ], [ %15, %18 ]
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i32 [ 0, %5 ], [ %16, %8 ]
  %10 = phi i64 [ %7, %5 ], [ %15, %8 ]
  %11 = and i64 %10, 2147483648
  %12 = icmp eq i64 %11, 0
  %13 = shl i64 %10, 1
  %14 = xor i64 %13, 79764919
  %15 = select i1 %12, i64 %13, i64 %14
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, 32
  br i1 %17, label %18, label %8, !llvm.loop !5

18:                                               ; preds = %8
  %19 = trunc i64 %15 to i32
  %20 = getelementptr inbounds i32, ptr %6, i64 -1
  store i32 %19, ptr %20, align 4, !tbaa !7
  %21 = icmp ugt ptr %20, @textbuf2
  br i1 %21, label %5, label %22, !llvm.loop !11

22:                                               ; preds = %18
  %23 = icmp eq i64 %3, 0
  br i1 %23, label %69, label %24

24:                                               ; preds = %22, %66
  %25 = phi i64 [ %67, %66 ], [ %3, %22 ]
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi ptr [ %35, %26 ], [ getelementptr inbounds ([2048 x i32], ptr @textbuf2, i64 1, i64 0), %24 ]
  %28 = phi ptr [ %30, %26 ], [ getelementptr inbounds ([2048 x i32], ptr @textbuf2, i64 0, i64 24), %24 ]
  %29 = phi ptr [ %32, %26 ], [ getelementptr inbounds ([2048 x i32], ptr @textbuf2, i64 0, i64 55), %24 ]
  %30 = getelementptr inbounds i32, ptr %28, i64 -1
  %31 = load i32, ptr %30, align 4, !tbaa !7
  %32 = getelementptr inbounds i32, ptr %29, i64 -1
  %33 = load i32, ptr %32, align 4, !tbaa !7
  %34 = add i32 %33, %31
  %35 = getelementptr inbounds i32, ptr %27, i64 -1
  store i32 %34, ptr %35, align 4, !tbaa !7
  %36 = icmp ugt ptr %30, @textbuf2
  br i1 %36, label %26, label %37, !llvm.loop !12

37:                                               ; preds = %26, %37
  %38 = phi ptr [ %46, %37 ], [ %35, %26 ]
  %39 = phi ptr [ %41, %37 ], [ getelementptr inbounds ([2048 x i32], ptr @textbuf2, i64 1, i64 0), %26 ]
  %40 = phi ptr [ %43, %37 ], [ %32, %26 ]
  %41 = getelementptr inbounds i32, ptr %39, i64 -1
  %42 = load i32, ptr %41, align 4, !tbaa !7
  %43 = getelementptr inbounds i32, ptr %40, i64 -1
  %44 = load i32, ptr %43, align 4, !tbaa !7
  %45 = add i32 %44, %42
  %46 = getelementptr inbounds i32, ptr %38, i64 -1
  store i32 %45, ptr %46, align 4, !tbaa !7
  %47 = icmp ugt ptr %43, @textbuf2
  br i1 %47, label %37, label %48, !llvm.loop !13

48:                                               ; preds = %37, %48
  %49 = phi ptr [ %57, %48 ], [ %46, %37 ]
  %50 = phi ptr [ %52, %48 ], [ %41, %37 ]
  %51 = phi ptr [ %54, %48 ], [ getelementptr inbounds ([2048 x i32], ptr @textbuf2, i64 1, i64 0), %37 ]
  %52 = getelementptr inbounds i32, ptr %50, i64 -1
  %53 = load i32, ptr %52, align 4, !tbaa !7
  %54 = getelementptr inbounds i32, ptr %51, i64 -1
  %55 = load i32, ptr %54, align 4, !tbaa !7
  %56 = add i32 %55, %53
  %57 = getelementptr inbounds i32, ptr %49, i64 -1
  store i32 %56, ptr %57, align 4, !tbaa !7
  %58 = icmp ugt ptr %57, @textbuf2
  br i1 %58, label %48, label %59, !llvm.loop !14

59:                                               ; preds = %48
  %60 = icmp ugt i64 %25, 8192
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = tail call i64 @fwrite(ptr noundef nonnull @textbuf2, i64 noundef 8192, i64 noundef 1, ptr noundef %0)
  %63 = add i64 %25, -8192
  br label %66

64:                                               ; preds = %59
  %65 = tail call i64 @fwrite(ptr noundef nonnull @textbuf2, i64 noundef %25, i64 noundef 1, ptr noundef %0)
  br label %66

66:                                               ; preds = %64, %61
  %67 = phi i64 [ %63, %61 ], [ 0, %64 ]
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %24, !llvm.loop !15

69:                                               ; preds = %66, %22
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @file_tail(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #23
  %3 = icmp eq ptr %2, null
  %4 = getelementptr inbounds i8, ptr %2, i64 1
  %5 = select i1 %3, ptr %0, ptr %4
  ret ptr %5
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @has_extension(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %4 = trunc i64 %3 to i32
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %4, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = shl i64 %3, 32
  %10 = ashr exact i64 %9, 32
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = shl i64 %5, 32
  %13 = ashr exact i64 %12, 32
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds i8, ptr %11, i64 %14
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %1) #23
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %2, %8
  %20 = phi i8 [ %18, %8 ], [ 0, %2 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @is_tempfile(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #23
  %3 = icmp eq ptr %2, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, ptr %2, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !16
  %7 = icmp eq i8 %6, 36
  br i1 %7, label %8, label %31

8:                                                ; preds = %4
  %9 = tail call ptr @__ctype_b_loc() #24
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = getelementptr inbounds i8, ptr %2, i64 2
  %12 = load i8, ptr %11, align 1, !tbaa !16
  %13 = sext i8 %12 to i64
  %14 = getelementptr inbounds i16, ptr %10, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !19
  %16 = and i16 %15, 2048
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds i8, ptr %2, i64 3
  %20 = load i8, ptr %19, align 1, !tbaa !16
  %21 = sext i8 %20 to i64
  %22 = getelementptr inbounds i16, ptr %10, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !19
  %24 = and i16 %23, 2048
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds i8, ptr %2, i64 4
  %28 = load i8, ptr %27, align 1, !tbaa !16
  %29 = icmp eq i8 %28, 0
  %30 = zext i1 %29 to i8
  br label %31

31:                                               ; preds = %26, %18, %8, %4, %1
  %32 = phi i8 [ 0, %18 ], [ 0, %8 ], [ 0, %4 ], [ 0, %1 ], [ %30, %26 ]
  ret i8 %32
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @no_extension(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %3 = trunc i64 %2 to i32
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @ASC_EXTENSION) #23
  %5 = trunc i64 %4 to i32
  %6 = icmp sgt i32 %3, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = shl i64 %2, 32
  %9 = ashr exact i64 %8, 32
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = shl i64 %4, 32
  %12 = ashr exact i64 %11, 32
  %13 = sub nsw i64 0, %12
  %14 = getelementptr inbounds i8, ptr %10, i64 %13
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) @ASC_EXTENSION) #23
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %75, label %17

17:                                               ; preds = %1, %7
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @PGP_EXTENSION) #23
  %19 = trunc i64 %18 to i32
  %20 = icmp sgt i32 %3, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = shl i64 %2, 32
  %23 = ashr exact i64 %22, 32
  %24 = getelementptr inbounds i8, ptr %0, i64 %23
  %25 = shl i64 %18, 32
  %26 = ashr exact i64 %25, 32
  %27 = sub nsw i64 0, %26
  %28 = getelementptr inbounds i8, ptr %24, i64 %27
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) @PGP_EXTENSION) #23
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %75, label %31

31:                                               ; preds = %17, %21
  %32 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @SIG_EXTENSION) #23
  %33 = trunc i64 %32 to i32
  %34 = icmp sgt i32 %3, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = shl i64 %2, 32
  %37 = ashr exact i64 %36, 32
  %38 = getelementptr inbounds i8, ptr %0, i64 %37
  %39 = shl i64 %32, 32
  %40 = ashr exact i64 %39, 32
  %41 = sub nsw i64 0, %40
  %42 = getelementptr inbounds i8, ptr %38, i64 %41
  %43 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) @SIG_EXTENSION) #23
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %75, label %45

45:                                               ; preds = %31, %35
  %46 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #23
  %47 = icmp eq ptr %46, null
  br i1 %47, label %75, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds i8, ptr %46, i64 1
  %50 = load i8, ptr %49, align 1, !tbaa !16
  %51 = icmp eq i8 %50, 36
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = tail call ptr @__ctype_b_loc() #24
  %54 = load ptr, ptr %53, align 8, !tbaa !17
  %55 = getelementptr inbounds i8, ptr %46, i64 2
  %56 = load i8, ptr %55, align 1, !tbaa !16
  %57 = sext i8 %56 to i64
  %58 = getelementptr inbounds i16, ptr %54, i64 %57
  %59 = load i16, ptr %58, align 2, !tbaa !19
  %60 = and i16 %59, 2048
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %52
  %63 = getelementptr inbounds i8, ptr %46, i64 3
  %64 = load i8, ptr %63, align 1, !tbaa !16
  %65 = sext i8 %64 to i64
  %66 = getelementptr inbounds i16, ptr %54, i64 %65
  %67 = load i16, ptr %66, align 2, !tbaa !19
  %68 = and i16 %67, 2048
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %62
  %71 = getelementptr inbounds i8, ptr %46, i64 4
  %72 = load i8, ptr %71, align 1, !tbaa !16
  %73 = icmp ne i8 %72, 0
  %74 = zext i1 %73 to i8
  br label %75

75:                                               ; preds = %70, %62, %52, %48, %45, %7, %21, %35
  %76 = phi i8 [ 0, %35 ], [ 0, %21 ], [ 0, %7 ], [ 1, %62 ], [ 1, %52 ], [ 1, %48 ], [ 1, %45 ], [ %74, %70 ]
  ret i8 %76
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @drop_extension(ptr noundef %0) local_unnamed_addr #7 {
  %2 = tail call zeroext i8 @no_extension(ptr noundef %0), !range !21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #23
  store i8 0, ptr %5, align 1, !tbaa !16
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @default_extension(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = tail call zeroext i8 @no_extension(ptr noundef %0), !range !21
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #22
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @force_extension(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 {
  %3 = alloca [256 x i8], align 16
  %4 = tail call zeroext i8 @no_extension(ptr noundef %0), !range !21
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #23
  store i8 0, ptr %7, align 1, !tbaa !16
  br label %8

8:                                                ; preds = %2, %6
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %10 = trunc i64 %9 to i32
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #22
  %11 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %0) #22
  %12 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %3, i32 noundef 47) #23
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i16 46, ptr %3, align 16
  br label %19

15:                                               ; preds = %8
  %16 = icmp eq ptr %12, %3
  %17 = zext i1 %16 to i64
  %18 = getelementptr inbounds i8, ptr %12, i64 %17
  store i8 0, ptr %18, align 1, !tbaa !16
  br label %19

19:                                               ; preds = %15, %14
  %20 = call i64 @pathconf(ptr noundef nonnull %3, i32 noundef 3) #22
  %21 = trunc i64 %20 to i32
  %22 = icmp sgt i32 %21, %10
  br i1 %22, label %23, label %46

23:                                               ; preds = %19
  %24 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #23
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds i8, ptr %24, i64 1
  %27 = select i1 %25, ptr %0, ptr %26
  %28 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %27) #23
  %29 = sub i64 %20, %9
  %30 = shl i64 %29, 32
  %31 = ashr exact i64 %30, 32
  %32 = icmp ugt i64 %28, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %23
  %34 = load i8, ptr @verbose, align 1, !tbaa !16
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr @pgpout, align 8, !tbaa !17
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.45, ptr noundef %0)
  br label %39

39:                                               ; preds = %36, %33
  %40 = getelementptr inbounds i8, ptr %27, i64 %31
  store i8 0, ptr %40, align 1, !tbaa !16
  %41 = load i8, ptr @verbose, align 1, !tbaa !16
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr @pgpout, align 8, !tbaa !17
  %45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.46, ptr noundef %0)
  br label %46

46:                                               ; preds = %19, %23, %39, %43
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #22
  %47 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @getyesno(i8 noundef signext %0) local_unnamed_addr #10 {
  %2 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %3 = load i8, ptr @getyesno.yes, align 1, !tbaa !16
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call ptr @LANG(ptr noundef nonnull @.str.1) #22
  %7 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @getyesno.yes, ptr noundef nonnull dereferenceable(1) %6, i64 noundef 7) #22
  %8 = tail call ptr @LANG(ptr noundef nonnull @.str.2) #22
  %9 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @getyesno.no, ptr noundef nonnull dereferenceable(1) %8, i64 noundef 7) #22
  br label %10

10:                                               ; preds = %5, %1
  %11 = load i8, ptr @batchmode, align 1, !tbaa !16
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = call i32 @getstring(ptr noundef nonnull %2, i32 noundef 6, i32 noundef 1) #22
  %15 = call ptr @strlwr(ptr noundef nonnull %2) #22
  %16 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @getyesno.no) #23
  %17 = call i32 @strncmp(ptr noundef nonnull %2, ptr noundef nonnull @getyesno.no, i64 noundef %16) #23
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %13
  %20 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @getyesno.yes) #23
  %21 = call i32 @strncmp(ptr noundef nonnull %2, ptr noundef nonnull @getyesno.yes, i64 noundef %20) #23
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = load i8, ptr %2, align 1, !tbaa !16
  switch i8 %24, label %26 [
    i8 110, label %29
    i8 121, label %25
  ]

25:                                               ; preds = %23
  br label %29

26:                                               ; preds = %23, %10
  %27 = icmp eq i8 %0, 121
  %28 = zext i1 %27 to i8
  br label %29

29:                                               ; preds = %23, %19, %13, %26, %25
  %30 = phi i8 [ %28, %26 ], [ 1, %25 ], [ 0, %13 ], [ 1, %19 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret i8 %30
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #9

declare ptr @LANG(ptr noundef) local_unnamed_addr #11

declare i32 @getstring(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

declare ptr @strlwr(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @maybe_force_extension(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %4 = trunc i64 %3 to i32
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %4, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = shl i64 %3, 32
  %10 = ashr exact i64 %9, 32
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = shl i64 %5, 32
  %13 = ashr exact i64 %12, 32
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds i8, ptr %11, i64 %14
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %1) #23
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %2, %8
  %19 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @maybe_force_extension.newname, ptr noundef nonnull dereferenceable(1) %0) #22
  tail call void @force_extension(ptr noundef nonnull @maybe_force_extension.newname, ptr noundef %1)
  %20 = tail call i32 @access(ptr noundef nonnull @maybe_force_extension.newname, i32 noundef 0) #22
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @pgpout, align 8, !tbaa !17
  %24 = tail call ptr @LANG(ptr noundef nonnull @.str.3) #22
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef %24, ptr noundef %0, ptr noundef nonnull @maybe_force_extension.newname)
  %26 = tail call zeroext i8 @getyesno(i8 noundef signext 121), !range !21
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18, %22, %8
  br label %29

29:                                               ; preds = %22, %28
  %30 = phi ptr [ null, %28 ], [ @maybe_force_extension.newname, %22 ]
  ret ptr %30
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @buildfilename(ptr noundef returned %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 {
  store i8 0, ptr %0, align 1, !tbaa !16
  store i16 46, ptr %0, align 1
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %4 = and i64 %3, 4294967295
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = shl i64 %3, 32
  %8 = add i64 %7, -4294967296
  %9 = ashr exact i64 %8, 32
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !16
  switch i8 %11, label %12 [
    i8 47, label %18
    i8 0, label %18
  ]

12:                                               ; preds = %6
  %13 = ashr exact i64 %7, 32
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  store i8 47, ptr %14, align 1, !tbaa !16
  %15 = add i64 %7, 4294967296
  %16 = ashr exact i64 %15, 32
  %17 = getelementptr inbounds i8, ptr %0, i64 %16
  store i8 0, ptr %17, align 1, !tbaa !16
  br label %18

18:                                               ; preds = %2, %6, %6, %12
  %19 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #22
  ret ptr %0
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind uwtable
define dso_local noundef ptr @buildsysfilename(ptr noundef returned %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %0, ptr noundef nonnull align 1 dereferenceable(20) @.str.7, i64 20, i1 false) #22
  %3 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #22
  %4 = tail call i32 @access(ptr noundef %0, i32 noundef 0) #22
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  store i8 0, ptr %0, align 1, !tbaa !16
  store i16 46, ptr %0, align 1
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %8 = and i64 %7, 4294967295
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = shl i64 %7, 32
  %12 = add i64 %11, -4294967296
  %13 = ashr exact i64 %12, 32
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !16
  switch i8 %15, label %16 [
    i8 47, label %22
    i8 0, label %22
  ]

16:                                               ; preds = %10
  %17 = ashr exact i64 %11, 32
  %18 = getelementptr inbounds i8, ptr %0, i64 %17
  store i8 47, ptr %18, align 1, !tbaa !16
  %19 = add i64 %11, 4294967296
  %20 = ashr exact i64 %19, 32
  %21 = getelementptr inbounds i8, ptr %0, i64 %20
  store i8 0, ptr %21, align 1, !tbaa !16
  br label %22

22:                                               ; preds = %6, %10, %10, %16
  %23 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #22
  br label %24

24:                                               ; preds = %2, %22
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @file_to_canon(ptr nocapture noundef readnone %0) local_unnamed_addr #14 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @write_error(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = tail call i32 @fflush(ptr noundef %0)
  %3 = tail call i32 @ferror(ptr noundef %0) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__errno_location() #24
  %7 = load i32, ptr %6, align 4, !tbaa !7
  %8 = icmp eq i32 %7, 28
  %9 = load ptr, ptr @pgpout, align 8, !tbaa !17
  %10 = select i1 %8, ptr @.str.8, ptr @.str.9
  %11 = tail call ptr @LANG(ptr noundef nonnull %10) #22
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef %11)
  br label %13

13:                                               ; preds = %5, %1
  %14 = phi i32 [ 0, %1 ], [ -1, %5 ]
  ret i32 %14
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @copyfile(ptr nocapture noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 {
  br label %4

4:                                                ; preds = %36, %3
  %5 = phi i64 [ %2, %3 ], [ %37, %36 ]
  %6 = tail call i64 @llvm.umin.i64(i64 %5, i64 4096)
  %7 = tail call i64 @fread(ptr noundef nonnull @textbuf, i64 noundef 1, i64 noundef %6, ptr noundef %0)
  %8 = trunc i64 %7 to i32
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %4
  %11 = load i32, ptr @CONVERSION, align 4, !tbaa !7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %10
  %14 = and i64 %7, 4294967295
  br label %15

15:                                               ; preds = %13, %25
  %16 = phi i64 [ 0, %13 ], [ %28, %25 ]
  %17 = load i32, ptr @CONVERSION, align 4, !tbaa !7
  %18 = icmp eq i32 %17, 2
  %19 = getelementptr inbounds [4096 x i8], ptr @textbuf, i64 0, i64 %16
  %20 = load i8, ptr %19, align 1, !tbaa !16
  br i1 %18, label %21, label %23

21:                                               ; preds = %15
  %22 = tail call signext i8 @EXT_C(i8 noundef signext %20) #22
  br label %25

23:                                               ; preds = %15
  %24 = tail call signext i8 @INT_C(i8 noundef signext %20) #22
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i8 [ %22, %21 ], [ %24, %23 ]
  %27 = getelementptr inbounds [4096 x i8], ptr @textbuf, i64 0, i64 %16
  store i8 %26, ptr %27, align 1, !tbaa !16
  %28 = add nuw nsw i64 %16, 1
  %29 = icmp eq i64 %28, %14
  br i1 %29, label %30, label %15, !llvm.loop !22

30:                                               ; preds = %25, %10
  %31 = and i64 %7, 4294967295
  %32 = tail call i64 @fwrite(ptr noundef nonnull @textbuf, i64 noundef 1, i64 noundef %31, ptr noundef %1)
  %33 = icmp eq i64 %32, %31
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = sub i64 %5, %31
  br label %36

36:                                               ; preds = %4, %34
  %37 = phi i64 [ %35, %34 ], [ %5, %4 ]
  %38 = icmp eq i32 %8, 4096
  br i1 %38, label %4, label %39, !llvm.loop !23

39:                                               ; preds = %30, %36
  %40 = phi i32 [ 0, %36 ], [ -1, %30 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @textbuf, i8 0, i64 4096, i1 false)
  ret i32 %40
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

declare signext i8 @EXT_C(i8 noundef signext) local_unnamed_addr #11

declare signext i8 @INT_C(i8 noundef signext) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @copyfilepos(ptr nocapture noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #10 {
  %5 = tail call i32 @fseek(ptr noundef %0, i64 noundef %3, i32 noundef 0)
  %6 = tail call i32 @copyfile(ptr noundef %0, ptr noundef %1, i64 noundef %2), !range !24
  ret i32 %6
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @copyfile_to_canon(ptr nocapture noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 {
  br label %4

4:                                                ; preds = %67, %3
  %5 = phi i64 [ %2, %3 ], [ %68, %67 ]
  %6 = phi i32 [ 0, %3 ], [ %69, %67 ]
  %7 = tail call i64 @llvm.umin.i64(i64 %5, i64 4096)
  %8 = tail call i64 @fread(ptr noundef nonnull @textbuf, i64 noundef 1, i64 noundef %7, ptr noundef %0)
  %9 = trunc i64 %8 to i32
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %67

11:                                               ; preds = %4, %52
  %12 = phi i32 [ %54, %52 ], [ %6, %4 ]
  %13 = phi i32 [ %55, %52 ], [ 0, %4 ]
  %14 = phi ptr [ %53, %52 ], [ @textbuf2, %4 ]
  %15 = phi ptr [ %24, %52 ], [ @textbuf, %4 ]
  %16 = load i32, ptr @CONVERSION, align 4, !tbaa !7
  %17 = load i8, ptr %15, align 1, !tbaa !16
  switch i32 %16, label %22 [
    i32 2, label %18
    i32 1, label %20
  ]

18:                                               ; preds = %11
  %19 = tail call signext i8 @EXT_C(i8 noundef signext %17) #22
  br label %22

20:                                               ; preds = %11
  %21 = tail call signext i8 @INT_C(i8 noundef signext %17) #22
  br label %22

22:                                               ; preds = %11, %20, %18
  %23 = phi i8 [ %21, %20 ], [ %19, %18 ], [ %17, %11 ]
  %24 = getelementptr inbounds i8, ptr %15, i64 1
  %25 = load i8, ptr @strip_spaces, align 1, !tbaa !16
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %22
  switch i8 %23, label %32 [
    i8 32, label %28
    i8 10, label %30
  ]

28:                                               ; preds = %27
  %29 = add nsw i32 %12, 1
  br label %52

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 13, ptr %14, align 1, !tbaa !16
  br label %32

32:                                               ; preds = %27, %30
  %33 = phi ptr [ %31, %30 ], [ %14, %27 ]
  %34 = phi i32 [ 0, %30 ], [ %12, %27 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = zext i32 %34 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %33, i8 32, i64 %37, i1 false), !tbaa !16
  %38 = add i32 %34, -1
  %39 = zext i32 %38 to i64
  %40 = getelementptr i8, ptr %33, i64 1
  %41 = getelementptr i8, ptr %40, i64 %39
  br label %42

42:                                               ; preds = %36, %32
  %43 = phi ptr [ %33, %32 ], [ %41, %36 ]
  %44 = getelementptr inbounds i8, ptr %43, i64 1
  store i8 %23, ptr %43, align 1, !tbaa !16
  br label %52

45:                                               ; preds = %22
  %46 = icmp eq i8 %23, 10
  br i1 %46, label %47, label %49

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 13, ptr %14, align 1, !tbaa !16
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi ptr [ %48, %47 ], [ %14, %45 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 1
  store i8 %23, ptr %50, align 1, !tbaa !16
  br label %52

52:                                               ; preds = %49, %42, %28
  %53 = phi ptr [ %14, %28 ], [ %44, %42 ], [ %51, %49 ]
  %54 = phi i32 [ %29, %28 ], [ 0, %42 ], [ %12, %49 ]
  %55 = add nuw nsw i32 %13, 1
  %56 = icmp eq i32 %55, %9
  br i1 %56, label %57, label %11, !llvm.loop !25

57:                                               ; preds = %52
  %58 = ptrtoint ptr %53 to i64
  %59 = trunc i64 %58 to i32
  %60 = sub i32 %59, ptrtoint (ptr @textbuf2 to i32)
  %61 = sext i32 %60 to i64
  %62 = tail call i64 @fwrite(ptr noundef nonnull @textbuf2, i64 noundef 1, i64 noundef %61, ptr noundef %1)
  %63 = icmp eq i64 %62, %61
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = and i64 %8, 4294967295
  %66 = sub i64 %5, %65
  br label %67

67:                                               ; preds = %4, %64
  %68 = phi i64 [ %66, %64 ], [ %5, %4 ]
  %69 = phi i32 [ %54, %64 ], [ %6, %4 ]
  %70 = icmp eq i32 %9, 4096
  br i1 %70, label %4, label %71, !llvm.loop !26

71:                                               ; preds = %57, %67
  %72 = phi i32 [ 0, %67 ], [ -1, %57 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @textbuf, i8 0, i64 4096, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) @textbuf2, i8 0, i64 8192, i1 false)
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @copyfile_from_canon(ptr nocapture noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 {
  br label %4

4:                                                ; preds = %40, %3
  %5 = phi i64 [ %2, %3 ], [ %41, %40 ]
  %6 = tail call i64 @llvm.umin.i64(i64 %5, i64 4096)
  %7 = tail call i64 @fread(ptr noundef nonnull @textbuf, i64 noundef 1, i64 noundef %6, ptr noundef %0)
  %8 = trunc i64 %7 to i32
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %4, %26
  %11 = phi i32 [ %28, %26 ], [ 0, %4 ]
  %12 = phi ptr [ %27, %26 ], [ @textbuf2, %4 ]
  %13 = phi ptr [ %22, %26 ], [ @textbuf, %4 ]
  %14 = load i32, ptr @CONVERSION, align 4, !tbaa !7
  %15 = load i8, ptr %13, align 1, !tbaa !16
  switch i32 %14, label %20 [
    i32 2, label %16
    i32 1, label %18
  ]

16:                                               ; preds = %10
  %17 = tail call signext i8 @EXT_C(i8 noundef signext %15) #22
  br label %20

18:                                               ; preds = %10
  %19 = tail call signext i8 @INT_C(i8 noundef signext %15) #22
  br label %20

20:                                               ; preds = %10, %18, %16
  %21 = phi i8 [ %19, %18 ], [ %17, %16 ], [ %15, %10 ]
  %22 = getelementptr inbounds i8, ptr %13, i64 1
  %23 = icmp eq i8 %21, 13
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds i8, ptr %12, i64 1
  store i8 %21, ptr %12, align 1, !tbaa !16
  br label %26

26:                                               ; preds = %20, %24
  %27 = phi ptr [ %25, %24 ], [ %12, %20 ]
  %28 = add nuw nsw i32 %11, 1
  %29 = icmp eq i32 %28, %8
  br i1 %29, label %30, label %10, !llvm.loop !27

30:                                               ; preds = %26
  %31 = ptrtoint ptr %27 to i64
  %32 = trunc i64 %31 to i32
  %33 = sub i32 %32, ptrtoint (ptr @textbuf2 to i32)
  %34 = sext i32 %33 to i64
  %35 = tail call i64 @fwrite(ptr noundef nonnull @textbuf2, i64 noundef 1, i64 noundef %34, ptr noundef %1)
  %36 = icmp eq i64 %35, %34
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = and i64 %7, 4294967295
  %39 = sub i64 %5, %38
  br label %40

40:                                               ; preds = %4, %37
  %41 = phi i64 [ %39, %37 ], [ %5, %4 ]
  %42 = icmp eq i32 %8, 4096
  br i1 %42, label %4, label %43, !llvm.loop !28

43:                                               ; preds = %30, %40
  %44 = phi i32 [ 0, %40 ], [ -1, %30 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @textbuf, i8 0, i64 4096, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) @textbuf2, i8 0, i64 8192, i1 false)
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @copyfiles_by_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 {
  %3 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.10)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %2
  %6 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.11)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @fseek(ptr noundef nonnull %3, i64 noundef 0, i32 noundef 2)
  %10 = tail call i64 @ftell(ptr noundef nonnull %3)
  tail call void @rewind(ptr noundef nonnull %3)
  %11 = tail call i32 @copyfile(ptr noundef nonnull %3, ptr noundef nonnull %6, i64 noundef %10), !range !24
  %12 = tail call i32 @fclose(ptr noundef nonnull %3)
  %13 = tail call i32 @write_error(ptr noundef nonnull %6), !range !24
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 %11, i32 -1
  br label %16

16:                                               ; preds = %5, %8
  %17 = phi ptr [ %6, %8 ], [ %3, %5 ]
  %18 = phi i32 [ %15, %8 ], [ -1, %5 ]
  %19 = tail call i32 @fclose(ptr noundef nonnull %17)
  br label %20

20:                                               ; preds = %16, %2
  %21 = phi i32 [ -1, %2 ], [ %18, %16 ]
  ret i32 %21
}

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @make_canonical(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 {
  %3 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.10)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.11)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @fseek(ptr noundef nonnull %3, i64 noundef 0, i32 noundef 2)
  %10 = tail call i64 @ftell(ptr noundef nonnull %3)
  tail call void @rewind(ptr noundef nonnull %3)
  store i32 1, ptr @CONVERSION, align 4, !tbaa !7
  %11 = tail call i32 @copyfile_to_canon(ptr noundef nonnull %3, ptr noundef nonnull %6, i64 noundef %10), !range !24
  store i32 0, ptr @CONVERSION, align 4, !tbaa !7
  %12 = tail call i32 @fclose(ptr noundef nonnull %3)
  %13 = tail call i32 @write_error(ptr noundef nonnull %6), !range !24
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 %11, i32 -1
  %16 = tail call i32 @fclose(ptr noundef nonnull %6)
  br label %17

17:                                               ; preds = %2, %5, %8
  %18 = phi i32 [ %15, %8 ], [ -1, %5 ], [ -1, %2 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rename2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 {
  %3 = alloca %struct.stat, align 8
  %4 = tail call i32 @rename(ptr noundef %0, ptr noundef %1) #22
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %39

6:                                                ; preds = %2
  %7 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.10)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %39, label %9

9:                                                ; preds = %6
  %10 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.11)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %39, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @fseek(ptr noundef nonnull %7, i64 noundef 0, i32 noundef 2)
  %14 = tail call i64 @ftell(ptr noundef nonnull %7)
  tail call void @rewind(ptr noundef nonnull %7)
  %15 = tail call i32 @copyfile(ptr noundef nonnull %7, ptr noundef nonnull %10, i64 noundef %14), !range !24
  %16 = tail call i32 @write_error(ptr noundef nonnull %10), !range !24
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 %15, i32 -1
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  tail call fastcc void @wipeout(ptr noundef nonnull %7)
  %21 = tail call i32 @fclose(ptr noundef nonnull %7)
  %22 = tail call i32 @remove(ptr noundef %0) #22
  br label %36

23:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #22
  %24 = call i32 @stat(ptr noundef %1, ptr noundef nonnull %3) #22
  %25 = icmp eq i32 %24, -1
  %26 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 3
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 61440
  %29 = icmp ne i32 %28, 32768
  %30 = select i1 %25, i1 true, i1 %29
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #22
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  tail call fastcc void @wipeout(ptr noundef nonnull %10)
  %32 = tail call i32 @fclose(ptr noundef nonnull %10)
  %33 = tail call i32 @remove(ptr noundef %1) #22
  br label %36

34:                                               ; preds = %23
  %35 = tail call i32 @fclose(ptr noundef nonnull %10)
  br label %36

36:                                               ; preds = %31, %34, %20
  %37 = phi ptr [ %10, %20 ], [ %7, %34 ], [ %7, %31 ]
  %38 = tail call i32 @fclose(ptr noundef nonnull %37)
  br label %39

39:                                               ; preds = %36, %2, %6, %9
  %40 = phi i32 [ -1, %9 ], [ -1, %6 ], [ 0, %2 ], [ %18, %36 ]
  ret i32 %40
}

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @readPhantomInput(ptr noundef %0) local_unnamed_addr #10 {
  %2 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %2) #22
  %3 = load i8, ptr @verbose, align 1, !tbaa !16
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @pgpout, align 8, !tbaa !17
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.12, ptr noundef %0)
  br label %8

8:                                                ; preds = %5, %1
  %9 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.11)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %8, %16
  %12 = load ptr, ptr @stdin, align 8, !tbaa !17
  %13 = call i64 @fread(ptr noundef nonnull %2, i64 noundef 1, i64 noundef 512, ptr noundef %12)
  %14 = trunc i64 %13 to i32
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = and i64 %13, 4294967295
  %18 = call i64 @fwrite(ptr noundef nonnull %2, i64 noundef 1, i64 noundef %17, ptr noundef nonnull %9)
  %19 = icmp eq i64 %18, %17
  br i1 %19, label %11, label %20, !llvm.loop !29

20:                                               ; preds = %16, %11
  %21 = phi i32 [ 0, %11 ], [ -1, %16 ]
  %22 = tail call i32 @write_error(ptr noundef nonnull %9), !range !24
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 %21, i32 -1
  %25 = tail call i32 @fclose(ptr noundef nonnull %9)
  br label %26

26:                                               ; preds = %8, %20
  %27 = phi i32 [ %24, %20 ], [ -1, %8 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %2) #22
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @writePhantomOutput(ptr noundef %0) local_unnamed_addr #10 {
  %2 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %2) #22
  %3 = load i8, ptr @verbose, align 1, !tbaa !16
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @pgpout, align 8, !tbaa !17
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.13, ptr noundef %0)
  br label %8

8:                                                ; preds = %5, %1
  %9 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.10)
  br label %10

10:                                               ; preds = %14, %8
  %11 = call i64 @fread(ptr noundef nonnull %2, i64 noundef 1, i64 noundef 512, ptr noundef %9)
  %12 = trunc i64 %11 to i32
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = and i64 %11, 4294967295
  %16 = load ptr, ptr @stdout, align 8, !tbaa !17
  %17 = call i64 @fwrite(ptr noundef nonnull %2, i64 noundef 1, i64 noundef %15, ptr noundef %16)
  %18 = icmp eq i64 %17, %15
  br i1 %18, label %10, label %19, !llvm.loop !30

19:                                               ; preds = %14, %10
  %20 = phi i32 [ 0, %10 ], [ -1, %14 ]
  %21 = tail call i32 @fclose(ptr noundef %9)
  %22 = load ptr, ptr @stdout, align 8, !tbaa !17
  %23 = tail call i32 @fflush(ptr noundef %22)
  %24 = load ptr, ptr @stdout, align 8, !tbaa !17
  %25 = tail call i32 @ferror(ptr noundef %24) #22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = load ptr, ptr @pgpout, align 8, !tbaa !17
  %29 = tail call ptr @LANG(ptr noundef nonnull @.str.14) #22
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef %29)
  br label %31

31:                                               ; preds = %27, %19
  %32 = phi i32 [ -1, %27 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %2) #22
  ret i32 %32
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @fsize(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call i64 @ftell(ptr noundef %0)
  %3 = tail call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 2)
  %4 = tail call i64 @ftell(ptr noundef %0)
  %5 = tail call i32 @fseek(ptr noundef %0, i64 noundef %2, i32 noundef 0)
  %6 = sub nsw i64 %4, %2
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @is_text_file(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = alloca [512 x i8], align 16
  %3 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.10)
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %2) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = call i64 @fread(ptr noundef nonnull %2, i64 noundef 1, i64 noundef 512, ptr noundef nonnull %3)
  %7 = trunc i64 %6 to i32
  %8 = tail call i32 @fclose(ptr noundef nonnull %3)
  %9 = icmp slt i32 %7, 1
  br i1 %9, label %29, label %10

10:                                               ; preds = %5
  %11 = call i32 @compressSignature(ptr noundef nonnull %2) #22
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %29, label %13

13:                                               ; preds = %10, %27
  %14 = phi i32 [ %16, %27 ], [ %7, %10 ]
  %15 = phi ptr [ %17, %27 ], [ %2, %10 ]
  %16 = add nsw i32 %14, -1
  %17 = getelementptr inbounds i8, ptr %15, i64 1
  %18 = load i8, ptr %15, align 1, !tbaa !16
  switch i8 %18, label %19 [
    i8 13, label %27
    i8 10, label %27
  ]

19:                                               ; preds = %13
  %20 = icmp ult i8 %18, 7
  br i1 %20, label %29, label %21

21:                                               ; preds = %19
  %22 = add i8 %18, -14
  %23 = icmp ult i8 %22, 18
  %24 = add i8 %18, -28
  %25 = icmp ult i8 %24, -2
  %26 = and i1 %23, %25
  br i1 %26, label %29, label %27

27:                                               ; preds = %21, %13, %13
  %28 = icmp eq i32 %16, 0
  br i1 %28, label %29, label %13, !llvm.loop !31

29:                                               ; preds = %27, %19, %21, %10, %5, %1
  %30 = phi i32 [ 0, %1 ], [ 0, %5 ], [ 0, %10 ], [ 0, %21 ], [ 0, %19 ], [ 1, %27 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %2) #22
  ret i32 %30
}

declare i32 @compressSignature(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @xmalloc(i32 noundef %0) local_unnamed_addr #10 {
  %2 = tail call i32 @llvm.umax.i32(i32 %0, i32 1)
  %3 = zext i32 %2 to i64
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #25
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load ptr, ptr @stderr, align 8, !tbaa !17
  %8 = tail call ptr @LANG(ptr noundef nonnull @.str.15) #22
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef %8) #26
  tail call void @exitPGP(i32 noundef 1) #22
  br label %10

10:                                               ; preds = %6, %1
  ret ptr %4
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #16

declare void @exitPGP(i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @settmpdir(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3, %1
  store i8 0, ptr @tmpdir, align 16, !tbaa !16
  br label %23

7:                                                ; preds = %3
  %8 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @tmpdir, ptr noundef nonnull dereferenceable(1) %0) #22
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @tmpdir) #23
  %10 = getelementptr inbounds i8, ptr @tmpdir, i64 %9
  %11 = getelementptr inbounds i8, ptr %10, i64 -1
  %12 = load i8, ptr %11, align 1, !tbaa !16
  switch i8 %12, label %13 [
    i8 47, label %23
    i8 92, label %23
    i8 93, label %23
    i8 58, label %23
  ]

13:                                               ; preds = %7
  %14 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) @tmpdir, i32 noundef 47) #23
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) @tmpdir, i32 noundef 92) #23
  %18 = icmp eq ptr %17, null
  %19 = select i1 %18, ptr @.str.16, ptr %17
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi ptr [ %19, %16 ], [ %14, %13 ]
  %22 = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) @tmpdir, ptr noundef nonnull dereferenceable(1) %21, i64 noundef 1) #22
  br label %23

23:                                               ; preds = %20, %7, %7, %7, %7, %6
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @setoutdir(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @outdir, ptr noundef nonnull dereferenceable(1) @tmpdir) #22
  br label %17

5:                                                ; preds = %1
  %6 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @outdir, ptr noundef nonnull dereferenceable(1) %0) #22
  %7 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) @outdir, i32 noundef 47) #23
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds i8, ptr %7, i64 1
  %10 = select i1 %8, ptr @outdir, ptr %9
  %11 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @tmpbasename, ptr noundef nonnull dereferenceable(1) %10) #22
  store i8 0, ptr %10, align 1, !tbaa !16
  %12 = tail call zeroext i8 @no_extension(ptr noundef nonnull @tmpbasename), !range !21
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) @tmpbasename, i32 noundef 46) #23
  store i8 0, ptr %15, align 1, !tbaa !16
  br label %16

16:                                               ; preds = %5, %14
  store i8 0, ptr getelementptr inbounds ([64 x i8], ptr @tmpbasename, i64 0, i64 10), align 2, !tbaa !16
  br label %17

17:                                               ; preds = %16, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @tempfile(i32 noundef %0) local_unnamed_addr #10 {
  br label %2

2:                                                ; preds = %1, %7
  %3 = phi i64 [ 0, %1 ], [ %8, %7 ]
  %4 = getelementptr inbounds [8 x %struct.anon], ptr @tmpf, i64 0, i64 %3, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = add nuw nsw i64 %3, 1
  %9 = icmp eq i64 %8, 8
  br i1 %9, label %12, label %2, !llvm.loop !34

10:                                               ; preds = %2
  %11 = trunc i64 %3 to i32
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi i32 [ %11, %10 ], [ 8, %7 ]
  %14 = icmp eq i32 %13, 8
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = zext nneg i32 %13 to i64
  %17 = getelementptr inbounds [8 x %struct.anon], ptr @tmpf, i64 0, i64 %16
  %18 = zext nneg i32 %13 to i64
  %19 = getelementptr inbounds [8 x %struct.anon], ptr @tmpf, i64 0, i64 %18
  %20 = or i32 %0, 4
  br label %63

21:                                               ; preds = %12
  %22 = load ptr, ptr @stderr, align 8, !tbaa !17
  %23 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 25, i64 1, ptr %22) #26
  br label %86

24:                                               ; preds = %49, %63
  %25 = phi i32 [ 0, %63 ], [ %50, %49 ]
  br label %26

26:                                               ; preds = %24, %35
  %27 = phi i64 [ 0, %24 ], [ %36, %35 ]
  %28 = getelementptr inbounds [8 x %struct.anon], ptr @tmpf, i64 0, i64 %27, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds [8 x %struct.anon], ptr @tmpf, i64 0, i64 %27, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !35
  %34 = icmp eq i32 %33, %25
  br i1 %34, label %46, label %35

35:                                               ; preds = %26, %31
  %36 = add nuw nsw i64 %27, 1
  %37 = icmp eq i64 %36, 8
  br i1 %37, label %38, label %26, !llvm.loop !36

38:                                               ; preds = %35
  %39 = load i8, ptr @tmpdir, align 16
  %40 = icmp ne i8 %39, 0
  %41 = select i1 %66, i1 %40, i1 false
  %42 = select i1 %41, ptr @tmpdir, ptr @outdir
  %43 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull %42, ptr noundef nonnull @tmpbasename, i32 noundef 36, i32 noundef %25) #22
  %44 = tail call i32 @access(ptr noundef nonnull %17, i32 noundef 0) #22
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %31, %38
  %47 = add nuw nsw i32 %25, 1
  %48 = icmp eq i32 %47, 100
  br i1 %48, label %51, label %49

49:                                               ; preds = %46, %72
  %50 = phi i32 [ %47, %46 ], [ 0, %72 ]
  br label %24, !llvm.loop !37

51:                                               ; preds = %38, %46
  %52 = phi i32 [ 100, %46 ], [ %25, %38 ]
  %53 = icmp eq i32 %52, 100
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load ptr, ptr @pgpout, align 8, !tbaa !17
  %56 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 36, i64 1, ptr %55)
  br label %86

57:                                               ; preds = %51
  %58 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %19, i32 noundef 194, i32 noundef 384) #22
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = tail call i32 @close(i32 noundef %58) #22
  br label %77

62:                                               ; preds = %57
  br i1 %68, label %63, label %69

63:                                               ; preds = %62, %15
  %64 = phi i32 [ %0, %15 ], [ %20, %62 ]
  %65 = and i32 %64, 4
  %66 = icmp ne i32 %65, 0
  %67 = and i32 %64, 4
  %68 = icmp eq i32 %67, 0
  br label %24

69:                                               ; preds = %62
  %70 = load i8, ptr @tmpdir, align 16, !tbaa !16
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) @tmpdir, ptr noundef nonnull align 1 dereferenceable(6) @.str.20, i64 6, i1 false) #22
  br label %49

73:                                               ; preds = %69
  %74 = load ptr, ptr @pgpout, align 8, !tbaa !17
  %75 = tail call ptr @LANG(ptr noundef nonnull @.str.21) #22
  %76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef %75, ptr noundef nonnull %19)
  tail call void @user_error() #22
  br label %77

77:                                               ; preds = %60, %73
  %78 = getelementptr inbounds [8 x %struct.anon], ptr @tmpf, i64 0, i64 %18, i32 2
  store i32 %52, ptr %78, align 4, !tbaa !35
  %79 = or i32 %64, 2
  %80 = getelementptr inbounds [8 x %struct.anon], ptr @tmpf, i64 0, i64 %18, i32 1
  store i32 %79, ptr %80, align 8, !tbaa !32
  %81 = load i8, ptr @verbose, align 1, !tbaa !16
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = load ptr, ptr @pgpout, align 8, !tbaa !17
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %84, ptr noundef nonnull @.str.22, ptr noundef nonnull %19)
  br label %86

86:                                               ; preds = %77, %83, %54, %21
  %87 = phi ptr [ null, %21 ], [ null, %54 ], [ %19, %83 ], [ %19, %77 ]
  ret ptr %87
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #17

declare i32 @close(i32 noundef) local_unnamed_addr #11

declare void @user_error() local_unnamed_addr #11

; Function Attrs: nofree nounwind uwtable
define dso_local void @rmtemp(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %11
  %3 = phi i64 [ 0, %1 ], [ %12, %11 ]
  %4 = getelementptr inbounds [8 x %struct.anon], ptr @tmpf, i64 0, i64 %3, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds [8 x %struct.anon], ptr @tmpf, i64 0, i64 %3
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %0) #23
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2, %7
  %12 = add nuw nsw i64 %3, 1
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %53, label %2, !llvm.loop !38

14:                                               ; preds = %7
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %16 = icmp ugt i64 %15, 3
  br i1 %16, label %17, label %47

17:                                               ; preds = %14
  %18 = getelementptr i8, ptr %0, i64 %15
  %19 = getelementptr i8, ptr %18, i64 -3
  %20 = load i8, ptr %19, align 1, !tbaa !16
  %21 = icmp eq i8 %20, 36
  br i1 %21, label %22, label %47

22:                                               ; preds = %17
  %23 = load i8, ptr @verbose, align 1, !tbaa !16
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr @pgpout, align 8, !tbaa !17
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.23, ptr noundef %0)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, ptr %4, align 8, !tbaa !32
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  tail call fastcc void @wipeout(ptr noundef nonnull %33)
  %36 = tail call i32 @fclose(ptr noundef nonnull %33)
  br label %37

37:                                               ; preds = %35, %32, %28
  %38 = tail call i32 @remove(ptr noundef %0) #22
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, ptr %4, align 8, !tbaa !32
  br label %53

41:                                               ; preds = %37
  %42 = load i8, ptr @verbose, align 1, !tbaa !16
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr @stderr, align 8, !tbaa !17
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.24, ptr noundef %0) #26
  tail call void @perror(ptr noundef nonnull @.str.25) #26
  br label %53

47:                                               ; preds = %17, %14
  %48 = load i8, ptr @verbose, align 1, !tbaa !16
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr @pgpout, align 8, !tbaa !17
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.26, ptr noundef %0)
  br label %53

53:                                               ; preds = %11, %41, %44, %40, %50, %47
  ret void
}

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @savetemp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %55, label %5

5:                                                ; preds = %2, %15
  %6 = phi i64 [ %16, %15 ], [ 0, %2 ]
  %7 = phi i1 [ %17, %15 ], [ true, %2 ]
  %8 = getelementptr inbounds [8 x %struct.anon], ptr @tmpf, i64 0, i64 %6, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds [8 x %struct.anon], ptr @tmpf, i64 0, i64 %6
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %0) #23
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %5, %11
  %16 = add nuw nsw i64 %6, 1
  %17 = icmp ult i64 %6, 7
  %18 = icmp eq i64 %16, 8
  br i1 %18, label %33, label %5, !llvm.loop !39

19:                                               ; preds = %11
  %20 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %21 = icmp ult i64 %20, 4
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = getelementptr i8, ptr %0, i64 %20
  %24 = getelementptr i8, ptr %23, i64 -3
  %25 = load i8, ptr %24, align 1, !tbaa !16
  %26 = icmp eq i8 %25, 36
  br i1 %26, label %33, label %27

27:                                               ; preds = %22, %19
  %28 = load i8, ptr @verbose, align 1, !tbaa !16
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %55, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr @pgpout, align 8, !tbaa !17
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.27, ptr noundef %0, ptr noundef %1)
  br label %55

33:                                               ; preds = %15, %22
  %34 = phi i64 [ %6, %22 ], [ 8, %15 ]
  %35 = phi i1 [ %7, %22 ], [ %17, %15 ]
  %36 = tail call ptr @ck_dup_output(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 1)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %55, label %38

38:                                               ; preds = %33
  %39 = load i8, ptr @verbose, align 1, !tbaa !16
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr @pgpout, align 8, !tbaa !17
  %43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.28, ptr noundef %0, ptr noundef nonnull %36)
  br label %44

44:                                               ; preds = %41, %38
  %45 = tail call i32 @rename2(ptr noundef %0, ptr noundef nonnull %36)
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load ptr, ptr @pgpout, align 8, !tbaa !17
  %49 = tail call ptr @LANG(ptr noundef nonnull @.str.29) #22
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef %49, ptr noundef nonnull %36)
  br label %55

51:                                               ; preds = %44
  br i1 %35, label %52, label %55

52:                                               ; preds = %51
  %53 = and i64 %34, 4294967295
  %54 = getelementptr inbounds [8 x %struct.anon], ptr @tmpf, i64 0, i64 %53, i32 1
  store i32 0, ptr %54, align 8, !tbaa !32
  br label %55

55:                                               ; preds = %51, %52, %33, %27, %30, %2, %47
  %56 = phi ptr [ null, %47 ], [ %0, %2 ], [ %0, %30 ], [ %0, %27 ], [ null, %33 ], [ %36, %52 ], [ %36, %51 ]
  ret ptr %56
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ck_dup_output(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #10 {
  %4 = alloca %struct.stat, align 8
  %5 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 3
  %6 = icmp eq i8 %2, 0
  %7 = icmp eq i8 %1, 0
  br label %8

8:                                                ; preds = %65, %3
  %9 = phi ptr [ %0, %3 ], [ %66, %65 ]
  %10 = tail call i32 @access(ptr noundef %9, i32 noundef 0) #22
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %67

12:                                               ; preds = %8
  %13 = load i8, ptr @batchmode, align 1, !tbaa !16
  %14 = icmp eq i8 %13, 0
  %15 = load i8, ptr @force_flag, align 1
  %16 = icmp ne i8 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr @pgpout, align 8, !tbaa !17
  %20 = tail call ptr @LANG(ptr noundef nonnull @.str.30) #22
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef %20, ptr noundef %9)
  br label %67

22:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #22
  %23 = call i32 @stat(ptr noundef %9, ptr noundef nonnull %4) #22
  %24 = icmp eq i32 %23, -1
  %25 = load i32, ptr %5, align 8
  %26 = and i32 %25, 61440
  %27 = icmp ne i32 %26, 32768
  %28 = select i1 %24, i1 true, i1 %27
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #22
  br i1 %28, label %42, label %29

29:                                               ; preds = %22
  %30 = load i8, ptr @force_flag, align 1, !tbaa !16
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = icmp eq i8 %2, 0
  br i1 %33, label %67, label %34

34:                                               ; preds = %32
  %35 = tail call i32 @remove(ptr noundef %9) #22
  br label %67

36:                                               ; preds = %29
  %37 = load ptr, ptr @pgpout, align 8, !tbaa !17
  %38 = tail call ptr @LANG(ptr noundef nonnull @.str.31) #22
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef %38, ptr noundef %9)
  %40 = tail call zeroext i8 @getyesno(i8 noundef signext 110), !range !21
  %41 = zext nneg i8 %40 to i32
  br label %48

42:                                               ; preds = %22
  %43 = load ptr, ptr @pgpout, align 8, !tbaa !17
  %44 = tail call ptr @LANG(ptr noundef nonnull @.str.30) #22
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef %44, ptr noundef %9)
  %46 = load i8, ptr @force_flag, align 1, !tbaa !16
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %42, %36
  %49 = phi i32 [ %41, %36 ], [ 0, %42 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load ptr, ptr @pgpout, align 8, !tbaa !17
  %53 = tail call i32 @fputc(i32 10, ptr %52)
  %54 = load ptr, ptr @pgpout, align 8, !tbaa !17
  %55 = tail call ptr @LANG(ptr noundef nonnull @.str.33) #22
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef %55)
  %57 = load ptr, ptr @pgpout, align 8, !tbaa !17
  %58 = tail call i32 @fputc(i32 32, ptr %57)
  %59 = tail call i32 @getstring(ptr noundef nonnull @ck_dup_output.buf, i32 noundef 255, i32 noundef 1) #22
  %60 = load i8, ptr @ck_dup_output.buf, align 16, !tbaa !16
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %67, label %65

62:                                               ; preds = %48
  br i1 %6, label %67, label %63

63:                                               ; preds = %62
  %64 = tail call i32 @remove(ptr noundef %9) #22
  br label %65

65:                                               ; preds = %51, %63
  %66 = phi ptr [ %9, %63 ], [ @ck_dup_output.buf, %51 ]
  br i1 %7, label %8, label %67, !llvm.loop !40

67:                                               ; preds = %8, %62, %65, %51, %42, %34, %32, %18
  %68 = phi ptr [ null, %18 ], [ %9, %34 ], [ %9, %32 ], [ null, %42 ], [ null, %51 ], [ %66, %65 ], [ %9, %62 ], [ %9, %8 ]
  ret ptr %68
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @savetempbak(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #22
  %5 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 46) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %5, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !16
  %10 = icmp eq i8 %9, 36
  br i1 %10, label %11, label %35

11:                                               ; preds = %7
  %12 = tail call ptr @__ctype_b_loc() #24
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  %14 = getelementptr inbounds i8, ptr %5, i64 2
  %15 = load i8, ptr %14, align 1, !tbaa !16
  %16 = sext i8 %15 to i64
  %17 = getelementptr inbounds i16, ptr %13, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !19
  %19 = and i16 %18, 2048
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %5, i64 3
  %23 = load i8, ptr %22, align 1, !tbaa !16
  %24 = sext i8 %23 to i64
  %25 = getelementptr inbounds i16, ptr %13, i64 %24
  %26 = load i16, ptr %25, align 2, !tbaa !19
  %27 = and i16 %26, 2048
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds i8, ptr %5, i64 4
  %31 = load i8, ptr %30, align 1, !tbaa !16
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = tail call i32 @remove(ptr noundef %1) #22
  br label %49

35:                                               ; preds = %21, %11, %7, %2, %29
  %36 = tail call i32 @access(ptr noundef %1, i32 noundef 0) #22
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #22
  %39 = call i32 @stat(ptr noundef %1, ptr noundef nonnull %4) #22
  %40 = icmp eq i32 %39, -1
  %41 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 3
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 4095
  %44 = select i1 %40, i32 -1, i32 %43
  %45 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %1) #22
  call void @force_extension(ptr noundef nonnull %3, ptr noundef nonnull @BAK_EXTENSION)
  %46 = call i32 @remove(ptr noundef nonnull %3) #22
  %47 = call i32 @rename(ptr noundef %1, ptr noundef nonnull %3) #22
  %48 = icmp eq i32 %47, -1
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #22
  br i1 %48, label %57, label %49

49:                                               ; preds = %35, %38, %33
  %50 = phi i32 [ -1, %33 ], [ %44, %38 ], [ -1, %35 ]
  %51 = call ptr @savetemp(ptr noundef %0, ptr noundef %1)
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = icmp eq i32 %50, -1
  br i1 %54, label %57, label %55

55:                                               ; preds = %53
  %56 = call i32 @chmod(ptr noundef %1, i32 noundef %50) #22
  br label %57

57:                                               ; preds = %53, %55, %49, %38
  %58 = phi i32 [ -1, %38 ], [ -1, %49 ], [ 0, %55 ], [ 0, %53 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #22
  ret i32 %58
}

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @chmod(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @cleanup_tmpf() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %8
  %2 = phi i64 [ 0, %0 ], [ %9, %8 ]
  %3 = getelementptr inbounds [8 x %struct.anon], ptr @tmpf, i64 0, i64 %2, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds [8 x %struct.anon], ptr @tmpf, i64 0, i64 %2
  tail call void @rmtemp(ptr noundef nonnull %7)
  br label %8

8:                                                ; preds = %1, %6
  %9 = add nuw nsw i64 %2, 1
  %10 = icmp eq i64 %9, 8
  br i1 %10, label %11, label %1, !llvm.loop !41

11:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @manuals_missing() local_unnamed_addr #0 {
  %1 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %1) #22
  br label %2

2:                                                ; preds = %0, %70
  %3 = phi ptr [ @.str.35, %0 ], [ %73, %70 ]
  %4 = phi ptr [ @manual_dirs, %0 ], [ %72, %70 ]
  %5 = phi i32 [ -1, %0 ], [ %71, %70 ]
  %6 = load i8, ptr %3, align 1, !tbaa !16
  %7 = icmp eq i8 %6, 36
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %3) #22
  br label %41

10:                                               ; preds = %2
  %11 = getelementptr inbounds i8, ptr %3, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !16
  %13 = icmp eq i8 %12, 123
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = getelementptr inbounds i8, ptr %3, i64 2
  %16 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %15, i32 noundef 125) #23
  %17 = ptrtoint ptr %16 to i64
  %18 = ptrtoint ptr %15 to i64
  %19 = sub i64 %17, %18
  %20 = and i64 %19, 4294967295
  %21 = getelementptr inbounds i8, ptr %15, i64 %20
  %22 = getelementptr inbounds i8, ptr %21, i64 1
  br label %27

23:                                               ; preds = %10
  %24 = call i64 @strspn(ptr noundef nonnull %11, ptr noundef nonnull @.str.47) #23
  %25 = and i64 %24, 4294967295
  %26 = getelementptr inbounds i8, ptr %11, i64 %25
  br label %27

27:                                               ; preds = %23, %14
  %28 = phi ptr [ %15, %14 ], [ %11, %23 ]
  %29 = phi ptr [ %22, %14 ], [ %26, %23 ]
  %30 = phi i64 [ %19, %14 ], [ %24, %23 ]
  %31 = and i64 %30, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %1, ptr nonnull align 1 %28, i64 %31, i1 false)
  %32 = getelementptr inbounds i8, ptr %1, i64 %31
  store i8 0, ptr %32, align 1, !tbaa !16
  %33 = call ptr @getenv(ptr noundef nonnull %1) #22
  %34 = icmp eq ptr %33, null
  br i1 %34, label %70, label %35

35:                                               ; preds = %27
  %36 = load i8, ptr %33, align 1, !tbaa !16
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %70, label %38

38:                                               ; preds = %35
  %39 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %33) #22
  %40 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %29) #22
  br label %41

41:                                               ; preds = %38, %8
  %42 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %43 = call fastcc i32 @files_missing(ptr noundef nonnull %1), !range !42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %66, label %45

45:                                               ; preds = %41
  %46 = and i64 %42, 4294967295
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %45
  %49 = shl i64 %42, 32
  %50 = add i64 %49, -4294967296
  %51 = ashr exact i64 %50, 32
  %52 = getelementptr inbounds i8, ptr %1, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !16
  %54 = icmp eq i8 %53, 47
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  %56 = add i64 %42, 1
  %57 = ashr exact i64 %49, 32
  %58 = getelementptr inbounds i8, ptr %1, i64 %57
  store i8 47, ptr %58, align 1, !tbaa !16
  br label %59

59:                                               ; preds = %55, %48, %45
  %60 = phi i64 [ %56, %55 ], [ %42, %48 ], [ 0, %45 ]
  %61 = shl i64 %60, 32
  %62 = ashr exact i64 %61, 32
  %63 = getelementptr inbounds i8, ptr %1, i64 %62
  store i32 6516580, ptr %63, align 1
  %64 = call fastcc i32 @files_missing(ptr noundef nonnull %1), !range !42
  %65 = and i32 %64, %43
  store i8 0, ptr %63, align 1, !tbaa !16
  br label %66

66:                                               ; preds = %41, %59
  %67 = phi i32 [ %65, %59 ], [ 0, %41 ]
  %68 = and i32 %67, %5
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %35, %27, %66
  %71 = phi i32 [ %68, %66 ], [ %5, %27 ], [ %5, %35 ]
  %72 = getelementptr inbounds ptr, ptr %4, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !17
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %2, !llvm.loop !43

75:                                               ; preds = %66, %70
  %76 = phi i32 [ 0, %66 ], [ %71, %70 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %1) #22
  ret i32 %76
}

; Function Attrs: nounwind
declare i64 @pathconf(ptr noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #19

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @files_missing(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %3 = load i8, ptr %0, align 1, !tbaa !16
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @access(ptr noundef nonnull %0, i32 noundef 0) #22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %52

8:                                                ; preds = %5, %1
  %9 = and i64 %2, 4294967295
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %8
  %12 = shl i64 %2, 32
  %13 = add i64 %12, -4294967296
  %14 = ashr exact i64 %13, 32
  %15 = getelementptr inbounds i8, ptr %0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !16
  switch i8 %16, label %17 [
    i8 47, label %21
    i8 0, label %21
  ]

17:                                               ; preds = %11
  %18 = add i64 %2, 1
  %19 = ashr exact i64 %12, 32
  %20 = getelementptr inbounds i8, ptr %0, i64 %19
  store i8 47, ptr %20, align 1, !tbaa !16
  br label %21

21:                                               ; preds = %11, %11, %17, %8
  %22 = phi i64 [ %18, %17 ], [ %2, %11 ], [ 0, %8 ], [ %2, %11 ]
  %23 = shl i64 %22, 32
  %24 = ashr exact i64 %23, 32
  %25 = getelementptr inbounds i8, ptr %0, i64 %24
  br label %26

26:                                               ; preds = %21, %44
  %27 = phi ptr [ @.str.49, %21 ], [ %50, %44 ]
  %28 = phi i32 [ 3, %21 ], [ %47, %44 ]
  %29 = phi i32 [ 1, %21 ], [ %49, %44 ]
  %30 = phi ptr [ @files_missing.names, %21 ], [ %48, %44 ]
  %31 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %27) #22
  %32 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %33 = getelementptr inbounds i8, ptr %0, i64 %32
  br label %38

34:                                               ; preds = %38
  %35 = getelementptr inbounds ptr, ptr %40, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !17
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38, !llvm.loop !44

38:                                               ; preds = %34, %26
  %39 = phi ptr [ @.str.51, %26 ], [ %36, %34 ]
  %40 = phi ptr [ @ext_missing.extensions, %26 ], [ %35, %34 ]
  %41 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %33, ptr noundef nonnull dereferenceable(1) %39) #22
  %42 = tail call i32 @access(ptr noundef nonnull %0, i32 noundef 0) #22
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %34

44:                                               ; preds = %34, %38
  %45 = xor i32 %29, -1
  %46 = select i1 %43, i32 %45, i32 -1
  %47 = and i32 %46, %28
  %48 = getelementptr inbounds ptr, ptr %30, i64 1
  %49 = shl i32 %29, 1
  %50 = load ptr, ptr %48, align 8, !tbaa !17
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %26, !llvm.loop !45

52:                                               ; preds = %44, %5
  %53 = phi i32 [ 3, %5 ], [ %47, %44 ]
  ret i32 %53
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = !{!9, !9, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !9, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"short", !9, i64 0}
!21 = !{i8 0, i8 2}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = !{i32 -1, i32 1}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = !{!33, !8, i64 256}
!33 = !{!"", !9, i64 0, !8, i64 256, !8, i64 260}
!34 = distinct !{!34, !6}
!35 = !{!33, !8, i64 260}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !6}
!41 = distinct !{!41, !6}
!42 = !{i32 0, i32 4}
!43 = distinct !{!43, !6}
!44 = distinct !{!44, !6}
!45 = distinct !{!45, !6}
