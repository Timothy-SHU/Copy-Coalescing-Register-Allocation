; ModuleID = 'src/correct.c'
source_filename = "src/correct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct.success = type { ptr, ptr, ptr }
%struct.flagent = type { ptr, ptr, i16, i16, i16, i16, i16, [228 x i8] }
%struct.dent = type { ptr, ptr, [1 x i64] }

@outfile1 = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [58 x i8] c"Whenever a word is found that is not in the dictionary,\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"it is printed on the first line of the screen.  If the dictionary\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"contains any similar words, they are listed with a number\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"next to each one.  You have the option of replacing the word\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"completely, or choosing one of the suggested words.\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"\0D\0ACommands are:\0D\0A\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"R       Replace the misspelled word completely.\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Space   Accept the word this time only.\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"A       Accept the word for the rest of this session.\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [66 x i8] c"I       Accept the word, and put it in your private dictionary.\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"U       Accept and add lowercase version to private dictionary.\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"0-n     Replace with one of the suggested words.\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"L       Look up words in system dictionary.\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [92 x i8] c"X       Write the rest of this file, ignoring misspellings,\0D\0A        and start next file.\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [84 x i8] c"Q       Quit immediately.  Asks for confirmation.\0D\0A        Leaves file unchanged.\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"!       Shell escape.\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"^L      Redraw screen.\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"^Z      Suspend program.\0D\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"?       Show this help screen.\0D\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"-- Type space to continue --\00", align 1
@contextsize = external local_unnamed_addr global i32, align 4
@contextbufs = external global [10 x [8192 x i8]], align 16
@quit = external local_unnamed_addr global i32, align 4
@infile = external local_unnamed_addr global ptr, align 8
@outfile = external local_unnamed_addr global ptr, align 8
@hashheader = external local_unnamed_addr global %struct.hashheader, align 4
@minword = external local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [7 x i8] c"    %s\00", align 1
@currentfile = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [23 x i8] c"              File: %s\00", align 1
@readonly = external local_unnamed_addr global i32, align 4
@.str.24 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"[READONLY]\00", align 1
@li = external local_unnamed_addr global i32, align 4
@minimenusize = external local_unnamed_addr global i32, align 4
@co = external local_unnamed_addr global i32, align 4
@maxposslen = external local_unnamed_addr global i32, align 4
@pcount = external local_unnamed_addr global i32, align 4
@easypossibilities = external local_unnamed_addr global i32, align 4
@.str.26 = private unnamed_addr constant [7 x i8] c"??: %s\00", align 1
@possibilities = external global [100 x [120 x i8]], align 16
@.str.27 = private unnamed_addr constant [8 x i8] c"0%d: %s\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"%2d: %s\00", align 1
@sg = external local_unnamed_addr global i32, align 4
@changes = external local_unnamed_addr global i32, align 4
@.str.30 = private unnamed_addr constant [51 x i8] c"Are you sure you want to throw away your changes? \00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"Replace with: \00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"src/correct.c\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"Lookup string ('*' is wildcard): \00", align 1
@compoundflag = external local_unnamed_addr global i32, align 4
@tryhardflag = external local_unnamed_addr global i32, align 4
@sortit = external local_unnamed_addr global i32, align 4
@fflag = external local_unnamed_addr global i32, align 4
@askfilename = external local_unnamed_addr global ptr, align 8
@.str.38 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"Can't create %s\0D\0A\00", align 1
@cbench_print = external local_unnamed_addr global i32, align 4
@contextoffset = external local_unnamed_addr global i32, align 4
@infile1 = external local_unnamed_addr global ptr, align 8
@math_mode = external local_unnamed_addr global i32, align 4
@LaTeX_Mode = external local_unnamed_addr global i8, align 1
@terse = external local_unnamed_addr global i32, align 4
@tflag = external local_unnamed_addr global i32, align 4
@.str.41 = private unnamed_addr constant [6 x i8] c"nroff\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"troff\00", align 1
@defdupchar = external local_unnamed_addr global i32, align 4
@sflag = external local_unnamed_addr global i32, align 4
@aflag = external local_unnamed_addr global i32, align 4
@lflag = external local_unnamed_addr global i32, align 4
@stdin = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@laststringch = external local_unnamed_addr global i32, align 4
@vflag = external local_unnamed_addr global i32, align 4
@numhits = external local_unnamed_addr global i32, align 4
@hits = external local_unnamed_addr global [10 x %struct.success], align 16
@Trynum = external local_unnamed_addr global i32, align 4
@Try = external local_unnamed_addr global [228 x i8], align 16
@uerasechar = external local_unnamed_addr global i32, align 4
@ukillchar = external local_unnamed_addr global i32, align 4
@.str.43 = private unnamed_addr constant [50 x i8] c"@(#) International Ispell Version 3.1.20 10/10/95\00", align 1
@lookharder.look = internal unnamed_addr global i1 false, align 4
@.str.80 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"look -df\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c"/usr/dict/words\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c".*\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"%s ^%s$ %s\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"/usr/bin/egrep -i\00", align 1
@str = private unnamed_addr constant [4 x i8] c"\0D\0A\0D\00", align 1
@str.86 = private unnamed_addr constant [79 x i8] c"[SP] <number> R)epl A)ccept I)nsert L)ookup U)ncap Q)uit e(X)it or ? for help\0D\00", align 1
@str.89 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @givehelp(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @erase() #14
  br label %4

4:                                                ; preds = %1, %3
  %5 = phi ptr [ @outfile1, %3 ], [ @stderr, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = tail call i64 @fwrite(ptr nonnull @.str, i64 57, i64 1, ptr %6)
  %8 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 67, i64 1, ptr %6)
  %9 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 59, i64 1, ptr %6)
  %10 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 62, i64 1, ptr %6)
  %11 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 53, i64 1, ptr %6)
  %12 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 19, i64 1, ptr %6)
  %13 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 49, i64 1, ptr %6)
  %14 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 41, i64 1, ptr %6)
  %15 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 55, i64 1, ptr %6)
  %16 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 65, i64 1, ptr %6)
  %17 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 65, i64 1, ptr %6)
  %18 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 50, i64 1, ptr %6)
  %19 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 45, i64 1, ptr %6)
  %20 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 91, i64 1, ptr %6)
  %21 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 83, i64 1, ptr %6)
  %22 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 23, i64 1, ptr %6)
  %23 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 24, i64 1, ptr %6)
  %24 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 26, i64 1, ptr %6)
  %25 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 32, i64 1, ptr %6)
  br i1 %2, label %34, label %26

26:                                               ; preds = %4
  %27 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 4, i64 1, ptr %6)
  %28 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 28, i64 1, ptr %6)
  %29 = tail call i32 @fflush(ptr noundef %6)
  br label %30

30:                                               ; preds = %30, %26
  %31 = load ptr, ptr @stdin, align 8, !tbaa !5
  %32 = tail call i32 @getc(ptr noundef %31)
  %33 = icmp eq i32 %32, 32
  br i1 %33, label %34, label %30, !llvm.loop !9

34:                                               ; preds = %30, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @erase() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @checkfile() local_unnamed_addr #0 {
  %1 = load i32, ptr @contextsize, align 4, !tbaa !11
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = zext nneg i32 %1 to i64
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %8, %5 ]
  %7 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %6
  store i8 0, ptr %7, align 16, !tbaa !13
  %8 = add nuw nsw i64 %6, 1
  %9 = icmp eq i64 %8, %4
  br i1 %9, label %10, label %5, !llvm.loop !14

10:                                               ; preds = %5, %0
  br label %11

11:                                               ; preds = %10, %73
  %12 = load i32, ptr @contextsize, align 4, !tbaa !11
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = zext nneg i32 %12 to i64
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi i64 [ %15, %14 ], [ %18, %16 ]
  %18 = add nsw i64 %17, -1
  %19 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %18
  %20 = add nsw i64 %17, -2
  %21 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %20
  %22 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %21) #14
  %23 = icmp sgt i64 %17, 2
  br i1 %23, label %16, label %24, !llvm.loop !15

24:                                               ; preds = %16, %11
  %25 = load i32, ptr @quit, align 4, !tbaa !11
  %26 = icmp eq i32 %25, 0
  %27 = load ptr, ptr @infile, align 8, !tbaa !5
  br i1 %26, label %37, label %28

28:                                               ; preds = %24
  %29 = tail call ptr @fgets(ptr noundef nonnull @contextbufs, i32 noundef 8192, ptr noundef %27)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %75, label %31

31:                                               ; preds = %28, %31
  %32 = load ptr, ptr @outfile, align 8, !tbaa !5
  %33 = tail call i32 @fputs(ptr noundef nonnull @contextbufs, ptr noundef %32)
  %34 = load ptr, ptr @infile, align 8, !tbaa !5
  %35 = tail call ptr @fgets(ptr noundef nonnull @contextbufs, i32 noundef 8192, ptr noundef %34)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %75, label %31, !llvm.loop !16

37:                                               ; preds = %24
  %38 = tail call ptr @fgets(ptr noundef nonnull @contextbufs, i32 noundef 4096, ptr noundef %27)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %75, label %40

40:                                               ; preds = %37
  %41 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @contextbufs) #15
  %42 = and i64 %41, 4294967295
  %43 = icmp eq i64 %42, 4095
  br i1 %43, label %44, label %73

44:                                               ; preds = %40
  %45 = load i8, ptr getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 4094), align 2, !tbaa !13
  %46 = zext i8 %45 to i32
  br label %47

47:                                               ; preds = %44, %67
  %48 = phi i64 [ 4095, %44 ], [ %69, %67 ]
  %49 = phi i32 [ %46, %44 ], [ %65, %67 ]
  %50 = and i32 %49, 255
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !13
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %51
  %57 = load i8, ptr %56, align 1, !tbaa !13
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %51
  %61 = load i8, ptr %60, align 1, !tbaa !13
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %55, %47, %59
  %64 = load ptr, ptr @infile, align 8, !tbaa !5
  %65 = tail call i32 @getc(ptr noundef %64)
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = trunc i32 %65 to i8
  %69 = add nuw nsw i64 %48, 1
  %70 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %48
  store i8 %68, ptr %70, align 1, !tbaa !13
  %71 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %69
  store i8 0, ptr %71, align 1, !tbaa !13
  %72 = icmp eq i64 %69, 8191
  br i1 %72, label %73, label %47, !llvm.loop !17

73:                                               ; preds = %59, %63, %67, %40
  %74 = load ptr, ptr @outfile, align 8, !tbaa !5
  tail call void @checkline(ptr noundef %74) #14
  br label %11, !llvm.loop !18

75:                                               ; preds = %37, %31, %28
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #3

declare void @checkline(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @correct(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = alloca [150 x i8], align 16
  %7 = alloca [100 x i8], align 16
  %8 = alloca [8192 x i8], align 16
  %9 = alloca [8192 x i8], align 16
  %10 = alloca [200 x i8], align 16
  %11 = alloca [100 x i8], align 16
  %12 = load ptr, ptr %4, align 8, !tbaa !5
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  %14 = sub i64 0, %13
  %15 = getelementptr inbounds i8, ptr %12, i64 %14
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15
  %17 = load i32, ptr @minword, align 4, !tbaa !11
  %18 = sext i32 %17 to i64
  %19 = icmp ugt i64 %16, %18
  br i1 %19, label %20, label %435

20:                                               ; preds = %5
  %21 = tail call i32 @good(ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %435

23:                                               ; preds = %20
  %24 = icmp eq ptr %15, @contextbufs
  %25 = ptrtoint ptr %15 to i64
  %26 = sub i64 %25, ptrtoint (ptr @contextbufs to i64)
  %27 = getelementptr i8, ptr @contextbufs, i64 %26
  %28 = getelementptr i8, ptr %9, i64 %26
  %29 = ptrtoint ptr %15 to i64
  br label %30

30:                                               ; preds = %23, %159
  %31 = call i32 @compoundgood(ptr noundef %2, i32 noundef 0), !range !19
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %435

33:                                               ; preds = %30
  call void @erase() #14
  %34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef %0)
  %35 = load ptr, ptr @currentfile, align 8, !tbaa !5
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %35)
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i32, ptr @readonly, align 4, !tbaa !11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef nonnull @.str.25)
  br label %44

44:                                               ; preds = %42, %39
  %45 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @makepossibilities(ptr noundef %2)
  %46 = load i32, ptr @li, align 4, !tbaa !11
  %47 = load i32, ptr @contextsize, align 4, !tbaa !11
  %48 = load i32, ptr @minimenusize, align 4, !tbaa !11
  %49 = add i32 %46, -4
  %50 = add i32 %47, %48
  %51 = sub i32 %49, %50
  %52 = load i32, ptr @co, align 4, !tbaa !11
  %53 = load i32, ptr @maxposslen, align 4, !tbaa !11
  %54 = add nsw i32 %53, 8
  %55 = sdiv i32 %52, %54
  %56 = load i32, ptr @pcount, align 4, !tbaa !11
  %57 = mul nsw i32 %55, %51
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  store i32 %57, ptr @pcount, align 4, !tbaa !11
  br label %60

60:                                               ; preds = %59, %44
  %61 = load i32, ptr @pcount, align 4, !tbaa !11
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %96

63:                                               ; preds = %60, %91
  %64 = phi i64 [ %92, %91 ], [ 0, %60 ]
  %65 = load i32, ptr @contextsize, align 4, !tbaa !11
  %66 = add nsw i32 %65, 3
  %67 = trunc i64 %64 to i32
  %68 = srem i32 %67, %51
  %69 = add nsw i32 %66, %68
  %70 = load i32, ptr @maxposslen, align 4, !tbaa !11
  %71 = add nsw i32 %70, 8
  %72 = trunc i64 %64 to i32
  %73 = sdiv i32 %72, %51
  %74 = mul nsw i32 %71, %73
  call void @move(i32 noundef %69, i32 noundef %74) #14
  %75 = load i32, ptr @easypossibilities, align 4, !tbaa !11
  %76 = sext i32 %75 to i64
  %77 = icmp slt i64 %64, %76
  br i1 %77, label %81, label %78

78:                                               ; preds = %63
  %79 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %64
  %80 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull %79)
  br label %91

81:                                               ; preds = %63
  %82 = icmp sgt i32 %75, 9
  %83 = icmp ult i64 %64, 10
  %84 = and i1 %83, %82
  %85 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %64
  %86 = trunc i64 %64 to i32
  br i1 %84, label %87, label %89

87:                                               ; preds = %81
  %88 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %86, ptr noundef nonnull %85)
  br label %91

89:                                               ; preds = %81
  %90 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %86, ptr noundef nonnull %85)
  br label %91

91:                                               ; preds = %78, %89, %87
  %92 = add nuw nsw i64 %64, 1
  %93 = load i32, ptr @pcount, align 4, !tbaa !11
  %94 = sext i32 %93 to i64
  %95 = icmp slt i64 %92, %94
  br i1 %95, label %63, label %96, !llvm.loop !20

96:                                               ; preds = %91, %60
  call void @move(i32 noundef 2, i32 noundef 0) #14
  %97 = load i32, ptr @contextsize, align 4, !tbaa !11
  %98 = icmp sgt i32 %97, 1
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = zext nneg i32 %97 to i64
  br label %101

101:                                              ; preds = %99, %101
  %102 = phi i64 [ %100, %99 ], [ %103, %101 ]
  %103 = add nsw i64 %102, -1
  %104 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %103
  call fastcc void @show_line(ptr noundef nonnull %104, ptr noundef nonnull %104, i32 noundef 0)
  %105 = icmp sgt i64 %102, 2
  br i1 %105, label %101, label %106, !llvm.loop !21

