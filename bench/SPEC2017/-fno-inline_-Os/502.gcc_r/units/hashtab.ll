; ModuleID = 'hashtab.c'
source_filename = "hashtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.prime_ent = type { i32, i32, i32, i32 }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }

@htab_hash_pointer = dso_local local_unnamed_addr global ptr @hash_pointer, align 8
@htab_eq_pointer = dso_local local_unnamed_addr global ptr @eq_pointer, align 8
@prime_tab = internal unnamed_addr constant [30 x %struct.prime_ent] [%struct.prime_ent { i32 7, i32 613566757, i32 -1717986917, i32 2 }, %struct.prime_ent { i32 13, i32 991146300, i32 1952257863, i32 3 }, %struct.prime_ent { i32 31, i32 138547333, i32 444306962, i32 4 }, %struct.prime_ent { i32 61, i32 211227900, i32 363980280, i32 5 }, %struct.prime_ent { i32 127, i32 33818641, i32 103079216, i32 6 }, %struct.prime_ent { i32 251, i32 85557118, i32 120742053, i32 7 }, %struct.prime_ent { i32 509, i32 25314150, i32 42356680, i32 8 }, %struct.prime_ent { i32 1021, i32 12619885, i32 21074423, i32 9 }, %struct.prime_ent { i32 2039, i32 18957679, i32 23193246, i32 10 }, %struct.prime_ent { i32 4093, i32 3148034, i32 5249288, i32 11 }, %struct.prime_ent { i32 8191, i32 524353, i32 1573441, i32 12 }, %struct.prime_ent { i32 16381, i32 786577, i32 1311121, i32 13 }, %struct.prime_ent { i32 32749, i32 2491813, i32 2754278, i32 14 }, %struct.prime_ent { i32 65521, i32 983266, i32 1114402, i32 15 }, %struct.prime_ent { i32 131071, i32 32769, i32 98307, i32 16 }, %struct.prime_ent { i32 262139, i32 81922, i32 114692, i32 17 }, %struct.prime_ent { i32 524287, i32 8193, i32 24577, i32 18 }, %struct.prime_ent { i32 1048573, i32 12289, i32 20481, i32 19 }, %struct.prime_ent { i32 2097143, i32 18433, i32 22529, i32 20 }, %struct.prime_ent { i32 4194301, i32 3073, i32 5121, i32 21 }, %struct.prime_ent { i32 8388593, i32 7681, i32 8705, i32 22 }, %struct.prime_ent { i32 16777213, i32 769, i32 1281, i32 23 }, %struct.prime_ent { i32 33554393, i32 4993, i32 5249, i32 24 }, %struct.prime_ent { i32 67108859, i32 321, i32 449, i32 25 }, %struct.prime_ent { i32 134217689, i32 1249, i32 1313, i32 26 }, %struct.prime_ent { i32 268435399, i32 913, i32 945, i32 27 }, %struct.prime_ent { i32 536870909, i32 25, i32 41, i32 28 }, %struct.prime_ent { i32 1073741789, i32 141, i32 149, i32 29 }, %struct.prime_ent { i32 2147483647, i32 3, i32 7, i32 30 }, %struct.prime_ent { i32 -5, i32 6, i32 8, i32 31 }], align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [35 x i8] c"Cannot find prime bigger than %lu\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @hash_pointer(ptr noundef %0) #0 !prof !59 !PGOFuncName !60 {
  %2 = ptrtoint ptr %0 to i64
  %3 = lshr i64 %2, 3
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @eq_pointer(ptr noundef readnone %0, ptr noundef readnone %1) #0 !prof !61 !PGOFuncName !62 {
  %3 = icmp eq ptr %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @htab_size(ptr nocapture noundef readonly %0) local_unnamed_addr #1 !prof !63 {
  %2 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !64
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @htab_elements(ptr nocapture noundef readonly %0) local_unnamed_addr #1 !prof !71 {
  %2 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 5
  %3 = load i64, ptr %2, align 8, !tbaa !72
  %4 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 6
  %5 = load i64, ptr %4, align 8, !tbaa !73
  %6 = sub i64 %3, %5
  ret i64 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @htab_create_alloc(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 !prof !74 {
  %7 = tail call fastcc i32 @higher_prime_index(i64 noundef %0) #11
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %8
  %10 = load i32, ptr %9, align 16, !tbaa !75
  %11 = zext i32 %10 to i64
  %12 = tail call ptr %4(i64 noundef 1, i64 noundef 112) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14, !prof !77

14:                                               ; preds = %6
  %15 = tail call ptr %4(i64 noundef %11, i64 noundef 8) #12
  %16 = getelementptr inbounds %struct.htab, ptr %12, i64 0, i32 3
  store ptr %15, ptr %16, align 8, !tbaa !78
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %21, !prof !77

18:                                               ; preds = %14
  %19 = icmp eq ptr %5, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %18
  tail call void %5(ptr noundef nonnull %12) #12
  br label %28

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.htab, ptr %12, i64 0, i32 4
  store i64 %11, ptr %22, align 8, !tbaa !64
  %23 = getelementptr inbounds %struct.htab, ptr %12, i64 0, i32 14
  store i32 %7, ptr %23, align 8, !tbaa !79
  store ptr %1, ptr %12, align 8, !tbaa !80
  %24 = getelementptr inbounds %struct.htab, ptr %12, i64 0, i32 1
  store ptr %2, ptr %24, align 8, !tbaa !81
  %25 = getelementptr inbounds %struct.htab, ptr %12, i64 0, i32 2
  store ptr %3, ptr %25, align 8, !tbaa !82
  %26 = getelementptr inbounds %struct.htab, ptr %12, i64 0, i32 9
  store ptr %4, ptr %26, align 8, !tbaa !83
  %27 = getelementptr inbounds %struct.htab, ptr %12, i64 0, i32 10
  store ptr %5, ptr %27, align 8, !tbaa !84
  br label %28

28:                                               ; preds = %18, %20, %6, %21
  %29 = phi ptr [ %12, %21 ], [ null, %6 ], [ null, %20 ], [ null, %18 ]
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @higher_prime_index(i64 noundef %0) unnamed_addr #2 !prof !85 !PGOFuncName !86 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i32 [ 0, %1 ], [ %15, %2 ]
  %4 = phi i32 [ 30, %1 ], [ %14, %2 ]
  %5 = sub i32 %4, %3
  %6 = lshr i32 %5, 1
  %7 = add i32 %6, %3
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %8
  %10 = load i32, ptr %9, align 16, !tbaa !75
  %11 = zext i32 %10 to i64
  %12 = icmp ult i64 %11, %0
  %13 = add i32 %7, 1
  %14 = select i1 %12, i32 %4, i32 %7, !prof !87
  %15 = select i1 %12, i32 %13, i32 %3, !prof !87
  %16 = icmp eq i32 %15, %14
  br i1 %16, label %17, label %2, !prof !88, !llvm.loop !89

17:                                               ; preds = %2
  %18 = zext i32 %14 to i64
  %19 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %18
  %20 = load i32, ptr %19, align 16, !tbaa !75
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %21, %0
  br i1 %22, label %23, label %26, !prof !91

23:                                               ; preds = %17
  %24 = load ptr, ptr @stderr, align 8, !tbaa !92
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str, i64 noundef %0) #13
  tail call void @abort() #14
  unreachable

26:                                               ; preds = %17
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @htab_create_alloc_ex(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #2 !prof !93 {
  %8 = tail call fastcc i32 @higher_prime_index(i64 noundef %0) #11
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %9
  %11 = load i32, ptr %10, align 16, !tbaa !75
  %12 = zext i32 %11 to i64
  %13 = tail call ptr %5(ptr noundef %4, i64 noundef 1, i64 noundef 112) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %7
  %16 = tail call ptr %5(ptr noundef %4, i64 noundef %12, i64 noundef 8) #12
  %17 = getelementptr inbounds %struct.htab, ptr %13, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !78
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = icmp eq ptr %6, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %19
  tail call void %6(ptr noundef %4, ptr noundef nonnull %13) #12
  br label %30

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.htab, ptr %13, i64 0, i32 4
  store i64 %12, ptr %23, align 8, !tbaa !64
  %24 = getelementptr inbounds %struct.htab, ptr %13, i64 0, i32 14
  store i32 %8, ptr %24, align 8, !tbaa !79
  store ptr %1, ptr %13, align 8, !tbaa !80
  %25 = getelementptr inbounds %struct.htab, ptr %13, i64 0, i32 1
  store ptr %2, ptr %25, align 8, !tbaa !81
  %26 = getelementptr inbounds %struct.htab, ptr %13, i64 0, i32 2
  store ptr %3, ptr %26, align 8, !tbaa !82
  %27 = getelementptr inbounds %struct.htab, ptr %13, i64 0, i32 11
  store ptr %4, ptr %27, align 8, !tbaa !94
  %28 = getelementptr inbounds %struct.htab, ptr %13, i64 0, i32 12
  store ptr %5, ptr %28, align 8, !tbaa !95
  %29 = getelementptr inbounds %struct.htab, ptr %13, i64 0, i32 13
  store ptr %6, ptr %29, align 8, !tbaa !96
  br label %30

30:                                               ; preds = %19, %21, %7, %22
  %31 = phi ptr [ %13, %22 ], [ null, %7 ], [ null, %21 ], [ null, %19 ]
  ret ptr %31
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @htab_set_functions_ex(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #3 !prof !93 {
  store ptr %1, ptr %0, align 8, !tbaa !80
  %8 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 1
  store ptr %2, ptr %8, align 8, !tbaa !81
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 2
  store ptr %3, ptr %9, align 8, !tbaa !82
  %10 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 11
  store ptr %4, ptr %10, align 8, !tbaa !94
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 12
  store ptr %5, ptr %11, align 8, !tbaa !95
  %12 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 13
  store ptr %6, ptr %12, align 8, !tbaa !96
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @htab_create(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 !prof !97 {
  %5 = tail call ptr @htab_create_alloc(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @xcalloc, ptr noundef nonnull @free) #11
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) #4

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @htab_try_create(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 !prof !93 {
  %5 = tail call ptr @htab_create_alloc(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @calloc, ptr noundef nonnull @free) #11
  ret ptr %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @htab_delete(ptr noundef %0) local_unnamed_addr #2 !prof !98 {
  %2 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  %4 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7, !prof !99

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %9 = load i64, ptr %8, align 8, !tbaa !64
  %10 = trunc i64 %9 to i32
  %11 = add i32 %10, -1
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %25, !prof !100

13:                                               ; preds = %7
  %14 = zext nneg i32 %11 to i64
  br label %15

15:                                               ; preds = %13, %22
  %16 = phi i64 [ %14, %13 ], [ %23, %22 ]
  %17 = getelementptr inbounds ptr, ptr %3, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !92
  %19 = icmp ult ptr %18, inttoptr (i64 2 to ptr)
  br i1 %19, label %22, label %20, !prof !101

20:                                               ; preds = %15
  %21 = load ptr, ptr %4, align 8, !tbaa !82
  tail call void %21(ptr noundef nonnull %18) #12
  br label %22

22:                                               ; preds = %15, %20
  %23 = add nsw i64 %16, -1
  %24 = icmp sgt i64 %16, 0
  br i1 %24, label %15, label %25, !prof !102, !llvm.loop !103

25:                                               ; preds = %22, %7, %1
  %26 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !84
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29, !prof !104

29:                                               ; preds = %25
  tail call void %27(ptr noundef %3) #12
  %30 = load ptr, ptr %26, align 8, !tbaa !84
  tail call void %30(ptr noundef nonnull %0) #12
  br label %40

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 13
  %33 = load ptr, ptr %32, align 8, !tbaa !96
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 11
  %37 = load ptr, ptr %36, align 8, !tbaa !94
  tail call void %33(ptr noundef %37, ptr noundef %3) #12
  %38 = load ptr, ptr %32, align 8, !tbaa !96
  %39 = load ptr, ptr %36, align 8, !tbaa !94
  tail call void %38(ptr noundef %39, ptr noundef nonnull %0) #12
  br label %40

40:                                               ; preds = %31, %35, %29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @htab_empty(ptr nocapture noundef %0) local_unnamed_addr #2 !prof !105 {
  %2 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !82
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9, !prof !106

9:                                                ; preds = %1
  %10 = trunc i64 %3 to i32
  %11 = add i32 %10, -1
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %25, !prof !107

13:                                               ; preds = %9
  %14 = zext nneg i32 %11 to i64
  br label %15

15:                                               ; preds = %13, %22
  %16 = phi i64 [ %14, %13 ], [ %23, %22 ]
  %17 = getelementptr inbounds ptr, ptr %5, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !92
  %19 = icmp ult ptr %18, inttoptr (i64 2 to ptr)
  br i1 %19, label %22, label %20, !prof !108

20:                                               ; preds = %15
  %21 = load ptr, ptr %6, align 8, !tbaa !82
  tail call void %21(ptr noundef nonnull %18) #12
  br label %22

22:                                               ; preds = %15, %20
  %23 = add nsw i64 %16, -1
  %24 = icmp sgt i64 %16, 0
  br i1 %24, label %15, label %25, !prof !109, !llvm.loop !110

25:                                               ; preds = %22, %9, %1
  %26 = icmp ugt i64 %3, 131072
  br i1 %26, label %27, label %61, !prof !111

27:                                               ; preds = %25
  %28 = tail call fastcc i32 @higher_prime_index(i64 noundef 128) #11
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %29
  %31 = load i32, ptr %30, align 16, !tbaa !75
  %32 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !84
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %27
  %36 = load ptr, ptr %4, align 8, !tbaa !78
  tail call void %33(ptr noundef %36) #12
  br label %45

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 13
  %39 = load ptr, ptr %38, align 8, !tbaa !96
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 11
  %43 = load ptr, ptr %42, align 8, !tbaa !94
  %44 = load ptr, ptr %4, align 8, !tbaa !78
  tail call void %39(ptr noundef %43, ptr noundef %44) #12
  br label %45

45:                                               ; preds = %37, %41, %35
  %46 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 12
  %47 = load ptr, ptr %46, align 8, !tbaa !95
  %48 = icmp eq ptr %47, null
  %49 = sext i32 %31 to i64
  br i1 %48, label %54, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 11
  %52 = load ptr, ptr %51, align 8, !tbaa !94
  %53 = tail call ptr %47(ptr noundef %52, i64 noundef %49, i64 noundef 8) #12
  br label %58

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !83
  %57 = tail call ptr %56(i64 noundef %49, i64 noundef 8) #12
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi ptr [ %57, %54 ], [ %53, %50 ]
  store ptr %59, ptr %4, align 8, !tbaa !78
  store i64 %49, ptr %2, align 8, !tbaa !64
  %60 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 14
  store i32 %28, ptr %60, align 8, !tbaa !79
  br label %63

61:                                               ; preds = %25
  %62 = shl nuw nsw i64 %3, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %62, i1 false)
  br label %63

63:                                               ; preds = %61, %58
  %64 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %64, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @htab_find_with_hash(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 !prof !112 {
  %4 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !113
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !113
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %8 = load i64, ptr %7, align 8, !tbaa !64
  %9 = tail call fastcc i32 @htab_mod(i32 noundef %2, ptr noundef %0) #11
  %10 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  %12 = zext i32 %9 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !92
  %15 = ptrtoint ptr %14 to i64
  switch i64 %15, label %16 [
    i64 0, label %45
    i64 1, label %21
  ], !prof !114

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !81
  %19 = tail call i32 %18(ptr noundef nonnull %14, ptr noundef %1) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %45, !prof !115

21:                                               ; preds = %3, %16
  %22 = tail call fastcc i32 @htab_mod_m2(i32 noundef %2, ptr noundef nonnull %0) #11
  %23 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 8
  %24 = trunc i64 %8 to i32
  br label %25

25:                                               ; preds = %39, %21
  %26 = phi i32 [ %9, %21 ], [ %33, %39 ]
  %27 = load i32, ptr %23, align 4, !tbaa !116
  %28 = add i32 %27, 1
  store i32 %28, ptr %23, align 4, !tbaa !116
  %29 = add i32 %26, %22
  %30 = zext i32 %29 to i64
  %31 = icmp ugt i64 %8, %30
  %32 = select i1 %31, i32 0, i32 %24, !prof !117
  %33 = sub i32 %29, %32
  %34 = load ptr, ptr %10, align 8, !tbaa !78
  %35 = zext i32 %33 to i64
  %36 = getelementptr inbounds ptr, ptr %34, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !92
  %38 = ptrtoint ptr %37 to i64
  switch i64 %38, label %40 [
    i64 0, label %45
    i64 1, label %39
  ], !prof !118

39:                                               ; preds = %25, %40
  br label %25

40:                                               ; preds = %25
  %41 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !81
  %43 = tail call i32 %42(ptr noundef nonnull %37, ptr noundef %1) #12
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %39, label %45, !prof !119

45:                                               ; preds = %40, %25, %16, %3
  %46 = phi ptr [ %14, %3 ], [ %14, %16 ], [ %37, %25 ], [ %37, %40 ]
  ret ptr %46
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @htab_mod(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !120 !PGOFuncName !121 {
  %3 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 14
  %4 = load i32, ptr %3, align 8, !tbaa !79
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %5
  %7 = load i32, ptr %6, align 16, !tbaa !75
  %8 = tail call fastcc i32 @htab_mod_1(i32 noundef %0, i32 noundef %7) #11
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @htab_mod_m2(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !122 !PGOFuncName !123 {
  %3 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 14
  %4 = load i32, ptr %3, align 8, !tbaa !79
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %5
  %7 = load i32, ptr %6, align 16, !tbaa !75
  %8 = add i32 %7, -2
  %9 = tail call fastcc i32 @htab_mod_1(i32 noundef %0, i32 noundef %8) #11
  %10 = add i32 %9, 1
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @htab_find(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !124 {
  %3 = load ptr, ptr %0, align 8, !tbaa !80
  %4 = tail call i32 %3(ptr noundef %1) #12
  %5 = tail call ptr @htab_find_with_hash(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %4) #11
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @htab_find_slot_with_hash(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 !prof !125 {
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %6 = load i64, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i32 %3, 1
  br i1 %7, label %8, label %19, !prof !126

8:                                                ; preds = %4
  %9 = mul i64 %6, 3
  %10 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 5
  %11 = load i64, ptr %10, align 8, !tbaa !72
  %12 = shl i64 %11, 2
  %13 = icmp ugt i64 %9, %12
  br i1 %13, label %19, label %14, !prof !127

14:                                               ; preds = %8
  %15 = tail call fastcc i32 @htab_expand(ptr noundef nonnull %0) #11, !range !128
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %90, label %17, !prof !129

17:                                               ; preds = %14
  %18 = load i64, ptr %5, align 8, !tbaa !64
  br label %19

19:                                               ; preds = %17, %8, %4
  %20 = phi i64 [ %18, %17 ], [ %6, %8 ], [ %6, %4 ]
  %21 = tail call fastcc i32 @htab_mod(i32 noundef %2, ptr noundef nonnull %0) #11
  %22 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !113
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 8, !tbaa !113
  %25 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !78
  %27 = zext i32 %21 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !92
  %30 = ptrtoint ptr %29 to i64
  switch i64 %30, label %31 [
    i64 0, label %75
    i64 1, label %39
  ], !prof !130

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !81
  %34 = tail call i32 %33(ptr noundef nonnull %29, ptr noundef %1) #12
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36, !prof !131

36:                                               ; preds = %31
  %37 = load ptr, ptr %25, align 8, !tbaa !78
  %38 = getelementptr inbounds ptr, ptr %37, i64 %27
  br label %90

39:                                               ; preds = %19, %31
  %40 = phi ptr [ null, %31 ], [ %28, %19 ]
  %41 = tail call fastcc i32 @htab_mod_m2(i32 noundef %2, ptr noundef nonnull %0) #11
  %42 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 8
  %43 = trunc i64 %20 to i32
  %44 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 1
  br label %45

45:                                               ; preds = %62, %39
  %46 = phi ptr [ %65, %62 ], [ %40, %39 ]
  %47 = phi i32 [ %56, %62 ], [ %21, %39 ]
  br label %48

48:                                               ; preds = %45, %66
  %49 = phi i32 [ %56, %66 ], [ %47, %45 ]
  %50 = load i32, ptr %42, align 4, !tbaa !116
  %51 = add i32 %50, 1
  store i32 %51, ptr %42, align 4, !tbaa !116
  %52 = add i32 %49, %41
  %53 = zext i32 %52 to i64
  %54 = icmp ugt i64 %20, %53
  %55 = select i1 %54, i32 0, i32 %43, !prof !132
  %56 = sub i32 %52, %55
  %57 = load ptr, ptr %25, align 8, !tbaa !78
  %58 = zext i32 %56 to i64
  %59 = getelementptr inbounds ptr, ptr %57, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !92
  %61 = ptrtoint ptr %60 to i64
  switch i64 %61, label %66 [
    i64 0, label %73
    i64 1, label %62
  ], !prof !133

62:                                               ; preds = %48
  %63 = getelementptr inbounds ptr, ptr %57, i64 %58
  %64 = icmp eq ptr %46, null
  %65 = select i1 %64, ptr %63, ptr %46, !prof !134
  br label %45

66:                                               ; preds = %48
  %67 = load ptr, ptr %44, align 8, !tbaa !81
  %68 = tail call i32 %67(ptr noundef nonnull %60, ptr noundef %1) #12
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %48, label %70, !prof !135

70:                                               ; preds = %66
  %71 = load ptr, ptr %25, align 8, !tbaa !78
  %72 = getelementptr inbounds ptr, ptr %71, i64 %58
  br label %90

73:                                               ; preds = %48
  %74 = icmp eq i32 %3, 0
  br i1 %74, label %90, label %77, !prof !136

75:                                               ; preds = %19
  %76 = icmp eq i32 %3, 0
  br i1 %76, label %90, label %83, !prof !136

77:                                               ; preds = %73
  %78 = icmp eq ptr %46, null
  br i1 %78, label %83, label %79, !prof !137

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 6
  %81 = load i64, ptr %80, align 8, !tbaa !73
  %82 = add i64 %81, -1
  store i64 %82, ptr %80, align 8, !tbaa !73
  store ptr null, ptr %46, align 8, !tbaa !92
  br label %90

83:                                               ; preds = %75, %77
  %84 = phi i64 [ %27, %75 ], [ %58, %77 ]
  %85 = phi ptr [ %26, %75 ], [ %57, %77 ]
  %86 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 5
  %87 = load i64, ptr %86, align 8, !tbaa !72
  %88 = add i64 %87, 1
  store i64 %88, ptr %86, align 8, !tbaa !72
  %89 = getelementptr inbounds ptr, ptr %85, i64 %84
  br label %90

90:                                               ; preds = %75, %73, %14, %83, %79, %70, %36
  %91 = phi ptr [ %46, %79 ], [ %89, %83 ], [ %72, %70 ], [ %38, %36 ], [ null, %14 ], [ null, %73 ], [ null, %75 ]
  ret ptr %91
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @htab_expand(ptr nocapture noundef %0) unnamed_addr #2 !prof !138 !PGOFuncName !139 {
  %2 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  %4 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 14
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %6 = load i64, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6
  %8 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 5
  %9 = load i64, ptr %8, align 8, !tbaa !72
  %10 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 6
  %11 = load i64, ptr %10, align 8, !tbaa !73
  %12 = sub i64 %9, %11
  %13 = shl i64 %12, 1
  %14 = icmp ugt i64 %13, %6
  br i1 %14, label %21, label %15, !prof !140

15:                                               ; preds = %1
  %16 = load i32, ptr %4, align 8, !tbaa !79
  %17 = shl i64 %12, 3
  %18 = icmp ult i64 %17, %6
  %19 = icmp ugt i64 %6, 32
  %20 = and i1 %19, %18
  br i1 %20, label %21, label %27, !prof !141

21:                                               ; preds = %15, %1
  %22 = tail call fastcc i32 @higher_prime_index(i64 noundef %13) #11
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [30 x %struct.prime_ent], ptr @prime_tab, i64 0, i64 %23
  %25 = load i32, ptr %24, align 16, !tbaa !75
  %26 = zext i32 %25 to i64
  br label %27

27:                                               ; preds = %15, %21
  %28 = phi i64 [ %26, %21 ], [ %6, %15 ]
  %29 = phi i32 [ %22, %21 ], [ %16, %15 ]
  %30 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 12
  %31 = load ptr, ptr %30, align 8, !tbaa !95
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33, !prof !142

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 11
  %35 = load ptr, ptr %34, align 8, !tbaa !94
  %36 = tail call ptr %31(ptr noundef %35, i64 noundef %28, i64 noundef 8) #12
  br label %41

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !83
  %40 = tail call ptr %39(i64 noundef %28, i64 noundef 8) #12
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi ptr [ %36, %33 ], [ %40, %37 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %71, label %44, !prof !143

44:                                               ; preds = %41
  store ptr %42, ptr %2, align 8, !tbaa !78
  store i64 %28, ptr %5, align 8, !tbaa !64
  store i32 %29, ptr %4, align 8, !tbaa !79
  %45 = load i64, ptr %10, align 8, !tbaa !73
  %46 = load i64, ptr %8, align 8, !tbaa !72
  %47 = sub i64 %46, %45
  store i64 %47, ptr %8, align 8, !tbaa !72
  store i64 0, ptr %10, align 8, !tbaa !73
  br label %48

48:                                               ; preds = %56, %44
  %49 = phi ptr [ %3, %44 ], [ %57, %56 ]
  %50 = load ptr, ptr %49, align 8, !tbaa !92
  %51 = icmp ult ptr %50, inttoptr (i64 2 to ptr)
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %0, align 8, !tbaa !80
  %54 = tail call i32 %53(ptr noundef nonnull %50) #12
  %55 = tail call fastcc ptr @find_empty_slot_for_expand(ptr noundef nonnull %0, i32 noundef %54) #11
  store ptr %50, ptr %55, align 8, !tbaa !92
  br label %56

56:                                               ; preds = %48, %52
  %57 = getelementptr inbounds ptr, ptr %49, i64 1
  %58 = icmp ult ptr %57, %7
  br i1 %58, label %48, label %59, !prof !144, !llvm.loop !145

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 10
  %61 = load ptr, ptr %60, align 8, !tbaa !84
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63, !prof !143

63:                                               ; preds = %59
  tail call void %61(ptr noundef %3) #12
  br label %71

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 13
  %66 = load ptr, ptr %65, align 8, !tbaa !96
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 11
  %70 = load ptr, ptr %69, align 8, !tbaa !94
  tail call void %66(ptr noundef %70, ptr noundef %3) #12
  br label %71

71:                                               ; preds = %63, %68, %64, %41
  %72 = phi i32 [ 0, %41 ], [ 1, %64 ], [ 1, %68 ], [ 1, %63 ]
  ret i32 %72
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @htab_find_slot(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 !prof !146 {
  %4 = load ptr, ptr %0, align 8, !tbaa !80
  %5 = tail call i32 %4(ptr noundef %1) #12
  %6 = tail call ptr @htab_find_slot_with_hash(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %5, i32 noundef %2) #11
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @htab_remove_elt(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !93 {
  %3 = load ptr, ptr %0, align 8, !tbaa !80
  %4 = tail call i32 %3(ptr noundef %1) #12
  tail call void @htab_remove_elt_with_hash(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @htab_remove_elt_with_hash(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 !prof !147 {
  %4 = tail call ptr @htab_find_slot_with_hash(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0) #11
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7, !prof !148

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !149

11:                                               ; preds = %7
  tail call void %9(ptr noundef nonnull %5) #12
  br label %12

12:                                               ; preds = %11, %7
  store ptr inttoptr (i64 1 to ptr), ptr %4, align 8, !tbaa !92
  %13 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 6
  %14 = load i64, ptr %13, align 8, !tbaa !73
  %15 = add i64 %14, 1
  store i64 %15, ptr %13, align 8, !tbaa !73
  br label %16

16:                                               ; preds = %3, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @htab_clear_slot(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !150 {
  %3 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !78
  %5 = icmp ugt ptr %4, %1
  br i1 %5, label %14, label %6, !prof !151

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %8 = load i64, ptr %7, align 8, !tbaa !64
  %9 = getelementptr inbounds ptr, ptr %4, i64 %8
  %10 = icmp ugt ptr %9, %1
  br i1 %10, label %11, label %14, !prof !152

11:                                               ; preds = %6
  %12 = load ptr, ptr %1, align 8, !tbaa !92
  %13 = icmp ult ptr %12, inttoptr (i64 2 to ptr)
  br i1 %13, label %14, label %15, !prof !153

14:                                               ; preds = %11, %6, %2
  tail call void @abort() #14
  unreachable

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !82
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19, !prof !154

19:                                               ; preds = %15
  tail call void %17(ptr noundef nonnull %12) #12
  br label %20

20:                                               ; preds = %19, %15
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8, !tbaa !92
  %21 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 6
  %22 = load i64, ptr %21, align 8, !tbaa !73
  %23 = add i64 %22, 1
  store i64 %23, ptr %21, align 8, !tbaa !73
  ret void
}

; Function Attrs: noreturn optsize
declare void @abort() local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @htab_traverse_noresize(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #2 !prof !155 {
  %4 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %7 = load i64, ptr %6, align 8, !tbaa !64
  %8 = getelementptr inbounds ptr, ptr %5, i64 %7
  br label %9

9:                                                ; preds = %22, %3
  %10 = phi ptr [ %5, %3 ], [ %23, %22 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !92
  %12 = icmp ult ptr %11, inttoptr (i64 2 to ptr)
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %1(ptr noundef nonnull %10, ptr noundef %2) #12
  %15 = icmp ne i32 %14, 0
  %16 = getelementptr inbounds ptr, ptr %10, i64 1
  %17 = icmp ult ptr %16, %8
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %22, label %24, !prof !156

19:                                               ; preds = %9
  %20 = getelementptr inbounds ptr, ptr %10, i64 1
  %21 = icmp ult ptr %20, %8
  br i1 %21, label %22, label %24, !prof !157

22:                                               ; preds = %19, %13
  %23 = phi ptr [ %20, %19 ], [ %16, %13 ]
  br label %9, !llvm.loop !158

24:                                               ; preds = %13, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @htab_traverse(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #2 !prof !159 {
  %4 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 5
  %7 = load i64, ptr %6, align 8, !tbaa !72
  %8 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 6
  %9 = load i64, ptr %8, align 8, !tbaa !73
  %10 = sub i64 %7, %9
  %11 = shl i64 %10, 3
  %12 = icmp ult i64 %11, %5
  br i1 %12, label %13, label %17, !prof !160

13:                                               ; preds = %3
  %14 = icmp ugt i64 %5, 32
  br i1 %14, label %15, label %17, !prof !161

15:                                               ; preds = %13
  %16 = tail call fastcc i32 @htab_expand(ptr noundef nonnull %0) #11, !range !128
  br label %17

17:                                               ; preds = %15, %13, %3
  tail call void @htab_traverse_noresize(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local double @htab_collisions(ptr nocapture noundef readonly %0) local_unnamed_addr #1 !prof !93 {
  %2 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !113
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !116
  %8 = uitofp i32 %7 to double
  %9 = uitofp i32 %3 to double
  %10 = fdiv double %8, %9
  br label %11

11:                                               ; preds = %1, %5
  %12 = phi double [ %10, %5 ], [ 0.000000e+00, %1 ]
  ret double %12
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @htab_hash_string(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !162 {
  %2 = load i8, ptr %0, align 1, !tbaa !163
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4, !prof !164

4:                                                ; preds = %1, %4
  %5 = phi i8 [ %13, %4 ], [ %2, %1 ]
  %6 = phi ptr [ %9, %4 ], [ %0, %1 ]
  %7 = phi i32 [ %12, %4 ], [ 0, %1 ]
  %8 = zext i8 %5 to i32
  %9 = getelementptr inbounds i8, ptr %6, i64 1
  %10 = mul i32 %7, 67
  %11 = add i32 %10, -113
  %12 = add i32 %11, %8
  %13 = load i8, ptr %9, align 1, !tbaa !163
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %4, !prof !165, !llvm.loop !166

15:                                               ; preds = %4, %1
  %16 = phi i32 [ 0, %1 ], [ %12, %4 ]
  ret i32 %16
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @iterative_hash(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !167 {
  %4 = trunc i64 %1 to i32
  %5 = ptrtoint ptr %0 to i64
  %6 = and i64 %5, 3
  %7 = icmp eq i64 %6, 0
  %8 = icmp ugt i32 %4, 11
  br i1 %7, label %10, label %9, !prof !168

9:                                                ; preds = %3
  br i1 %8, label %64, label %117

10:                                               ; preds = %3
  br i1 %8, label %11, label %117, !prof !169

11:                                               ; preds = %10, %11
  %12 = phi i32 [ %62, %11 ], [ %4, %10 ]
  %13 = phi i32 [ %60, %11 ], [ %2, %10 ]
  %14 = phi i32 [ %56, %11 ], [ -1640531527, %10 ]
  %15 = phi i32 [ %52, %11 ], [ -1640531527, %10 ]
  %16 = phi ptr [ %61, %11 ], [ %0, %10 ]
  %17 = load i32, ptr %16, align 4, !tbaa !170
  %18 = getelementptr inbounds i8, ptr %16, i64 4
  %19 = load i32, ptr %18, align 4, !tbaa !170
  %20 = add i32 %19, %14
  %21 = getelementptr inbounds i8, ptr %16, i64 8
  %22 = load i32, ptr %21, align 4, !tbaa !170
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
  br i1 %63, label %11, label %117, !prof !171, !llvm.loop !172

64:                                               ; preds = %9, %64
  %65 = phi i32 [ %115, %64 ], [ %4, %9 ]
  %66 = phi i32 [ %113, %64 ], [ %2, %9 ]
  %67 = phi i32 [ %109, %64 ], [ -1640531527, %9 ]
  %68 = phi i32 [ %105, %64 ], [ -1640531527, %9 ]
  %69 = phi ptr [ %114, %64 ], [ %0, %9 ]
  %70 = load i32, ptr %69, align 1
  %71 = getelementptr inbounds i8, ptr %69, i64 4
  %72 = load i32, ptr %71, align 1
  %73 = add i32 %72, %67
  %74 = getelementptr inbounds i8, ptr %69, i64 8
  %75 = load i32, ptr %74, align 1
  %76 = add i32 %75, %66
  %77 = add i32 %70, %68
  %78 = add i32 %73, %76
  %79 = sub i32 %77, %78
  %80 = lshr i32 %76, 13
  %81 = xor i32 %79, %80
  %82 = add i32 %76, %81
  %83 = sub i32 %73, %82
  %84 = shl i32 %81, 8
  %85 = xor i32 %83, %84
  %86 = add i32 %81, %85
  %87 = sub i32 %76, %86
  %88 = lshr i32 %85, 13
  %89 = xor i32 %87, %88
  %90 = add i32 %85, %89
  %91 = sub i32 %81, %90
  %92 = lshr i32 %89, 12
  %93 = xor i32 %91, %92
  %94 = add i32 %89, %93
  %95 = sub i32 %85, %94
  %96 = shl i32 %93, 16
  %97 = xor i32 %95, %96
  %98 = add i32 %93, %97
  %99 = sub i32 %89, %98
  %100 = lshr i32 %97, 5
  %101 = xor i32 %99, %100
  %102 = add i32 %97, %101
  %103 = sub i32 %93, %102
  %104 = lshr i32 %101, 3
  %105 = xor i32 %103, %104
  %106 = add i32 %101, %105
  %107 = sub i32 %97, %106
  %108 = shl i32 %105, 10
  %109 = xor i32 %107, %108
  %110 = add i32 %105, %109
  %111 = sub i32 %101, %110
  %112 = lshr i32 %109, 15
  %113 = xor i32 %111, %112
  %114 = getelementptr inbounds i8, ptr %69, i64 12
  %115 = add i32 %65, -12
  %116 = icmp ugt i32 %115, 11
  br i1 %116, label %64, label %117, !llvm.loop !173

117:                                              ; preds = %64, %11, %9, %10
  %118 = phi ptr [ %0, %10 ], [ %0, %9 ], [ %61, %11 ], [ %114, %64 ]
  %119 = phi i32 [ -1640531527, %10 ], [ -1640531527, %9 ], [ %52, %11 ], [ %105, %64 ]
  %120 = phi i32 [ -1640531527, %10 ], [ -1640531527, %9 ], [ %56, %11 ], [ %109, %64 ]
  %121 = phi i32 [ %2, %10 ], [ %2, %9 ], [ %60, %11 ], [ %113, %64 ]
  %122 = phi i32 [ %4, %10 ], [ %4, %9 ], [ %62, %11 ], [ %115, %64 ]
  %123 = add i32 %121, %4
  switch i32 %122, label %207 [
    i32 11, label %124
    i32 10, label %130
    i32 9, label %137
    i32 8, label %144
    i32 7, label %151
    i32 6, label %159
    i32 5, label %167
    i32 4, label %174
    i32 3, label %182
    i32 2, label %191
    i32 1, label %200
  ], !prof !174

124:                                              ; preds = %117
  %125 = getelementptr inbounds i8, ptr %118, i64 10
  %126 = load i8, ptr %125, align 1, !tbaa !163
  %127 = zext i8 %126 to i32
  %128 = shl nuw i32 %127, 24
  %129 = add i32 %128, %123
  br label %130

130:                                              ; preds = %117, %124
  %131 = phi i32 [ %123, %117 ], [ %129, %124 ]
  %132 = getelementptr inbounds i8, ptr %118, i64 9
  %133 = load i8, ptr %132, align 1, !tbaa !163
  %134 = zext i8 %133 to i32
  %135 = shl nuw nsw i32 %134, 16
  %136 = add i32 %135, %131
  br label %137

137:                                              ; preds = %117, %130
  %138 = phi i32 [ %123, %117 ], [ %136, %130 ]
  %139 = getelementptr inbounds i8, ptr %118, i64 8
  %140 = load i8, ptr %139, align 1, !tbaa !163
  %141 = zext i8 %140 to i32
  %142 = shl nuw nsw i32 %141, 8
  %143 = add i32 %142, %138
  br label %144

144:                                              ; preds = %117, %137
  %145 = phi i32 [ %123, %117 ], [ %143, %137 ]
  %146 = getelementptr inbounds i8, ptr %118, i64 7
  %147 = load i8, ptr %146, align 1, !tbaa !163
  %148 = zext i8 %147 to i32
  %149 = shl nuw i32 %148, 24
  %150 = add i32 %149, %120
  br label %151

151:                                              ; preds = %117, %144
  %152 = phi i32 [ %120, %117 ], [ %150, %144 ]
  %153 = phi i32 [ %123, %117 ], [ %145, %144 ]
  %154 = getelementptr inbounds i8, ptr %118, i64 6
  %155 = load i8, ptr %154, align 1, !tbaa !163
  %156 = zext i8 %155 to i32
  %157 = shl nuw nsw i32 %156, 16
  %158 = add i32 %157, %152
  br label %159

159:                                              ; preds = %117, %151
  %160 = phi i32 [ %120, %117 ], [ %158, %151 ]
  %161 = phi i32 [ %123, %117 ], [ %153, %151 ]
  %162 = getelementptr inbounds i8, ptr %118, i64 5
  %163 = load i8, ptr %162, align 1, !tbaa !163
  %164 = zext i8 %163 to i32
  %165 = shl nuw nsw i32 %164, 8
  %166 = add i32 %165, %160
  br label %167

167:                                              ; preds = %117, %159
  %168 = phi i32 [ %120, %117 ], [ %166, %159 ]
  %169 = phi i32 [ %123, %117 ], [ %161, %159 ]
  %170 = getelementptr inbounds i8, ptr %118, i64 4
  %171 = load i8, ptr %170, align 1, !tbaa !163
  %172 = zext i8 %171 to i32
  %173 = add i32 %168, %172
  br label %174

174:                                              ; preds = %117, %167
  %175 = phi i32 [ %120, %117 ], [ %173, %167 ]
  %176 = phi i32 [ %123, %117 ], [ %169, %167 ]
  %177 = getelementptr inbounds i8, ptr %118, i64 3
  %178 = load i8, ptr %177, align 1, !tbaa !163
  %179 = zext i8 %178 to i32
  %180 = shl nuw i32 %179, 24
  %181 = add i32 %180, %119
  br label %182

182:                                              ; preds = %117, %174
  %183 = phi i32 [ %119, %117 ], [ %181, %174 ]
  %184 = phi i32 [ %120, %117 ], [ %175, %174 ]
  %185 = phi i32 [ %123, %117 ], [ %176, %174 ]
  %186 = getelementptr inbounds i8, ptr %118, i64 2
  %187 = load i8, ptr %186, align 1, !tbaa !163
  %188 = zext i8 %187 to i32
  %189 = shl nuw nsw i32 %188, 16
  %190 = add i32 %189, %183
  br label %191

191:                                              ; preds = %117, %182
  %192 = phi i32 [ %119, %117 ], [ %190, %182 ]
  %193 = phi i32 [ %120, %117 ], [ %184, %182 ]
  %194 = phi i32 [ %123, %117 ], [ %185, %182 ]
  %195 = getelementptr inbounds i8, ptr %118, i64 1
  %196 = load i8, ptr %195, align 1, !tbaa !163
  %197 = zext i8 %196 to i32
  %198 = shl nuw nsw i32 %197, 8
  %199 = add i32 %198, %192
  br label %200

200:                                              ; preds = %117, %191
  %201 = phi i32 [ %119, %117 ], [ %199, %191 ]
  %202 = phi i32 [ %120, %117 ], [ %193, %191 ]
  %203 = phi i32 [ %123, %117 ], [ %194, %191 ]
  %204 = load i8, ptr %118, align 1, !tbaa !163
  %205 = zext i8 %204 to i32
  %206 = add i32 %201, %205
  br label %207

207:                                              ; preds = %200, %117
  %208 = phi i32 [ %119, %117 ], [ %206, %200 ]
  %209 = phi i32 [ %120, %117 ], [ %202, %200 ]
  %210 = phi i32 [ %123, %117 ], [ %203, %200 ]
  %211 = add i32 %209, %210
  %212 = sub i32 %208, %211
  %213 = lshr i32 %210, 13
  %214 = xor i32 %212, %213
  %215 = add i32 %210, %214
  %216 = sub i32 %209, %215
  %217 = shl i32 %214, 8
  %218 = xor i32 %216, %217
  %219 = add i32 %214, %218
  %220 = sub i32 %210, %219
  %221 = lshr i32 %218, 13
  %222 = xor i32 %220, %221
  %223 = add i32 %218, %222
  %224 = sub i32 %214, %223
  %225 = lshr i32 %222, 12
  %226 = xor i32 %224, %225
  %227 = add i32 %222, %226
  %228 = sub i32 %218, %227
  %229 = shl i32 %226, 16
  %230 = xor i32 %228, %229
  %231 = add i32 %226, %230
  %232 = sub i32 %222, %231
  %233 = lshr i32 %230, 5
  %234 = xor i32 %232, %233
  %235 = add i32 %230, %234
  %236 = sub i32 %226, %235
  %237 = lshr i32 %234, 3
  %238 = xor i32 %236, %237
  %239 = add i32 %234, %238
  %240 = sub i32 %230, %239
  %241 = shl i32 %238, 10
  %242 = xor i32 %240, %241
  %243 = add i32 %238, %242
  %244 = sub i32 %234, %243
  %245 = lshr i32 %242, 15
  %246 = xor i32 %244, %245
  ret i32 %246
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @htab_mod_1(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !175 !PGOFuncName !176 {
  %3 = urem i32 %0, %1
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_empty_slot_for_expand(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !177 !PGOFuncName !178 {
  %3 = tail call fastcc i32 @htab_mod(i32 noundef %1, ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  %8 = zext i32 %3 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = ptrtoint ptr %10 to i64
  switch i64 %11, label %13 [
    i64 0, label %30
    i64 1, label %12
  ], !prof !179

12:                                               ; preds = %2
  tail call void @abort() #14
  unreachable

13:                                               ; preds = %2
  %14 = tail call fastcc i32 @htab_mod_m2(i32 noundef %1, ptr noundef nonnull %0) #11
  %15 = trunc i64 %5 to i32
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi i32 [ %3, %13 ], [ %22, %16 ]
  %18 = add i32 %17, %14
  %19 = zext i32 %18 to i64
  %20 = icmp ugt i64 %5, %19
  %21 = select i1 %20, i32 0, i32 %15, !prof !180
  %22 = sub i32 %18, %21
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %7, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !92
  %26 = ptrtoint ptr %25 to i64
  switch i64 %26, label %16 [
    i64 0, label %28
    i64 1, label %27
  ], !prof !181

27:                                               ; preds = %16
  tail call void @abort() #14
  unreachable

28:                                               ; preds = %16
  %29 = getelementptr inbounds ptr, ptr %7, i64 %23
  br label %30

30:                                               ; preds = %28, %2
  %31 = phi ptr [ %9, %2 ], [ %29, %28 ]
  ret ptr %31
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }
attributes #13 = { cold optsize }
attributes #14 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!58}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!35 = !{ptr @htab_create_alloc, ptr @higher_prime_index, i64 781646}
!36 = !{ptr @higher_prime_index, ptr @fprintf, i64 1}
!37 = !{ptr @higher_prime_index, ptr @abort, i64 1}
!38 = !{ptr @htab_create, ptr @htab_create_alloc, i64 780829}
!39 = !{ptr @htab_empty, ptr @higher_prime_index, i64 1}
!40 = !{ptr @htab_find_with_hash, ptr @htab_mod, i64 12499685}
!41 = !{ptr @htab_find_with_hash, ptr @htab_mod_m2, i64 1650439}
!42 = !{ptr @htab_mod, ptr @htab_mod_1, i64 35022292}
!43 = !{ptr @htab_mod_m2, ptr @htab_mod_1, i64 6676267}
!44 = !{ptr @htab_find, ptr @htab_find_with_hash, i64 5974576}
!45 = !{ptr @htab_find_slot_with_hash, ptr @htab_expand, i64 23464}
!46 = !{ptr @htab_find_slot_with_hash, ptr @htab_mod, i64 20160611}
!47 = !{ptr @htab_find_slot_with_hash, ptr @htab_mod_m2, i64 4648126}
!48 = !{ptr @htab_expand, ptr @higher_prime_index, i64 8738}
!49 = !{ptr @htab_expand, ptr @find_empty_slot_for_expand, i64 2165103}
!50 = !{ptr @htab_find_slot, ptr @htab_find_slot_with_hash, i64 7284221}
!51 = !{ptr @htab_remove_elt_with_hash, ptr @htab_find_slot_with_hash, i64 473}
!52 = !{ptr @htab_clear_slot, ptr @abort, i64 4}
!53 = !{ptr @htab_traverse, ptr @htab_expand, i64 25}
!54 = !{ptr @htab_traverse, ptr @htab_traverse_noresize, i64 106365}
!55 = !{ptr @find_empty_slot_for_expand, ptr @htab_mod, i64 2361995}
!56 = !{ptr @find_empty_slot_for_expand, ptr @abort, i64 2}
!57 = !{ptr @find_empty_slot_for_expand, ptr @htab_mod_m2, i64 377703}
!58 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!59 = !{!"function_entry_count", i64 10515156}
!60 = !{!"hashtab.c:hash_pointer"}
!61 = !{!"function_entry_count", i64 1409334}
!62 = !{!"hashtab.c:eq_pointer"}
!63 = !{!"function_entry_count", i64 1861}
!64 = !{!65, !69, i64 32}
!65 = !{!"htab", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !69, i64 32, !69, i64 40, !69, i64 48, !70, i64 56, !70, i64 60, !66, i64 64, !66, i64 72, !66, i64 80, !66, i64 88, !66, i64 96, !70, i64 104}
!66 = !{!"any pointer", !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C/C++ TBAA"}
!69 = !{!"long", !67, i64 0}
!70 = !{!"int", !67, i64 0}
!71 = !{!"function_entry_count", i64 1278}
!72 = !{!65, !69, i64 40}
!73 = !{!65, !69, i64 48}
!74 = !{!"function_entry_count", i64 781646}
!75 = !{!76, !70, i64 0}
!76 = !{!"prime_ent", !70, i64 0, !70, i64 4, !70, i64 8, !70, i64 12}
!77 = !{!"branch_weights", i32 1, i32 781647}
!78 = !{!65, !66, i64 24}
!79 = !{!65, !70, i64 104}
!80 = !{!65, !66, i64 0}
!81 = !{!65, !66, i64 8}
!82 = !{!65, !66, i64 16}
!83 = !{!65, !66, i64 64}
!84 = !{!65, !66, i64 72}
!85 = !{!"function_entry_count", i64 790384}
!86 = !{!"hashtab.c:higher_prime_index"}
!87 = !{!"branch_weights", i32 761305, i32 3190617}
!88 = !{!"branch_weights", i32 790385, i32 3161536}
!89 = distinct !{!89, !90}
!90 = !{!"llvm.loop.mustprogress"}
!91 = !{!"branch_weights", i32 1, i32 790385}
!92 = !{!66, !66, i64 0}
!93 = !{!"function_entry_count", i64 0}
!94 = !{!65, !66, i64 80}
!95 = !{!65, !66, i64 88}
!96 = !{!65, !66, i64 96}
!97 = !{!"function_entry_count", i64 780829}
!98 = !{!"function_entry_count", i64 781346}
!99 = !{!"branch_weights", i32 149907, i32 631441}
!100 = !{!"branch_weights", i32 631440, i32 1}
!101 = !{!"branch_weights", i32 -1136259333, i32 127296719}
!102 = !{!"branch_weights", i32 25318237, i32 631440}
!103 = distinct !{!103, !90}
!104 = !{!"branch_weights", i32 1, i32 781347}
!105 = !{!"function_entry_count", i64 693279}
!106 = !{!"branch_weights", i32 693231, i32 50}
!107 = !{!"branch_weights", i32 199, i32 1}
!108 = !{!"branch_weights", i32 3041, i32 1}
!109 = !{!"branch_weights", i32 5881, i32 199}
!110 = distinct !{!110, !90}
!111 = !{!"branch_weights", i32 1, i32 693280}
!112 = !{!"function_entry_count", i64 12499685}
!113 = !{!65, !70, i64 56}
!114 = !{!"branch_weights", i32 674413023, i32 -1382877701, i32 19511}
!115 = !{!"branch_weights", i32 1650373, i32 700082}
!116 = !{!65, !70, i64 60}
!117 = !{!"branch_weights", i32 1088154, i32 1131138}
!118 = !{!"branch_weights", i32 1211910294, i32 -2092429629, i32 106161}
!119 = !{!"branch_weights", i32 568784, i32 218900}
!120 = !{!"function_entry_count", i64 35022292}
!121 = !{!"hashtab.c:htab_mod"}
!122 = !{!"function_entry_count", i64 6676267}
!123 = !{!"hashtab.c:htab_mod_m2"}
!124 = !{!"function_entry_count", i64 5974576}
!125 = !{!"function_entry_count", i64 20160612}
!126 = !{!"branch_weights", i32 14665255, i32 5495359}
!127 = !{!"branch_weights", i32 14641792, i32 23464}
!128 = !{i32 0, i32 2}
!129 = !{!"branch_weights", i32 1, i32 23464}
!130 = !{!"branch_weights", i32 -1555599395, i32 1323178182, i32 225750885}
!131 = !{!"branch_weights", i32 3586802, i32 9291818}
!132 = !{!"branch_weights", i32 4152121, i32 6385679}
!133 = !{!"branch_weights", i32 -1377081198, i32 1158978680, i32 1216964089}
!134 = !{!"branch_weights", i32 209680, i32 2212788}
!135 = !{!"branch_weights", i32 3467208, i32 2341085}
!136 = !{!"branch_weights", i32 2731819, i32 5795894}
!137 = !{!"branch_weights", i32 1307890543, i32 839593105}
!138 = !{!"function_entry_count", i64 23488}
!139 = !{!"hashtab.c:htab_expand"}
!140 = !{!"branch_weights", i32 6581, i32 16909}
!141 = !{!"branch_weights", i32 4799457, i32 32808383}
!142 = !{!"branch_weights", i32 23489, i32 1}
!143 = !{!"branch_weights", i32 1, i32 23489}
!144 = !{!"branch_weights", i32 4307085, i32 23489}
!145 = distinct !{!145, !90}
!146 = !{!"function_entry_count", i64 7284221}
!147 = !{!"function_entry_count", i64 473}
!148 = !{!"branch_weights", i32 1, i32 474}
!149 = !{!"branch_weights", i32 474, i32 1}
!150 = !{!"function_entry_count", i64 1380893}
!151 = !{!"branch_weights", i32 1, i32 1380894}
!152 = !{!"branch_weights", i32 1380894, i32 1}
!153 = !{!"branch_weights", i32 5394, i32 -570615267}
!154 = !{!"branch_weights", i32 14573, i32 1366322}
!155 = !{!"function_entry_count", i64 117425}
!156 = !{!"branch_weights", i32 1686161436, i32 -1631242269}
!157 = !{!"branch_weights", i32 1134575766, i32 1012907882}
!158 = distinct !{!158, !90}
!159 = !{!"function_entry_count", i64 106365}
!160 = !{!"branch_weights", i32 28, i32 106339}
!161 = !{!"branch_weights", i32 26, i32 3}
!162 = !{!"function_entry_count", i64 22}
!163 = !{!67, !67, i64 0}
!164 = !{!"branch_weights", i32 1, i32 183}
!165 = !{!"branch_weights", i32 183, i32 1985}
!166 = distinct !{!166, !90}
!167 = !{!"function_entry_count", i64 2218003}
!168 = !{!"branch_weights", i32 2218004, i32 1}
!169 = !{!"branch_weights", i32 1, i32 2218003}
!170 = !{!70, !70, i64 0}
!171 = !{!"branch_weights", i32 0, i32 1}
!172 = distinct !{!172, !90}
!173 = distinct !{!173, !90}
!174 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2218004, i32 1, i32 1, i32 1}
!175 = !{!"function_entry_count", i64 41698559}
!176 = !{!"hashtab.c:htab_mod_1"}
!177 = !{!"function_entry_count", i64 2361995}
!178 = !{!"hashtab.c:find_empty_slot_for_expand"}
!179 = !{!"branch_weights", i32 557266842, i32 -1367321251, i32 1475}
!180 = !{!"branch_weights", i32 277195, i32 256541}
!181 = !{!"branch_weights", i32 1521624064, i32 -611574282, i32 9752}
