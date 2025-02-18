; ModuleID = 'hashtab.c'
source_filename = "hashtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.prime_ent = type { i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@htab_hash_pointer = dso_local local_unnamed_addr global ptr @hash_pointer, align 8
@htab_eq_pointer = dso_local local_unnamed_addr global ptr @eq_pointer, align 8
@prime_tab = internal unnamed_addr constant [30 x %struct.prime_ent] [%struct.prime_ent { i32 7, i32 613566757, i32 -1717986917, i32 2 }, %struct.prime_ent { i32 13, i32 991146300, i32 1952257863, i32 3 }, %struct.prime_ent { i32 31, i32 138547333, i32 444306962, i32 4 }, %struct.prime_ent { i32 61, i32 211227900, i32 363980280, i32 5 }, %struct.prime_ent { i32 127, i32 33818641, i32 103079216, i32 6 }, %struct.prime_ent { i32 251, i32 85557118, i32 120742053, i32 7 }, %struct.prime_ent { i32 509, i32 25314150, i32 42356680, i32 8 }, %struct.prime_ent { i32 1021, i32 12619885, i32 21074423, i32 9 }, %struct.prime_ent { i32 2039, i32 18957679, i32 23193246, i32 10 }, %struct.prime_ent { i32 4093, i32 3148034, i32 5249288, i32 11 }, %struct.prime_ent { i32 8191, i32 524353, i32 1573441, i32 12 }, %struct.prime_ent { i32 16381, i32 786577, i32 1311121, i32 13 }, %struct.prime_ent { i32 32749, i32 2491813, i32 2754278, i32 14 }, %struct.prime_ent { i32 65521, i32 983266, i32 1114402, i32 15 }, %struct.prime_ent { i32 131071, i32 32769, i32 98307, i32 16 }, %struct.prime_ent { i32 262139, i32 81922, i32 114692, i32 17 }, %struct.prime_ent { i32 524287, i32 8193, i32 24577, i32 18 }, %struct.prime_ent { i32 1048573, i32 12289, i32 20481, i32 19 }, %struct.prime_ent { i32 2097143, i32 18433, i32 22529, i32 20 }, %struct.prime_ent { i32 4194301, i32 3073, i32 5121, i32 21 }, %struct.prime_ent { i32 8388593, i32 7681, i32 8705, i32 22 }, %struct.prime_ent { i32 16777213, i32 769, i32 1281, i32 23 }, %struct.prime_ent { i32 33554393, i32 4993, i32 5249, i32 24 }, %struct.prime_ent { i32 67108859, i32 321, i32 449, i32 25 }, %struct.prime_ent { i32 134217689, i32 1249, i32 1313, i32 26 }, %struct.prime_ent { i32 268435399, i32 913, i32 945, i32 27 }, %struct.prime_ent { i32 536870909, i32 25, i32 41, i32 28 }, %struct.prime_ent { i32 1073741789, i32 141, i32 149, i32 29 }, %struct.prime_ent { i32 2147483647, i32 3, i32 7, i32 30 }, %struct.prime_ent { i32 -5, i32 6, i32 8, i32 31 }], align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [35 x i8] c"Cannot find prime bigger than %lu\0A\00", align 1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !44 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !44 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !44 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !44 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #20
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !45

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !44 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 !prof !44 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !48
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #3 !prof !44 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !48
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !44 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !58

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #20
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !52
  %11 = load i8, ptr %3, align 1, !tbaa !59
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !44 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !58

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #20
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !52
  %11 = load i8, ptr %3, align 1, !tbaa !59
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !44 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !58

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #20
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !52
  %11 = load i8, ptr %3, align 1, !tbaa !59
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #3 !prof !44 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !48
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !44 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !58

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !60
  store i8 %12, ptr %4, align 1, !tbaa !59
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !44 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !58

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !60
  store i8 %12, ptr %4, align 1, !tbaa !59
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !44 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !58

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !60
  store i8 %12, ptr %4, align 1, !tbaa !59
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !44 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #20
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !44 {
  %2 = load i32, ptr %0, align 8, !tbaa !62
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !44 {
  %2 = load i32, ptr %0, align 8, !tbaa !62
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @hash_pointer(ptr noundef %0) #7 !prof !63 !PGOFuncName !64 {
  %2 = ptrtoint ptr %0 to i64
  %3 = lshr i64 %2, 3
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @eq_pointer(ptr noundef readnone %0, ptr noundef readnone %1) #7 !prof !65 !PGOFuncName !66 {
  %3 = icmp eq ptr %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @htab_size(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !67 {
  %2 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !68
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @htab_elements(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !70 {
  %2 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 5
  %3 = load i64, ptr %2, align 8, !tbaa !71
  %4 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 6
  %5 = load i64, ptr %4, align 8, !tbaa !72
  %6 = sub i64 %3, %5
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @htab_create_alloc(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #9 !prof !73 {
  br label %7

7:                                                ; preds = %7, %6
  %8 = phi i32 [ 0, %6 ], [ %20, %7 ]
  %9 = phi i32 [ 30, %6 ], [ %19, %7 ]
  %10 = sub i32 %9, %8
  %11 = lshr i32 %10, 1
  %12 = add i32 %11, %8
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %13
  %15 = load i32, ptr %14, align 16, !tbaa !74
  %16 = zext i32 %15 to i64
  %17 = icmp ult i64 %16, %0
  %18 = add i32 %12, 1
  %19 = select i1 %17, i32 %9, i32 %12, !prof !76
  %20 = select i1 %17, i32 %18, i32 %8, !prof !76
  %21 = icmp eq i32 %20, %19
  br i1 %21, label %22, label %7, !prof !77, !llvm.loop !78

22:                                               ; preds = %7
  %23 = zext i32 %20 to i64
  %24 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %23
  %25 = load i32, ptr %24, align 16, !tbaa !74
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %26, %0
  br i1 %27, label %28, label %31, !prof !79

28:                                               ; preds = %22
  %29 = load ptr, ptr @stderr, align 8, !tbaa !48
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str, i64 noundef %0) #21
  tail call void @abort() #22
  unreachable

31:                                               ; preds = %22
  %32 = tail call ptr %4(i64 noundef 1, i64 noundef 112) #20, !prof !80
  %33 = icmp eq ptr %32, null
  br i1 %33, label %48, label %34, !prof !81

34:                                               ; preds = %31
  %35 = tail call ptr %4(i64 noundef %26, i64 noundef 8) #20, !prof !80
  %36 = getelementptr inbounds %struct.htab, ptr %32, i64 0, i32 3
  store ptr %35, ptr %36, align 8, !tbaa !82
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %41, !prof !81

38:                                               ; preds = %34
  %39 = icmp eq ptr %5, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %38
  tail call void %5(ptr noundef nonnull %32) #20
  br label %48

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.htab, ptr %32, i64 0, i32 4
  store i64 %26, ptr %42, align 8, !tbaa !68
  %43 = getelementptr inbounds %struct.htab, ptr %32, i64 0, i32 14
  store i32 %20, ptr %43, align 8, !tbaa !83
  store ptr %1, ptr %32, align 8, !tbaa !84
  %44 = getelementptr inbounds %struct.htab, ptr %32, i64 0, i32 1
  store ptr %2, ptr %44, align 8, !tbaa !85
  %45 = getelementptr inbounds %struct.htab, ptr %32, i64 0, i32 2
  store ptr %3, ptr %45, align 8, !tbaa !86
  %46 = getelementptr inbounds %struct.htab, ptr %32, i64 0, i32 9
  store ptr %4, ptr %46, align 8, !tbaa !87
  %47 = getelementptr inbounds %struct.htab, ptr %32, i64 0, i32 10
  store ptr %5, ptr %47, align 8, !tbaa !88
  br label %48

48:                                               ; preds = %38, %40, %31, %41
  %49 = phi ptr [ %32, %41 ], [ null, %31 ], [ null, %40 ], [ null, %38 ]
  ret ptr %49
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @higher_prime_index(i64 noundef %0) unnamed_addr #10 !prof !44 !PGOFuncName !89 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i32 [ 0, %1 ], [ %15, %2 ]
  %4 = phi i32 [ 30, %1 ], [ %14, %2 ]
  %5 = sub i32 %4, %3
  %6 = lshr i32 %5, 1
  %7 = add i32 %6, %3
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %8
  %10 = load i32, ptr %9, align 16, !tbaa !74
  %11 = zext i32 %10 to i64
  %12 = icmp ult i64 %11, %0
  %13 = add i32 %7, 1
  %14 = select i1 %12, i32 %4, i32 %7, !prof !76
  %15 = select i1 %12, i32 %13, i32 %3, !prof !76
  %16 = icmp eq i32 %15, %14
  br i1 %16, label %17, label %2, !prof !77, !llvm.loop !78

17:                                               ; preds = %2
  %18 = zext i32 %15 to i64
  %19 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %18
  %20 = load i32, ptr %19, align 16, !tbaa !74
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %21, %0
  br i1 %22, label %23, label %26, !prof !79

23:                                               ; preds = %17
  %24 = load ptr, ptr @stderr, align 8, !tbaa !48
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str, i64 noundef %0) #21
  tail call void @abort() #22
  unreachable

26:                                               ; preds = %17
  ret i32 %15
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @htab_create_alloc_ex(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #11 !prof !44 {
  %8 = tail call fastcc i32 @higher_prime_index(i64 noundef %0)
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %9
  %11 = load i32, ptr %10, align 16, !tbaa !74
  %12 = zext i32 %11 to i64
  %13 = tail call ptr %5(ptr noundef %4, i64 noundef 1, i64 noundef 112) #20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %7
  %16 = tail call ptr %5(ptr noundef %4, i64 noundef %12, i64 noundef 8) #20
  %17 = getelementptr inbounds %struct.htab, ptr %13, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !82
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = icmp eq ptr %6, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %19
  tail call void %6(ptr noundef %4, ptr noundef nonnull %13) #20
  br label %30

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.htab, ptr %13, i64 0, i32 4
  store i64 %12, ptr %23, align 8, !tbaa !68
  %24 = getelementptr inbounds %struct.htab, ptr %13, i64 0, i32 14
  store i32 %8, ptr %24, align 8, !tbaa !83
  store ptr %1, ptr %13, align 8, !tbaa !84
  %25 = getelementptr inbounds %struct.htab, ptr %13, i64 0, i32 1
  store ptr %2, ptr %25, align 8, !tbaa !85
  %26 = getelementptr inbounds %struct.htab, ptr %13, i64 0, i32 2
  store ptr %3, ptr %26, align 8, !tbaa !86
  %27 = getelementptr inbounds %struct.htab, ptr %13, i64 0, i32 11
  store ptr %4, ptr %27, align 8, !tbaa !90
  %28 = getelementptr inbounds %struct.htab, ptr %13, i64 0, i32 12
  store ptr %5, ptr %28, align 8, !tbaa !91
  %29 = getelementptr inbounds %struct.htab, ptr %13, i64 0, i32 13
  store ptr %6, ptr %29, align 8, !tbaa !92
  br label %30

30:                                               ; preds = %19, %21, %7, %22
  %31 = phi ptr [ %13, %22 ], [ null, %7 ], [ null, %21 ], [ null, %19 ]
  ret ptr %31
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @htab_set_functions_ex(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #12 !prof !44 {
  store ptr %1, ptr %0, align 8, !tbaa !84
  %8 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 1
  store ptr %2, ptr %8, align 8, !tbaa !85
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 2
  store ptr %3, ptr %9, align 8, !tbaa !86
  %10 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 11
  store ptr %4, ptr %10, align 8, !tbaa !90
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 12
  store ptr %5, ptr %11, align 8, !tbaa !91
  %12 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 13
  store ptr %6, ptr %12, align 8, !tbaa !92
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @htab_create(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !prof !93 {
  br label %5

5:                                                ; preds = %5, %4
  %6 = phi i32 [ 0, %4 ], [ %18, %5 ]
  %7 = phi i32 [ 30, %4 ], [ %17, %5 ]
  %8 = sub i32 %7, %6
  %9 = lshr i32 %8, 1
  %10 = add i32 %9, %6
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %11
  %13 = load i32, ptr %12, align 16, !tbaa !74
  %14 = zext i32 %13 to i64
  %15 = icmp ult i64 %14, %0
  %16 = add i32 %10, 1
  %17 = select i1 %15, i32 %7, i32 %10, !prof !76
  %18 = select i1 %15, i32 %16, i32 %6, !prof !76
  %19 = icmp eq i32 %18, %17
  br i1 %19, label %20, label %5, !prof !77, !llvm.loop !78

20:                                               ; preds = %5
  %21 = zext i32 %18 to i64
  %22 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %21
  %23 = load i32, ptr %22, align 16, !tbaa !74
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %24, %0
  br i1 %25, label %26, label %29, !prof !79

26:                                               ; preds = %20
  %27 = load ptr, ptr @stderr, align 8, !tbaa !48
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str, i64 noundef %0) #21
  tail call void @abort() #22
  unreachable

29:                                               ; preds = %20
  %30 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 112) #20
  %31 = icmp eq ptr %30, null
  br i1 %31, label %44, label %32, !prof !94

32:                                               ; preds = %29
  %33 = tail call ptr @xcalloc(i64 noundef %24, i64 noundef 8) #20
  %34 = getelementptr inbounds %struct.htab, ptr %30, i64 0, i32 3
  store ptr %33, ptr %34, align 8, !tbaa !82
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %37, !prof !94

36:                                               ; preds = %32
  tail call void @free(ptr noundef nonnull %30) #20
  br label %44

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.htab, ptr %30, i64 0, i32 4
  store i64 %24, ptr %38, align 8, !tbaa !68
  %39 = getelementptr inbounds %struct.htab, ptr %30, i64 0, i32 14
  store i32 %18, ptr %39, align 8, !tbaa !83
  store ptr %1, ptr %30, align 8, !tbaa !84
  %40 = getelementptr inbounds %struct.htab, ptr %30, i64 0, i32 1
  store ptr %2, ptr %40, align 8, !tbaa !85
  %41 = getelementptr inbounds %struct.htab, ptr %30, i64 0, i32 2
  store ptr %3, ptr %41, align 8, !tbaa !86
  %42 = getelementptr inbounds %struct.htab, ptr %30, i64 0, i32 9
  store ptr @xcalloc, ptr %42, align 8, !tbaa !87
  %43 = getelementptr inbounds %struct.htab, ptr %30, i64 0, i32 10
  store ptr @free, ptr %43, align 8, !tbaa !88
  br label %44

44:                                               ; preds = %29, %36, %37
  %45 = phi ptr [ %30, %37 ], [ null, %29 ], [ null, %36 ]
  ret ptr %45
}

declare ptr @xcalloc(i64 noundef, i64 noundef) #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #13

; Function Attrs: cold nounwind uwtable
define dso_local noalias noundef ptr @htab_try_create(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 !prof !44 {
  %5 = tail call fastcc i32 @higher_prime_index(i64 noundef %0)
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %6
  %8 = load i32, ptr %7, align 16, !tbaa !74
  %9 = zext i32 %8 to i64
  %10 = tail call dereferenceable_or_null(112) ptr @calloc(i64 noundef 1, i64 noundef 112) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %4
  %13 = tail call ptr @calloc(i64 noundef %9, i64 noundef 8) #20
  %14 = getelementptr inbounds %struct.htab, ptr %10, i64 0, i32 3
  store ptr %13, ptr %14, align 8, !tbaa !82
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void @free(ptr noundef nonnull %10) #20
  br label %24

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.htab, ptr %10, i64 0, i32 4
  store i64 %9, ptr %18, align 8, !tbaa !68
  %19 = getelementptr inbounds %struct.htab, ptr %10, i64 0, i32 14
  store i32 %5, ptr %19, align 8, !tbaa !83
  store ptr %1, ptr %10, align 8, !tbaa !84
  %20 = getelementptr inbounds %struct.htab, ptr %10, i64 0, i32 1
  store ptr %2, ptr %20, align 8, !tbaa !85
  %21 = getelementptr inbounds %struct.htab, ptr %10, i64 0, i32 2
  store ptr %3, ptr %21, align 8, !tbaa !86
  %22 = getelementptr inbounds %struct.htab, ptr %10, i64 0, i32 9
  store ptr @calloc, ptr %22, align 8, !tbaa !87
  %23 = getelementptr inbounds %struct.htab, ptr %10, i64 0, i32 10
  store ptr @free, ptr %23, align 8, !tbaa !88
  br label %24

24:                                               ; preds = %4, %16, %17
  %25 = phi ptr [ %10, %17 ], [ null, %4 ], [ null, %16 ]
  ret ptr %25
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) #14

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @htab_delete(ptr noundef %0) local_unnamed_addr #10 !prof !95 {
  %2 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  %4 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7, !prof !96

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %9 = load i64, ptr %8, align 8, !tbaa !68
  %10 = trunc i64 %9 to i32
  %11 = add i32 %10, -1
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %25, !prof !97

13:                                               ; preds = %7
  %14 = zext nneg i32 %11 to i64
  br label %15

15:                                               ; preds = %13, %22
  %16 = phi i64 [ %14, %13 ], [ %23, %22 ]
  %17 = getelementptr inbounds ptr, ptr %3, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = icmp ult ptr %18, inttoptr (i64 2 to ptr)
  br i1 %19, label %22, label %20, !prof !98

20:                                               ; preds = %15
  %21 = load ptr, ptr %4, align 8, !tbaa !86
  tail call void %21(ptr noundef nonnull %18) #20, !prof !99
  br label %22

22:                                               ; preds = %15, %20
  %23 = add nsw i64 %16, -1
  %24 = icmp sgt i64 %16, 0
  br i1 %24, label %15, label %25, !prof !100, !llvm.loop !101

25:                                               ; preds = %22, %7, %1
  %26 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !88
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29, !prof !102

29:                                               ; preds = %25
  tail call void %27(ptr noundef %3) #20, !prof !103
  %30 = load ptr, ptr %26, align 8, !tbaa !88
  tail call void %30(ptr noundef %0) #20, !prof !103
  br label %40

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 13
  %33 = load ptr, ptr %32, align 8, !tbaa !92
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 11
  %37 = load ptr, ptr %36, align 8, !tbaa !90
  tail call void %33(ptr noundef %37, ptr noundef %3) #20
  %38 = load ptr, ptr %32, align 8, !tbaa !92
  %39 = load ptr, ptr %36, align 8, !tbaa !90
  tail call void %38(ptr noundef %39, ptr noundef %0) #20
  br label %40

40:                                               ; preds = %31, %35, %29
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @htab_empty(ptr nocapture noundef %0) local_unnamed_addr #10 !prof !104 {
  %2 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !68
  %4 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9, !prof !105

9:                                                ; preds = %1
  %10 = trunc i64 %3 to i32
  %11 = add i32 %10, -1
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %25, !prof !106

13:                                               ; preds = %9
  %14 = zext nneg i32 %11 to i64
  br label %15

15:                                               ; preds = %13, %22
  %16 = phi i64 [ %14, %13 ], [ %23, %22 ]
  %17 = getelementptr inbounds ptr, ptr %5, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = icmp ult ptr %18, inttoptr (i64 2 to ptr)
  br i1 %19, label %22, label %20, !prof !107

20:                                               ; preds = %15
  %21 = load ptr, ptr %6, align 8, !tbaa !86
  tail call void %21(ptr noundef nonnull %18) #20
  br label %22

22:                                               ; preds = %15, %20
  %23 = add nsw i64 %16, -1
  %24 = icmp sgt i64 %16, 0
  br i1 %24, label %15, label %25, !prof !108, !llvm.loop !109

25:                                               ; preds = %22, %9, %1
  %26 = icmp ugt i64 %3, 131072
  br i1 %26, label %27, label %62, !prof !110

27:                                               ; preds = %25
  %28 = tail call fastcc i32 @higher_prime_index(i64 noundef 128)
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %29
  %31 = load i32, ptr %30, align 16, !tbaa !74
  %32 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !88
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %27
  %36 = load ptr, ptr %4, align 8, !tbaa !82
  tail call void %33(ptr noundef %36) #20
  br label %45

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 13
  %39 = load ptr, ptr %38, align 8, !tbaa !92
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 11
  %43 = load ptr, ptr %42, align 8, !tbaa !90
  %44 = load ptr, ptr %4, align 8, !tbaa !82
  tail call void %39(ptr noundef %43, ptr noundef %44) #20
  br label %45

45:                                               ; preds = %37, %41, %35
  %46 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 12
  %47 = load ptr, ptr %46, align 8, !tbaa !91
  %48 = icmp eq ptr %47, null
  %49 = sext i32 %31 to i64
  br i1 %48, label %54, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 11
  %52 = load ptr, ptr %51, align 8, !tbaa !90
  %53 = tail call ptr %47(ptr noundef %52, i64 noundef %49, i64 noundef 8) #20
  br label %58

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !87
  %57 = tail call ptr %56(i64 noundef %49, i64 noundef 8) #20
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi ptr [ %57, %54 ], [ %53, %50 ]
  store ptr %59, ptr %4, align 8, !tbaa !82
  %60 = sext i32 %31 to i64
  store i64 %60, ptr %2, align 8, !tbaa !68
  %61 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 14
  store i32 %28, ptr %61, align 8, !tbaa !83
  br label %64

62:                                               ; preds = %25
  %63 = shl nuw nsw i64 %3, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %63, i1 false), !prof !111
  br label %64

64:                                               ; preds = %62, %58
  %65 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %65, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @htab_find_with_hash(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !112 {
  %4 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !113
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !113
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %8 = load i64, ptr %7, align 8, !tbaa !68
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 14
  %10 = load i32, ptr %9, align 8, !tbaa !83
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %11
  %13 = load i32, ptr %12, align 16, !tbaa !74
  %14 = urem i32 %2, %13
  %15 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !82
  %17 = zext i32 %14 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = ptrtoint ptr %19 to i64
  switch i64 %20, label %21 [
    i64 0, label %63
    i64 1, label %33
  ], !prof !114

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !85
  %24 = icmp eq ptr %23, @eq_pointer
  br i1 %24, label %25, label %28, !prof !115

25:                                               ; preds = %21
  %26 = icmp eq ptr %19, %1
  %27 = zext i1 %26 to i32
  br label %30

28:                                               ; preds = %21
  %29 = tail call i32 %23(ptr noundef nonnull %19, ptr noundef %1) #20, !prof !116
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i32 [ %29, %28 ], [ %27, %25 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %63, !prof !117

33:                                               ; preds = %30, %3
  %34 = load i32, ptr %9, align 8, !tbaa !83
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %35
  %37 = load i32, ptr %36, align 16, !tbaa !74
  %38 = add i32 %37, -2
  %39 = urem i32 %2, %38
  %40 = add i32 %39, 1
  %41 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 8
  %42 = trunc i64 %8 to i32
  br label %43

43:                                               ; preds = %57, %33
  %44 = phi i32 [ %14, %33 ], [ %51, %57 ]
  %45 = load i32, ptr %41, align 4, !tbaa !118
  %46 = add i32 %45, 1
  store i32 %46, ptr %41, align 4, !tbaa !118
  %47 = add i32 %40, %44
  %48 = zext i32 %47 to i64
  %49 = icmp ugt i64 %8, %48
  %50 = select i1 %49, i32 0, i32 %42, !prof !119
  %51 = sub i32 %47, %50
  %52 = load ptr, ptr %15, align 8, !tbaa !82
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds ptr, ptr %52, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !48
  %56 = ptrtoint ptr %55 to i64
  switch i64 %56, label %58 [
    i64 0, label %63
    i64 1, label %57
  ], !prof !120

57:                                               ; preds = %43, %58
  br label %43, !llvm.loop !121

58:                                               ; preds = %43
  %59 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !85
  %61 = tail call i32 %60(ptr noundef nonnull %55, ptr noundef %1) #20, !prof !122
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %57, label %63, !prof !123

63:                                               ; preds = %58, %43, %30, %3
  %64 = phi ptr [ %19, %3 ], [ %19, %30 ], [ %55, %43 ], [ %55, %58 ]
  ret ptr %64
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @htab_find(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !124 {
  %3 = load ptr, ptr %0, align 8, !tbaa !84
  %4 = icmp eq ptr %3, @hash_pointer
  br i1 %4, label %5, label %9, !prof !125

5:                                                ; preds = %2
  %6 = ptrtoint ptr %1 to i64
  %7 = lshr i64 %6, 3
  %8 = trunc i64 %7 to i32
  br label %11

9:                                                ; preds = %2
  %10 = tail call i32 %3(ptr noundef %1) #20, !prof !126
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ %10, %9 ], [ %8, %5 ]
  %13 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !113
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 8, !tbaa !113
  %16 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %17 = load i64, ptr %16, align 8, !tbaa !68
  %18 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 14
  %19 = load i32, ptr %18, align 8, !tbaa !83
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %20
  %22 = load i32, ptr %21, align 16, !tbaa !74
  %23 = urem i32 %12, %22
  %24 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !82
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds ptr, ptr %25, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = ptrtoint ptr %28 to i64
  switch i64 %29, label %30 [
    i64 0, label %72
    i64 1, label %42
  ], !prof !114

30:                                               ; preds = %11
  %31 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !85
  %33 = icmp eq ptr %32, @eq_pointer
  br i1 %33, label %34, label %37, !prof !115

34:                                               ; preds = %30
  %35 = icmp eq ptr %28, %1
  %36 = zext i1 %35 to i32
  br label %39

37:                                               ; preds = %30
  %38 = tail call i32 %32(ptr noundef nonnull %28, ptr noundef %1) #20, !prof !127
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi i32 [ %38, %37 ], [ %36, %34 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %72, !prof !117

42:                                               ; preds = %39, %11
  %43 = load i32, ptr %18, align 8, !tbaa !83
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %44
  %46 = load i32, ptr %45, align 16, !tbaa !74
  %47 = add i32 %46, -2
  %48 = urem i32 %12, %47
  %49 = add i32 %48, 1
  %50 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 8
  %51 = trunc i64 %17 to i32
  br label %52

52:                                               ; preds = %71, %42
  %53 = phi i32 [ %23, %42 ], [ %60, %71 ]
  %54 = load i32, ptr %50, align 4, !tbaa !118
  %55 = add i32 %54, 1
  store i32 %55, ptr %50, align 4, !tbaa !118
  %56 = add i32 %49, %53
  %57 = zext i32 %56 to i64
  %58 = icmp ugt i64 %17, %57
  %59 = select i1 %58, i32 0, i32 %51, !prof !119
  %60 = sub i32 %56, %59
  %61 = load ptr, ptr %24, align 8, !tbaa !82
  %62 = zext i32 %60 to i64
  %63 = getelementptr inbounds ptr, ptr %61, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !48
  %65 = ptrtoint ptr %64 to i64
  switch i64 %65, label %66 [
    i64 0, label %72
    i64 1, label %71
  ], !prof !120

66:                                               ; preds = %52
  %67 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !85
  %69 = tail call i32 %68(ptr noundef nonnull %64, ptr noundef %1) #20, !prof !128
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72, !prof !123

71:                                               ; preds = %66, %52
  br label %52, !llvm.loop !121

72:                                               ; preds = %52, %66, %11, %39
  %73 = phi ptr [ %28, %11 ], [ %28, %39 ], [ %64, %66 ], [ %64, %52 ]
  ret ptr %73
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @htab_find_slot_with_hash(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 !prof !129 {
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %6 = load i64, ptr %5, align 8, !tbaa !68
  %7 = icmp eq i32 %3, 1
  br i1 %7, label %8, label %19, !prof !130

8:                                                ; preds = %4
  %9 = mul i64 %6, 3
  %10 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 5
  %11 = load i64, ptr %10, align 8, !tbaa !71
  %12 = shl i64 %11, 2
  %13 = icmp ugt i64 %9, %12
  br i1 %13, label %19, label %14, !prof !131

14:                                               ; preds = %8
  %15 = tail call fastcc i32 @htab_expand(ptr noundef %0), !range !132
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %101, label %17, !prof !133

17:                                               ; preds = %14
  %18 = load i64, ptr %5, align 8, !tbaa !68
  br label %19

19:                                               ; preds = %17, %8, %4
  %20 = phi i64 [ %18, %17 ], [ %6, %8 ], [ %6, %4 ]
  %21 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 14
  %22 = load i32, ptr %21, align 8, !tbaa !83
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %23
  %25 = load i32, ptr %24, align 16, !tbaa !74
  %26 = urem i32 %2, %25
  %27 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !113
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 8, !tbaa !113
  %30 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !82
  %32 = zext i32 %26 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  %35 = ptrtoint ptr %34 to i64
  switch i64 %35, label %36 [
    i64 0, label %84
    i64 1, label %44
  ], !prof !134

36:                                               ; preds = %19
  %37 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !85
  %39 = tail call i32 %38(ptr noundef nonnull %34, ptr noundef %1) #20, !prof !135
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41, !prof !136

41:                                               ; preds = %36
  %42 = load ptr, ptr %30, align 8, !tbaa !82
  %43 = getelementptr inbounds ptr, ptr %42, i64 %32
  br label %101

44:                                               ; preds = %19, %36
  %45 = phi ptr [ null, %36 ], [ %33, %19 ]
  %46 = load i32, ptr %21, align 8, !tbaa !83
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %47
  %49 = load i32, ptr %48, align 16, !tbaa !74
  %50 = add i32 %49, -2
  %51 = urem i32 %2, %50
  %52 = add i32 %51, 1
  %53 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 8
  %54 = trunc i64 %20 to i32
  %55 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 1
  br label %56

56:                                               ; preds = %73, %44
  %57 = phi ptr [ %76, %73 ], [ %45, %44 ]
  %58 = phi i32 [ %67, %73 ], [ %26, %44 ]
  br label %59

59:                                               ; preds = %56, %77
  %60 = phi i32 [ %67, %77 ], [ %58, %56 ]
  %61 = load i32, ptr %53, align 4, !tbaa !118
  %62 = add i32 %61, 1
  store i32 %62, ptr %53, align 4, !tbaa !118
  %63 = add i32 %52, %60
  %64 = zext i32 %63 to i64
  %65 = icmp ugt i64 %20, %64
  %66 = select i1 %65, i32 0, i32 %54, !prof !137
  %67 = sub i32 %63, %66
  %68 = load ptr, ptr %30, align 8, !tbaa !82
  %69 = zext i32 %67 to i64
  %70 = getelementptr inbounds ptr, ptr %68, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !48
  %72 = ptrtoint ptr %71 to i64
  switch i64 %72, label %77 [
    i64 0, label %84
    i64 1, label %73
  ], !prof !138

73:                                               ; preds = %59
  %74 = getelementptr inbounds ptr, ptr %68, i64 %69
  %75 = icmp eq ptr %57, null
  %76 = select i1 %75, ptr %74, ptr %57, !prof !139
  br label %56, !llvm.loop !140

77:                                               ; preds = %59
  %78 = load ptr, ptr %55, align 8, !tbaa !85
  %79 = tail call i32 %78(ptr noundef nonnull %71, ptr noundef %1) #20, !prof !141
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %59, label %81, !prof !142, !llvm.loop !140

81:                                               ; preds = %77
  %82 = load ptr, ptr %30, align 8, !tbaa !82
  %83 = getelementptr inbounds ptr, ptr %82, i64 %69
  br label %101

84:                                               ; preds = %59, %19
  %85 = phi ptr [ null, %19 ], [ %57, %59 ]
  %86 = phi i32 [ %26, %19 ], [ %67, %59 ]
  %87 = icmp eq i32 %3, 0
  br i1 %87, label %101, label %88, !prof !143

88:                                               ; preds = %84
  %89 = icmp eq ptr %85, null
  br i1 %89, label %94, label %90, !prof !144

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 6
  %92 = load i64, ptr %91, align 8, !tbaa !72
  %93 = add i64 %92, -1
  store i64 %93, ptr %91, align 8, !tbaa !72
  store ptr null, ptr %85, align 8, !tbaa !48
  br label %101

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 5
  %96 = load i64, ptr %95, align 8, !tbaa !71
  %97 = add i64 %96, 1
  store i64 %97, ptr %95, align 8, !tbaa !71
  %98 = load ptr, ptr %30, align 8, !tbaa !82
  %99 = zext i32 %86 to i64
  %100 = getelementptr inbounds ptr, ptr %98, i64 %99
  br label %101

101:                                              ; preds = %84, %14, %94, %90, %81, %41
  %102 = phi ptr [ %85, %90 ], [ %100, %94 ], [ %83, %81 ], [ %43, %41 ], [ null, %14 ], [ null, %84 ]
  ret ptr %102
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @htab_expand(ptr nocapture noundef %0) unnamed_addr #9 !prof !145 !PGOFuncName !146 {
  %2 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  %4 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 14
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %6 = load i64, ptr %5, align 8, !tbaa !68
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6
  %8 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 5
  %9 = load i64, ptr %8, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 6
  %11 = load i64, ptr %10, align 8, !tbaa !72
  %12 = sub i64 %9, %11
  %13 = shl i64 %12, 1
  %14 = icmp ugt i64 %13, %6
  br i1 %14, label %21, label %15, !prof !147

15:                                               ; preds = %1
  %16 = load i32, ptr %4, align 8, !tbaa !83
  %17 = shl i64 %12, 3
  %18 = icmp ult i64 %17, %6
  %19 = icmp ugt i64 %6, 32
  %20 = and i1 %19, %18
  br i1 %20, label %21, label %46, !prof !148

21:                                               ; preds = %15, %1
  br label %22

22:                                               ; preds = %21, %22
  %23 = phi i32 [ %35, %22 ], [ 0, %21 ]
  %24 = phi i32 [ %34, %22 ], [ 30, %21 ]
  %25 = sub i32 %24, %23
  %26 = lshr i32 %25, 1
  %27 = add i32 %26, %23
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %28
  %30 = load i32, ptr %29, align 16, !tbaa !74
  %31 = zext i32 %30 to i64
  %32 = icmp ugt i64 %13, %31
  %33 = add i32 %27, 1
  %34 = select i1 %32, i32 %24, i32 %27, !prof !76
  %35 = select i1 %32, i32 %33, i32 %23, !prof !76
  %36 = icmp eq i32 %35, %34
  br i1 %36, label %37, label %22, !prof !77, !llvm.loop !78

37:                                               ; preds = %22
  %38 = zext i32 %35 to i64
  %39 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %38
  %40 = load i32, ptr %39, align 16, !tbaa !74
  %41 = zext i32 %40 to i64
  %42 = icmp ugt i64 %13, %41
  br i1 %42, label %43, label %46, !prof !79

43:                                               ; preds = %37
  %44 = load ptr, ptr @stderr, align 8, !tbaa !48
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str, i64 noundef %13) #21
  tail call void @abort() #22
  unreachable

46:                                               ; preds = %37, %15
  %47 = phi i64 [ %6, %15 ], [ %41, %37 ]
  %48 = phi i32 [ %16, %15 ], [ %35, %37 ]
  %49 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 12
  %50 = load ptr, ptr %49, align 8, !tbaa !91
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52, !prof !149

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 11
  %54 = load ptr, ptr %53, align 8, !tbaa !90
  %55 = tail call ptr %50(ptr noundef %54, i64 noundef %47, i64 noundef 8) #20
  br label %60

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 9
  %58 = load ptr, ptr %57, align 8, !tbaa !87
  %59 = tail call ptr %58(i64 noundef %47, i64 noundef 8) #20, !prof !150
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi ptr [ %55, %52 ], [ %59, %56 ]
  %62 = icmp eq ptr %61, null
  br i1 %62, label %122, label %63, !prof !151

63:                                               ; preds = %60
  store ptr %61, ptr %2, align 8, !tbaa !82
  store i64 %47, ptr %5, align 8, !tbaa !68
  store i32 %48, ptr %4, align 8, !tbaa !83
  %64 = load i64, ptr %10, align 8, !tbaa !72
  %65 = load i64, ptr %8, align 8, !tbaa !71
  %66 = sub i64 %65, %64
  store i64 %66, ptr %8, align 8, !tbaa !71
  store i64 0, ptr %10, align 8, !tbaa !72
  br label %67

67:                                               ; preds = %107, %63
  %68 = phi ptr [ %3, %63 ], [ %108, %107 ]
  %69 = load ptr, ptr %68, align 8, !tbaa !48
  %70 = icmp ult ptr %69, inttoptr (i64 2 to ptr)
  br i1 %70, label %107, label %71, !prof !152

71:                                               ; preds = %67
  %72 = load ptr, ptr %0, align 8, !tbaa !84
  %73 = tail call i32 %72(ptr noundef nonnull %69) #20, !prof !153
  %74 = load i32, ptr %4, align 8, !tbaa !83
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %75
  %77 = load i32, ptr %76, align 16, !tbaa !74
  %78 = urem i32 %73, %77
  %79 = load i64, ptr %5, align 8, !tbaa !68
  %80 = load ptr, ptr %2, align 8, !tbaa !82
  %81 = zext i32 %78 to i64
  %82 = getelementptr inbounds ptr, ptr %80, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !48
  %84 = ptrtoint ptr %83 to i64
  switch i64 %84, label %86 [
    i64 0, label %105
    i64 1, label %85
  ], !prof !154

85:                                               ; preds = %71
  tail call void @abort() #22
  unreachable

86:                                               ; preds = %71
  %87 = add i32 %77, -2
  %88 = urem i32 %73, %87
  %89 = add i32 %88, 1
  %90 = trunc i64 %79 to i32
  br label %91

91:                                               ; preds = %91, %86
  %92 = phi i32 [ %78, %86 ], [ %97, %91 ]
  %93 = add i32 %89, %92
  %94 = zext i32 %93 to i64
  %95 = icmp ugt i64 %79, %94
  %96 = select i1 %95, i32 0, i32 %90, !prof !155
  %97 = sub i32 %93, %96
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds ptr, ptr %80, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !48
  %101 = ptrtoint ptr %100 to i64
  switch i64 %101, label %91 [
    i64 0, label %103
    i64 1, label %102
  ], !prof !156

102:                                              ; preds = %91
  tail call void @abort() #22
  unreachable

103:                                              ; preds = %91
  %104 = getelementptr inbounds ptr, ptr %80, i64 %98
  br label %105

105:                                              ; preds = %103, %71
  %106 = phi ptr [ %82, %71 ], [ %104, %103 ]
  store ptr %69, ptr %106, align 8, !tbaa !48
  br label %107

107:                                              ; preds = %67, %105
  %108 = getelementptr inbounds ptr, ptr %68, i64 1
  %109 = icmp ult ptr %108, %7
  br i1 %109, label %67, label %110, !prof !157, !llvm.loop !158

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 10
  %112 = load ptr, ptr %111, align 8, !tbaa !88
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114, !prof !151

114:                                              ; preds = %110
  tail call void %112(ptr noundef %3) #20, !prof !159
  br label %122

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 13
  %117 = load ptr, ptr %116, align 8, !tbaa !92
  %118 = icmp eq ptr %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 11
  %121 = load ptr, ptr %120, align 8, !tbaa !90
  tail call void %117(ptr noundef %121, ptr noundef %3) #20
  br label %122

122:                                              ; preds = %114, %119, %115, %60
  %123 = phi i32 [ 0, %60 ], [ 1, %115 ], [ 1, %119 ], [ 1, %114 ]
  ret i32 %123
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @htab_find_slot(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !160 {
  %4 = load ptr, ptr %0, align 8, !tbaa !84
  %5 = tail call i32 %4(ptr noundef %1) #20, !prof !161
  %6 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %7 = load i64, ptr %6, align 8, !tbaa !68
  %8 = icmp eq i32 %2, 1
  br i1 %8, label %9, label %20, !prof !130

9:                                                ; preds = %3
  %10 = mul i64 %7, 3
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 5
  %12 = load i64, ptr %11, align 8, !tbaa !71
  %13 = shl i64 %12, 2
  %14 = icmp ugt i64 %10, %13
  br i1 %14, label %20, label %15, !prof !131

15:                                               ; preds = %9
  %16 = tail call fastcc i32 @htab_expand(ptr noundef nonnull %0), !range !132
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %102, label %18, !prof !133

18:                                               ; preds = %15
  %19 = load i64, ptr %6, align 8, !tbaa !68
  br label %20

20:                                               ; preds = %18, %9, %3
  %21 = phi i64 [ %19, %18 ], [ %7, %9 ], [ %7, %3 ]
  %22 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 14
  %23 = load i32, ptr %22, align 8, !tbaa !83
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %24
  %26 = load i32, ptr %25, align 16, !tbaa !74
  %27 = urem i32 %5, %26
  %28 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !113
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 8, !tbaa !113
  %31 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !82
  %33 = zext i32 %27 to i64
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !48
  %36 = ptrtoint ptr %35 to i64
  switch i64 %36, label %37 [
    i64 0, label %85
    i64 1, label %45
  ], !prof !134

37:                                               ; preds = %20
  %38 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !85
  %40 = tail call i32 %39(ptr noundef nonnull %35, ptr noundef %1) #20, !prof !162
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42, !prof !136

42:                                               ; preds = %37
  %43 = load ptr, ptr %31, align 8, !tbaa !82
  %44 = getelementptr inbounds ptr, ptr %43, i64 %33
  br label %102

45:                                               ; preds = %37, %20
  %46 = phi ptr [ null, %37 ], [ %34, %20 ]
  %47 = load i32, ptr %22, align 8, !tbaa !83
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %48
  %50 = load i32, ptr %49, align 16, !tbaa !74
  %51 = add i32 %50, -2
  %52 = urem i32 %5, %51
  %53 = add i32 %52, 1
  %54 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 8
  %55 = trunc i64 %21 to i32
  %56 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 1
  br label %57

57:                                               ; preds = %74, %45
  %58 = phi ptr [ %77, %74 ], [ %46, %45 ]
  %59 = phi i32 [ %68, %74 ], [ %27, %45 ]
  br label %60

60:                                               ; preds = %57, %78
  %61 = phi i32 [ %68, %78 ], [ %59, %57 ]
  %62 = load i32, ptr %54, align 4, !tbaa !118
  %63 = add i32 %62, 1
  store i32 %63, ptr %54, align 4, !tbaa !118
  %64 = add i32 %53, %61
  %65 = zext i32 %64 to i64
  %66 = icmp ugt i64 %21, %65
  %67 = select i1 %66, i32 0, i32 %55, !prof !137
  %68 = sub i32 %64, %67
  %69 = load ptr, ptr %31, align 8, !tbaa !82
  %70 = zext i32 %68 to i64
  %71 = getelementptr inbounds ptr, ptr %69, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !48
  %73 = ptrtoint ptr %72 to i64
  switch i64 %73, label %78 [
    i64 0, label %85
    i64 1, label %74
  ], !prof !138

74:                                               ; preds = %60
  %75 = getelementptr inbounds ptr, ptr %69, i64 %70
  %76 = icmp eq ptr %58, null
  %77 = select i1 %76, ptr %75, ptr %58, !prof !139
  br label %57, !llvm.loop !140

78:                                               ; preds = %60
  %79 = load ptr, ptr %56, align 8, !tbaa !85
  %80 = tail call i32 %79(ptr noundef nonnull %72, ptr noundef %1) #20, !prof !163
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %60, label %82, !prof !142, !llvm.loop !140

82:                                               ; preds = %78
  %83 = load ptr, ptr %31, align 8, !tbaa !82
  %84 = getelementptr inbounds ptr, ptr %83, i64 %70
  br label %102

85:                                               ; preds = %60, %20
  %86 = phi ptr [ null, %20 ], [ %58, %60 ]
  %87 = phi i32 [ %27, %20 ], [ %68, %60 ]
  %88 = icmp eq i32 %2, 0
  br i1 %88, label %102, label %89, !prof !143

89:                                               ; preds = %85
  %90 = icmp eq ptr %86, null
  br i1 %90, label %95, label %91, !prof !144

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 6
  %93 = load i64, ptr %92, align 8, !tbaa !72
  %94 = add i64 %93, -1
  store i64 %94, ptr %92, align 8, !tbaa !72
  store ptr null, ptr %86, align 8, !tbaa !48
  br label %102

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 5
  %97 = load i64, ptr %96, align 8, !tbaa !71
  %98 = add i64 %97, 1
  store i64 %98, ptr %96, align 8, !tbaa !71
  %99 = load ptr, ptr %31, align 8, !tbaa !82
  %100 = zext i32 %87 to i64
  %101 = getelementptr inbounds ptr, ptr %99, i64 %100
  br label %102

102:                                              ; preds = %15, %42, %82, %85, %91, %95
  %103 = phi ptr [ %86, %91 ], [ %101, %95 ], [ %84, %82 ], [ %44, %42 ], [ null, %15 ], [ null, %85 ]
  ret ptr %103
}

; Function Attrs: cold nounwind uwtable
define dso_local void @htab_remove_elt(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !44 {
  %3 = load ptr, ptr %0, align 8, !tbaa !84
  %4 = tail call i32 %3(ptr noundef %1) #20
  %5 = tail call ptr @htab_find_slot_with_hash(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %4, i32 noundef 0)
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef nonnull %6) #20
  br label %13

13:                                               ; preds = %12, %8
  store ptr inttoptr (i64 1 to ptr), ptr %5, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 6
  %15 = load i64, ptr %14, align 8, !tbaa !72
  %16 = add i64 %15, 1
  store i64 %16, ptr %14, align 8, !tbaa !72
  br label %17

17:                                               ; preds = %2, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @htab_remove_elt_with_hash(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !164 {
  %4 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 14
  %7 = load i32, ptr %6, align 8, !tbaa !83
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %8
  %10 = load i32, ptr %9, align 16, !tbaa !74
  %11 = urem i32 %2, %10
  %12 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !113
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !113
  %15 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !82
  %17 = zext i32 %11 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = ptrtoint ptr %19 to i64
  switch i64 %20, label %21 [
    i64 0, label %60
    i64 1, label %26
  ], !prof !134

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !85
  %24 = tail call i32 %23(ptr noundef nonnull %19, ptr noundef %1) #20, !prof !165
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %56, !prof !136

26:                                               ; preds = %21, %3
  %27 = load i32, ptr %6, align 8, !tbaa !83
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %28
  %30 = load i32, ptr %29, align 16, !tbaa !74
  %31 = add i32 %30, -2
  %32 = urem i32 %2, %31
  %33 = add i32 %32, 1
  %34 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 8
  %35 = trunc i64 %5 to i32
  %36 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 1
  br label %37

37:                                               ; preds = %51, %26
  %38 = phi i32 [ %11, %26 ], [ %45, %51 ]
  %39 = load i32, ptr %34, align 4, !tbaa !118
  %40 = add i32 %39, 1
  store i32 %40, ptr %34, align 4, !tbaa !118
  %41 = add i32 %33, %38
  %42 = zext i32 %41 to i64
  %43 = icmp ugt i64 %5, %42
  %44 = select i1 %43, i32 0, i32 %35, !prof !137
  %45 = sub i32 %41, %44
  %46 = load ptr, ptr %15, align 8, !tbaa !82
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !48
  %50 = ptrtoint ptr %49 to i64
  switch i64 %50, label %52 [
    i64 0, label %60
    i64 1, label %51
  ], !prof !138

51:                                               ; preds = %37, %52
  br label %37, !llvm.loop !140

52:                                               ; preds = %37
  %53 = load ptr, ptr %36, align 8, !tbaa !85
  %54 = tail call i32 %53(ptr noundef nonnull %49, ptr noundef %1) #20, !prof !166
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %51, label %56, !prof !142

56:                                               ; preds = %52, %21
  %57 = phi i64 [ %17, %21 ], [ %47, %52 ]
  %58 = load ptr, ptr %15, align 8, !tbaa !82
  %59 = getelementptr inbounds ptr, ptr %58, i64 %57
  br label %60

60:                                               ; preds = %37, %56, %3
  %61 = phi ptr [ null, %3 ], [ %59, %56 ], [ null, %37 ]
  %62 = load ptr, ptr %61, align 8, !tbaa !48
  %63 = icmp eq ptr %62, null
  br i1 %63, label %73, label %64, !prof !167

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !86
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68, !prof !168

68:                                               ; preds = %64
  tail call void %66(ptr noundef nonnull %62) #20
  br label %69

69:                                               ; preds = %68, %64
  store ptr inttoptr (i64 1 to ptr), ptr %61, align 8, !tbaa !48
  %70 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 6
  %71 = load i64, ptr %70, align 8, !tbaa !72
  %72 = add i64 %71, 1
  store i64 %72, ptr %70, align 8, !tbaa !72
  br label %73

73:                                               ; preds = %60, %69
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @htab_clear_slot(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !169 {
  %3 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = icmp ugt ptr %4, %1
  br i1 %5, label %14, label %6, !prof !170

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %8 = load i64, ptr %7, align 8, !tbaa !68
  %9 = getelementptr inbounds ptr, ptr %4, i64 %8
  %10 = icmp ugt ptr %9, %1
  br i1 %10, label %11, label %14, !prof !171

11:                                               ; preds = %6
  %12 = load ptr, ptr %1, align 8, !tbaa !48
  %13 = icmp ult ptr %12, inttoptr (i64 2 to ptr)
  br i1 %13, label %14, label %15, !prof !170

14:                                               ; preds = %11, %6, %2
  tail call void @abort() #22
  unreachable

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !86
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19, !prof !172

19:                                               ; preds = %15
  tail call void %17(ptr noundef nonnull %12) #20, !prof !173
  br label %20

20:                                               ; preds = %19, %15
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8, !tbaa !48
  %21 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 6
  %22 = load i64, ptr %21, align 8, !tbaa !72
  %23 = add i64 %22, 1
  store i64 %23, ptr %21, align 8, !tbaa !72
  ret void
}

; Function Attrs: noreturn
declare void @abort() local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local void @htab_traverse_noresize(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #9 !prof !174 {
  %4 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %7 = load i64, ptr %6, align 8, !tbaa !68
  %8 = getelementptr inbounds ptr, ptr %5, i64 %7
  br label %9

9:                                                ; preds = %17, %3
  %10 = phi ptr [ %5, %3 ], [ %19, %17 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = icmp ult ptr %11, inttoptr (i64 2 to ptr)
  br i1 %12, label %16, label %13, !prof !175

13:                                               ; preds = %9
  %14 = tail call i32 %1(ptr noundef nonnull %10, ptr noundef %2) #20
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9, %13
  br label %17

17:                                               ; preds = %13, %16
  %18 = phi i1 [ true, %16 ], [ false, %13 ]
  %19 = getelementptr inbounds ptr, ptr %10, i64 1
  %20 = icmp ult ptr %19, %8
  %21 = select i1 %18, i1 %20, i1 false, !prof !175
  br i1 %21, label %9, label %22, !prof !176, !llvm.loop !177

22:                                               ; preds = %17
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @htab_traverse(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #10 !prof !178 {
  %4 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 5
  %7 = load i64, ptr %6, align 8, !tbaa !71
  %8 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 6
  %9 = load i64, ptr %8, align 8, !tbaa !72
  %10 = sub i64 %7, %9
  %11 = shl i64 %10, 3
  %12 = icmp ult i64 %11, %5
  %13 = icmp ugt i64 %5, 32
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %17, !prof !179

15:                                               ; preds = %3
  %16 = tail call fastcc i32 @htab_expand(ptr noundef %0), !range !132
  br label %17

17:                                               ; preds = %15, %3
  %18 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !82
  %20 = load i64, ptr %4, align 8, !tbaa !68
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  br label %22

22:                                               ; preds = %30, %17
  %23 = phi ptr [ %19, %17 ], [ %32, %30 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = icmp ult ptr %24, inttoptr (i64 2 to ptr)
  br i1 %25, label %29, label %26, !prof !180

26:                                               ; preds = %22
  %27 = tail call i32 %1(ptr noundef nonnull %23, ptr noundef %2) #20, !prof !181
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29, !prof !182

29:                                               ; preds = %26, %22
  br label %30

30:                                               ; preds = %26, %29
  %31 = phi i1 [ true, %29 ], [ false, %26 ]
  %32 = getelementptr inbounds ptr, ptr %23, i64 1
  %33 = icmp ult ptr %32, %21
  %34 = select i1 %31, i1 %33, i1 false, !prof !183
  br i1 %34, label %22, label %35, !prof !184, !llvm.loop !177

35:                                               ; preds = %30
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local double @htab_collisions(ptr nocapture noundef readonly %0) local_unnamed_addr #17 !prof !44 {
  %2 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !113
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !118
  %8 = uitofp i32 %7 to double
  %9 = uitofp i32 %3 to double
  %10 = fdiv double %8, %9
  br label %11

11:                                               ; preds = %1, %5
  %12 = phi double [ %10, %5 ], [ 0.000000e+00, %1 ]
  ret double %12
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @htab_hash_string(ptr nocapture noundef readonly %0) local_unnamed_addr #18 !prof !185 {
  %2 = load i8, ptr %0, align 1, !tbaa !59
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4, !prof !186

4:                                                ; preds = %1, %4
  %5 = phi i8 [ %13, %4 ], [ %2, %1 ]
  %6 = phi ptr [ %9, %4 ], [ %0, %1 ]
  %7 = phi i32 [ %12, %4 ], [ 0, %1 ]
  %8 = zext i8 %5 to i32
  %9 = getelementptr inbounds i8, ptr %6, i64 1
  %10 = mul i32 %7, 67
  %11 = add i32 %10, -113
  %12 = add i32 %11, %8
  %13 = load i8, ptr %9, align 1, !tbaa !59
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %4, !prof !187, !llvm.loop !188

15:                                               ; preds = %4, %1
  %16 = phi i32 [ 0, %1 ], [ %12, %4 ]
  ret i32 %16
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @iterative_hash(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #19 !prof !189 {
  %4 = trunc i64 %1 to i32
  %5 = ptrtoint ptr %0 to i64
  %6 = and i64 %5, 3
  %7 = icmp eq i64 %6, 0
  %8 = icmp ugt i32 %4, 11
  br i1 %7, label %10, label %9, !prof !190

9:                                                ; preds = %3
  br i1 %8, label %64, label %165

10:                                               ; preds = %3
  br i1 %8, label %11, label %165, !prof !191

11:                                               ; preds = %10, %11
  %12 = phi i32 [ %62, %11 ], [ %4, %10 ]
  %13 = phi i32 [ %60, %11 ], [ %2, %10 ]
  %14 = phi i32 [ %56, %11 ], [ -1640531527, %10 ]
  %15 = phi i32 [ %52, %11 ], [ -1640531527, %10 ]
  %16 = phi ptr [ %61, %11 ], [ %0, %10 ]
  %17 = load i32, ptr %16, align 4, !tbaa !192
  %18 = getelementptr inbounds i8, ptr %16, i64 4
  %19 = load i32, ptr %18, align 4, !tbaa !192
  %20 = add i32 %19, %14
  %21 = getelementptr inbounds i8, ptr %16, i64 8
  %22 = load i32, ptr %21, align 4, !tbaa !192
  %23 = add i32 %22, %13
  %24 = add i32 %17, %15
  %25 = add i32 %20, %23
  %26 = sub i32 %24, %25
  %27 = lshr i32 %23, 13
  %28 = xor i32 %26, %27
  %29 = add i32 %23, %28
  %30 = sub i32 %20, %29
  %31 = shl i32 %28, 8
  %32 = xor i32 %30, %31
  %33 = add i32 %28, %32
  %34 = sub i32 %23, %33
  %35 = lshr i32 %32, 13
  %36 = xor i32 %34, %35
  %37 = add i32 %32, %36
  %38 = sub i32 %28, %37
  %39 = lshr i32 %36, 12
  %40 = xor i32 %38, %39
  %41 = add i32 %36, %40
  %42 = sub i32 %32, %41
  %43 = shl i32 %40, 16
  %44 = xor i32 %42, %43
  %45 = add i32 %40, %44
  %46 = sub i32 %36, %45
  %47 = lshr i32 %44, 5
  %48 = xor i32 %46, %47
  %49 = add i32 %44, %48
  %50 = sub i32 %40, %49
  %51 = lshr i32 %48, 3
  %52 = xor i32 %50, %51
  %53 = add i32 %48, %52
  %54 = sub i32 %44, %53
  %55 = shl i32 %52, 10
  %56 = xor i32 %54, %55
  %57 = add i32 %52, %56
  %58 = sub i32 %48, %57
  %59 = lshr i32 %56, 15
  %60 = xor i32 %58, %59
  %61 = getelementptr inbounds i8, ptr %16, i64 12
  %62 = add i32 %12, -12
  %63 = icmp ugt i32 %62, 11
  br i1 %63, label %11, label %165, !prof !191, !llvm.loop !193

64:                                               ; preds = %9, %64
  %65 = phi i32 [ %163, %64 ], [ %4, %9 ]
  %66 = phi i32 [ %161, %64 ], [ %2, %9 ]
  %67 = phi i32 [ %157, %64 ], [ -1640531527, %9 ]
  %68 = phi i32 [ %153, %64 ], [ -1640531527, %9 ]
  %69 = phi ptr [ %162, %64 ], [ %0, %9 ]
  %70 = load i8, ptr %69, align 1, !tbaa !59
  %71 = zext i8 %70 to i32
  %72 = getelementptr inbounds i8, ptr %69, i64 1
  %73 = load i8, ptr %72, align 1, !tbaa !59
  %74 = zext i8 %73 to i32
  %75 = shl nuw nsw i32 %74, 8
  %76 = or disjoint i32 %75, %71
  %77 = getelementptr inbounds i8, ptr %69, i64 2
  %78 = load i8, ptr %77, align 1, !tbaa !59
  %79 = zext i8 %78 to i32
  %80 = shl nuw nsw i32 %79, 16
  %81 = or disjoint i32 %76, %80
  %82 = getelementptr inbounds i8, ptr %69, i64 3
  %83 = load i8, ptr %82, align 1, !tbaa !59
  %84 = zext i8 %83 to i32
  %85 = shl nuw i32 %84, 24
  %86 = or disjoint i32 %81, %85
  %87 = getelementptr inbounds i8, ptr %69, i64 4
  %88 = load i8, ptr %87, align 1, !tbaa !59
  %89 = zext i8 %88 to i32
  %90 = getelementptr inbounds i8, ptr %69, i64 5
  %91 = load i8, ptr %90, align 1, !tbaa !59
  %92 = zext i8 %91 to i32
  %93 = shl nuw nsw i32 %92, 8
  %94 = or disjoint i32 %93, %89
  %95 = getelementptr inbounds i8, ptr %69, i64 6
  %96 = load i8, ptr %95, align 1, !tbaa !59
  %97 = zext i8 %96 to i32
  %98 = shl nuw nsw i32 %97, 16
  %99 = or disjoint i32 %94, %98
  %100 = getelementptr inbounds i8, ptr %69, i64 7
  %101 = load i8, ptr %100, align 1, !tbaa !59
  %102 = zext i8 %101 to i32
  %103 = shl nuw i32 %102, 24
  %104 = or disjoint i32 %99, %103
  %105 = add i32 %104, %67
  %106 = getelementptr inbounds i8, ptr %69, i64 8
  %107 = load i8, ptr %106, align 1, !tbaa !59
  %108 = zext i8 %107 to i32
  %109 = getelementptr inbounds i8, ptr %69, i64 9
  %110 = load i8, ptr %109, align 1, !tbaa !59
  %111 = zext i8 %110 to i32
  %112 = shl nuw nsw i32 %111, 8
  %113 = or disjoint i32 %112, %108
  %114 = getelementptr inbounds i8, ptr %69, i64 10
  %115 = load i8, ptr %114, align 1, !tbaa !59
  %116 = zext i8 %115 to i32
  %117 = shl nuw nsw i32 %116, 16
  %118 = or disjoint i32 %113, %117
  %119 = getelementptr inbounds i8, ptr %69, i64 11
  %120 = load i8, ptr %119, align 1, !tbaa !59
  %121 = zext i8 %120 to i32
  %122 = shl nuw i32 %121, 24
  %123 = or disjoint i32 %118, %122
  %124 = add i32 %123, %66
  %125 = add i32 %86, %68
  %126 = add i32 %105, %124
  %127 = sub i32 %125, %126
  %128 = lshr i32 %124, 13
  %129 = xor i32 %127, %128
  %130 = add i32 %124, %129
  %131 = sub i32 %105, %130
  %132 = shl i32 %129, 8
  %133 = xor i32 %131, %132
  %134 = add i32 %129, %133
  %135 = sub i32 %124, %134
  %136 = lshr i32 %133, 13
  %137 = xor i32 %135, %136
  %138 = add i32 %133, %137
  %139 = sub i32 %129, %138
  %140 = lshr i32 %137, 12
  %141 = xor i32 %139, %140
  %142 = add i32 %137, %141
  %143 = sub i32 %133, %142
  %144 = shl i32 %141, 16
  %145 = xor i32 %143, %144
  %146 = add i32 %141, %145
  %147 = sub i32 %137, %146
  %148 = lshr i32 %145, 5
  %149 = xor i32 %147, %148
  %150 = add i32 %145, %149
  %151 = sub i32 %141, %150
  %152 = lshr i32 %149, 3
  %153 = xor i32 %151, %152
  %154 = add i32 %149, %153
  %155 = sub i32 %145, %154
  %156 = shl i32 %153, 10
  %157 = xor i32 %155, %156
  %158 = add i32 %153, %157
  %159 = sub i32 %149, %158
  %160 = lshr i32 %157, 15
  %161 = xor i32 %159, %160
  %162 = getelementptr inbounds i8, ptr %69, i64 12
  %163 = add i32 %65, -12
  %164 = icmp ugt i32 %163, 11
  br i1 %164, label %64, label %165, !llvm.loop !194

165:                                              ; preds = %64, %11, %9, %10
  %166 = phi ptr [ %0, %10 ], [ %0, %9 ], [ %61, %11 ], [ %162, %64 ]
  %167 = phi i32 [ -1640531527, %10 ], [ -1640531527, %9 ], [ %52, %11 ], [ %153, %64 ]
  %168 = phi i32 [ -1640531527, %10 ], [ -1640531527, %9 ], [ %56, %11 ], [ %157, %64 ]
  %169 = phi i32 [ %2, %10 ], [ %2, %9 ], [ %60, %11 ], [ %161, %64 ]
  %170 = phi i32 [ %4, %10 ], [ %4, %9 ], [ %62, %11 ], [ %163, %64 ]
  %171 = add i32 %169, %4
  switch i32 %170, label %255 [
    i32 11, label %172
    i32 10, label %178
    i32 9, label %185
    i32 8, label %192
    i32 7, label %199
    i32 6, label %207
    i32 5, label %215
    i32 4, label %222
    i32 3, label %230
    i32 2, label %239
    i32 1, label %248
  ], !prof !195

172:                                              ; preds = %165
  %173 = getelementptr inbounds i8, ptr %166, i64 10
  %174 = load i8, ptr %173, align 1, !tbaa !59
  %175 = zext i8 %174 to i32
  %176 = shl nuw i32 %175, 24
  %177 = add i32 %176, %171
  br label %178

178:                                              ; preds = %165, %172
  %179 = phi i32 [ %171, %165 ], [ %177, %172 ]
  %180 = getelementptr inbounds i8, ptr %166, i64 9
  %181 = load i8, ptr %180, align 1, !tbaa !59
  %182 = zext i8 %181 to i32
  %183 = shl nuw nsw i32 %182, 16
  %184 = add i32 %183, %179
  br label %185

185:                                              ; preds = %165, %178
  %186 = phi i32 [ %171, %165 ], [ %184, %178 ]
  %187 = getelementptr inbounds i8, ptr %166, i64 8
  %188 = load i8, ptr %187, align 1, !tbaa !59
  %189 = zext i8 %188 to i32
  %190 = shl nuw nsw i32 %189, 8
  %191 = add i32 %190, %186
  br label %192

192:                                              ; preds = %165, %185
  %193 = phi i32 [ %171, %165 ], [ %191, %185 ]
  %194 = getelementptr inbounds i8, ptr %166, i64 7
  %195 = load i8, ptr %194, align 1, !tbaa !59
  %196 = zext i8 %195 to i32
  %197 = shl nuw i32 %196, 24
  %198 = add i32 %197, %168
  br label %199

199:                                              ; preds = %165, %192
  %200 = phi i32 [ %168, %165 ], [ %198, %192 ]
  %201 = phi i32 [ %171, %165 ], [ %193, %192 ]
  %202 = getelementptr inbounds i8, ptr %166, i64 6
  %203 = load i8, ptr %202, align 1, !tbaa !59
  %204 = zext i8 %203 to i32
  %205 = shl nuw nsw i32 %204, 16
  %206 = add i32 %205, %200
  br label %207

207:                                              ; preds = %165, %199
  %208 = phi i32 [ %168, %165 ], [ %206, %199 ]
  %209 = phi i32 [ %171, %165 ], [ %201, %199 ]
  %210 = getelementptr inbounds i8, ptr %166, i64 5
  %211 = load i8, ptr %210, align 1, !tbaa !59
  %212 = zext i8 %211 to i32
  %213 = shl nuw nsw i32 %212, 8
  %214 = add i32 %213, %208
  br label %215

215:                                              ; preds = %165, %207
  %216 = phi i32 [ %168, %165 ], [ %214, %207 ]
  %217 = phi i32 [ %171, %165 ], [ %209, %207 ]
  %218 = getelementptr inbounds i8, ptr %166, i64 4
  %219 = load i8, ptr %218, align 1, !tbaa !59
  %220 = zext i8 %219 to i32
  %221 = add i32 %216, %220
  br label %222

222:                                              ; preds = %165, %215
  %223 = phi i32 [ %168, %165 ], [ %221, %215 ]
  %224 = phi i32 [ %171, %165 ], [ %217, %215 ]
  %225 = getelementptr inbounds i8, ptr %166, i64 3
  %226 = load i8, ptr %225, align 1, !tbaa !59
  %227 = zext i8 %226 to i32
  %228 = shl nuw i32 %227, 24
  %229 = add i32 %228, %167
  br label %230

230:                                              ; preds = %165, %222
  %231 = phi i32 [ %167, %165 ], [ %229, %222 ]
  %232 = phi i32 [ %168, %165 ], [ %223, %222 ]
  %233 = phi i32 [ %171, %165 ], [ %224, %222 ]
  %234 = getelementptr inbounds i8, ptr %166, i64 2
  %235 = load i8, ptr %234, align 1, !tbaa !59
  %236 = zext i8 %235 to i32
  %237 = shl nuw nsw i32 %236, 16
  %238 = add i32 %237, %231
  br label %239

239:                                              ; preds = %165, %230
  %240 = phi i32 [ %167, %165 ], [ %238, %230 ]
  %241 = phi i32 [ %168, %165 ], [ %232, %230 ]
  %242 = phi i32 [ %171, %165 ], [ %233, %230 ]
  %243 = getelementptr inbounds i8, ptr %166, i64 1
  %244 = load i8, ptr %243, align 1, !tbaa !59
  %245 = zext i8 %244 to i32
  %246 = shl nuw nsw i32 %245, 8
  %247 = add i32 %246, %240
  br label %248

248:                                              ; preds = %165, %239
  %249 = phi i32 [ %167, %165 ], [ %247, %239 ]
  %250 = phi i32 [ %168, %165 ], [ %241, %239 ]
  %251 = phi i32 [ %171, %165 ], [ %242, %239 ]
  %252 = load i8, ptr %166, align 1, !tbaa !59
  %253 = zext i8 %252 to i32
  %254 = add i32 %249, %253
  br label %255

255:                                              ; preds = %248, %165
  %256 = phi i32 [ %167, %165 ], [ %254, %248 ]
  %257 = phi i32 [ %168, %165 ], [ %250, %248 ]
  %258 = phi i32 [ %171, %165 ], [ %251, %248 ]
  %259 = add i32 %257, %258
  %260 = sub i32 %256, %259
  %261 = lshr i32 %258, 13
  %262 = xor i32 %260, %261
  %263 = add i32 %258, %262
  %264 = sub i32 %257, %263
  %265 = shl i32 %262, 8
  %266 = xor i32 %264, %265
  %267 = add i32 %262, %266
  %268 = sub i32 %258, %267
  %269 = lshr i32 %266, 13
  %270 = xor i32 %268, %269
  %271 = add i32 %266, %270
  %272 = sub i32 %262, %271
  %273 = lshr i32 %270, 12
  %274 = xor i32 %272, %273
  %275 = add i32 %270, %274
  %276 = sub i32 %266, %275
  %277 = shl i32 %274, 16
  %278 = xor i32 %276, %277
  %279 = add i32 %274, %278
  %280 = sub i32 %270, %279
  %281 = lshr i32 %278, 5
  %282 = xor i32 %280, %281
  %283 = add i32 %278, %282
  %284 = sub i32 %274, %283
  %285 = lshr i32 %282, 3
  %286 = xor i32 %284, %285
  %287 = add i32 %282, %286
  %288 = sub i32 %278, %287
  %289 = shl i32 %286, 10
  %290 = xor i32 %288, %289
  %291 = add i32 %286, %290
  %292 = sub i32 %282, %291
  %293 = lshr i32 %290, 15
  %294 = xor i32 %292, %293
  ret i32 %294
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

attributes #0 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind }
attributes #21 = { cold }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!43}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42}
!35 = !{ptr @htab_create_alloc, ptr @xcalloc, i64 6}
!36 = !{ptr @htab_create, ptr @xcalloc, i64 1561658}
!37 = !{ptr @htab_find_with_hash, ptr @eq_pointer, i64 164582}
!38 = !{ptr @htab_find, ptr @eq_pointer, i64 150695}
!39 = !{ptr @htab_find_slot_with_hash, ptr @htab_expand, i64 14985}
!40 = !{ptr @htab_expand, ptr @xcalloc, i64 23241}
!41 = !{ptr @htab_find_slot, ptr @htab_expand, i64 8477}
!42 = !{ptr @htab_traverse, ptr @htab_expand, i64 25}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 0}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!49, !49, i64 0}
!49 = !{!"any pointer", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !{!53, !49, i64 8}
!53 = !{!"_IO_FILE", !54, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72, !49, i64 80, !49, i64 88, !49, i64 96, !49, i64 104, !54, i64 112, !54, i64 116, !55, i64 120, !56, i64 128, !50, i64 130, !50, i64 131, !49, i64 136, !55, i64 144, !49, i64 152, !49, i64 160, !49, i64 168, !49, i64 176, !55, i64 184, !54, i64 192, !50, i64 196}
!54 = !{!"int", !50, i64 0}
!55 = !{!"long", !50, i64 0}
!56 = !{!"short", !50, i64 0}
!57 = !{!53, !49, i64 16}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{!50, !50, i64 0}
!60 = !{!53, !49, i64 40}
!61 = !{!53, !49, i64 48}
!62 = !{!53, !54, i64 0}
!63 = !{!"function_entry_count", i64 4871926}
!64 = !{!"hashtab.c;hash_pointer"}
!65 = !{!"function_entry_count", i64 315932}
!66 = !{!"hashtab.c;eq_pointer"}
!67 = !{!"function_entry_count", i64 1861}
!68 = !{!69, !55, i64 32}
!69 = !{!"htab", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !54, i64 56, !54, i64 60, !49, i64 64, !49, i64 72, !49, i64 80, !49, i64 88, !49, i64 96, !54, i64 104}
!70 = !{!"function_entry_count", i64 1278}
!71 = !{!69, !55, i64 40}
!72 = !{!69, !55, i64 48}
!73 = !{!"function_entry_count", i64 817}
!74 = !{!75, !54, i64 0}
!75 = !{!"prime_ent", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12}
!76 = !{!"branch_weights", i32 761304, i32 3190616}
!77 = !{!"branch_weights", i32 790384, i32 3161536}
!78 = distinct !{!78, !46, !47}
!79 = !{!"branch_weights", i32 0, i32 790384}
!80 = !{!"VP", i32 0, i64 817, i64 934324656769000068, i64 814, i64 1692206516875741157, i64 3}
!81 = !{!"branch_weights", i32 0, i32 817}
!82 = !{!69, !49, i64 24}
!83 = !{!69, !54, i64 104}
!84 = !{!69, !49, i64 0}
!85 = !{!69, !49, i64 8}
!86 = !{!69, !49, i64 16}
!87 = !{!69, !49, i64 64}
!88 = !{!69, !49, i64 72}
!89 = !{!"hashtab.c;higher_prime_index"}
!90 = !{!69, !49, i64 80}
!91 = !{!69, !49, i64 88}
!92 = !{!69, !49, i64 96}
!93 = !{!"function_entry_count", i64 780829}
!94 = !{!"branch_weights", i32 0, i32 780829}
!95 = !{!"function_entry_count", i64 781346}
!96 = !{!"branch_weights", i32 149906, i32 631440}
!97 = !{!"branch_weights", i32 631439, i32 1}
!98 = !{!"branch_weights", i32 24944410, i32 1005266}
!99 = !{!"VP", i32 0, i64 1005266, i64 0, i64 335145, i64 -4886124462220422222, i64 282859, i64 -4599857702639628227, i64 151061}
!100 = !{!"branch_weights", i32 25318237, i32 631439}
!101 = distinct !{!101, !46, !47}
!102 = !{!"branch_weights", i32 0, i32 781346}
!103 = !{!"VP", i32 0, i64 781346, i64 0, i64 780668, i64 -4953771590010151848, i64 678}
!104 = !{!"function_entry_count", i64 693279}
!105 = !{!"branch_weights", i32 693230, i32 49}
!106 = !{!"branch_weights", i32 195, i32 1}
!107 = !{!"branch_weights", i32 1519, i32 0}
!108 = !{!"branch_weights", i32 5881, i32 195}
!109 = distinct !{!109, !46, !47}
!110 = !{!"branch_weights", i32 0, i32 693279}
!111 = !{!"VP", i32 1, i64 693279, i64 129, i64 589941, i64 257, i64 58822, i64 513, i64 44494, i64 65, i64 22}
!112 = !{!"function_entry_count", i64 6525109}
!113 = !{!69, !54, i64 56}
!114 = !{!"branch_weights", i32 2348737, i32 10150881, i32 67}
!115 = !{!"branch_weights", i32 1089767, i32 1258970}
!116 = !{!"VP", i32 0, i64 657209, i64 2787019566800665323, i64 294193, i64 1455769638451122100, i64 155844}
!117 = !{!"branch_weights", i32 1649283, i32 699454}
!118 = !{!69, !54, i64 60}
!119 = !{!"branch_weights", i32 1107585, i32 1109775}
!120 = !{!"branch_weights", i32 787468, i32 1429824, i32 68}
!121 = distinct !{!121, !47}
!122 = !{!"VP", i32 0, i64 411075, i64 2787019566800665323, i64 172192, i64 3710968985304937579, i64 164582, i64 2141091832263950048, i64 30912}
!123 = !{!"branch_weights", i32 567942, i32 219526}
!124 = !{!"function_entry_count", i64 5974576}
!125 = !{!"branch_weights", i32 5643230, i32 331346}
!126 = !{!"VP", i32 0, i64 331346, i64 -2025930503168693372, i64 291885}
!127 = !{!"VP", i32 0, i64 601760, i64 2787019566800665323, i64 269372, i64 1455769638451122100, i64 142695}
!128 = !{!"VP", i32 0, i64 376392, i64 2787019566800665323, i64 157664, i64 3710968985304937579, i64 150695, i64 2141091832263950048, i64 28303}
!129 = !{!"function_entry_count", i64 12875918}
!130 = !{!"branch_weights", i32 14665254, i32 5495358}
!131 = !{!"branch_weights", i32 14641791, i32 23463}
!132 = !{i32 0, i32 2}
!133 = !{!"branch_weights", i32 0, i32 23463}
!134 = !{!"branch_weights", i32 12878361, i32 6220927, i32 1061324}
!135 = !{!"VP", i32 0, i64 8172973, i64 1362318294466206368, i64 2398626, i64 2141091832263950048, i64 1438150, i64 8530262930758542360, i64 1286844}
!136 = !{!"branch_weights", i32 3678849, i32 9199512}
!137 = !{!"branch_weights", i32 4478656, i32 6495384}
!138 = !{!"branch_weights", i32 6244790, i32 2306784, i32 2422466}
!139 = !{!"branch_weights", i32 209679, i32 2212787}
!140 = distinct !{!140, !47}
!141 = !{!"VP", i32 0, i64 3986444, i64 8530262930758542360, i64 882317, i64 1864951984720624686, i64 515973, i64 1362318294466206368, i64 459942}
!142 = !{!"branch_weights", i32 3811401, i32 2433389}
!143 = !{!"branch_weights", i32 2731818, i32 5795893}
!144 = !{!"branch_weights", i32 5182863, i32 613030}
!145 = !{!"function_entry_count", i64 23488}
!146 = !{!"hashtab.c;htab_expand"}
!147 = !{!"branch_weights", i32 6580, i32 16908}
!148 = !{!"branch_weights", i32 2158, i32 14750}
!149 = !{!"branch_weights", i32 23488, i32 0}
!150 = !{!"VP", i32 0, i64 23488, i64 1692206516875741157, i64 23241, i64 934324656769000068, i64 247}
!151 = !{!"branch_weights", i32 0, i32 23488}
!152 = !{!"branch_weights", i32 1968577, i32 2361995}
!153 = !{!"VP", i32 0, i64 2361856, i64 3868779818149043801, i64 502666, i64 -6124922700785685793, i64 369354, i64 -7854544520973978268, i64 206201}
!154 = !{!"branch_weights", i32 377430, i32 1984565, i32 0}
!155 = !{!"branch_weights", i32 275527, i32 258022}
!156 = !{!"branch_weights", i32 156119, i32 377430, i32 0}
!157 = !{!"branch_weights", i32 4307084, i32 23488}
!158 = distinct !{!158, !46, !47}
!159 = !{!"VP", i32 0, i64 23488, i64 0, i64 23241, i64 -4953771590010151848, i64 247}
!160 = !{!"function_entry_count", i64 7284221}
!161 = !{!"VP", i32 0, i64 7284221, i64 -2025930503168693372, i64 2481137, i64 -1897863860091518795, i64 767796, i64 681666509342241108, i64 752176}
!162 = !{!"VP", i32 0, i64 4623651, i64 1362318294466206368, i64 1356962, i64 2141091832263950048, i64 813596, i64 8530262930758542360, i64 728000}
!163 = !{!"VP", i32 0, i64 2255228, i64 8530262930758542360, i64 499148, i64 1864951984720624686, i64 291899, i64 1362318294466206368, i64 260201}
!164 = !{!"function_entry_count", i64 473}
!165 = !{!"VP", i32 0, i64 300, i64 1362318294466206368, i64 88, i64 2141091832263950048, i64 52, i64 8530262930758542360, i64 47}
!166 = !{!"VP", i32 0, i64 146, i64 8530262930758542360, i64 32, i64 1864951984720624686, i64 18, i64 1362318294466206368, i64 16}
!167 = !{!"branch_weights", i32 0, i32 473}
!168 = !{!"branch_weights", i32 473, i32 0}
!169 = !{!"function_entry_count", i64 1380893}
!170 = !{!"branch_weights", i32 0, i32 1380893}
!171 = !{!"branch_weights", i32 1380893, i32 0}
!172 = !{!"branch_weights", i32 14572, i32 1366321}
!173 = !{!"VP", i32 0, i64 1366321, i64 -3314107986566582315, i64 1366321}
!174 = !{!"function_entry_count", i64 11060}
!175 = !{!"branch_weights", i32 342860, i32 0}
!176 = !{!"branch_weights", i32 331800, i32 11060}
!177 = distinct !{!177, !46, !47}
!178 = !{!"function_entry_count", i64 106365}
!179 = !{!"branch_weights", i32 25, i32 106340}
!180 = !{!"branch_weights", i32 536389, i32 132746}
!181 = !{!"VP", i32 0, i64 132746, i64 -820860464193611525, i64 40625, i64 7777963077424417262, i64 40625, i64 -9103255674443763110, i64 36012}
!182 = !{!"branch_weights", i32 35350, i32 97396}
!183 = !{!"branch_weights", i32 633785, i32 35350}
!184 = !{!"branch_weights", i32 562770, i32 106365}
!185 = !{!"function_entry_count", i64 22}
!186 = !{!"branch_weights", i32 1, i32 175}
!187 = !{!"branch_weights", i32 175, i32 1985}
!188 = distinct !{!188, !46, !47}
!189 = !{!"function_entry_count", i64 2218003}
!190 = !{!"branch_weights", i32 2218003, i32 0}
!191 = !{!"branch_weights", i32 0, i32 1}
!192 = !{!54, !54, i64 0}
!193 = distinct !{!193, !46, !47}
!194 = distinct !{!194, !46, !47}
!195 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2218003, i32 0, i32 0, i32 0}