106:                                              ; preds = %101, %96
  %107 = load ptr, ptr %4, align 8, !tbaa !5
  %108 = call fastcc i32 @line_size(ptr noundef nonnull @contextbufs, ptr noundef %107)
  %109 = load i32, ptr @co, align 4, !tbaa !11
  %110 = load i32, ptr @sg, align 4, !tbaa !11
  %111 = shl i32 %110, 1
  %112 = xor i32 %111, -1
  %113 = add i32 %109, %112
  %114 = icmp sgt i32 %108, %113
  br i1 %114, label %115, label %141

115:                                              ; preds = %106
  %116 = sdiv i32 %109, -2
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, ptr %15, i64 %117
  %119 = icmp sgt i32 %109, 1
  br i1 %119, label %120, label %135

120:                                              ; preds = %115, %130
  %121 = phi ptr [ %133, %130 ], [ %118, %115 ]
  %122 = load ptr, ptr %4, align 8, !tbaa !5
  %123 = call fastcc i32 @line_size(ptr noundef %121, ptr noundef %122)
  %124 = add nsw i32 %123, 1
  %125 = load i32, ptr @sg, align 4, !tbaa !11
  %126 = shl i32 %125, 1
  %127 = add nsw i32 %126, %124
  %128 = load i32, ptr @co, align 4, !tbaa !11
  %129 = icmp sgt i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %120
  %131 = sub nsw i32 %124, %128
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, ptr %121, i64 %132
  %134 = icmp ult ptr %133, %15
  br i1 %134, label %120, label %135, !llvm.loop !22

135:                                              ; preds = %130, %120, %115
  %136 = phi ptr [ %118, %115 ], [ %133, %130 ], [ %121, %120 ]
  %137 = icmp ugt ptr %136, %15
  %138 = select i1 %137, ptr %15, ptr %136
  %139 = icmp ult ptr %138, @contextbufs
  %140 = select i1 %139, ptr @contextbufs, ptr %138
  br label %141

141:                                              ; preds = %135, %106
  %142 = phi ptr [ %140, %135 ], [ @contextbufs, %106 ]
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  %144 = trunc i64 %143 to i32
  call fastcc void @show_line(ptr noundef %142, ptr noundef %15, i32 noundef %144)
  %145 = load i32, ptr @minimenusize, align 4, !tbaa !11
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %141
  %148 = load i32, ptr @li, align 4, !tbaa !11
  %149 = add nsw i32 %148, -2
  call void @move(i32 noundef %149, i32 noundef 0) #14
  %150 = call i32 @puts(ptr nonnull dereferenceable(1) @str.86)
  br label %151

151:                                              ; preds = %147, %141
  br label %152

152:                                              ; preds = %434, %151
  %153 = load ptr, ptr @outfile1, align 8, !tbaa !5
  %154 = call i32 @fflush(ptr noundef %153)
  %155 = load ptr, ptr @stdin, align 8, !tbaa !5
  %156 = call i32 @getc(ptr noundef %155)
  %157 = and i32 %156, 127
  switch i32 %157, label %431 [
    i32 26, label %158
    i32 32, label %162
    i32 113, label %165
    i32 81, label %165
    i32 105, label %182
    i32 73, label %182
    i32 117, label %187
    i32 85, label %187
    i32 97, label %192
    i32 65, label %192
    i32 12, label %159
    i32 63, label %197
    i32 33, label %198
    i32 114, label %216
    i32 82, label %216
    i32 48, label %292
    i32 49, label %292
    i32 50, label %292
    i32 51, label %292
    i32 52, label %292
    i32 53, label %292
    i32 54, label %292
    i32 55, label %292
    i32 56, label %292
    i32 57, label %292
    i32 13, label %434
    i32 10, label %434
    i32 108, label %378
    i32 76, label %378
    i32 120, label %428
    i32 88, label %428
  ]

158:                                              ; preds = %152
  call void @stop() #14
  call void @erase() #14
  br label %159

159:                                              ; preds = %152, %179, %175, %158, %197, %215, %427, %287
  %160 = call i32 @good(ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %30, label %435

162:                                              ; preds = %152
  call void @erase() #14
  %163 = load ptr, ptr @outfile1, align 8, !tbaa !5
  %164 = call i32 @fflush(ptr noundef %163)
  br label %435

165:                                              ; preds = %152, %152
  %166 = load i32, ptr @changes, align 4, !tbaa !11
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %175, label %168

168:                                              ; preds = %165
  %169 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30)
  %170 = load ptr, ptr @outfile1, align 8, !tbaa !5
  %171 = call i32 @fflush(ptr noundef %170)
  %172 = load ptr, ptr @stdin, align 8, !tbaa !5
  %173 = call i32 @getc(ptr noundef %172)
  %174 = and i32 %173, 127
  br label %175

175:                                              ; preds = %165, %168
  %176 = phi i32 [ %174, %168 ], [ 121, %165 ]
  %177 = and i32 %176, 95
  %178 = icmp eq i32 %177, 89
  br i1 %178, label %179, label %159

179:                                              ; preds = %175
  call void @erase() #14
  %180 = load ptr, ptr @outfile1, align 8, !tbaa !5
  %181 = call i32 @fflush(ptr noundef %180)
  call void @done(i32 noundef 0) #14
  br label %159

182:                                              ; preds = %152, %152
  %183 = call ptr @strtosichar(ptr noundef %0, i32 noundef 0) #14
  %184 = call ptr @ichartosstr(ptr noundef %183, i32 noundef 1) #14
  call void @treeinsert(ptr noundef %184, i32 noundef 184, i32 noundef 1) #14
  call void @erase() #14
  %185 = load ptr, ptr @outfile1, align 8, !tbaa !5
  %186 = call i32 @fflush(ptr noundef %185)
  store i32 1, ptr @changes, align 4, !tbaa !11
  br label %435

187:                                              ; preds = %152, %152
  %188 = call ptr @strtosichar(ptr noundef %0, i32 noundef 0) #14
  call void @lowcase(ptr noundef %188) #14
  %189 = call ptr @ichartosstr(ptr noundef %188, i32 noundef 1) #14
  call void @treeinsert(ptr noundef %189, i32 noundef 184, i32 noundef 1) #14
  call void @erase() #14
  %190 = load ptr, ptr @outfile1, align 8, !tbaa !5
  %191 = call i32 @fflush(ptr noundef %190)
  store i32 1, ptr @changes, align 4, !tbaa !11
  br label %435

192:                                              ; preds = %152, %152
  %193 = call ptr @strtosichar(ptr noundef %0, i32 noundef 0) #14
  %194 = call ptr @ichartosstr(ptr noundef %193, i32 noundef 1) #14
  call void @treeinsert(ptr noundef %194, i32 noundef 184, i32 noundef 0) #14
  call void @erase() #14
  %195 = load ptr, ptr @outfile1, align 8, !tbaa !5
  %196 = call i32 @fflush(ptr noundef %195)
  br label %435

197:                                              ; preds = %152
  call void @givehelp(i32 noundef 1)
  br label %159

198:                                              ; preds = %152
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %10) #14
  %199 = load i32, ptr @li, align 4, !tbaa !11
  %200 = add nsw i32 %199, -1
  call void @move(i32 noundef %200, i32 noundef 0) #14
  %201 = load ptr, ptr @stdout, align 8, !tbaa !5
  %202 = call i32 @putc(i32 noundef 33, ptr noundef %201)
  %203 = call fastcc ptr @getLine(ptr noundef nonnull %10)
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %210

205:                                              ; preds = %198
  %206 = load ptr, ptr @stdout, align 8, !tbaa !5
  %207 = call i32 @putc(i32 noundef 7, ptr noundef %206)
  call void @erase() #14
  %208 = load ptr, ptr @outfile1, align 8, !tbaa !5
  %209 = call i32 @fflush(ptr noundef %208)
  br label %215

210:                                              ; preds = %198
  %211 = call i32 @puts(ptr nonnull dereferenceable(1) @str.89)
  %212 = load ptr, ptr @outfile1, align 8, !tbaa !5
  %213 = call i32 @fflush(ptr noundef %212)
  %214 = call i32 @shellescape(ptr noundef nonnull %10) #14
  call void @erase() #14
  br label %215

215:                                              ; preds = %210, %205
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %10) #14
  br label %159

216:                                              ; preds = %152, %152
  %217 = load i32, ptr @li, align 4, !tbaa !11
  %218 = add nsw i32 %217, -1
  call void @move(i32 noundef %218, i32 noundef 0) #14
  %219 = load i32, ptr @readonly, align 4, !tbaa !11
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %216
  %222 = load ptr, ptr @stdout, align 8, !tbaa !5
  %223 = call i32 @putc(i32 noundef 7, ptr noundef %222)
  %224 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef nonnull @.str.25)
  br label %225

225:                                              ; preds = %221, %216
  %226 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33)
  %227 = call fastcc ptr @getLine(ptr noundef %0)
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %233

229:                                              ; preds = %225
  %230 = load ptr, ptr @stdout, align 8, !tbaa !5
  %231 = call i32 @putc(i32 noundef 7, ptr noundef %230)
  %232 = call i32 @ichartostr(ptr noundef %0, ptr noundef %2, i32 noundef %1, i32 noundef 0) #14
  br label %287

233:                                              ; preds = %225
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %9) #14
  %234 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @contextbufs) #14
  br i1 %24, label %236, label %235

235:                                              ; preds = %233
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @contextbufs, ptr nonnull align 16 %9, i64 %26, i1 false), !tbaa !13
  br label %236

236:                                              ; preds = %235, %233
  %237 = phi ptr [ @contextbufs, %233 ], [ %27, %235 ]
  %238 = phi ptr [ %9, %233 ], [ %28, %235 ]
  %239 = load ptr, ptr %4, align 8, !tbaa !5
  %240 = ptrtoint ptr %239 to i64
  %241 = sub i64 %240, %29
  %242 = getelementptr inbounds i8, ptr %238, i64 %241
  %243 = call ptr @skipoverword(ptr noundef %0) #14
  %244 = icmp ugt ptr %243, %0
  br i1 %244, label %245, label %252

245:                                              ; preds = %236, %245
  %246 = phi ptr [ %248, %245 ], [ %0, %236 ]
  %247 = phi ptr [ %250, %245 ], [ %237, %236 ]
  %248 = getelementptr inbounds i8, ptr %246, i64 1
  %249 = load i8, ptr %246, align 1, !tbaa !13
  %250 = getelementptr inbounds i8, ptr %247, i64 1
  store i8 %249, ptr %247, align 1, !tbaa !13
  %251 = icmp eq ptr %248, %243
  br i1 %251, label %252, label %245, !llvm.loop !23

252:                                              ; preds = %245, %236
  %253 = phi ptr [ %237, %236 ], [ %250, %245 ]
  %254 = phi ptr [ %0, %236 ], [ %248, %245 ]
  store ptr %253, ptr %4, align 8, !tbaa !5
  %255 = load i8, ptr %254, align 1, !tbaa !13
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %270, label %257

257:                                              ; preds = %252
  store i8 %255, ptr %253, align 1, !tbaa !13
  store i8 0, ptr %254, align 1, !tbaa !13
  %258 = getelementptr inbounds i8, ptr %253, i64 1
  %259 = getelementptr inbounds i8, ptr %254, i64 1
  %260 = load i8, ptr %259, align 1, !tbaa !13
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %270, label %262

262:                                              ; preds = %257, %262
  %263 = phi i8 [ %268, %262 ], [ %260, %257 ]
  %264 = phi ptr [ %267, %262 ], [ %259, %257 ]
  %265 = phi ptr [ %266, %262 ], [ %258, %257 ]
  store i8 %263, ptr %265, align 1, !tbaa !13
  %266 = getelementptr inbounds i8, ptr %265, i64 1
  %267 = getelementptr inbounds i8, ptr %264, i64 1
  %268 = load i8, ptr %267, align 1, !tbaa !13
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %270, label %262, !llvm.loop !24

270:                                              ; preds = %262, %257, %252
  %271 = phi ptr [ %258, %257 ], [ %253, %252 ], [ %266, %262 ]
  br label %272

272:                                              ; preds = %270, %272
  %273 = phi ptr [ %277, %272 ], [ %271, %270 ]
  %274 = phi ptr [ %275, %272 ], [ %242, %270 ]
  %275 = getelementptr inbounds i8, ptr %274, i64 1
  %276 = load i8, ptr %274, align 1, !tbaa !13
  %277 = getelementptr inbounds i8, ptr %273, i64 1
  store i8 %276, ptr %273, align 1, !tbaa !13
  %278 = icmp eq i8 %276, 0
  br i1 %278, label %279, label %272, !llvm.loop !25

279:                                              ; preds = %272
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %9) #14
  %280 = call i32 @strtoichar(ptr noundef %2, ptr noundef %0, i32 noundef %3, i32 noundef 0) #14
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %286, label %282

282:                                              ; preds = %279
  %283 = load ptr, ptr @stdout, align 8, !tbaa !5
  %284 = call i32 @putc(i32 noundef 7, ptr noundef %283)
  %285 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, ptr noundef %0, i32 noundef 488, ptr noundef nonnull @.str.35)
  br label %286

286:                                              ; preds = %282, %279
  store i32 1, ptr @changes, align 4, !tbaa !11
  br label %287

287:                                              ; preds = %286, %229
  call void @erase() #14
  %288 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15
  %289 = load i32, ptr @minword, align 4, !tbaa !11
  %290 = sext i32 %289 to i64
  %291 = icmp ugt i64 %288, %290
  br i1 %291, label %159, label %435

292:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152
  %293 = add nsw i32 %157, -48
  %294 = load i32, ptr @easypossibilities, align 4, !tbaa !11
  %295 = icmp sgt i32 %294, 9
  br i1 %295, label %296, label %307

296:                                              ; preds = %292
  %297 = load ptr, ptr @stdin, align 8, !tbaa !5
  %298 = call i32 @getc(ptr noundef %297)
  %299 = and i32 %298, 127
  %300 = add nsw i32 %299, -48
  %301 = icmp ult i32 %300, 10
  br i1 %301, label %302, label %306

302:                                              ; preds = %296
  %303 = mul nsw i32 %293, 10
  %304 = add nsw i32 %303, -48
  %305 = add nsw i32 %304, %299
  br label %307

306:                                              ; preds = %296
  switch i32 %299, label %431 [
    i32 13, label %307
    i32 10, label %307
  ]

307:                                              ; preds = %306, %306, %302, %292
  %308 = phi i32 [ %305, %302 ], [ %293, %306 ], [ %293, %292 ], [ %293, %306 ]
  %309 = load i32, ptr @easypossibilities, align 4, !tbaa !11
  %310 = icmp slt i32 %308, %309
  br i1 %310, label %311, label %431

311:                                              ; preds = %307
  %312 = sext i32 %308 to i64
  %313 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %312
  %314 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %313) #14
  store i32 1, ptr @changes, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %8) #14
  %315 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @contextbufs) #14
  %316 = icmp eq ptr %15, @contextbufs
  br i1 %316, label %322, label %317

317:                                              ; preds = %311
  %318 = ptrtoint ptr %15 to i64
  %319 = sub i64 %318, ptrtoint (ptr @contextbufs to i64)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @contextbufs, ptr nonnull align 16 %8, i64 %319, i1 false), !tbaa !13
  %320 = getelementptr i8, ptr @contextbufs, i64 %319
  %321 = getelementptr i8, ptr %8, i64 %319
  br label %322

322:                                              ; preds = %317, %311
  %323 = phi ptr [ @contextbufs, %311 ], [ %320, %317 ]
  %324 = phi ptr [ %8, %311 ], [ %321, %317 ]
  %325 = load ptr, ptr %4, align 8, !tbaa !5
  %326 = ptrtoint ptr %325 to i64
  %327 = ptrtoint ptr %15 to i64
  %328 = sub i64 %326, %327
  %329 = getelementptr inbounds i8, ptr %324, i64 %328
  %330 = call ptr @skipoverword(ptr noundef %0) #14
  %331 = icmp ugt ptr %330, %0
  br i1 %331, label %332, label %339

332:                                              ; preds = %322, %332
  %333 = phi ptr [ %335, %332 ], [ %0, %322 ]
  %334 = phi ptr [ %337, %332 ], [ %323, %322 ]
  %335 = getelementptr inbounds i8, ptr %333, i64 1
  %336 = load i8, ptr %333, align 1, !tbaa !13
  %337 = getelementptr inbounds i8, ptr %334, i64 1
  store i8 %336, ptr %334, align 1, !tbaa !13
  %338 = icmp eq ptr %335, %330
  br i1 %338, label %339, label %332, !llvm.loop !23

339:                                              ; preds = %332, %322
  %340 = phi ptr [ %323, %322 ], [ %337, %332 ]
  %341 = phi ptr [ %0, %322 ], [ %335, %332 ]
  store ptr %340, ptr %4, align 8, !tbaa !5
  %342 = load i8, ptr %341, align 1, !tbaa !13
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %357, label %344

344:                                              ; preds = %339
  store i8 %342, ptr %340, align 1, !tbaa !13
  store i8 0, ptr %341, align 1, !tbaa !13
  %345 = getelementptr inbounds i8, ptr %340, i64 1
  %346 = getelementptr inbounds i8, ptr %341, i64 1
  %347 = load i8, ptr %346, align 1, !tbaa !13
  %348 = icmp eq i8 %347, 0
  br i1 %348, label %357, label %349

349:                                              ; preds = %344, %349
  %350 = phi i8 [ %355, %349 ], [ %347, %344 ]
  %351 = phi ptr [ %354, %349 ], [ %346, %344 ]
  %352 = phi ptr [ %353, %349 ], [ %345, %344 ]
  store i8 %350, ptr %352, align 1, !tbaa !13
  %353 = getelementptr inbounds i8, ptr %352, i64 1
  %354 = getelementptr inbounds i8, ptr %351, i64 1
  %355 = load i8, ptr %354, align 1, !tbaa !13
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %357, label %349, !llvm.loop !24

357:                                              ; preds = %349, %344, %339
  %358 = phi ptr [ %345, %344 ], [ %340, %339 ], [ %353, %349 ]
  br label %359

359:                                              ; preds = %357, %359
  %360 = phi ptr [ %364, %359 ], [ %358, %357 ]
  %361 = phi ptr [ %362, %359 ], [ %329, %357 ]
  %362 = getelementptr inbounds i8, ptr %361, i64 1
  %363 = load i8, ptr %361, align 1, !tbaa !13
  %364 = getelementptr inbounds i8, ptr %360, i64 1
  store i8 %363, ptr %360, align 1, !tbaa !13
  %365 = icmp eq i8 %363, 0
  br i1 %365, label %366, label %359, !llvm.loop !25

366:                                              ; preds = %359
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %8) #14
  call void @erase() #14
  %367 = load i32, ptr @readonly, align 4, !tbaa !11
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %435, label %369

369:                                              ; preds = %366
  %370 = load i32, ptr @li, align 4, !tbaa !11
  %371 = add nsw i32 %370, -1
  call void @move(i32 noundef %371, i32 noundef 0) #14
  %372 = load ptr, ptr @stdout, align 8, !tbaa !5
  %373 = call i32 @putc(i32 noundef 7, ptr noundef %372)
  %374 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, ptr noundef nonnull @.str.25)
  %375 = load ptr, ptr @outfile1, align 8, !tbaa !5
  %376 = call i32 @fflush(ptr noundef %375)
  %377 = call i32 (i32, ...) @sleep(i32 noundef 2) #14
  br label %435

378:                                              ; preds = %152, %152
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %11) #14
  %379 = load i32, ptr @li, align 4, !tbaa !11
  %380 = add nsw i32 %379, -1
  call void @move(i32 noundef %380, i32 noundef 0) #14
  %381 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37)
  %382 = call fastcc ptr @getLine(ptr noundef nonnull %11)
  %383 = icmp eq ptr %382, null
  br i1 %383, label %384, label %387

384:                                              ; preds = %378
  %385 = load ptr, ptr @stdout, align 8, !tbaa !5
  %386 = call i32 @putc(i32 noundef 7, ptr noundef %385)
  br label %427

387:                                              ; preds = %378
  %388 = call i32 @puts(ptr nonnull dereferenceable(1) @str.89)
  %389 = load ptr, ptr @outfile1, align 8, !tbaa !5
  %390 = call i32 @fflush(ptr noundef %389)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %7) #14
  br label %391

391:                                              ; preds = %402, %387
  %392 = phi ptr [ %7, %387 ], [ %403, %402 ]
  %393 = phi ptr [ %11, %387 ], [ %405, %402 ]
  %394 = phi i32 [ 0, %387 ], [ %404, %402 ]
  %395 = load i8, ptr %393, align 1, !tbaa !13
  switch i8 %395, label %400 [
    i8 0, label %406
    i8 42, label %396
  ]

396:                                              ; preds = %391
  %397 = add nsw i32 %394, 1
  %398 = getelementptr inbounds i8, ptr %392, i64 1
  store i8 46, ptr %392, align 1, !tbaa !13
  %399 = getelementptr inbounds i8, ptr %392, i64 2
  store i8 42, ptr %398, align 1, !tbaa !13
  br label %402

400:                                              ; preds = %391
  %401 = getelementptr inbounds i8, ptr %392, i64 1
  store i8 %395, ptr %392, align 1, !tbaa !13
  br label %402

402:                                              ; preds = %400, %396
  %403 = phi ptr [ %399, %396 ], [ %401, %400 ]
  %404 = phi i32 [ %397, %396 ], [ %394, %400 ]
  %405 = getelementptr inbounds i8, ptr %393, i64 1
  br label %391, !llvm.loop !26

406:                                              ; preds = %391
  store i8 0, ptr %392, align 1, !tbaa !13
  %407 = load i8, ptr %7, align 16, !tbaa !13
  %408 = icmp eq i8 %407, 0
  br i1 %408, label %426, label %409

409:                                              ; preds = %406
  %410 = icmp ne i32 %394, 0
  %411 = load i1, ptr @lookharder.look, align 4
  %412 = select i1 %410, i1 true, i1 %411
  br i1 %412, label %418, label %413

413:                                              ; preds = %409
  %414 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.80, ptr noundef nonnull @.str.81, ptr noundef nonnull %7, ptr noundef nonnull @.str.82) #14
  %415 = call i32 @shellescape(ptr noundef nonnull %6) #14
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %426

417:                                              ; preds = %413
  store i1 true, ptr @lookharder.look, align 4
  br label %418

418:                                              ; preds = %417, %409
  %419 = icmp eq i32 %394, 0
  br i1 %419, label %420, label %423

420:                                              ; preds = %418
  %421 = call i64 @strlen(ptr nonnull dereferenceable(1) %7)
  %422 = getelementptr inbounds i8, ptr %7, i64 %421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %422, ptr noundef nonnull align 1 dereferenceable(3) @.str.83, i64 3, i1 false)
  br label %423

423:                                              ; preds = %420, %418
  %424 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.84, ptr noundef nonnull @.str.85, ptr noundef nonnull %7, ptr noundef nonnull @.str.82) #14
  %425 = call i32 @shellescape(ptr noundef nonnull %6) #14
  br label %426

426:                                              ; preds = %406, %413, %423
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %6) #14
  br label %427

427:                                              ; preds = %426, %384
  call void @erase() #14
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %11) #14
  br label %159

428:                                              ; preds = %152, %152
  store i32 1, ptr @quit, align 4, !tbaa !11
  call void @erase() #14
  %429 = load ptr, ptr @outfile1, align 8, !tbaa !5
  %430 = call i32 @fflush(ptr noundef %429)
  br label %435

431:                                              ; preds = %152, %307, %306
  %432 = load ptr, ptr @stdout, align 8, !tbaa !5
  %433 = call i32 @putc(i32 noundef 7, ptr noundef %432)
  br label %434

434:                                              ; preds = %431, %152, %152
  br label %152, !llvm.loop !27

435:                                              ; preds = %30, %159, %287, %20, %366, %369, %5, %428, %192, %187, %182, %162
  ret void
}

declare i32 @good(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @compoundgood(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #14
  %4 = load i32, ptr @compoundflag, align 4, !tbaa !11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %49, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  %8 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 4), align 4, !tbaa !28
  %9 = sext i16 %8 to i32
  %10 = shl nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %7, %11
  br i1 %12, label %49, label %13

13:                                               ; preds = %6
  %14 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %0) #14
  %15 = sext i16 %8 to i64
  %16 = getelementptr inbounds i8, ptr %3, i64 %15
  %17 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 4), align 4, !tbaa !28
  %18 = sext i16 %17 to i64
  %19 = getelementptr i8, ptr %16, i64 %18
  %20 = getelementptr i8, ptr %19, i64 -1
  %21 = load i8, ptr %20, align 1, !tbaa !13
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %49, label %23

23:                                               ; preds = %13, %42
  %24 = phi ptr [ %43, %42 ], [ %16, %13 ]
  %25 = load i8, ptr %24, align 1, !tbaa !13
  store i8 0, ptr %24, align 1, !tbaa !13
  %26 = call i32 @good(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i32 noundef %1, i32 noundef 2) #14
  %27 = icmp eq i32 %26, 0
  store i8 %25, ptr %24, align 1, !tbaa !13
  br i1 %27, label %42, label %28

28:                                               ; preds = %23
  %29 = call i32 @good(ptr noundef nonnull %24, i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 0) #14
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = call i32 @compoundgood(ptr noundef nonnull %24, i32 noundef 2), !range !19
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %31, %28
  %35 = call i64 @whatcap(ptr noundef nonnull %24) #14
  %36 = call i64 @whatcap(ptr noundef nonnull %3) #14
  %37 = call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 36)
  switch i64 %37, label %42 [
    i64 0, label %38
    i64 2, label %38
    i64 3, label %38
    i64 1, label %40
  ]

38:                                               ; preds = %34, %34, %34
  %39 = icmp eq i64 %35, 0
  br label %49

40:                                               ; preds = %34
  %41 = icmp eq i64 %35, 268435456
  br label %49

42:                                               ; preds = %23, %34, %31
  %43 = getelementptr inbounds i8, ptr %24, i64 1
  %44 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 4), align 4, !tbaa !28
  %45 = sext i16 %44 to i64
  %46 = getelementptr inbounds i8, ptr %24, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !13
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %23, !llvm.loop !31

49:                                               ; preds = %42, %13, %6, %2, %40, %38
  %50 = phi i1 [ %41, %40 ], [ %39, %38 ], [ false, %2 ], [ false, %6 ], [ false, %13 ], [ false, %42 ]
  %51 = zext i1 %50 to i32
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #14
  ret i32 %51
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @makepossibilities(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [10 x [120 x i8]], align 16
  %5 = alloca [121 x i8], align 16
  %6 = alloca [10 x [120 x i8]], align 16
  %7 = alloca [120 x i8], align 16
  %8 = alloca [120 x i8], align 16
  %9 = alloca [120 x i8], align 16
  %10 = alloca [121 x i8], align 16
  %11 = alloca [120 x i8], align 16
  br label %12

12:                                               ; preds = %1, %12
  %13 = phi i64 [ 0, %1 ], [ %15, %12 ]
  %14 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %13
  store i8 0, ptr %14, align 8, !tbaa !13
  %15 = add nuw nsw i64 %13, 1
  %16 = icmp eq i64 %15, 100
  br i1 %16, label %17, label %12, !llvm.loop !32

17:                                               ; preds = %12
  store i32 0, ptr @pcount, align 4, !tbaa !11
  store i32 0, ptr @maxposslen, align 4, !tbaa !11
  store i32 0, ptr @easypossibilities, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %11) #14
  %18 = tail call i32 @good(ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %0) #14
  call void @upcase(ptr noundef nonnull %11) #14
  %22 = call fastcc i32 @ins_cap(ptr noundef nonnull %11, ptr noundef %0), !range !33
  br label %23

23:                                               ; preds = %17, %20
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %11) #14
  %24 = load i32, ptr @pcount, align 4, !tbaa !11
  %25 = icmp slt i32 %24, 100
  br i1 %25, label %26, label %88

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 121, ptr nonnull %10) #14
  %27 = getelementptr inbounds i8, ptr %10, i64 1
  %28 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(1) %0) #14
  %29 = load i8, ptr %0, align 1, !tbaa !13
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %26, %62
  %32 = phi ptr [ %65, %62 ], [ %10, %26 ]
  %33 = phi ptr [ %63, %62 ], [ %0, %26 ]
  %34 = load i32, ptr @Trynum, align 4, !tbaa !11
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %31
  %37 = icmp eq ptr %32, %10
  br label %42

38:                                               ; preds = %62, %26
  %39 = phi ptr [ %10, %26 ], [ %65, %62 ]
  %40 = load i32, ptr @Trynum, align 4, !tbaa !11
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %68, label %87

42:                                               ; preds = %57, %36
  %43 = phi i64 [ 0, %36 ], [ %58, %57 ]
  %44 = getelementptr inbounds [228 x i8], ptr @Try, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !13
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !13
  %49 = icmp ne i8 %48, 0
  %50 = select i1 %49, i1 %37, i1 false
  br i1 %50, label %57, label %51

51:                                               ; preds = %42
  store i8 %45, ptr %32, align 1, !tbaa !13
  %52 = call i32 @good(ptr noundef nonnull %10, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #14
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = call fastcc i32 @ins_cap(ptr noundef nonnull %10, ptr noundef nonnull %0), !range !33
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %87, label %57

57:                                               ; preds = %54, %51, %42
  %58 = add nuw nsw i64 %43, 1
  %59 = load i32, ptr @Trynum, align 4, !tbaa !11
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %42, label %62, !llvm.loop !34

62:                                               ; preds = %57, %31
  %63 = getelementptr inbounds i8, ptr %33, i64 1
  %64 = load i8, ptr %33, align 1, !tbaa !13
  %65 = getelementptr inbounds i8, ptr %32, i64 1
  store i8 %64, ptr %32, align 1, !tbaa !13
  %66 = load i8, ptr %63, align 1, !tbaa !13
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %38, label %31, !llvm.loop !35

68:                                               ; preds = %38, %82
  %69 = phi i64 [ %83, %82 ], [ 0, %38 ]
  %70 = getelementptr inbounds [228 x i8], ptr @Try, i64 0, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !13
  %72 = zext i8 %71 to i64
  %73 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !13
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %68
  store i8 %71, ptr %39, align 1, !tbaa !13
  %77 = call i32 @good(ptr noundef nonnull %10, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #14
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = call fastcc i32 @ins_cap(ptr noundef nonnull %10, ptr noundef nonnull %0), !range !33
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %79, %76, %68
  %83 = add nuw nsw i64 %69, 1
  %84 = load i32, ptr @Trynum, align 4, !tbaa !11
  %85 = sext i32 %84 to i64
  %86 = icmp slt i64 %83, %85
  br i1 %86, label %68, label %87, !llvm.loop !36

87:                                               ; preds = %54, %79, %82, %38
  call void @llvm.lifetime.end.p0(i64 121, ptr nonnull %10) #14
  br label %88

88:                                               ; preds = %87, %23
  %89 = load i32, ptr @pcount, align 4, !tbaa !11
  %90 = icmp slt i32 %89, 100
  br i1 %90, label %91, label %113

91:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %9) #14
  %92 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %0) #14
  %93 = getelementptr inbounds i8, ptr %9, i64 1
  %94 = load i8, ptr %93, align 1, !tbaa !13
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %112, label %96

96:                                               ; preds = %91, %106
  %97 = phi i8 [ %110, %106 ], [ %94, %91 ]
  %98 = phi ptr [ %109, %106 ], [ %93, %91 ]
  %99 = phi ptr [ %98, %106 ], [ %9, %91 ]
  %100 = load i8, ptr %99, align 1, !tbaa !13
  store i8 %97, ptr %99, align 1, !tbaa !13
  store i8 %100, ptr %98, align 1, !tbaa !13
  %101 = call i32 @good(ptr noundef nonnull %9, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #14
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %96
  %104 = call fastcc i32 @ins_cap(ptr noundef nonnull %9, ptr noundef %0), !range !33
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %103, %96
  %107 = load i8, ptr %99, align 1, !tbaa !13
  %108 = load i8, ptr %98, align 1, !tbaa !13
  store i8 %108, ptr %99, align 1, !tbaa !13
  store i8 %107, ptr %98, align 1, !tbaa !13
  %109 = getelementptr inbounds i8, ptr %98, i64 1
  %110 = load i8, ptr %109, align 1, !tbaa !13
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %96, !llvm.loop !37

112:                                              ; preds = %103, %106, %91
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %9) #14
  br label %113

113:                                              ; preds = %112, %88
  %114 = load i32, ptr @pcount, align 4, !tbaa !11
  %115 = icmp slt i32 %114, 100
  br i1 %115, label %116, label %139

116:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %8) #14
  %117 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  %118 = icmp ult i64 %117, 2
  br i1 %118, label %138, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds i8, ptr %0, i64 1
  %121 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %120) #14
  %122 = load i8, ptr %0, align 1, !tbaa !13
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %138, label %124

124:                                              ; preds = %119, %132
  %125 = phi ptr [ %135, %132 ], [ %8, %119 ]
  %126 = phi ptr [ %133, %132 ], [ %0, %119 ]
  %127 = call i32 @good(ptr noundef nonnull %8, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #14
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %124
  %130 = call fastcc i32 @ins_cap(ptr noundef nonnull %8, ptr noundef nonnull %0), !range !33
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %129, %124
  %133 = getelementptr inbounds i8, ptr %126, i64 1
  %134 = load i8, ptr %126, align 1, !tbaa !13
  %135 = getelementptr inbounds i8, ptr %125, i64 1
  store i8 %134, ptr %125, align 1, !tbaa !13
  %136 = load i8, ptr %133, align 1, !tbaa !13
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %124, !llvm.loop !38

138:                                              ; preds = %129, %132, %116, %119
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %8) #14
  br label %139

139:                                              ; preds = %138, %113
  %140 = load i32, ptr @pcount, align 4, !tbaa !11
  %141 = icmp slt i32 %140, 100
  br i1 %141, label %142, label %187

142:                                              ; preds = %139
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #14
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  %144 = trunc i64 %143 to i32
  %145 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %0) #14
  call void @upcase(ptr noundef nonnull %7) #14
  %146 = icmp sgt i32 %144, 0
  br i1 %146, label %147, label %186

147:                                              ; preds = %142
  %148 = add i64 %143, 4294967295
  %149 = and i64 %148, 4294967295
  %150 = and i64 %143, 4294967295
  br label %151

151:                                              ; preds = %183, %147
  %152 = phi i64 [ 0, %147 ], [ %184, %183 ]
  %153 = getelementptr inbounds [120 x i8], ptr %7, i64 0, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !13
  %155 = load i32, ptr @Trynum, align 4, !tbaa !11
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %183

157:                                              ; preds = %151
  %158 = icmp ne i64 %152, 0
  %159 = icmp ne i64 %152, %149
  %160 = select i1 %158, i1 %159, i1 false
  br label %161

161:                                              ; preds = %178, %157
  %162 = phi i64 [ 0, %157 ], [ %179, %178 ]
  %163 = getelementptr inbounds [228 x i8], ptr @Try, i64 0, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !13
  %165 = icmp eq i8 %164, %154
  br i1 %165, label %178, label %166

166:                                              ; preds = %161
  %167 = zext i8 %164 to i64
  %168 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %167
  %169 = load i8, ptr %168, align 1, !tbaa !13
  %170 = icmp eq i8 %169, 0
  %171 = select i1 %170, i1 true, i1 %160
  br i1 %171, label %172, label %178

172:                                              ; preds = %166
  store i8 %164, ptr %153, align 1, !tbaa !13
  %173 = call i32 @good(ptr noundef nonnull %7, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #14
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %172
  %176 = call fastcc i32 @ins_cap(ptr noundef nonnull %7, ptr noundef %0), !range !33
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %186, label %178

178:                                              ; preds = %175, %172, %166, %161
  %179 = add nuw nsw i64 %162, 1
  %180 = load i32, ptr @Trynum, align 4, !tbaa !11
  %181 = sext i32 %180 to i64
  %182 = icmp slt i64 %179, %181
  br i1 %182, label %161, label %183, !llvm.loop !39

183:                                              ; preds = %178, %151
  store i8 %154, ptr %153, align 1, !tbaa !13
  %184 = add nuw nsw i64 %152, 1
  %185 = icmp eq i64 %184, %150
  br i1 %185, label %186, label %151, !llvm.loop !40

186:                                              ; preds = %183, %175, %142
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #14
  br label %187

187:                                              ; preds = %186, %139
  %188 = load i32, ptr @compoundflag, align 4, !tbaa !11
  %189 = icmp ne i32 %188, 1
  %190 = load i32, ptr @pcount, align 4
  %191 = icmp slt i32 %190, 100
  %192 = select i1 %189, i1 %191, i1 false
  br i1 %192, label %193, label %384

193:                                              ; preds = %187
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 121, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %6) #14
  %194 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  %195 = trunc i64 %194 to i32
  %196 = add i32 %195, -119
  %197 = icmp ult i32 %196, -116
  br i1 %197, label %383, label %198

198:                                              ; preds = %193
  %199 = getelementptr inbounds i8, ptr %5, i64 1
  %200 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %199, ptr noundef nonnull dereferenceable(1) %0) #14
  %201 = getelementptr inbounds i8, ptr %5, i64 2
  %202 = load i8, ptr %201, align 2, !tbaa !13
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %383, label %204

204:                                              ; preds = %198
  %205 = ptrtoint ptr %5 to i64
  br label %206

206:                                              ; preds = %379, %204
  %207 = phi ptr [ %201, %204 ], [ %380, %379 ]
  %208 = phi ptr [ %199, %204 ], [ %207, %379 ]
  %209 = load i8, ptr %208, align 1, !tbaa !13
  %210 = getelementptr inbounds i8, ptr %208, i64 -1
  store i8 %209, ptr %210, align 1, !tbaa !13
  store i8 0, ptr %208, align 1, !tbaa !13
  %211 = call i32 @good(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #14
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %379, label %213

213:                                              ; preds = %206
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %214 = load i8, ptr %5, align 16, !tbaa !13
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %256, label %216

216:                                              ; preds = %213
  %217 = load i32, ptr @numhits, align 4, !tbaa !11
  store i32 0, ptr %3, align 4, !tbaa !11
  %218 = icmp sgt i32 %217, 0
  br i1 %218, label %219, label %256

219:                                              ; preds = %216
  %220 = zext nneg i32 %217 to i64
  br label %221

221:                                              ; preds = %248, %219
  %222 = phi i64 [ %220, %219 ], [ %223, %248 ]
  %223 = add nsw i64 %222, -1
  %224 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %223
  %225 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %223, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !41
  %227 = icmp eq ptr %226, null
  br i1 %227, label %235, label %228

228:                                              ; preds = %221
  %229 = getelementptr inbounds %struct.flagent, ptr %226, i64 0, i32 3
  %230 = load i16, ptr %229, align 2, !tbaa !43
  %231 = sext i16 %230 to i32
  %232 = getelementptr inbounds %struct.flagent, ptr %226, i64 0, i32 4
  %233 = load i16, ptr %232, align 4, !tbaa !45
  %234 = sext i16 %233 to i32
  br label %235

235:                                              ; preds = %228, %221
  %236 = phi i32 [ %234, %228 ], [ 0, %221 ]
  %237 = phi i32 [ %231, %228 ], [ 0, %221 ]
  %238 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %223, i32 2
  %239 = load ptr, ptr %238, align 8, !tbaa !46
  %240 = icmp eq ptr %239, null
  br i1 %240, label %248, label %241

241:                                              ; preds = %235
  %242 = getelementptr inbounds %struct.flagent, ptr %239, i64 0, i32 3
  %243 = load i16, ptr %242, align 2, !tbaa !43
  %244 = sext i16 %243 to i32
  %245 = getelementptr inbounds %struct.flagent, ptr %239, i64 0, i32 4
  %246 = load i16, ptr %245, align 4, !tbaa !45
  %247 = sext i16 %246 to i32
  br label %248

248:                                              ; preds = %241, %235
  %249 = phi i32 [ %247, %241 ], [ 0, %235 ]
  %250 = phi i32 [ %244, %241 ], [ 0, %235 ]
  %251 = load ptr, ptr %224, align 8, !tbaa !47
  call fastcc void @save_root_cap(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %237, i32 noundef %236, i32 noundef %250, i32 noundef %249, ptr noundef %251, ptr noundef %226, ptr noundef %239, ptr noundef nonnull %4, ptr noundef nonnull %3)
  %252 = icmp sgt i64 %222, 1
  %253 = load i32, ptr %3, align 4
  %254 = icmp slt i32 %253, 10
  %255 = select i1 %252, i1 %254, i1 false
  br i1 %255, label %221, label %256, !llvm.loop !48

256:                                              ; preds = %248, %216, %213
  %257 = phi i32 [ 0, %213 ], [ 0, %216 ], [ %253, %248 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %258 = call i32 @good(ptr noundef nonnull %207, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #14
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %379, label %260

260:                                              ; preds = %256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  %261 = load i8, ptr %207, align 1, !tbaa !13
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %303, label %263

263:                                              ; preds = %260
  %264 = load i32, ptr @numhits, align 4, !tbaa !11
  store i32 0, ptr %2, align 4, !tbaa !11
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %303

266:                                              ; preds = %263
  %267 = zext nneg i32 %264 to i64
  br label %268

268:                                              ; preds = %295, %266
  %269 = phi i64 [ %267, %266 ], [ %270, %295 ]
  %270 = add nsw i64 %269, -1
  %271 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %270
  %272 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %270, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !41
  %274 = icmp eq ptr %273, null
  br i1 %274, label %282, label %275

275:                                              ; preds = %268
  %276 = getelementptr inbounds %struct.flagent, ptr %273, i64 0, i32 3
  %277 = load i16, ptr %276, align 2, !tbaa !43
  %278 = sext i16 %277 to i32
  %279 = getelementptr inbounds %struct.flagent, ptr %273, i64 0, i32 4
  %280 = load i16, ptr %279, align 4, !tbaa !45
  %281 = sext i16 %280 to i32
  br label %282

282:                                              ; preds = %275, %268
  %283 = phi i32 [ %281, %275 ], [ 0, %268 ]
  %284 = phi i32 [ %278, %275 ], [ 0, %268 ]
  %285 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %270, i32 2
  %286 = load ptr, ptr %285, align 8, !tbaa !46
  %287 = icmp eq ptr %286, null
  br i1 %287, label %295, label %288

288:                                              ; preds = %282
  %289 = getelementptr inbounds %struct.flagent, ptr %286, i64 0, i32 3
  %290 = load i16, ptr %289, align 2, !tbaa !43
  %291 = sext i16 %290 to i32
  %292 = getelementptr inbounds %struct.flagent, ptr %286, i64 0, i32 4
  %293 = load i16, ptr %292, align 4, !tbaa !45
  %294 = sext i16 %293 to i32
  br label %295

295:                                              ; preds = %288, %282
  %296 = phi i32 [ %294, %288 ], [ 0, %282 ]
  %297 = phi i32 [ %291, %288 ], [ 0, %282 ]
  %298 = load ptr, ptr %271, align 8, !tbaa !47
  call fastcc void @save_root_cap(ptr noundef nonnull %207, ptr noundef nonnull %207, i32 noundef %284, i32 noundef %283, i32 noundef %297, i32 noundef %296, ptr noundef %298, ptr noundef %273, ptr noundef %286, ptr noundef nonnull %6, ptr noundef nonnull %2)
  %299 = icmp sgt i64 %269, 1
  %300 = load i32, ptr %2, align 4
  %301 = icmp slt i32 %300, 10
  %302 = select i1 %299, i1 %301, i1 false
  br i1 %302, label %268, label %303, !llvm.loop !48

303:                                              ; preds = %295, %263, %260
  %304 = phi i32 [ 0, %260 ], [ 0, %263 ], [ %300, %295 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %305 = icmp sgt i32 %257, 0
  br i1 %305, label %306, label %379

306:                                              ; preds = %303
  %307 = ptrtoint ptr %208 to i64
  %308 = sub i64 %307, %205
  %309 = icmp sgt i32 %304, 0
  %310 = zext nneg i32 %257 to i64
  %311 = zext nneg i32 %304 to i64
  br label %312

312:                                              ; preds = %376, %306
  %313 = phi i64 [ 0, %306 ], [ %377, %376 ]
  %314 = getelementptr inbounds [10 x [120 x i8]], ptr %4, i64 0, i64 %313
  %315 = getelementptr inbounds [10 x [120 x i8]], ptr %4, i64 0, i64 %313, i64 %308
  br i1 %309, label %316, label %376

316:                                              ; preds = %312
  %317 = getelementptr inbounds i8, ptr %315, i64 1
  br label %318

318:                                              ; preds = %373, %316
  %319 = phi i64 [ 0, %316 ], [ %374, %373 ]
  store i8 32, ptr %315, align 1, !tbaa !13
  %320 = getelementptr inbounds [10 x [120 x i8]], ptr %6, i64 0, i64 %319
  %321 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %317, ptr noundef nonnull dereferenceable(1) %320) #14
  %322 = call ptr @ichartosstr(ptr noundef nonnull %314, i32 noundef 0) #14
  %323 = load i32, ptr @pcount, align 4, !tbaa !11
  %324 = icmp sgt i32 %323, 0
  br i1 %324, label %325, label %335

325:                                              ; preds = %318
  %326 = zext nneg i32 %323 to i64
  br label %330

327:                                              ; preds = %330
  %328 = add nuw nsw i64 %331, 1
  %329 = icmp eq i64 %328, %326
  br i1 %329, label %335, label %330, !llvm.loop !49

330:                                              ; preds = %327, %325
  %331 = phi i64 [ 0, %325 ], [ %328, %327 ]
  %332 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %331
  %333 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %332, ptr noundef nonnull dereferenceable(1) %322) #15
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %347, label %327

335:                                              ; preds = %327, %318
  %336 = add nsw i32 %323, 1
  store i32 %336, ptr @pcount, align 4, !tbaa !11
  %337 = sext i32 %323 to i64
  %338 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %337
  %339 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %338, ptr noundef nonnull dereferenceable(1) %322) #14
  %340 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %322) #15
  %341 = trunc i64 %340 to i32
  %342 = load i32, ptr @maxposslen, align 4, !tbaa !11
  %343 = icmp slt i32 %342, %341
  br i1 %343, label %344, label %345

344:                                              ; preds = %335
  store i32 %341, ptr @maxposslen, align 4, !tbaa !11
  br label %345

345:                                              ; preds = %344, %335
  %346 = icmp sgt i32 %323, 98
  br i1 %346, label %383, label %347

347:                                              ; preds = %330, %345
  store i8 45, ptr %315, align 1, !tbaa !13
  %348 = call ptr @ichartosstr(ptr noundef nonnull %314, i32 noundef 0) #14
  %349 = load i32, ptr @pcount, align 4, !tbaa !11
  %350 = icmp sgt i32 %349, 0
  br i1 %350, label %351, label %361

351:                                              ; preds = %347
  %352 = zext nneg i32 %349 to i64
  br label %356

353:                                              ; preds = %356
  %354 = add nuw nsw i64 %357, 1
  %355 = icmp eq i64 %354, %352
  br i1 %355, label %361, label %356, !llvm.loop !49

356:                                              ; preds = %353, %351
  %357 = phi i64 [ 0, %351 ], [ %354, %353 ]
  %358 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %357
  %359 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %358, ptr noundef nonnull dereferenceable(1) %348) #15
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %373, label %353

361:                                              ; preds = %353, %347
  %362 = add nsw i32 %349, 1
  store i32 %362, ptr @pcount, align 4, !tbaa !11
  %363 = sext i32 %349 to i64
  %364 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %363
  %365 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %364, ptr noundef nonnull dereferenceable(1) %348) #14
  %366 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %348) #15
  %367 = trunc i64 %366 to i32
  %368 = load i32, ptr @maxposslen, align 4, !tbaa !11
  %369 = icmp slt i32 %368, %367
  br i1 %369, label %370, label %371

370:                                              ; preds = %361
  store i32 %367, ptr @maxposslen, align 4, !tbaa !11
  br label %371

371:                                              ; preds = %370, %361
  %372 = icmp sgt i32 %349, 98
  br i1 %372, label %383, label %373

373:                                              ; preds = %356, %371
  %374 = add nuw nsw i64 %319, 1
  %375 = icmp eq i64 %374, %311
  br i1 %375, label %376, label %318, !llvm.loop !50

376:                                              ; preds = %373, %312
  %377 = add nuw nsw i64 %313, 1
  %378 = icmp eq i64 %377, %310
  br i1 %378, label %379, label %312, !llvm.loop !51

379:                                              ; preds = %376, %303, %256, %206
  %380 = getelementptr inbounds i8, ptr %207, i64 1
  %381 = load i8, ptr %380, align 1, !tbaa !13
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %383, label %206, !llvm.loop !52

383:                                              ; preds = %379, %345, %371, %193, %198
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 121, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %4) #14
  br label %384

384:                                              ; preds = %383, %187
  %385 = load i32, ptr @pcount, align 4, !tbaa !11
  store i32 %385, ptr @easypossibilities, align 4, !tbaa !11
  %386 = icmp eq i32 %385, 0
  %387 = load i32, ptr @tryhardflag, align 4
  %388 = icmp ne i32 %387, 0
  %389 = select i1 %386, i1 true, i1 %388
  br i1 %389, label %390, label %392

390:                                              ; preds = %384
  %391 = call i32 @good(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14
  br label %392

392:                                              ; preds = %384, %390
  %393 = load i32, ptr @sortit, align 4
  %394 = icmp eq i32 %393, 0
  %395 = load i32, ptr @pcount, align 4
  br i1 %394, label %396, label %401

396:                                              ; preds = %392
  %397 = load i32, ptr @easypossibilities, align 4, !tbaa !11
  %398 = icmp sgt i32 %395, %397
  %399 = icmp ne i32 %395, 0
  %400 = and i1 %399, %398
  br i1 %400, label %403, label %419

401:                                              ; preds = %392
  %402 = icmp eq i32 %395, 0
  br i1 %402, label %419, label %403

403:                                              ; preds = %396, %401
  %404 = load i32, ptr @easypossibilities, align 4, !tbaa !11
  %405 = icmp sgt i32 %404, 0
  %406 = icmp ne i32 %393, 0
  %407 = and i1 %406, %405
  br i1 %407, label %408, label %410

408:                                              ; preds = %403
  %409 = zext nneg i32 %404 to i64
  call void @qsort(ptr noundef nonnull @possibilities, i64 noundef %409, i64 noundef 120, ptr noundef nonnull @posscmp) #14
  br label %410

410:                                              ; preds = %408, %403
  %411 = load i32, ptr @pcount, align 4, !tbaa !11
  %412 = load i32, ptr @easypossibilities, align 4, !tbaa !11
  %413 = icmp sgt i32 %411, %412
  br i1 %413, label %414, label %419

414:                                              ; preds = %410
  %415 = sext i32 %412 to i64
  %416 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %415
  %417 = sub nsw i32 %411, %412
  %418 = zext i32 %417 to i64
  call void @qsort(ptr noundef nonnull %416, i64 noundef %418, i64 noundef 120, ptr noundef nonnull @posscmp) #14
  br label %419

419:                                              ; preds = %410, %414, %401, %396
  ret void
}

declare void @move(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @show_line(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !5
  %5 = icmp eq i32 %2, 0
  %6 = load i32, ptr @sg, align 4
  %7 = shl i32 %6, 1
  %8 = select i1 %5, i32 0, i32 %7
  %9 = icmp ult ptr %0, %1
  %10 = load i32, ptr @co, align 4
  %11 = add nsw i32 %10, -1
  %12 = icmp slt i32 %8, %11
  %13 = select i1 %9, i1 %12, i1 false
  br i1 %13, label %14, label %30

14:                                               ; preds = %3
  %15 = ptrtoint ptr %1 to i64
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi ptr [ %0, %14 ], [ %24, %16 ]
  %18 = phi i32 [ %8, %14 ], [ %23, %16 ]
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %15, %19
  %21 = trunc i64 %20 to i32
  %22 = call fastcc i32 @show_char(ptr noundef nonnull %4, i32 noundef %18, i32 noundef 1, i32 noundef %21)
  %23 = add nsw i32 %22, %18
  %24 = load ptr, ptr %4, align 8, !tbaa !5
  %25 = icmp ult ptr %24, %1
  %26 = load i32, ptr @co, align 4
  %27 = add nsw i32 %26, -1
  %28 = icmp slt i32 %23, %27
  %29 = select i1 %25, i1 %28, i1 false
  br i1 %29, label %16, label %30, !llvm.loop !53

30:                                               ; preds = %16, %3
  %31 = phi i32 [ %8, %3 ], [ %23, %16 ]
  br i1 %5, label %59, label %32

32:                                               ; preds = %30
  tail call void @inverse() #14
  %33 = sext i32 %2 to i64
  %34 = getelementptr inbounds i8, ptr %1, i64 %33
  %35 = load ptr, ptr %4, align 8, !tbaa !5
  %36 = icmp ult ptr %35, %34
  %37 = load i32, ptr @co, align 4
  %38 = add nsw i32 %37, -1
  %39 = icmp slt i32 %31, %38
  %40 = select i1 %36, i1 %39, i1 false
  br i1 %40, label %41, label %57

41:                                               ; preds = %32
  %42 = ptrtoint ptr %34 to i64
  br label %43

43:                                               ; preds = %41, %43
  %44 = phi ptr [ %35, %41 ], [ %51, %43 ]
  %45 = phi i32 [ %31, %41 ], [ %50, %43 ]
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %42, %46
  %48 = trunc i64 %47 to i32
  %49 = call fastcc i32 @show_char(ptr noundef nonnull %4, i32 noundef %45, i32 noundef 1, i32 noundef %48)
  %50 = add nsw i32 %49, %45
  %51 = load ptr, ptr %4, align 8, !tbaa !5
  %52 = icmp ult ptr %51, %34
  %53 = load i32, ptr @co, align 4
  %54 = add nsw i32 %53, -1
  %55 = icmp slt i32 %50, %54
  %56 = select i1 %52, i1 %55, i1 false
  br i1 %56, label %43, label %57, !llvm.loop !54

57:                                               ; preds = %43, %32
  %58 = phi i32 [ %31, %32 ], [ %50, %43 ]
  tail call void @normal() #14
  br label %59

59:                                               ; preds = %57, %30
  %60 = phi i32 [ %58, %57 ], [ %31, %30 ]
  %61 = load ptr, ptr %4, align 8, !tbaa !5
  %62 = load i8, ptr %61, align 1, !tbaa !13
  %63 = icmp ne i8 %62, 0
  %64 = load i32, ptr @co, align 4
  %65 = add nsw i32 %64, -1
  %66 = icmp slt i32 %60, %65
  %67 = select i1 %63, i1 %66, i1 false
  br i1 %67, label %68, label %79

68:                                               ; preds = %59, %68
  %69 = phi i32 [ %71, %68 ], [ %60, %59 ]
  %70 = call fastcc i32 @show_char(ptr noundef nonnull %4, i32 noundef %69, i32 noundef 1, i32 noundef 0)
  %71 = add nsw i32 %70, %69
  %72 = load ptr, ptr %4, align 8, !tbaa !5
  %73 = load i8, ptr %72, align 1, !tbaa !13
  %74 = icmp ne i8 %73, 0
  %75 = load i32, ptr @co, align 4
  %76 = add nsw i32 %75, -1
  %77 = icmp slt i32 %71, %76
  %78 = select i1 %74, i1 %77, i1 false
  br i1 %78, label %68, label %79, !llvm.loop !55

79:                                               ; preds = %68, %59
  %80 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.89)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @line_size(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp ult ptr %0, %1
  br i1 %3, label %4, label %82

4:                                                ; preds = %2
  %5 = ptrtoint ptr %1 to i64
  br label %6

6:                                                ; preds = %4, %77
  %7 = phi i32 [ 0, %4 ], [ %80, %77 ]
  %8 = phi ptr [ %0, %4 ], [ %78, %77 ]
  %9 = load i8, ptr %8, align 1, !tbaa !13
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %82, label %11

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = sub i64 %5, %12
  %14 = trunc i64 %13 to i32
  %15 = zext i8 %9 to i64
  %16 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !13
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %11
  %20 = tail call i32 @stringcharlen(ptr noundef nonnull %8, i32 noundef 0) #14
  %21 = icmp sgt i32 %20, 0
  %22 = select i1 %21, i32 %20, i32 1
  br i1 %21, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, ptr @laststringch, align 4, !tbaa !11
  %25 = trunc i32 %24 to i8
  %26 = xor i8 %25, -128
  br label %27

27:                                               ; preds = %23, %19, %11
  %28 = phi i32 [ %22, %23 ], [ %22, %19 ], [ 1, %11 ]
  %29 = phi i8 [ %26, %23 ], [ %9, %19 ], [ %9, %11 ]
  %30 = load i32, ptr @vflag, align 4, !tbaa !11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = zext i8 %29 to i64
  %34 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !13
  %36 = icmp ne i8 %35, 0
  %37 = icmp eq i32 %28, 1
  %38 = and i1 %37, %36
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = getelementptr inbounds i8, ptr %8, i64 1
  br label %77

41:                                               ; preds = %32, %27
  %42 = icmp eq i8 %9, 9
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  %44 = getelementptr inbounds i8, ptr %8, i64 1
  %45 = and i32 %7, 7
  %46 = sub nuw nsw i32 8, %45
  br label %77

47:                                               ; preds = %41
  %48 = icmp eq i32 %14, 0
  %49 = tail call i32 @llvm.smin.i32(i32 %28, i32 %14)
  %50 = select i1 %48, i32 %28, i32 %49
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %47
  %53 = add nsw i32 %50, -1
  %54 = zext i32 %53 to i64
  br label %55

55:                                               ; preds = %52, %55
  %56 = phi ptr [ %59, %55 ], [ %8, %52 ]
  %57 = phi i32 [ %71, %55 ], [ 0, %52 ]
  %58 = phi i32 [ %72, %55 ], [ 0, %52 ]
  %59 = getelementptr inbounds i8, ptr %56, i64 1
  %60 = load i8, ptr %56, align 1, !tbaa !13
  %61 = zext i8 %60 to i32
  %62 = icmp slt i8 %60, 0
  %63 = add nsw i32 %57, 2
  %64 = and i32 %61, 127
  %65 = select i1 %62, i32 %64, i32 %61
  %66 = select i1 %62, i32 %63, i32 %57
  %67 = icmp ult i32 %65, 32
  %68 = icmp eq i32 %65, 127
  %69 = or i1 %67, %68
  %70 = select i1 %69, i32 2, i32 1
  %71 = add nsw i32 %70, %66
  %72 = add nuw nsw i32 %58, 1
  %73 = icmp eq i32 %72, %50
  br i1 %73, label %74, label %55, !llvm.loop !56

74:                                               ; preds = %55
  %75 = getelementptr i8, ptr %8, i64 1
  %76 = getelementptr i8, ptr %75, i64 %54
  br label %77

77:                                               ; preds = %74, %39, %43, %47
  %78 = phi ptr [ %40, %39 ], [ %44, %43 ], [ %8, %47 ], [ %76, %74 ]
  %79 = phi i32 [ 1, %39 ], [ %46, %43 ], [ 0, %47 ], [ %71, %74 ]
  %80 = add nsw i32 %79, %7
  %81 = icmp ult ptr %78, %1
  br i1 %81, label %6, label %82, !llvm.loop !57

82:                                               ; preds = %6, %77, %2
  %83 = phi i32 [ 0, %2 ], [ %7, %6 ], [ %80, %77 ]
  ret i32 %83
}

declare void @stop() local_unnamed_addr #2

declare void @done(i32 noundef) local_unnamed_addr #2

declare void @treeinsert(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ichartosstr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @strtosichar(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lowcase(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @getLine(ptr noundef writeonly %0) unnamed_addr #0 {
  %2 = ptrtoint ptr %0 to i64
  br label %3

3:                                                ; preds = %25, %1
  %4 = phi ptr [ %0, %1 ], [ %26, %25 ]
  %5 = icmp eq ptr %4, %0
  %6 = icmp eq ptr %4, %0
  br label %7

7:                                                ; preds = %40, %3
  %8 = load ptr, ptr @outfile1, align 8, !tbaa !5
  %9 = tail call i32 @fflush(ptr noundef %8)
  %10 = load ptr, ptr @stdin, align 8, !tbaa !5
  %11 = tail call i32 @getc(ptr noundef %10)
  %12 = and i32 %11, 127
  switch i32 %12, label %28 [
    i32 92, label %13
    i32 7, label %58
    i32 13, label %27
    i32 10, label %27
  ]

13:                                               ; preds = %7
  %14 = load ptr, ptr @stdout, align 8, !tbaa !5
  %15 = tail call i32 @putc(i32 noundef 92, ptr noundef %14)
  %16 = load ptr, ptr @outfile1, align 8, !tbaa !5
  %17 = tail call i32 @fflush(ptr noundef %16)
  %18 = load ptr, ptr @stdin, align 8, !tbaa !5
  %19 = tail call i32 @getc(ptr noundef %18)
  %20 = and i32 %19, 127
  tail call void @backup() #14
  %21 = load ptr, ptr @stdout, align 8, !tbaa !5
  %22 = tail call i32 @putc(i32 noundef %20, ptr noundef %21)
  %23 = trunc i32 %20 to i8
  %24 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %23, ptr %4, align 1, !tbaa !13
  br label %25

25:                                               ; preds = %13, %32, %50, %55
  %26 = phi ptr [ %57, %55 ], [ %52, %50 ], [ %33, %32 ], [ %24, %13 ]
  br label %3, !llvm.loop !58

27:                                               ; preds = %7, %7
  store i8 0, ptr %4, align 1, !tbaa !13
  br label %58

28:                                               ; preds = %7
  %29 = load i32, ptr @uerasechar, align 4, !tbaa !11
  %30 = icmp eq i32 %12, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  br i1 %6, label %40, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds i8, ptr %4, i64 -1
  tail call void @backup() #14
  %34 = load ptr, ptr @stdout, align 8, !tbaa !5
  %35 = tail call i32 @putc(i32 noundef 32, ptr noundef %34)
  tail call void @backup() #14
  br label %25

36:                                               ; preds = %28
  %37 = load i32, ptr @ukillchar, align 4, !tbaa !11
  %38 = icmp eq i32 %12, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  br i1 %5, label %40, label %41

40:                                               ; preds = %39, %31
  br label %7, !llvm.loop !58

41:                                               ; preds = %39
  %42 = ptrtoint ptr %4 to i64
  %43 = sub i64 0, %42
  br label %44

44:                                               ; preds = %41, %44
  %45 = phi ptr [ %46, %44 ], [ %4, %41 ]
  %46 = getelementptr inbounds i8, ptr %45, i64 -1
  tail call void @backup() #14
  %47 = load ptr, ptr @stdout, align 8, !tbaa !5
  %48 = tail call i32 @putc(i32 noundef 32, ptr noundef %47)
  tail call void @backup() #14
  %49 = icmp eq ptr %46, %0
  br i1 %49, label %55, label %44, !llvm.loop !59

50:                                               ; preds = %36
  %51 = trunc i32 %12 to i8
  %52 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %51, ptr %4, align 1, !tbaa !13
  %53 = load ptr, ptr @stdout, align 8, !tbaa !5
  %54 = tail call i32 @putc(i32 noundef %12, ptr noundef %53)
  br label %25

55:                                               ; preds = %44
  %56 = getelementptr i8, ptr %4, i64 %2
  %57 = getelementptr i8, ptr %56, i64 %43
  br label %25

58:                                               ; preds = %7, %27
  %59 = phi ptr [ %0, %27 ], [ null, %7 ]
  ret ptr %59
}

declare i32 @shellescape(ptr noundef) local_unnamed_addr #2

declare i32 @ichartostr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @strtoichar(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @sleep(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @casecmp(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [184 x i8], align 16
  %5 = alloca [184 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %5) #14
  %6 = call i32 @strtoichar(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 184, i32 noundef %2) #14
  %7 = call i32 @strtoichar(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 184, i32 noundef %2) #14
  %8 = load i8, ptr %4, align 16, !tbaa !13
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %65, label %10

10:                                               ; preds = %3, %60
  %11 = phi i8 [ %63, %60 ], [ %8, %3 ]
  %12 = phi ptr [ %62, %60 ], [ %5, %3 ]
  %13 = phi ptr [ %61, %60 ], [ %4, %3 ]
  %14 = load i8, ptr %12, align 1, !tbaa !13
  %15 = icmp eq i8 %11, %14
  br i1 %15, label %60, label %16

16:                                               ; preds = %10
  %17 = icmp eq i8 %14, 0
  %18 = zext i8 %11 to i64
  br i1 %17, label %19, label %23

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %18
  %21 = load i16, ptr %20, align 2, !tbaa !60
  %22 = zext i16 %21 to i32
  br label %99

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %18
  %25 = load i8, ptr %24, align 1, !tbaa !13
  %26 = icmp eq i8 %25, 0
  %27 = zext i8 %14 to i64
  br i1 %26, label %44, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %27
  %30 = load i8, ptr %29, align 1, !tbaa !13
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %18
  %34 = load i8, ptr %33, align 1, !tbaa !13
  %35 = icmp eq i8 %34, %14
  br i1 %35, label %60, label %36

36:                                               ; preds = %32, %28
  %37 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %18
  %38 = load i16, ptr %37, align 2, !tbaa !60
  %39 = zext i16 %38 to i32
  %40 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %27
  %41 = load i16, ptr %40, align 2, !tbaa !60
  %42 = zext i16 %41 to i32
  %43 = sub nsw i32 %39, %42
  br label %99

44:                                               ; preds = %23
  %45 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %27
  %46 = load i8, ptr %45, align 1, !tbaa !13
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %18
  %50 = load i8, ptr %49, align 1, !tbaa !13
  %51 = icmp eq i8 %50, %14
  br i1 %51, label %60, label %52

52:                                               ; preds = %48, %44
  %53 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %18
  %54 = load i16, ptr %53, align 2, !tbaa !60
  %55 = zext i16 %54 to i32
  %56 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %27
  %57 = load i16, ptr %56, align 2, !tbaa !60
  %58 = zext i16 %57 to i32
  %59 = sub nsw i32 %55, %58
  br label %99

60:                                               ; preds = %10, %32, %48
  %61 = getelementptr inbounds i8, ptr %13, i64 1
  %62 = getelementptr inbounds i8, ptr %12, i64 1
  %63 = load i8, ptr %61, align 1, !tbaa !13
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %10, !llvm.loop !61

65:                                               ; preds = %60, %3
  %66 = phi ptr [ %5, %3 ], [ %62, %60 ]
  %67 = load i8, ptr %66, align 1, !tbaa !13
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i8, ptr %4, align 16, !tbaa !13
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %99, label %78

72:                                               ; preds = %65
  %73 = zext i8 %67 to i64
  %74 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %73
  %75 = load i16, ptr %74, align 2, !tbaa !60
  %76 = zext i16 %75 to i32
  %77 = sub nsw i32 0, %76
  br label %99

78:                                               ; preds = %69, %94
  %79 = phi i8 [ %97, %94 ], [ %70, %69 ]
  %80 = phi ptr [ %96, %94 ], [ %5, %69 ]
  %81 = phi ptr [ %95, %94 ], [ %4, %69 ]
  %82 = load i8, ptr %80, align 1, !tbaa !13
  %83 = icmp eq i8 %79, %82
  br i1 %83, label %94, label %84

84:                                               ; preds = %78
  %85 = zext i8 %79 to i64
  %86 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %85
  %87 = load i16, ptr %86, align 2, !tbaa !60
  %88 = zext i16 %87 to i32
  %89 = zext i8 %82 to i64
  %90 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %89
  %91 = load i16, ptr %90, align 2, !tbaa !60
  %92 = zext i16 %91 to i32
  %93 = sub nsw i32 %88, %92
  br label %99

94:                                               ; preds = %78
  %95 = getelementptr inbounds i8, ptr %81, i64 1
  %96 = getelementptr inbounds i8, ptr %80, i64 1
  %97 = load i8, ptr %95, align 1, !tbaa !13
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %78, !llvm.loop !62

99:                                               ; preds = %94, %69, %84, %72, %52, %36, %19
  %100 = phi i32 [ %22, %19 ], [ %43, %36 ], [ %59, %52 ], [ %77, %72 ], [ %93, %84 ], [ 0, %69 ], [ 0, %94 ]
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %4) #14
  ret i32 %100
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal i32 @posscmp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @casecmp(ptr noundef %0, ptr noundef %1, i32 noundef 0), !range !63
  ret i32 %3
}

declare i64 @whatcap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ins_root_cap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = alloca [10 x [120 x i8]], align 16
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #14
  store i32 0, ptr %11, align 4, !tbaa !11
  call fastcc void @save_root_cap(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %10, ptr noundef nonnull %11)
  %12 = load i32, ptr %11, align 4, !tbaa !11
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %9
  %15 = zext nneg i32 %12 to i64
  br label %16

16:                                               ; preds = %14, %44
  %17 = phi i64 [ 0, %14 ], [ %45, %44 ]
  %18 = getelementptr inbounds [10 x [120 x i8]], ptr %10, i64 0, i64 %17
  %19 = call ptr @ichartosstr(ptr noundef nonnull %18, i32 noundef 0) #14
  %20 = load i32, ptr @pcount, align 4, !tbaa !11
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = zext nneg i32 %20 to i64
  br label %27

24:                                               ; preds = %27
  %25 = add nuw nsw i64 %28, 1
  %26 = icmp eq i64 %25, %23
  br i1 %26, label %32, label %27, !llvm.loop !49

27:                                               ; preds = %24, %22
  %28 = phi i64 [ 0, %22 ], [ %25, %24 ]
  %29 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %28
  %30 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(1) %19) #15
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %44, label %24

32:                                               ; preds = %24, %16
  %33 = add nsw i32 %20, 1
  store i32 %33, ptr @pcount, align 4, !tbaa !11
  %34 = sext i32 %20 to i64
  %35 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %34
  %36 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) %19) #14
  %37 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #15
  %38 = trunc i64 %37 to i32
  %39 = load i32, ptr @maxposslen, align 4, !tbaa !11
  %40 = icmp slt i32 %39, %38
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i32 %38, ptr @maxposslen, align 4, !tbaa !11
  br label %42

42:                                               ; preds = %41, %32
  %43 = icmp sgt i32 %20, 98
  br i1 %43, label %47, label %44

44:                                               ; preds = %27, %42
  %45 = add nuw nsw i64 %17, 1
  %46 = icmp eq i64 %45, %15
  br i1 %46, label %47, label %16, !llvm.loop !64

47:                                               ; preds = %42, %44, %9
  %48 = phi i32 [ 0, %9 ], [ -1, %42 ], [ 0, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %10) #14
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal fastcc void @save_root_cap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6, ptr noundef readonly %7, ptr noundef readonly %8, ptr noundef %9, ptr nocapture noundef %10) unnamed_addr #0 {
  %12 = alloca [184 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %12) #14
  %13 = load i32, ptr %10, align 4, !tbaa !11
  %14 = icmp sgt i32 %13, 9
  br i1 %14, label %285, label %15

15:                                               ; preds = %11
  %16 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %0) #14
  %17 = load i8, ptr %1, align 1, !tbaa !13
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !13
  %21 = getelementptr inbounds %struct.dent, ptr %6, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !65
  %23 = and i64 %22, 1879048192
  %24 = icmp eq i64 %23, 268435456
  br i1 %24, label %33, label %25

25:                                               ; preds = %15
  %26 = load i8, ptr %1, align 1, !tbaa !13
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %25
  %29 = zext i8 %26 to i64
  %30 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !13
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %44

33:                                               ; preds = %15
  call void @upcase(ptr noundef nonnull %12) #14
  br label %278

34:                                               ; preds = %28, %39
  %35 = phi ptr [ %36, %39 ], [ %1, %28 ]
  %36 = getelementptr inbounds i8, ptr %35, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !13
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %46, label %39, !llvm.loop !67

39:                                               ; preds = %34
  %40 = zext i8 %37 to i64
  %41 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !13
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %34, label %44, !llvm.loop !67

44:                                               ; preds = %39, %28
  %45 = phi i1 [ %27, %28 ], [ %38, %39 ]
  br i1 %45, label %46, label %47

46:                                               ; preds = %34, %25, %44
  call void @upcase(ptr noundef nonnull %12) #14
  br label %278

47:                                               ; preds = %44, %52
  %48 = phi ptr [ %49, %52 ], [ %1, %44 ]
  %49 = getelementptr inbounds i8, ptr %48, i64 1
  %50 = load i8, ptr %49, align 1, !tbaa !13
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = zext i8 %50 to i64
  %54 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !13
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %47, label %57, !llvm.loop !68

57:                                               ; preds = %52
  br i1 %51, label %58, label %119

58:                                               ; preds = %47, %57
  %59 = icmp eq i8 %20, 0
  %60 = and i64 %22, 805306368
  br i1 %59, label %67, label %61

61:                                               ; preds = %58
  switch i64 %60, label %70 [
    i64 536870912, label %62
    i64 0, label %62
  ]

62:                                               ; preds = %61, %61
  call void @lowcase(ptr noundef nonnull %12) #14
  %63 = load i8, ptr %12, align 16, !tbaa !13
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !13
  store i8 %66, ptr %12, align 16, !tbaa !13
  br label %278

67:                                               ; preds = %58
  %68 = icmp eq i64 %60, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %67
  call void @lowcase(ptr noundef nonnull %12) #14
  br label %278

70:                                               ; preds = %61, %67
  %71 = getelementptr inbounds %struct.dent, ptr %6, i64 0, i32 2
  %72 = load i64, ptr %71, align 8, !tbaa !65
  %73 = and i64 %72, 1073741824
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %119, label %75

75:                                               ; preds = %70
  %76 = icmp eq ptr %7, null
  %77 = getelementptr inbounds %struct.flagent, ptr %7, i64 0, i32 2
  %78 = icmp eq ptr %8, null
  %79 = getelementptr inbounds %struct.flagent, ptr %8, i64 0, i32 2
  br label %80

80:                                               ; preds = %75, %103
  %81 = phi ptr [ %6, %75 ], [ %82, %103 ]
  %82 = load ptr, ptr %81, align 8, !tbaa !69
  %83 = getelementptr inbounds %struct.dent, ptr %82, i64 0, i32 2
  %84 = load i64, ptr %83, align 8, !tbaa !65
  %85 = and i64 %84, 805306368
  %86 = icmp eq i64 %85, 805306368
  br i1 %86, label %103, label %87

87:                                               ; preds = %80
  br i1 %76, label %95, label %88

88:                                               ; preds = %87
  %89 = load i16, ptr %77, align 8, !tbaa !71
  %90 = sext i16 %89 to i64
  %91 = and i64 %90, 4294967295
  %92 = shl nuw i64 1, %91
  %93 = and i64 %92, %84
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %88, %87
  br i1 %78, label %108, label %96

96:                                               ; preds = %95
  %97 = load i16, ptr %79, align 8, !tbaa !71
  %98 = sext i16 %97 to i64
  %99 = and i64 %98, 4294967295
  %100 = shl nuw i64 1, %99
  %101 = and i64 %100, %84
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %109, %116, %80, %88, %96
  %104 = getelementptr inbounds %struct.dent, ptr %82, i64 0, i32 2
  %105 = load i64, ptr %104, align 8, !tbaa !65
  %106 = and i64 %105, 1073741824
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %119, label %80, !llvm.loop !72

108:                                              ; preds = %96, %95
  br i1 %59, label %116, label %109

109:                                              ; preds = %108
  %110 = icmp eq i64 %85, 536870912
  br i1 %110, label %111, label %103

111:                                              ; preds = %109
  call void @lowcase(ptr noundef nonnull %12) #14
  %112 = load i8, ptr %12, align 16, !tbaa !13
  %113 = zext i8 %112 to i64
  %114 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !13
  store i8 %115, ptr %12, align 16, !tbaa !13
  br label %278

116:                                              ; preds = %108
  %117 = icmp eq i64 %85, 0
  br i1 %117, label %118, label %103

118:                                              ; preds = %116
  call void @lowcase(ptr noundef nonnull %12) #14
  br label %278

119:                                              ; preds = %103, %70, %57
  %120 = getelementptr inbounds %struct.dent, ptr %6, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !73
  %122 = call ptr @strtosichar(ptr noundef %121, i32 noundef 1) #14
  %123 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %122) #15
  %124 = trunc i64 %123 to i32
  %125 = load i64, ptr %21, align 8, !tbaa !65
  %126 = and i64 %125, 1073741824
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %119
  %129 = load ptr, ptr %6, align 8, !tbaa !69
  br label %130

130:                                              ; preds = %128, %119
  %131 = phi ptr [ %129, %128 ], [ %6, %119 ]
  %132 = icmp eq ptr %7, null
  %133 = getelementptr inbounds %struct.flagent, ptr %7, i64 0, i32 2
  %134 = icmp eq ptr %8, null
  %135 = getelementptr inbounds %struct.flagent, ptr %8, i64 0, i32 2
  %136 = icmp eq i8 %20, 0
  %137 = sext i32 %3 to i64
  %138 = getelementptr inbounds i8, ptr %12, i64 %137
  %139 = sext i32 %2 to i64
  %140 = add i32 %4, %2
  %141 = sub i32 %124, %140
  %142 = sext i32 %141 to i64
  %143 = icmp sgt i32 %3, 0
  %144 = icmp sgt i32 %3, 0
  %145 = add i32 %124, %3
  %146 = sub i32 %5, %140
  %147 = add i32 %146, %145
  %148 = sub i32 %145, %140
  %149 = xor i32 %4, -1
  %150 = add i32 %124, %149
  %151 = sext i32 %150 to i64
  %152 = sext i32 %148 to i64
  %153 = getelementptr inbounds i8, ptr %12, i64 %152
  %154 = icmp slt i32 %148, %147
  %155 = sext i32 %148 to i64
  %156 = getelementptr inbounds i8, ptr %12, i64 %155
  %157 = icmp slt i32 %148, %147
  %158 = zext nneg i32 %3 to i64
  %159 = zext nneg i32 %3 to i64
  br label %160

160:                                              ; preds = %276, %130
  %161 = phi ptr [ %131, %130 ], [ %277, %276 ]
  br i1 %132, label %171, label %162

162:                                              ; preds = %160
  %163 = getelementptr inbounds %struct.dent, ptr %161, i64 0, i32 2
  %164 = load i64, ptr %163, align 8, !tbaa !65
  %165 = load i16, ptr %133, align 8, !tbaa !71
  %166 = sext i16 %165 to i64
  %167 = and i64 %166, 4294967295
  %168 = shl nuw i64 1, %167
  %169 = and i64 %168, %164
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %271, label %171

171:                                              ; preds = %162, %160
  br i1 %134, label %181, label %172

172:                                              ; preds = %171
  %173 = getelementptr inbounds %struct.dent, ptr %161, i64 0, i32 2
  %174 = load i64, ptr %173, align 8, !tbaa !65
  %175 = load i16, ptr %135, align 8, !tbaa !71
  %176 = sext i16 %175 to i64
  %177 = and i64 %176, 4294967295
  %178 = shl nuw i64 1, %177
  %179 = and i64 %178, %174
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %271, label %181

181:                                              ; preds = %172, %171
  %182 = getelementptr inbounds %struct.dent, ptr %161, i64 0, i32 2
  %183 = load i64, ptr %182, align 8, !tbaa !65
  %184 = and i64 %183, 805306368
  %185 = icmp eq i64 %184, 805306368
  br i1 %185, label %204, label %186

186:                                              ; preds = %181
  call void @lowcase(ptr noundef nonnull %12) #14
  br i1 %136, label %187, label %191

187:                                              ; preds = %186
  %188 = load i64, ptr %182, align 8, !tbaa !65
  %189 = and i64 %188, 805306368
  %190 = icmp eq i64 %189, 536870912
  br i1 %190, label %191, label %196

191:                                              ; preds = %187, %186
  %192 = load i8, ptr %12, align 16, !tbaa !13
  %193 = zext i8 %192 to i64
  %194 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !13
  store i8 %195, ptr %12, align 16, !tbaa !13
  br label %196

196:                                              ; preds = %191, %187
  %197 = load i32, ptr %10, align 4, !tbaa !11
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [120 x i8], ptr %9, i64 %198
  %200 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %199, ptr noundef nonnull dereferenceable(1) %12) #14
  %201 = load i32, ptr %10, align 4, !tbaa !11
  %202 = add nsw i32 %201, 1
  store i32 %202, ptr %10, align 4, !tbaa !11
  %203 = icmp sgt i32 %201, 8
  br i1 %203, label %285, label %271

204:                                              ; preds = %181
  %205 = getelementptr inbounds %struct.dent, ptr %161, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !73
  %207 = call ptr @strtosichar(ptr noundef %206, i32 noundef 1) #14
  %208 = getelementptr inbounds i8, ptr %207, i64 %139
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %138, ptr align 1 %208, i64 %142, i1 false)
  %209 = load i8, ptr %208, align 1, !tbaa !13
  %210 = zext i8 %209 to i64
  %211 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %210
  %212 = load i8, ptr %211, align 1, !tbaa !13
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %204
  br i1 %143, label %216, label %234

215:                                              ; preds = %204
  br i1 %144, label %225, label %234

216:                                              ; preds = %214, %216
  %217 = phi i64 [ %223, %216 ], [ 0, %214 ]
  %218 = getelementptr inbounds [184 x i8], ptr %12, i64 0, i64 %217
  %219 = load i8, ptr %218, align 1, !tbaa !13
  %220 = zext i8 %219 to i64
  %221 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !13
  store i8 %222, ptr %218, align 1, !tbaa !13
  %223 = add nuw nsw i64 %217, 1
  %224 = icmp eq i64 %223, %158
  br i1 %224, label %234, label %216, !llvm.loop !74

225:                                              ; preds = %215, %225
  %226 = phi i64 [ %232, %225 ], [ 0, %215 ]
  %227 = getelementptr inbounds [184 x i8], ptr %12, i64 0, i64 %226
  %228 = load i8, ptr %227, align 1, !tbaa !13
  %229 = zext i8 %228 to i64
  %230 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %229
  %231 = load i8, ptr %230, align 1, !tbaa !13
  store i8 %231, ptr %227, align 1, !tbaa !13
  %232 = add nuw nsw i64 %226, 1
  %233 = icmp eq i64 %232, %159
  br i1 %233, label %234, label %225, !llvm.loop !75

234:                                              ; preds = %216, %225, %214, %215
  %235 = getelementptr inbounds i8, ptr %207, i64 %151
  %236 = load i8, ptr %235, align 1, !tbaa !13
  %237 = zext i8 %236 to i64
  %238 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %237
  %239 = load i8, ptr %238, align 1, !tbaa !13
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %252, label %241

241:                                              ; preds = %234
  br i1 %154, label %242, label %263

242:                                              ; preds = %241, %242
  %243 = phi i32 [ %249, %242 ], [ %148, %241 ]
  %244 = phi ptr [ %250, %242 ], [ %153, %241 ]
  %245 = load i8, ptr %244, align 1, !tbaa !13
  %246 = zext i8 %245 to i64
  %247 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %246
  %248 = load i8, ptr %247, align 1, !tbaa !13
  store i8 %248, ptr %244, align 1, !tbaa !13
  %249 = add nsw i32 %243, 1
  %250 = getelementptr inbounds i8, ptr %244, i64 1
  %251 = icmp eq i32 %249, %147
  br i1 %251, label %263, label %242, !llvm.loop !76

252:                                              ; preds = %234
  br i1 %157, label %253, label %263

253:                                              ; preds = %252, %253
  %254 = phi i32 [ %260, %253 ], [ %148, %252 ]
  %255 = phi ptr [ %261, %253 ], [ %156, %252 ]
  %256 = load i8, ptr %255, align 1, !tbaa !13
  %257 = zext i8 %256 to i64
  %258 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %257
  %259 = load i8, ptr %258, align 1, !tbaa !13
  store i8 %259, ptr %255, align 1, !tbaa !13
  %260 = add nsw i32 %254, 1
  %261 = getelementptr inbounds i8, ptr %255, i64 1
  %262 = icmp eq i32 %260, %147
  br i1 %262, label %263, label %253, !llvm.loop !77

263:                                              ; preds = %242, %253, %241, %252
  %264 = load i32, ptr %10, align 4, !tbaa !11
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [120 x i8], ptr %9, i64 %265
  %267 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %266, ptr noundef nonnull dereferenceable(1) %12) #14
  %268 = load i32, ptr %10, align 4, !tbaa !11
  %269 = add nsw i32 %268, 1
  store i32 %269, ptr %10, align 4, !tbaa !11
  %270 = icmp sgt i32 %268, 8
  br i1 %270, label %285, label %271

271:                                              ; preds = %196, %263, %172, %162
  %272 = getelementptr inbounds %struct.dent, ptr %161, i64 0, i32 2
  %273 = load i64, ptr %272, align 8, !tbaa !65
  %274 = and i64 %273, 1073741824
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %285, label %276

276:                                              ; preds = %271
  %277 = load ptr, ptr %161, align 8, !tbaa !69
  br label %160, !llvm.loop !78

278:                                              ; preds = %33, %46, %62, %69, %111, %118
  %279 = load i32, ptr %10, align 4, !tbaa !11
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [120 x i8], ptr %9, i64 %280
  %282 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %281, ptr noundef nonnull dereferenceable(1) %12) #14
  %283 = load i32, ptr %10, align 4, !tbaa !11
  %284 = add nsw i32 %283, 1
  store i32 %284, ptr %10, align 4, !tbaa !11
  br label %285

285:                                              ; preds = %271, %263, %196, %278, %11
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %12) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @askmode() local_unnamed_addr #0 {
  %1 = load i32, ptr @fflag, align 4, !tbaa !11
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %12, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @askfilename, align 8, !tbaa !5
  %5 = load ptr, ptr @outfile1, align 8, !tbaa !5
  %6 = tail call ptr @freopen(ptr noundef %4, ptr noundef nonnull @.str.38, ptr noundef %5) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load ptr, ptr @stderr, align 8, !tbaa !5
  %10 = load ptr, ptr @askfilename, align 8, !tbaa !5
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.39, ptr noundef %10) #16
  tail call void @exit(i32 noundef 1) #17
  unreachable

12:                                               ; preds = %3, %0
  %13 = load i32, ptr @cbench_print, align 4, !tbaa !11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.43)
  br label %17

17:                                               ; preds = %15, %12
  store i32 0, ptr @contextoffset, align 4, !tbaa !11
  br label %18

18:                                               ; preds = %138, %17
  %19 = load ptr, ptr @outfile1, align 8, !tbaa !5
  %20 = tail call i32 @fflush(ptr noundef %19)
  %21 = load i32, ptr @contextoffset, align 4, !tbaa !11
  %22 = icmp eq i32 %21, 0
  %23 = load ptr, ptr @infile1, align 8, !tbaa !5
  br i1 %22, label %24, label %27

24:                                               ; preds = %18
  %25 = tail call ptr @xgets(ptr noundef nonnull @contextbufs, i32 noundef 4096, ptr noundef %23) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %143, label %30

27:                                               ; preds = %18
  %28 = tail call ptr @fgets(ptr noundef nonnull @contextbufs, i32 noundef 4096, ptr noundef %23)
  %29 = icmp eq ptr %28, null
  br i1 %29, label %143, label %30

30:                                               ; preds = %27, %24
  %31 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @contextbufs) #15
  %32 = trunc i64 %31 to i32
  %33 = shl i64 %31, 32
  %34 = add i64 %33, -4294967296
  %35 = ashr exact i64 %34, 32
  %36 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !13
  %38 = icmp eq i8 %37, 10
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = add nsw i32 %32, -1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %41
  store i8 0, ptr %42, align 1, !tbaa !13
  br label %43

43:                                               ; preds = %30, %39
  %44 = phi i32 [ %40, %39 ], [ %32, %30 ]
  %45 = icmp eq i32 %44, 4095
  br i1 %45, label %46, label %83

46:                                               ; preds = %43
  %47 = add nsw i32 %44, -1
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !13
  %51 = zext i8 %50 to i32
  %52 = zext nneg i32 %44 to i64
  br label %53

53:                                               ; preds = %46, %73
  %54 = phi i64 [ %52, %46 ], [ %75, %73 ]
  %55 = phi i32 [ %51, %46 ], [ %71, %73 ]
  %56 = and i32 %55, 255
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !13
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %57
  %63 = load i8, ptr %62, align 1, !tbaa !13
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %57
  %67 = load i8, ptr %66, align 1, !tbaa !13
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %61, %53, %65
  %70 = load ptr, ptr @infile1, align 8, !tbaa !5
  %71 = tail call i32 @getc(ptr noundef %70)
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = trunc i32 %71 to i8
  %75 = add nuw nsw i64 %54, 1
  %76 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %54
  store i8 %74, ptr %76, align 1, !tbaa !13
  %77 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %75
  store i8 0, ptr %77, align 1, !tbaa !13
  %78 = icmp eq i64 %75, 8191
  br i1 %78, label %83, label %53, !llvm.loop !79

79:                                               ; preds = %69
  %80 = trunc i64 %54 to i32
  br label %83

81:                                               ; preds = %65
  %82 = trunc i64 %54 to i32
  br label %83

83:                                               ; preds = %79, %81, %73, %43
  %84 = phi i32 [ %44, %43 ], [ %80, %79 ], [ %82, %81 ], [ 8191, %73 ]
  %85 = load i32, ptr @contextoffset, align 4, !tbaa !11
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr @outfile1, align 8, !tbaa !5
  tail call void @checkline(ptr noundef %88) #14
  br label %128

89:                                               ; preds = %83
  %90 = load i8, ptr @contextbufs, align 16
  switch i8 %90, label %125 [
    i8 64, label %91
    i8 42, label %91
    i8 38, label %97
    i8 35, label %100
    i8 33, label %101
    i8 37, label %102
    i8 45, label %103
    i8 43, label %104
    i8 126, label %113
    i8 94, label %116
  ]

91:                                               ; preds = %89, %89
  %92 = tail call ptr @strtosichar(ptr noundef nonnull getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), i32 noundef 0) #14
  %93 = tail call ptr @ichartosstr(ptr noundef %92, i32 noundef 1) #14
  %94 = load i8, ptr @contextbufs, align 16, !tbaa !13
  %95 = icmp eq i8 %94, 42
  %96 = zext i1 %95 to i32
  tail call void @treeinsert(ptr noundef %93, i32 noundef 184, i32 noundef %96) #14
  br label %128

97:                                               ; preds = %89
  %98 = tail call ptr @strtosichar(ptr noundef nonnull getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), i32 noundef 0) #14
  tail call void @lowcase(ptr noundef %98) #14
  %99 = tail call ptr @ichartosstr(ptr noundef %98, i32 noundef 1) #14
  tail call void @treeinsert(ptr noundef %99, i32 noundef 184, i32 noundef 1) #14
  br label %128

100:                                              ; preds = %89
  tail call void @treeoutput() #14
  store i32 0, ptr @math_mode, align 4, !tbaa !11
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !13
  br label %128

101:                                              ; preds = %89
  store i32 1, ptr @terse, align 4, !tbaa !11
  br label %128

102:                                              ; preds = %89
  store i32 0, ptr @terse, align 4, !tbaa !11
  br label %128

103:                                              ; preds = %89
  store i32 0, ptr @math_mode, align 4, !tbaa !11
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !13
  store i32 0, ptr @tflag, align 4, !tbaa !11
  br label %128

104:                                              ; preds = %89
  store i32 0, ptr @math_mode, align 4, !tbaa !11
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !13
  %105 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), ptr noundef nonnull dereferenceable(6) @.str.41, i64 6)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), ptr noundef nonnull dereferenceable(6) @.str.42, i64 6)
  %109 = icmp ne i32 %108, 0
  br label %110

110:                                              ; preds = %107, %104
  %111 = phi i1 [ false, %104 ], [ %109, %107 ]
  %112 = zext i1 %111 to i32
  store i32 %112, ptr @tflag, align 4, !tbaa !11
  br label %128

113:                                              ; preds = %89
  %114 = tail call i32 @findfiletype(ptr noundef nonnull getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), i32 noundef 1, ptr noundef null) #14
  %115 = tail call i32 @llvm.smax.i32(i32 %114, i32 0)
  store i32 %115, ptr @defdupchar, align 4
  br label %128

116:                                              ; preds = %89, %116
  %117 = phi ptr [ %121, %116 ], [ @contextbufs, %89 ]
  %118 = phi ptr [ %119, %116 ], [ getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), %89 ]
  %119 = getelementptr inbounds i8, ptr %118, i64 1
  %120 = load i8, ptr %118, align 1, !tbaa !13
  %121 = getelementptr inbounds i8, ptr %117, i64 1
  store i8 %120, ptr %117, align 1, !tbaa !13
  %122 = icmp eq i8 %120, 0
  br i1 %122, label %123, label %116, !llvm.loop !80

123:                                              ; preds = %116
  store i32 1, ptr @contextoffset, align 4, !tbaa !11
  %124 = add nsw i32 %84, -1
  br label %125

125:                                              ; preds = %89, %123
  %126 = phi i32 [ %124, %123 ], [ %84, %89 ]
  %127 = load ptr, ptr @outfile1, align 8, !tbaa !5
  tail call void @checkline(ptr noundef %127) #14
  br label %128

128:                                              ; preds = %91, %100, %102, %110, %125, %113, %103, %101, %97, %87
  %129 = phi i32 [ %84, %87 ], [ %84, %91 ], [ %84, %97 ], [ %84, %100 ], [ %84, %101 ], [ %84, %102 ], [ %84, %103 ], [ %84, %110 ], [ %84, %113 ], [ %126, %125 ]
  %130 = load i32, ptr @contextoffset, align 4
  %131 = add nsw i32 %130, %129
  %132 = select i1 %38, i32 0, i32 %131
  store i32 %132, ptr @contextoffset, align 4, !tbaa !11
  %133 = load i32, ptr @sflag, align 4, !tbaa !11
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %128
  tail call void @stop() #14
  %136 = load i32, ptr @fflag, align 4, !tbaa !11
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135, %139, %128
  br label %18, !llvm.loop !81

139:                                              ; preds = %135
  %140 = load ptr, ptr @outfile1, align 8, !tbaa !5
  tail call void @rewind(ptr noundef %140)
  %141 = load ptr, ptr @askfilename, align 8, !tbaa !5
  %142 = tail call i32 (ptr, i32, ...) @creat(ptr noundef %141, i32 noundef 438) #14
  br label %138

143:                                              ; preds = %27, %24
  ret void
}

declare ptr @freopen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

declare ptr @xgets(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @treeoutput() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

declare i32 @findfiletype(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #3

declare i32 @creat(...) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @copyout(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %24

4:                                                ; preds = %2, %20
  %5 = phi i32 [ %6, %20 ], [ %1, %2 ]
  %6 = add nsw i32 %5, -1
  %7 = load ptr, ptr %0, align 8, !tbaa !5
  %8 = load i8, ptr %7, align 1, !tbaa !13
  %9 = sext i8 %8 to i32
  %10 = icmp eq i8 %8, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %4
  %12 = load i32, ptr @aflag, align 4, !tbaa !11
  %13 = icmp ne i32 %12, 0
  %14 = load i32, ptr @lflag, align 4
  %15 = icmp ne i32 %14, 0
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr @outfile, align 8, !tbaa !5
  %19 = tail call i32 @putc(i32 noundef %9, ptr noundef %18)
  br label %20

20:                                               ; preds = %17, %11
  %21 = load ptr, ptr %0, align 8, !tbaa !5
  %22 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %22, ptr %0, align 8, !tbaa !5
  %23 = icmp sgt i32 %5, 1
  br i1 %23, label %4, label %24, !llvm.loop !82

24:                                               ; preds = %20, %4, %2
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @show_char(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !5
  %6 = load i8, ptr %5, align 1, !tbaa !13
  %7 = zext i8 %6 to i32
  %8 = zext i8 %6 to i64
  %9 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !13
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %4
  %13 = tail call i32 @stringcharlen(ptr noundef nonnull %5, i32 noundef 0) #14
  %14 = icmp sgt i32 %13, 0
  %15 = select i1 %14, i32 %13, i32 1
  br i1 %14, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, ptr @laststringch, align 4, !tbaa !11
  %18 = trunc i32 %17 to i8
  %19 = xor i8 %18, -128
  br label %20

20:                                               ; preds = %12, %4, %16
  %21 = phi i32 [ %15, %16 ], [ %15, %12 ], [ 1, %4 ]
  %22 = phi i8 [ %19, %16 ], [ %6, %12 ], [ %6, %4 ]
  %23 = load i32, ptr @vflag, align 4, !tbaa !11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = zext i8 %22 to i64
  %27 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !13
  %29 = icmp ne i8 %28, 0
  %30 = icmp eq i32 %21, 1
  %31 = and i1 %30, %29
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = icmp eq i32 %2, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %32
  %35 = load ptr, ptr @stdout, align 8, !tbaa !5
  %36 = tail call i32 @putc(i32 noundef %7, ptr noundef %35)
  br label %37

37:                                               ; preds = %34, %32
  %38 = load ptr, ptr %0, align 8, !tbaa !5
  %39 = getelementptr inbounds i8, ptr %38, i64 1
  store ptr %39, ptr %0, align 8, !tbaa !5
  br label %101

40:                                               ; preds = %25, %20
  %41 = icmp eq i8 %6, 9
  br i1 %41, label %42, label %52

42:                                               ; preds = %40
  %43 = icmp eq i32 %2, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %42
  %45 = load ptr, ptr @stdout, align 8, !tbaa !5
  %46 = tail call i32 @putc(i32 noundef 9, ptr noundef %45)
  br label %47

47:                                               ; preds = %44, %42
  %48 = load ptr, ptr %0, align 8, !tbaa !5
  %49 = getelementptr inbounds i8, ptr %48, i64 1
  store ptr %49, ptr %0, align 8, !tbaa !5
  %50 = and i32 %1, 7
  %51 = sub nuw nsw i32 8, %50
  br label %101

52:                                               ; preds = %40
  %53 = icmp eq i32 %3, 0
  %54 = tail call i32 @llvm.smin.i32(i32 %21, i32 %3)
  %55 = select i1 %53, i32 %21, i32 %54
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %101

57:                                               ; preds = %52
  %58 = icmp eq i32 %2, 0
  %59 = icmp eq i32 %2, 0
  %60 = icmp eq i32 %2, 0
  br label %61

61:                                               ; preds = %57, %96
  %62 = phi i32 [ 0, %57 ], [ %98, %96 ]
  %63 = phi i32 [ 0, %57 ], [ %99, %96 ]
  %64 = load ptr, ptr %0, align 8, !tbaa !5
  %65 = getelementptr inbounds i8, ptr %64, i64 1
  store ptr %65, ptr %0, align 8, !tbaa !5
  %66 = load i8, ptr %64, align 1, !tbaa !13
  %67 = zext i8 %66 to i32
  %68 = icmp slt i8 %66, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  br i1 %58, label %75, label %70

70:                                               ; preds = %69
  %71 = load ptr, ptr @stdout, align 8, !tbaa !5
  %72 = tail call i32 @putc(i32 noundef 77, ptr noundef %71)
  %73 = load ptr, ptr @stdout, align 8, !tbaa !5
  %74 = tail call i32 @putc(i32 noundef 45, ptr noundef %73)
  br label %75

75:                                               ; preds = %70, %69
  %76 = add nsw i32 %62, 2
  %77 = and i32 %67, 127
  br label %78

78:                                               ; preds = %75, %61
  %79 = phi i32 [ %77, %75 ], [ %67, %61 ]
  %80 = phi i32 [ %76, %75 ], [ %62, %61 ]
  %81 = icmp ult i32 %79, 32
  %82 = icmp eq i32 %79, 127
  %83 = or i1 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  br i1 %60, label %96, label %85

85:                                               ; preds = %84
  %86 = load ptr, ptr @stdout, align 8, !tbaa !5
  %87 = tail call i32 @putc(i32 noundef 94, ptr noundef %86)
  %88 = add nuw nsw i32 %79, 64
  %89 = select i1 %82, i32 63, i32 %88
  br label %91

90:                                               ; preds = %78
  br i1 %59, label %96, label %91

91:                                               ; preds = %90, %85
  %92 = phi i32 [ %89, %85 ], [ %79, %90 ]
  %93 = phi i32 [ 2, %85 ], [ 1, %90 ]
  %94 = load ptr, ptr @stdout, align 8, !tbaa !5
  %95 = tail call i32 @putc(i32 noundef %92, ptr noundef %94)
  br label %96

96:                                               ; preds = %91, %90, %84
  %97 = phi i32 [ 2, %84 ], [ 1, %90 ], [ %93, %91 ]
  %98 = add nsw i32 %80, %97
  %99 = add nuw nsw i32 %63, 1
  %100 = icmp eq i32 %99, %55
  br i1 %100, label %101, label %61, !llvm.loop !56

101:                                              ; preds = %96, %52, %47, %37
  %102 = phi i32 [ %51, %47 ], [ 1, %37 ], [ 0, %52 ], [ %98, %96 ]
  ret i32 %102
}

declare void @inverse() local_unnamed_addr #2

declare void @normal() local_unnamed_addr #2

declare i32 @stringcharlen(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @skipoverword(ptr noundef) local_unnamed_addr #2

declare void @upcase(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @ins_cap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca [10 x [120 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %5 = load i8, ptr %0, align 1, !tbaa !13
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %47, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr @numhits, align 4, !tbaa !11
  store i32 0, ptr %3, align 4, !tbaa !11
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %7
  %11 = zext nneg i32 %8 to i64
  br label %12

12:                                               ; preds = %39, %10
  %13 = phi i64 [ %11, %10 ], [ %14, %39 ]
  %14 = add nsw i64 %13, -1
  %15 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %14
  %16 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %14, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !41
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.flagent, ptr %17, i64 0, i32 3
  %21 = load i16, ptr %20, align 2, !tbaa !43
  %22 = sext i16 %21 to i32
  %23 = getelementptr inbounds %struct.flagent, ptr %17, i64 0, i32 4
  %24 = load i16, ptr %23, align 4, !tbaa !45
  %25 = sext i16 %24 to i32
  br label %26

26:                                               ; preds = %19, %12
  %27 = phi i32 [ %25, %19 ], [ 0, %12 ]
  %28 = phi i32 [ %22, %19 ], [ 0, %12 ]
  %29 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %14, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.flagent, ptr %30, i64 0, i32 3
  %34 = load i16, ptr %33, align 2, !tbaa !43
  %35 = sext i16 %34 to i32
  %36 = getelementptr inbounds %struct.flagent, ptr %30, i64 0, i32 4
  %37 = load i16, ptr %36, align 4, !tbaa !45
  %38 = sext i16 %37 to i32
  br label %39

39:                                               ; preds = %32, %26
  %40 = phi i32 [ %38, %32 ], [ 0, %26 ]
  %41 = phi i32 [ %35, %32 ], [ 0, %26 ]
  %42 = load ptr, ptr %15, align 8, !tbaa !47
  call fastcc void @save_root_cap(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %28, i32 noundef %27, i32 noundef %41, i32 noundef %40, ptr noundef %42, ptr noundef %17, ptr noundef %30, ptr noundef nonnull %4, ptr noundef nonnull %3)
  %43 = icmp sgt i64 %13, 1
  %44 = load i32, ptr %3, align 4
  %45 = icmp slt i32 %44, 10
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %12, label %47, !llvm.loop !48

47:                                               ; preds = %39, %2, %7
  %48 = phi i32 [ 0, %2 ], [ 0, %7 ], [ %44, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %83

50:                                               ; preds = %47
  %51 = zext nneg i32 %48 to i64
  br label %52

52:                                               ; preds = %50, %80
  %53 = phi i64 [ 0, %50 ], [ %81, %80 ]
  %54 = getelementptr inbounds [10 x [120 x i8]], ptr %4, i64 0, i64 %53
  %55 = call ptr @ichartosstr(ptr noundef nonnull %54, i32 noundef 0) #14
  %56 = load i32, ptr @pcount, align 4, !tbaa !11
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = zext nneg i32 %56 to i64
  br label %63

60:                                               ; preds = %63
  %61 = add nuw nsw i64 %64, 1
  %62 = icmp eq i64 %61, %59
  br i1 %62, label %68, label %63, !llvm.loop !49

63:                                               ; preds = %60, %58
  %64 = phi i64 [ 0, %58 ], [ %61, %60 ]
  %65 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %64
  %66 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(1) %55) #15
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %80, label %60

68:                                               ; preds = %60, %52
  %69 = add nsw i32 %56, 1
  store i32 %69, ptr @pcount, align 4, !tbaa !11
  %70 = sext i32 %56 to i64
  %71 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %70
  %72 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %71, ptr noundef nonnull dereferenceable(1) %55) #14
  %73 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %55) #15
  %74 = trunc i64 %73 to i32
  %75 = load i32, ptr @maxposslen, align 4, !tbaa !11
  %76 = icmp slt i32 %75, %74
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  store i32 %74, ptr @maxposslen, align 4, !tbaa !11
  br label %78

78:                                               ; preds = %77, %68
  %79 = icmp sgt i32 %56, 98
  br i1 %79, label %83, label %80

80:                                               ; preds = %63, %78
  %81 = add nuw nsw i64 %53, 1
  %82 = icmp eq i64 %81, %51
  br i1 %82, label %83, label %52, !llvm.loop !83

83:                                               ; preds = %78, %80, %47
  %84 = phi i32 [ 0, %47 ], [ -1, %78 ], [ 0, %80 ]
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %4) #14
  ret i32 %84
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #9

declare void @backup() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree nounwind willreturn memory(argmem: read) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { cold }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!7, !7, i64 0}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = !{i32 0, i32 2}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = !{!29, !30, i64 8}
!29 = !{!"hashheader", !30, i64 0, !30, i64 2, !30, i64 4, !30, i64 6, !30, i64 8, !30, i64 10, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !7, i64 48, !7, i64 53, !7, i64 66, !7, i64 67, !7, i64 68, !7, i64 70, !7, i64 526, !7, i64 754, !7, i64 982, !7, i64 1210, !7, i64 1438, !7, i64 1666, !7, i64 1894, !7, i64 2022, !7, i64 3124, !7, i64 3524, !30, i64 3924}
!30 = !{!"short", !7, i64 0}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = !{i32 -1, i32 1}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !10}
!38 = distinct !{!38, !10}
!39 = distinct !{!39, !10}
!40 = distinct !{!40, !10}
!41 = !{!42, !6, i64 8}
!42 = !{!"success", !6, i64 0, !6, i64 8, !6, i64 16}
!43 = !{!44, !30, i64 18}
!44 = !{!"flagent", !6, i64 0, !6, i64 8, !30, i64 16, !30, i64 18, !30, i64 20, !30, i64 22, !30, i64 24, !7, i64 26}
!45 = !{!44, !30, i64 20}
!46 = !{!42, !6, i64 16}
!47 = !{!42, !6, i64 0}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !10}
!50 = distinct !{!50, !10}
!51 = distinct !{!51, !10}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, !10}
!54 = distinct !{!54, !10}
!55 = distinct !{!55, !10}
!56 = distinct !{!56, !10}
!57 = distinct !{!57, !10}
!58 = distinct !{!58, !10}
!59 = distinct !{!59, !10}
!60 = !{!30, !30, i64 0}
!61 = distinct !{!61, !10}
!62 = distinct !{!62, !10}
!63 = !{i32 -65535, i32 65536}
!64 = distinct !{!64, !10}
!65 = !{!66, !66, i64 0}
!66 = !{!"long", !7, i64 0}
!67 = distinct !{!67, !10}
!68 = distinct !{!68, !10}
!69 = !{!70, !6, i64 0}
!70 = !{!"dent", !6, i64 0, !6, i64 8, !7, i64 16}
!71 = !{!44, !30, i64 16}
!72 = distinct !{!72, !10}
!73 = !{!70, !6, i64 8}
!74 = distinct !{!74, !10}
!75 = distinct !{!75, !10}
!76 = distinct !{!76, !10}
!77 = distinct !{!77, !10}
!78 = distinct !{!78, !10}
!79 = distinct !{!79, !10}
!80 = distinct !{!80, !10}
!81 = distinct !{!81, !10}
!82 = distinct !{!82, !10}
!83 = distinct !{!83, !10}
