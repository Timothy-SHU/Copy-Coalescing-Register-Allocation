; ModuleID = 'database.c'
source_filename = "database.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.DICTt = type { i32, ptr }
%struct.DICT_ENTRYt = type { ptr, ptr }
%struct.DATABASEt = type { i32, ptr, [256 x i8], i32, i32, [10 x [256 x i8]], i8, ptr, i32, [1000 x i8], i32, [256 x i8], i32 }
%struct.ENTRYt = type { i64, [256 x i8], i32, i32 }

@GiDBLastError = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"!%s %s %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Unknown modifier\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Unknown entry type\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Tried to parse:%s: as a header\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"t9423848\00", align 16
@.str.11 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Could not open scratch file\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"The DATABASE has the wrong access mode.\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"DATABASE is read-only!\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"Illegal read of sequential file after a write\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"When PUTing into a DATABASE there must be a MODIFIER!\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"When PUTing into a DATABASE there must be a TYPE!\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"Illegal table type!\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Too many prefixes on stack\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"Too many POPs from prefix stack\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"An error occured in line: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"Message: %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [48 x i8] c"WARNING: Nonunique entry in database: %s found\0A\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"Unknown value type: %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"%lG\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c" 0.0\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c" %lf\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c" %lE\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c" %c\00", align 1
@str.40 = private unnamed_addr constant [27 x i8] c"Illegal database open mode\00", align 1
@switch.table.AddColumnType = private unnamed_addr constant [3 x i32] [i32 7630441, i32 7103076, i32 7500915], align 4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @sDBRemoveSpaces(ptr nocapture noundef readonly %0, ptr noundef returned writeonly %1) local_unnamed_addr #0 !prof !34 {
  br label %3

3:                                                ; preds = %9, %2
  %4 = phi ptr [ %0, %2 ], [ %11, %9 ]
  %5 = phi ptr [ %1, %2 ], [ %10, %9 ]
  %6 = load i8, ptr %4, align 1, !tbaa !35
  switch i8 %6, label %7 [
    i8 0, label %12
    i8 32, label %9
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 %6, ptr %5, align 1, !tbaa !35
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ %5, %3 ]
  %11 = getelementptr inbounds i8, ptr %4, i64 1
  br label %3, !llvm.loop !38

12:                                               ; preds = %3
  store i8 0, ptr %5, align 1, !tbaa !35
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @sDBRemoveControlAndPadding(ptr nocapture noundef readonly %0, ptr noundef returned %1) local_unnamed_addr #0 !prof !34 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %9, %3 ]
  %5 = load i8, ptr %4, align 1, !tbaa !35
  %6 = icmp ne i8 %5, 0
  %7 = icmp slt i8 %5, 33
  %8 = and i1 %6, %7
  %9 = getelementptr inbounds i8, ptr %4, i64 1
  br i1 %8, label %3, label %10, !llvm.loop !40

10:                                               ; preds = %3
  %11 = icmp eq i8 %5, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %10, %19
  %13 = phi i8 [ %22, %19 ], [ %5, %10 ]
  %14 = phi ptr [ %20, %19 ], [ %1, %10 ]
  %15 = phi ptr [ %21, %19 ], [ %4, %10 ]
  %16 = icmp sgt i8 %13, 31
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  store i8 %13, ptr %14, align 1, !tbaa !35
  %18 = getelementptr inbounds i8, ptr %14, i64 1
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ %18, %17 ], [ %14, %12 ]
  %21 = getelementptr inbounds i8, ptr %15, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !35
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %12, !llvm.loop !41

24:                                               ; preds = %19
  store i8 0, ptr %20, align 1, !tbaa !35
  %25 = load i8, ptr %1, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %24, %27
  %28 = phi ptr [ %29, %27 ], [ %20, %24 ]
  %29 = getelementptr inbounds i8, ptr %28, i64 -1
  %30 = load i8, ptr %29, align 1, !tbaa !35
  %31 = icmp eq i8 %30, 32
  br i1 %31, label %27, label %32, !llvm.loop !42

32:                                               ; preds = %27, %10
  %33 = phi ptr [ %1, %10 ], [ %28, %27 ]
  store i8 0, ptr %33, align 1, !tbaa !35
  br label %34

34:                                               ; preds = %32, %24
  ret ptr %1
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @sDBRemoveLeadingSpaces(ptr noundef returned %0) local_unnamed_addr #3 !prof !34 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ]
  %4 = load i8, ptr %3, align 1, !tbaa !35
  %5 = icmp eq i8 %4, 32
  %6 = getelementptr inbounds i8, ptr %3, i64 1
  br i1 %5, label %2, label %7, !llvm.loop !43

7:                                                ; preds = %2
  %8 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %3) #24
  ret ptr %0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sDBRemoveFirstString(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !34 {
  br label %3

3:                                                ; preds = %6, %2
  %4 = phi ptr [ %0, %2 ], [ %7, %6 ]
  %5 = load i8, ptr %4, align 1, !tbaa !35
  switch i8 %5, label %6 [
    i8 0, label %8
    i8 32, label %10
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, ptr %4, i64 1
  br label %3, !llvm.loop !44

8:                                                ; preds = %3
  %9 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %0) #24
  store i8 0, ptr %0, align 1, !tbaa !35
  br label %14

10:                                               ; preds = %3
  store i8 0, ptr %4, align 1, !tbaa !35
  %11 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %0) #24
  %12 = getelementptr inbounds i8, ptr %4, i64 1
  %13 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %12) #24
  br label %14

14:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @dDictCreate() local_unnamed_addr #5 !prof !34 {
  %1 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25
  store i32 0, ptr %1, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.DICTt, ptr %1, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !49
  ret ptr %1
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DictDestroy(ptr nocapture noundef %0) local_unnamed_addr #7 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !50
  %3 = getelementptr inbounds %struct.DICTt, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = load i32, ptr %2, align 8, !tbaa !45
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %12, %7 ], [ %4, %1 ]
  %9 = phi i32 [ %11, %7 ], [ 0, %1 ]
  %10 = load ptr, ptr %8, align 8, !tbaa !51
  tail call void @free(ptr noundef %10) #24
  %11 = add nuw nsw i32 %9, 1
  %12 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %8, i64 1
  %13 = load ptr, ptr %0, align 8, !tbaa !50
  %14 = load i32, ptr %13, align 8, !tbaa !45
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %7, label %16, !llvm.loop !53

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.DICTt, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  br label %19

19:                                               ; preds = %16, %1
  %20 = phi ptr [ %4, %1 ], [ %18, %16 ]
  tail call void @free(ptr noundef %20) #24
  %21 = load ptr, ptr %0, align 8, !tbaa !50
  tail call void @free(ptr noundef %21) #24
  store ptr null, ptr %0, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @DictAdd(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.DICTt, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25
  %9 = load i32, ptr %0, align 8, !tbaa !45
  br label %19

10:                                               ; preds = %3
  %11 = load i32, ptr %0, align 8, !tbaa !45
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 4
  %15 = tail call ptr @realloc(ptr noundef nonnull %5, i64 noundef %14) #26
  %16 = load i32, ptr %0, align 8, !tbaa !45
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %15, i64 %17
  br label %19

19:                                               ; preds = %10, %7
  %20 = phi i32 [ %9, %7 ], [ %16, %10 ]
  %21 = phi ptr [ %8, %7 ], [ %15, %10 ]
  %22 = phi ptr [ %8, %7 ], [ %18, %10 ]
  store ptr %21, ptr %4, align 8
  %23 = add nsw i32 %20, 1
  store i32 %23, ptr %0, align 8, !tbaa !45
  %24 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %25 = add i64 %24, 1
  %26 = tail call noalias ptr @malloc(i64 noundef %25) #25
  store ptr %26, ptr %22, align 8, !tbaa !51
  %27 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(1) %1) #24
  %28 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %22, i64 0, i32 1
  store ptr %2, ptr %28, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @vPDictFind(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 !prof !34 {
  %3 = getelementptr inbounds %struct.DICTt, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 8, !tbaa !45
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %6, %18
  %10 = phi ptr [ %20, %18 ], [ %4, %6 ]
  %11 = phi i32 [ %19, %18 ], [ 0, %6 ]
  %12 = load ptr, ptr %10, align 8, !tbaa !51
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #27
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %10, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  br label %22

18:                                               ; preds = %9
  %19 = add nuw nsw i32 %11, 1
  %20 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %10, i64 1
  %21 = icmp eq i32 %19, %7
  br i1 %21, label %22, label %9, !llvm.loop !55

22:                                               ; preds = %18, %6, %2, %15
  %23 = phi ptr [ %17, %15 ], [ null, %2 ], [ null, %6 ], [ null, %18 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vPDictDelete(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 !prof !34 {
  %3 = getelementptr inbounds %struct.DICTt, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 8, !tbaa !45
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %6, %15
  %10 = phi ptr [ %17, %15 ], [ %4, %6 ]
  %11 = phi i32 [ %16, %15 ], [ 0, %6 ]
  %12 = load ptr, ptr %10, align 8, !tbaa !51
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #27
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = add nuw nsw i32 %11, 1
  %17 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %10, i64 1
  %18 = icmp eq i32 %16, %7
  br i1 %18, label %38, label %9, !llvm.loop !56

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %10, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = add nsw i32 %7, -1
  %23 = icmp slt i32 %11, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %27, %24 ], [ %10, %19 ]
  %26 = phi i32 [ %28, %24 ], [ %11, %19 ]
  %27 = getelementptr %struct.DICT_ENTRYt, ptr %25, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(16) %27, i64 16, i1 false), !tbaa.struct !57
  %28 = add nuw nsw i32 %26, 1
  %29 = load i32, ptr %0, align 8, !tbaa !45
  %30 = add nsw i32 %29, -1
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %24, label %32, !llvm.loop !58

32:                                               ; preds = %24
  %33 = load ptr, ptr %3, align 8, !tbaa !49
  store i32 %30, ptr %0, align 8, !tbaa !45
  %34 = sext i32 %30 to i64
  %35 = shl nsw i64 %34, 4
  %36 = tail call ptr @realloc(ptr noundef %33, i64 noundef %35) #26
  br label %38

37:                                               ; preds = %19
  tail call void @free(ptr noundef %4) #24
  store ptr null, ptr %3, align 8, !tbaa !49
  br label %38

38:                                               ; preds = %15, %6, %32, %37, %2
  %39 = phi ptr [ null, %2 ], [ %21, %37 ], [ %21, %32 ], [ null, %6 ], [ null, %15 ]
  ret ptr %39
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ziDictKeyCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !51
  %4 = load ptr, ptr %1, align 8, !tbaa !51
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %4) #27
  ret i32 %5
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i32 @dlDictLoop(ptr nocapture noundef readonly %0) local_unnamed_addr #14 !prof !34 {
  %2 = getelementptr inbounds %struct.DICTt, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = load i32, ptr %0, align 8, !tbaa !45
  %5 = sext i32 %4 to i64
  tail call void @qsort(ptr noundef %3, i64 noundef %5, i64 noundef 16, ptr noundef nonnull @ziDictKeyCompare) #24
  ret i32 0
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @vPDictNext(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #16 !prof !34 {
  %4 = load i32, ptr %1, align 4, !tbaa !59
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %1, align 4, !tbaa !59
  %6 = load i32, ptr %0, align 8, !tbaa !45
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.DICTt, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = sext i32 %4 to i64
  %12 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  store ptr %13, ptr %2, align 8, !tbaa !50
  %14 = load ptr, ptr %9, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %14, i64 %11, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  br label %17

17:                                               ; preds = %3, %8
  %18 = phi ptr [ %16, %8 ], [ null, %3 ]
  ret ptr %18
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef signext i8 @zbDBParseSimpleHeader(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #14 !prof !34 {
  %5 = alloca [1000 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #28
  %8 = load i8, ptr %1, align 1, !tbaa !35
  switch i8 %8, label %33 [
    i8 0, label %35
    i8 33, label %9
  ]

9:                                                ; preds = %4
  %10 = call ptr @sDBRemoveControlAndPadding(ptr noundef nonnull %1, ptr noundef nonnull %5) #29
  %11 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7) #24
  %12 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %6, ptr noundef nonnull dereferenceable(7) @.str.1, i64 7)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.2, i64 6)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.3, i64 6)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %17
  call fastcc void @ReportError(ptr noundef %0, ptr noundef nonnull @.str.4) #29
  br label %35

21:                                               ; preds = %9, %14
  %22 = phi i32 [ 32, %14 ], [ 16, %9 ]
  %23 = load i32, ptr %7, align 16
  switch i32 %23, label %30 [
    i32 7630441, label %24
    i32 7103076, label %26
    i32 7500915, label %28
  ]

24:                                               ; preds = %21
  %25 = or disjoint i32 %22, 1
  br label %31

26:                                               ; preds = %21
  %27 = or disjoint i32 %22, 2
  br label %31

28:                                               ; preds = %21
  %29 = or disjoint i32 %22, 3
  br label %31

30:                                               ; preds = %21
  call fastcc void @ReportError(ptr noundef %0, ptr noundef nonnull @.str.8) #29
  br label %35

31:                                               ; preds = %17, %24, %28, %26
  %32 = phi i32 [ %25, %24 ], [ %27, %26 ], [ %29, %28 ], [ 64, %17 ]
  store i32 %32, ptr %3, align 4, !tbaa !59
  br label %35

33:                                               ; preds = %4
  %34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull %1) #29
  br label %35

35:                                               ; preds = %31, %33, %4, %30, %20
  %36 = phi i8 [ 0, %30 ], [ 0, %20 ], [ 1, %4 ], [ 1, %33 ], [ 1, %31 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %5) #28
  ret i8 %36
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @ReportError(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #14 !prof !34 !PGOFuncName !60 {
  %3 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !61
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %4) #29
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef %1) #29
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @CompactDataBase(ptr noundef %0) local_unnamed_addr #14 !prof !34 {
  %2 = alloca [256 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %2, ptr noundef nonnull align 16 dereferenceable(9) @.str.10, i64 9, i1 false) #24
  %5 = call noalias ptr @fopen(ptr noundef nonnull %2, ptr noundef nonnull @.str.11) #29
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call fastcc void @ReportError(ptr noundef %0, ptr noundef nonnull @.str.12) #29
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = tail call i32 @dlDictLoop(ptr noundef %10) #29
  store i32 0, ptr %3, align 4, !tbaa !59
  %12 = load ptr, ptr %9, align 8, !tbaa !63
  %13 = call ptr @vPDictNext(ptr noundef %12, ptr noundef nonnull %3, ptr noundef nonnull %4) #29
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %8, %15
  %16 = phi ptr [ %18, %15 ], [ %13, %8 ]
  tail call fastcc void @TransferEntryToNewFile(ptr noundef nonnull %16, ptr noundef nonnull %0, ptr noundef %5) #29
  %17 = load ptr, ptr %9, align 8, !tbaa !63
  %18 = call ptr @vPDictNext(ptr noundef %17, ptr noundef nonnull %3, ptr noundef nonnull %4) #29
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %15, !llvm.loop !64

20:                                               ; preds = %15, %8
  %21 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !65
  %23 = tail call i32 @fclose(ptr noundef %22) #29
  %24 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 2
  %25 = tail call i32 @unlink(ptr noundef nonnull %24) #24
  %26 = tail call i32 @fclose(ptr noundef %5) #29
  %27 = call i32 @rename(ptr noundef nonnull %2, ptr noundef nonnull %24) #24
  %28 = tail call noalias ptr @fopen(ptr noundef nonnull %24, ptr noundef nonnull @.str.13) #29
  store ptr %28, ptr %21, align 8, !tbaa !65
  %29 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 6
  store i8 0, ptr %29, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #28
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @TransferEntryToNewFile(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #14 !prof !34 !PGOFuncName !67 {
  %4 = alloca [1000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %4) #28
  %5 = tail call i32 @fseek(ptr noundef %2, i64 noundef 0, i32 noundef 2) #29
  %6 = tail call i64 @ftell(ptr noundef %2) #29
  %7 = getelementptr inbounds %struct.DATABASEt, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = load i64, ptr %0, align 8, !tbaa !68
  %10 = tail call i32 @fseek(ptr noundef %8, i64 noundef %9, i32 noundef 0) #29
  %11 = call fastcc signext i8 @zbDBReadDataLine(ptr noundef %1, ptr noundef nonnull %4) #29, !range !71
  %12 = call i32 @fputs(ptr noundef nonnull %4, ptr noundef %2) #29
  %13 = getelementptr inbounds %struct.ENTRYt, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !72
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3, %16
  %17 = phi i32 [ %20, %16 ], [ 0, %3 ]
  %18 = call fastcc signext i8 @zbDBReadDataLine(ptr noundef %1, ptr noundef nonnull %4) #29, !range !71
  %19 = call i32 @fputs(ptr noundef nonnull %4, ptr noundef %2) #29
  %20 = add nuw nsw i32 %17, 1
  %21 = load i32, ptr %13, align 4, !tbaa !72
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %16, label %23, !llvm.loop !73

23:                                               ; preds = %16, %3
  store i64 %6, ptr %0, align 8, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %4) #28
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind optsize
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nofree nounwind optsize
declare noundef i32 @rename(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @dbDBRndOpen(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 !prof !34 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  %4 = tail call noalias dereferenceable_or_null(4128) ptr @malloc(i64 noundef 4128) #25
  store ptr %4, ptr %3, align 8, !tbaa !50
  store i32 0, ptr @GiDBLastError, align 4, !tbaa !59
  switch i32 %1, label %16 [
    i32 1, label %5
    i32 2, label %9
  ]

5:                                                ; preds = %2
  %6 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.14) #29
  %7 = getelementptr inbounds %struct.DATABASEt, ptr %4, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !65
  %8 = icmp eq ptr %6, null
  br i1 %8, label %29, label %18

9:                                                ; preds = %2
  %10 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.13) #29
  %11 = getelementptr inbounds %struct.DATABASEt, ptr %4, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !65
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.15) #29
  store ptr %14, ptr %11, align 8, !tbaa !65
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %26

16:                                               ; preds = %2
  %17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.40)
  br label %26

18:                                               ; preds = %5, %9
  %19 = phi ptr [ %6, %5 ], [ %10, %9 ]
  %20 = getelementptr inbounds %struct.DATABASEt, ptr %4, i64 0, i32 1
  %21 = tail call i32 @fseek(ptr noundef nonnull %19, i64 noundef 0, i32 noundef 0) #29
  %22 = load ptr, ptr %20, align 8, !tbaa !65
  %23 = tail call i32 @fgetc(ptr noundef %22) #29
  %24 = and i32 %23, 255
  %25 = icmp eq i32 %24, 33
  br i1 %25, label %26, label %29

26:                                               ; preds = %16, %13, %18
  %27 = load i32, ptr @GiDBLastError, align 4, !tbaa !59
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %31

29:                                               ; preds = %18, %13, %5
  %30 = phi i32 [ 1, %5 ], [ 1, %13 ], [ 2, %18 ]
  store i32 %30, ptr @GiDBLastError, align 4, !tbaa !59
  br label %31

31:                                               ; preds = %29, %26
  tail call void @free(ptr noundef %4) #24
  br label %40

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.DATABASEt, ptr %4, i64 0, i32 2
  %34 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %33, ptr noundef nonnull dereferenceable(1) %0) #24
  %35 = getelementptr inbounds %struct.DATABASEt, ptr %4, i64 0, i32 3
  store i32 %1, ptr %35, align 8, !tbaa !74
  store i32 1, ptr %4, align 8, !tbaa !75
  tail call void @DBZeroPrefix(ptr noundef nonnull %4) #29
  %36 = getelementptr inbounds %struct.DATABASEt, ptr %4, i64 0, i32 6
  store i8 0, ptr %36, align 8, !tbaa !66
  %37 = tail call fastcc signext i8 @bScanDataBase(ptr noundef nonnull %4) #29, !range !71
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 2, ptr @GiDBLastError, align 4, !tbaa !59
  call void @DBClose(ptr noundef nonnull %3) #29
  br label %40

40:                                               ; preds = %32, %39, %31
  %41 = phi ptr [ null, %31 ], [ null, %39 ], [ %4, %32 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  ret ptr %41
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef signext i8 @bScanDataBase(ptr noundef %0) unnamed_addr #7 !prof !34 !PGOFuncName !76 {
  %2 = alloca [1000 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #28
  %5 = tail call ptr @dDictCreate() #29
  %6 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 7
  store ptr %5, ptr %6, align 8, !tbaa !63
  %7 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = tail call i32 @fseek(ptr noundef %8, i64 noundef 0, i32 noundef 0) #29
  %10 = load ptr, ptr %7, align 8, !tbaa !65
  %11 = tail call i32 @feof(ptr noundef %10) #24
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %55

13:                                               ; preds = %1, %43
  %14 = phi ptr [ %45, %43 ], [ null, %1 ]
  %15 = phi i32 [ %44, %43 ], [ 0, %1 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !65
  %17 = call i64 @ftell(ptr noundef %16) #29
  store i8 0, ptr %2, align 16, !tbaa !35
  %18 = call fastcc signext i8 @zbDBReadLine(ptr noundef nonnull %0, ptr noundef nonnull %2) #29, !range !71
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %49, label %20

20:                                               ; preds = %13
  %21 = load i8, ptr %2, align 16, !tbaa !35
  switch i8 %21, label %55 [
    i8 33, label %22
    i8 32, label %41
  ]

22:                                               ; preds = %20
  %23 = call signext i8 @zbDBParseSimpleHeader(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #29, !range !71
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %55, label %25

25:                                               ; preds = %22
  %26 = icmp eq ptr %14, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.ENTRYt, ptr %14, i64 0, i32 3
  store i32 %15, ptr %28, align 4, !tbaa !72
  br label %29

29:                                               ; preds = %27, %25
  %30 = load ptr, ptr %6, align 8, !tbaa !63
  %31 = call ptr @vPDictFind(ptr noundef %30, ptr noundef nonnull %3) #29
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, ptr %4, align 4, !tbaa !59
  %35 = call fastcc ptr @eEntryCreate(ptr noundef nonnull %3, i32 noundef %34, i64 noundef %17) #29
  %36 = load ptr, ptr %6, align 8, !tbaa !63
  call void @DictAdd(ptr noundef %36, ptr noundef nonnull %3, ptr noundef %35) #29
  br label %43

37:                                               ; preds = %29
  %38 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, ptr noundef nonnull %3) #29
  %39 = load i32, ptr %4, align 4, !tbaa !59
  %40 = getelementptr inbounds %struct.ENTRYt, ptr %31, i64 0, i32 2
  store i32 %39, ptr %40, align 8, !tbaa !77
  store i64 %17, ptr %31, align 8, !tbaa !68
  br label %43

41:                                               ; preds = %20
  %42 = add nsw i32 %15, 1
  br label %43

43:                                               ; preds = %33, %37, %41
  %44 = phi i32 [ %42, %41 ], [ 0, %37 ], [ 0, %33 ]
  %45 = phi ptr [ %14, %41 ], [ %31, %37 ], [ %35, %33 ]
  %46 = load ptr, ptr %7, align 8, !tbaa !65
  %47 = call i32 @feof(ptr noundef %46) #24
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %13, label %49, !llvm.loop !78

49:                                               ; preds = %43, %13
  %50 = phi i32 [ %44, %43 ], [ %15, %13 ]
  %51 = phi ptr [ %45, %43 ], [ %14, %13 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.ENTRYt, ptr %51, i64 0, i32 3
  store i32 %50, ptr %54, align 4, !tbaa !72
  br label %55

55:                                               ; preds = %20, %22, %1, %49, %53
  %56 = phi i8 [ 1, %53 ], [ 1, %49 ], [ 1, %1 ], [ 0, %22 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %2) #28
  ret i8 %56
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef signext i8 @bDBRndDeleteEntry(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 !prof !34 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #28
  %4 = load i32, ptr %0, align 8, !tbaa !75
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17) #29
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !74
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18) #29
  br label %14

14:                                               ; preds = %12, %8
  %15 = call fastcc ptr @sDataBaseName(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3) #29
  %16 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !63
  %18 = call ptr @vPDictFind(ptr noundef %17, ptr noundef nonnull %3) #29
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = call ptr @vPDictDelete(ptr noundef %17, ptr noundef nonnull %3) #29
  %22 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 6
  store i8 1, ptr %22, align 8, !tbaa !66
  br label %23

23:                                               ; preds = %14, %20
  %24 = phi i8 [ 1, %20 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #28
  ret i8 %24
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @sDataBaseName(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef returned %2) unnamed_addr #3 !prof !34 !PGOFuncName !79 {
  %4 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #28
  store i8 0, ptr %2, align 1
  %5 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !80
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 5, i64 %7
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #27
  %10 = and i64 %9, 4294967295
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %8) #24
  br label %14

14:                                               ; preds = %12, %3
  %15 = call ptr @sDBRemoveControlAndPadding(ptr noundef %1, ptr noundef nonnull %4) #29
  %16 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %4) #24
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #28
  ret ptr %2
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @DBRndLoopEntryWithPrefix(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #14 !prof !34 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #28
  %4 = call fastcc ptr @sDataBaseName(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #29
  %5 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 11
  %6 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %3) #24
  %7 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = call i32 @dlDictLoop(ptr noundef %8) #29
  %10 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 12
  store i32 0, ptr %10, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef signext i8 @bDBRndNextEntryWithPrefix(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !34 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  %4 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 11
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #27
  %6 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 7
  %7 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 12
  %8 = shl i64 %5, 32
  %9 = ashr exact i64 %8, 32
  br label %10

10:                                               ; preds = %14, %2
  %11 = load ptr, ptr %6, align 8, !tbaa !63
  %12 = call ptr @vPDictNext(ptr noundef %11, ptr noundef nonnull %7, ptr noundef nonnull %3) #29
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %3, align 8, !tbaa !50
  %16 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %15) #24
  %17 = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull %4, i64 noundef %9) #27
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %10, !llvm.loop !82

19:                                               ; preds = %10, %14
  %20 = phi i8 [ 1, %14 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  ret i8 %20
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef ptr @dbDBSeqOpen(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #14 !prof !34 {
  %3 = tail call noalias dereferenceable_or_null(4128) ptr @malloc(i64 noundef 4128) #25
  switch i32 %1, label %13 [
    i32 1, label %4
    i32 2, label %7
  ]

4:                                                ; preds = %2
  %5 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.14) #29
  %6 = getelementptr inbounds %struct.DATABASEt, ptr %3, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !65
  br label %15

7:                                                ; preds = %2
  %8 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.13) #29
  %9 = getelementptr inbounds %struct.DATABASEt, ptr %3, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !65
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.15) #29
  store ptr %12, ptr %9, align 8, !tbaa !65
  br label %15

13:                                               ; preds = %2
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.40)
  br label %24

15:                                               ; preds = %11, %4
  %16 = phi ptr [ %12, %11 ], [ %5, %4 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %7, %15
  %19 = getelementptr inbounds %struct.DATABASEt, ptr %3, i64 0, i32 2
  %20 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %0) #24
  %21 = getelementptr inbounds %struct.DATABASEt, ptr %3, i64 0, i32 3
  store i32 %1, ptr %21, align 8, !tbaa !74
  store i32 2, ptr %3, align 8, !tbaa !75
  tail call void @DBZeroPrefix(ptr noundef nonnull %3) #29
  %22 = getelementptr inbounds %struct.DATABASEt, ptr %3, i64 0, i32 6
  store i8 0, ptr %22, align 8, !tbaa !66
  tail call void @DBSeqRewind(ptr noundef nonnull %3) #29
  %23 = getelementptr inbounds %struct.DATABASEt, ptr %3, i64 0, i32 10
  store i32 1, ptr %23, align 4, !tbaa !83
  br label %24

24:                                               ; preds = %13, %15, %18
  %25 = phi ptr [ %3, %18 ], [ null, %15 ], [ null, %13 ]
  ret ptr %25
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @DBSeqRewind(ptr noundef %0) local_unnamed_addr #14 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !75
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17) #29
  br label %6

6:                                                ; preds = %4, %1
  %7 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = tail call i32 @fseek(ptr noundef %8, i64 noundef 0, i32 noundef 0) #29
  %10 = load ptr, ptr %7, align 8, !tbaa !65
  %11 = tail call i32 @feof(ptr noundef %10) #24
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 9
  %15 = tail call fastcc signext i8 @zbDBReadLine(ptr noundef nonnull %0, ptr noundef nonnull %14) #29, !range !71
  br label %16

16:                                               ; preds = %13, %6
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef signext i8 @zbDBReadLine(ptr noundef %0, ptr noundef %1) unnamed_addr #14 !prof !34 !PGOFuncName !84 {
  %3 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = tail call i32 @feof(ptr noundef %4) #24
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2, %7
  store i8 0, ptr %1, align 1, !tbaa !35
  %8 = load ptr, ptr %3, align 8, !tbaa !65
  %9 = tail call ptr @fgets(ptr noundef nonnull %1, i32 noundef 1000, ptr noundef %8) #29
  %10 = load i8, ptr %1, align 1, !tbaa !35
  switch i8 %10, label %11 [
    i8 10, label %7
    i8 0, label %14
  ]

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 9
  %13 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #24
  br label %14

14:                                               ; preds = %7, %2, %11
  %15 = phi i8 [ 1, %11 ], [ 0, %2 ], [ %10, %7 ]
  ret i8 %15
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @DBSeqSkipData(ptr noundef %0) local_unnamed_addr #14 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !75
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17) #29
  br label %6

6:                                                ; preds = %4, %1
  %7 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 9
  br label %8

8:                                                ; preds = %8, %6
  %9 = tail call fastcc signext i8 @zbDBReadLine(ptr noundef nonnull %0, ptr noundef nonnull %7) #29, !range !71
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %8, !llvm.loop !85

11:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i64 @lDBSeqCurPos(ptr nocapture noundef readonly %0) local_unnamed_addr #14 !prof !34 {
  %2 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = tail call i64 @ftell(ptr noundef %3) #29
  ret i64 %4
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @DBSeqGoto(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #14 !prof !34 {
  %3 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = tail call i32 @fseek(ptr noundef %4, i64 noundef %1, i32 noundef 0) #29
  %6 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 9
  store i8 0, ptr %6, align 4, !tbaa !35
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef signext i8 @bDBGetType(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #14 !prof !34 {
  %5 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #28
  %6 = load i32, ptr %0, align 8, !tbaa !75
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 10
  %10 = load i32, ptr %9, align 4, !tbaa !83
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19) #29
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !65
  %17 = tail call i32 @feof(ptr noundef %16) #24
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 9
  %21 = tail call signext i8 @zbDBParseSimpleHeader(ptr noundef nonnull %0, ptr noundef nonnull %20, ptr noundef %1, ptr noundef %2) #29, !range !71
  store i32 -1, ptr %3, align 4, !tbaa !59
  store i32 1, ptr %9, align 4, !tbaa !83
  br label %33

22:                                               ; preds = %4
  %23 = call fastcc ptr @sDataBaseName(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5) #29
  %24 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !63
  %26 = call ptr @vPDictFind(ptr noundef %25, ptr noundef nonnull %5) #29
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.ENTRYt, ptr %26, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !77
  store i32 %30, ptr %2, align 4, !tbaa !59
  %31 = getelementptr inbounds %struct.ENTRYt, ptr %26, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !72
  store i32 %32, ptr %3, align 4, !tbaa !59
  br label %33

33:                                               ; preds = %22, %14, %28, %19
  %34 = phi i8 [ 1, %19 ], [ 1, %28 ], [ 0, %14 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #28
  ret i8 %34
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef signext i8 @bDBGetValue(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #14 !prof !34 {
  %6 = alloca [1000 x i8], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #28
  %9 = load i32, ptr %0, align 8, !tbaa !75
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 9
  %13 = call signext i8 @zbDBParseSimpleHeader(ptr noundef nonnull %0, ptr noundef nonnull %12, ptr noundef %1, ptr noundef nonnull %8) #29, !range !71
  %14 = load i32, ptr %8, align 4, !tbaa !59
  br label %29

15:                                               ; preds = %5
  %16 = call fastcc ptr @sDataBaseName(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %7) #29
  %17 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !63
  %19 = call ptr @vPDictFind(ptr noundef %18, ptr noundef nonnull %7) #29
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ENTRYt, ptr %19, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !77
  %24 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !65
  %26 = load i64, ptr %19, align 8, !tbaa !68
  %27 = call i32 @fseek(ptr noundef %25, i64 noundef %26, i32 noundef 0) #29
  %28 = call fastcc signext i8 @zbDBReadLine(ptr noundef nonnull %0, ptr noundef nonnull %6) #29, !range !71
  br label %29

29:                                               ; preds = %21, %11
  %30 = phi i32 [ %23, %21 ], [ %14, %11 ]
  call fastcc void @zbDBGetValue(ptr noundef nonnull %0, i32 noundef %30, ptr noundef %2, ptr noundef %3, i32 noundef %4) #29
  br label %31

31:                                               ; preds = %15, %29
  %32 = phi i8 [ 1, %29 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %6) #28
  ret i8 %32
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @zbDBGetValue(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #14 !prof !34 !PGOFuncName !86 {
  %6 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #28
  store i32 0, ptr %2, align 4, !tbaa !59
  %7 = trunc i32 %1 to i8
  %8 = and i8 %7, -16
  switch i8 %8, label %63 [
    i8 16, label %9
    i8 32, label %24
  ]

9:                                                ; preds = %5
  %10 = and i32 %1, 15
  switch i32 %10, label %21 [
    i32 1, label %11
    i32 2, label %14
    i32 3, label %17
  ]

11:                                               ; preds = %9
  %12 = call fastcc signext i8 @zbDBReadDataLine(ptr noundef %0, ptr noundef nonnull %6) #29, !range !71
  call fastcc void @StripInteger(ptr noundef nonnull %6, ptr noundef %3) #29
  %13 = call fastcc signext i8 @zbDBReadDataLine(ptr noundef %0, ptr noundef nonnull %6) #29, !range !71
  br label %23

14:                                               ; preds = %9
  %15 = call fastcc signext i8 @zbDBReadDataLine(ptr noundef %0, ptr noundef nonnull %6) #29, !range !71
  call fastcc void @StripDouble(ptr noundef nonnull %6, ptr noundef %3) #29
  %16 = call fastcc signext i8 @zbDBReadDataLine(ptr noundef %0, ptr noundef nonnull %6) #29, !range !71
  br label %23

17:                                               ; preds = %9
  %18 = call fastcc signext i8 @zbDBReadDataLine(ptr noundef %0, ptr noundef nonnull %6) #29, !range !71
  %19 = call fastcc ptr @sStripString(ptr noundef nonnull %6, ptr noundef %3) #29
  %20 = call fastcc signext i8 @zbDBReadDataLine(ptr noundef %0, ptr noundef nonnull %6) #29, !range !71
  br label %23

21:                                               ; preds = %9
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %1) #29
  br label %23

23:                                               ; preds = %21, %17, %14, %11
  store i32 1, ptr %2, align 4, !tbaa !59
  br label %63

24:                                               ; preds = %5
  %25 = and i32 %1, 15
  switch i32 %25, label %63 [
    i32 1, label %36
    i32 2, label %31
    i32 3, label %26
  ]

26:                                               ; preds = %24
  %27 = call fastcc signext i8 @zbDBReadDataLine(ptr noundef %0, ptr noundef nonnull %6) #29, !range !71
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %63, label %29

29:                                               ; preds = %26
  %30 = sext i32 %4 to i64
  br label %55

31:                                               ; preds = %24
  %32 = call fastcc signext i8 @zbDBReadDataLine(ptr noundef %0, ptr noundef nonnull %6) #29, !range !71
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %63, label %34

34:                                               ; preds = %31
  %35 = sext i32 %4 to i64
  br label %48

36:                                               ; preds = %24
  %37 = call fastcc signext i8 @zbDBReadDataLine(ptr noundef %0, ptr noundef nonnull %6) #29, !range !71
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %63, label %39

39:                                               ; preds = %36
  %40 = sext i32 %4 to i64
  br label %41

41:                                               ; preds = %39, %41
  %42 = phi ptr [ %3, %39 ], [ %43, %41 ]
  call fastcc void @StripInteger(ptr noundef nonnull %6, ptr noundef %42) #29
  %43 = getelementptr inbounds i8, ptr %42, i64 %40
  %44 = load i32, ptr %2, align 4, !tbaa !59
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %2, align 4, !tbaa !59
  %46 = call fastcc signext i8 @zbDBReadDataLine(ptr noundef %0, ptr noundef nonnull %6) #29, !range !71
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %63, label %41, !llvm.loop !87

48:                                               ; preds = %34, %48
  %49 = phi ptr [ %3, %34 ], [ %50, %48 ]
  call fastcc void @StripDouble(ptr noundef nonnull %6, ptr noundef %49) #29
  %50 = getelementptr inbounds i8, ptr %49, i64 %35
  %51 = load i32, ptr %2, align 4, !tbaa !59
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %2, align 4, !tbaa !59
  %53 = call fastcc signext i8 @zbDBReadDataLine(ptr noundef %0, ptr noundef nonnull %6) #29, !range !71
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %63, label %48, !llvm.loop !88

55:                                               ; preds = %29, %55
  %56 = phi ptr [ %3, %29 ], [ %58, %55 ]
  %57 = call fastcc ptr @sStripString(ptr noundef nonnull %6, ptr noundef %56) #29
  %58 = getelementptr inbounds i8, ptr %56, i64 %30
  %59 = load i32, ptr %2, align 4, !tbaa !59
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %2, align 4, !tbaa !59
  %61 = call fastcc signext i8 @zbDBReadDataLine(ptr noundef %0, ptr noundef nonnull %6) #29, !range !71
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %55, !llvm.loop !89

63:                                               ; preds = %55, %48, %41, %26, %31, %36, %24, %5, %23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DBPutValue(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) local_unnamed_addr #7 !prof !34 {
  %7 = alloca [256 x i8], align 16
  %8 = alloca [1000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %8) #28
  %9 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !74
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18) #29
  br label %14

14:                                               ; preds = %12, %6
  %15 = and i32 %2, 240
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20) #29
  br label %19

19:                                               ; preds = %17, %14
  %20 = and i32 %2, 15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21) #29
  br label %24

24:                                               ; preds = %22, %19
  %25 = call fastcc ptr @sDataBaseName(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %7) #29
  %26 = load i32, ptr %0, align 8, !tbaa !75
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !65
  %31 = call i32 @fseek(ptr noundef %30, i64 noundef 0, i32 noundef 2) #29
  br label %33

32:                                               ; preds = %24
  call fastcc void @ePrepareDatabaseForEntry(ptr noundef nonnull %0, ptr noundef nonnull %7, i32 noundef %2, i32 noundef %3) #29
  br label %33

33:                                               ; preds = %32, %28
  call fastcc void @ConstructDataHeader(ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef %2) #29
  %34 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !65
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.22, ptr noundef nonnull %8) #29
  call fastcc void @zPutValue(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #29
  %37 = load ptr, ptr %34, align 8, !tbaa !65
  %38 = call i32 @fflush(ptr noundef %37) #29
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ePrepareDatabaseForEntry(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #7 !prof !34 !PGOFuncName !90 {
  %5 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = tail call i32 @fseek(ptr noundef %6, i64 noundef 0, i32 noundef 2) #29
  %8 = load ptr, ptr %5, align 8, !tbaa !65
  %9 = tail call i64 @ftell(ptr noundef %8) #29
  %10 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  %12 = tail call ptr @vPDictFind(ptr noundef %11, ptr noundef %1) #29
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = tail call fastcc ptr @eEntryCreate(ptr noundef %1, i32 noundef %2, i64 noundef %9) #29
  %16 = getelementptr inbounds %struct.ENTRYt, ptr %15, i64 0, i32 3
  store i32 %3, ptr %16, align 4, !tbaa !72
  %17 = load ptr, ptr %10, align 8, !tbaa !63
  tail call void @DictAdd(ptr noundef %17, ptr noundef %1, ptr noundef %15) #29
  br label %22

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.ENTRYt, ptr %12, i64 0, i32 2
  store i32 %2, ptr %19, align 8, !tbaa !77
  %20 = getelementptr inbounds %struct.ENTRYt, ptr %12, i64 0, i32 3
  store i32 %3, ptr %20, align 4, !tbaa !72
  store i64 %9, ptr %12, align 8, !tbaa !68
  %21 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 6
  store i8 1, ptr %21, align 8, !tbaa !66
  br label %22

22:                                               ; preds = %18, %14
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ConstructDataHeader(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #18 !prof !34 !PGOFuncName !91 {
  store i16 33, ptr %0, align 1
  %4 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #24
  %5 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  store i16 32, ptr %6, align 1
  %7 = trunc i32 %2 to i8
  %8 = and i8 %7, -16
  switch i8 %8, label %18 [
    i8 16, label %9
    i8 32, label %12
    i8 64, label %15
  ]

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %11, ptr noundef nonnull align 1 dereferenceable(7) @.str.1, i64 7, i1 false)
  br label %18

12:                                               ; preds = %3
  %13 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %14, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, i64 6, i1 false)
  br label %18

15:                                               ; preds = %3
  %16 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %17 = getelementptr inbounds i8, ptr %0, i64 %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %17, ptr noundef nonnull align 1 dereferenceable(6) @.str.3, i64 6, i1 false)
  br label %31

18:                                               ; preds = %3, %12, %9
  %19 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %20 = getelementptr inbounds i8, ptr %0, i64 %19
  store i16 32, ptr %20, align 1
  %21 = and i32 %2, 15
  switch i32 %21, label %31 [
    i32 1, label %22
    i32 2, label %25
    i32 3, label %28
  ]

22:                                               ; preds = %18
  %23 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %24 = getelementptr inbounds i8, ptr %0, i64 %23
  store i32 7630441, ptr %24, align 1
  br label %31

25:                                               ; preds = %18
  %26 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %27 = getelementptr inbounds i8, ptr %0, i64 %26
  store i32 7103076, ptr %27, align 1
  br label %31

28:                                               ; preds = %18
  %29 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %30 = getelementptr inbounds i8, ptr %0, i64 %29
  store i32 7500915, ptr %30, align 1
  br label %31

31:                                               ; preds = %15, %18, %28, %25, %22
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @zPutValue(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #14 !prof !34 !PGOFuncName !92 {
  %6 = alloca [1000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %6) #28
  store i8 0, ptr %6, align 16
  %7 = trunc i32 %1 to i8
  %8 = and i8 %7, -16
  switch i8 %8, label %48 [
    i8 16, label %9
    i8 32, label %16
  ]

9:                                                ; preds = %5
  %10 = and i32 %1, 15
  switch i32 %10, label %14 [
    i32 1, label %11
    i32 2, label %12
    i32 3, label %13
  ]

11:                                               ; preds = %9
  call fastcc void @ConcatInteger(ptr noundef nonnull %6, ptr noundef %3) #29
  call fastcc void @WriteDataLine(ptr noundef %0, ptr noundef nonnull %6) #29
  br label %48

12:                                               ; preds = %9
  call fastcc void @ConcatDouble(ptr noundef nonnull %6, ptr noundef %3) #29
  call fastcc void @WriteDataLine(ptr noundef %0, ptr noundef nonnull %6) #29
  br label %48

13:                                               ; preds = %9
  call fastcc void @ConcatString(ptr noundef nonnull %6, ptr noundef %3) #29
  call fastcc void @WriteDataLine(ptr noundef %0, ptr noundef nonnull %6) #29
  br label %48

14:                                               ; preds = %9
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %1) #29
  br label %48

16:                                               ; preds = %5
  %17 = and i32 %1, 15
  switch i32 %17, label %48 [
    i32 1, label %26
    i32 2, label %22
    i32 3, label %18
  ]

18:                                               ; preds = %16
  %19 = icmp sgt i32 %2, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %18
  %21 = sext i32 %4 to i64
  br label %42

22:                                               ; preds = %16
  %23 = icmp sgt i32 %2, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %22
  %25 = sext i32 %4 to i64
  br label %36

26:                                               ; preds = %16
  %27 = icmp sgt i32 %2, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %26
  %29 = sext i32 %4 to i64
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i32 [ 0, %28 ], [ %34, %30 ]
  %32 = phi ptr [ %3, %28 ], [ %33, %30 ]
  store i8 0, ptr %6, align 16
  call fastcc void @ConcatInteger(ptr noundef nonnull %6, ptr noundef %32) #29
  call fastcc void @WriteDataLine(ptr noundef %0, ptr noundef nonnull %6) #29
  %33 = getelementptr inbounds i8, ptr %32, i64 %29
  %34 = add nuw nsw i32 %31, 1
  %35 = icmp eq i32 %34, %2
  br i1 %35, label %48, label %30, !llvm.loop !93

36:                                               ; preds = %24, %36
  %37 = phi i32 [ 0, %24 ], [ %40, %36 ]
  %38 = phi ptr [ %3, %24 ], [ %39, %36 ]
  store i8 0, ptr %6, align 16
  call fastcc void @ConcatDouble(ptr noundef nonnull %6, ptr noundef %38) #29
  call fastcc void @WriteDataLine(ptr noundef %0, ptr noundef nonnull %6) #29
  %39 = getelementptr inbounds i8, ptr %38, i64 %25
  %40 = add nuw nsw i32 %37, 1
  %41 = icmp eq i32 %40, %2
  br i1 %41, label %48, label %36, !llvm.loop !94

42:                                               ; preds = %20, %42
  %43 = phi i32 [ 0, %20 ], [ %46, %42 ]
  %44 = phi ptr [ %3, %20 ], [ %45, %42 ]
  store i8 0, ptr %6, align 16
  call fastcc void @ConcatString(ptr noundef nonnull %6, ptr noundef %44) #29
  call fastcc void @WriteDataLine(ptr noundef %0, ptr noundef nonnull %6) #29
  %45 = getelementptr inbounds i8, ptr %44, i64 %21
  %46 = add nuw nsw i32 %43, 1
  %47 = icmp eq i32 %46, %2
  br i1 %47, label %48, label %42, !llvm.loop !95

48:                                               ; preds = %42, %36, %30, %18, %22, %26, %16, %11, %12, %13, %14, %5
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %6) #28
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef signext i8 @bDBGetTableType(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr noundef %5, ptr nocapture noundef writeonly %6, ptr noundef %7, ptr nocapture noundef writeonly %8, ptr noundef %9, ptr nocapture noundef writeonly %10, ptr noundef %11, ptr nocapture noundef writeonly %12, ptr noundef %13, ptr nocapture noundef writeonly %14, ptr noundef %15, ptr nocapture noundef writeonly %16, ptr noundef %17, ptr nocapture noundef writeonly %18, ptr noundef %19, ptr nocapture noundef writeonly %20, ptr noundef %21, ptr nocapture noundef writeonly %22, ptr noundef %23, ptr nocapture noundef writeonly %24, ptr noundef %25, ptr nocapture noundef writeonly %26, ptr noundef %27, ptr nocapture noundef writeonly %28, ptr noundef %29, ptr nocapture noundef writeonly %30, ptr noundef %31, ptr nocapture noundef writeonly %32, ptr noundef %33, ptr nocapture noundef writeonly %34, ptr noundef %35, ptr nocapture noundef writeonly %36, ptr noundef %37) local_unnamed_addr #14 !prof !34 {
  %39 = alloca [256 x i8], align 16
  %40 = alloca [256 x i8], align 16
  %41 = alloca [256 x i8], align 16
  %42 = alloca [256 x i8], align 16
  %43 = alloca [1000 x i8], align 16
  %44 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %39) #28
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %40) #28
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %41) #28
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %42) #28
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %43) #28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %44) #28
  %45 = load i32, ptr %0, align 8, !tbaa !75
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 9
  %49 = call signext i8 @zbDBParseSimpleHeader(ptr noundef nonnull %0, ptr noundef nonnull %48, ptr noundef %1, ptr noundef nonnull %44) #29, !range !71
  %50 = load i32, ptr %44, align 4, !tbaa !59
  store i32 %50, ptr %2, align 4, !tbaa !59
  store i32 -1, ptr %3, align 4, !tbaa !59
  %51 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(1) %48) #24
  br label %68

52:                                               ; preds = %38
  %53 = call fastcc ptr @sDataBaseName(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %39) #29
  %54 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !63
  %56 = call ptr @vPDictFind(ptr noundef %55, ptr noundef nonnull %39) #29
  %57 = icmp eq ptr %56, null
  br i1 %57, label %131, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.ENTRYt, ptr %56, i64 0, i32 2
  %60 = load i32, ptr %59, align 8, !tbaa !77
  store i32 %60, ptr %2, align 4, !tbaa !59
  %61 = getelementptr inbounds %struct.ENTRYt, ptr %56, i64 0, i32 3
  %62 = load i32, ptr %61, align 4, !tbaa !72
  store i32 %62, ptr %3, align 4, !tbaa !59
  %63 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !65
  %65 = load i64, ptr %56, align 8, !tbaa !68
  %66 = call i32 @fseek(ptr noundef %64, i64 noundef %65, i32 noundef 0) #29
  %67 = call fastcc signext i8 @zbDBReadDataLine(ptr noundef nonnull %0, ptr noundef nonnull %43) #29, !range !71
  br label %68

68:                                               ; preds = %58, %47
  %69 = phi i32 [ %60, %58 ], [ %50, %47 ]
  %70 = and i32 %69, 240
  %71 = icmp eq i32 %70, 64
  br i1 %71, label %72, label %131

72:                                               ; preds = %68
  store i32 0, ptr %4, align 4, !tbaa !59
  store i32 0, ptr %6, align 4, !tbaa !59
  store i32 0, ptr %8, align 4, !tbaa !59
  store i32 0, ptr %10, align 4, !tbaa !59
  store i32 0, ptr %12, align 4, !tbaa !59
  store i32 0, ptr %14, align 4, !tbaa !59
  store i32 0, ptr %16, align 4, !tbaa !59
  store i32 0, ptr %18, align 4, !tbaa !59
  store i32 0, ptr %20, align 4, !tbaa !59
  store i32 0, ptr %22, align 4, !tbaa !59
  store i32 0, ptr %24, align 4, !tbaa !59
  store i32 0, ptr %26, align 4, !tbaa !59
  store i32 0, ptr %28, align 4, !tbaa !59
  store i32 0, ptr %30, align 4, !tbaa !59
  store i32 0, ptr %32, align 4, !tbaa !59
  store i32 0, ptr %34, align 4, !tbaa !59
  store i32 0, ptr %36, align 4, !tbaa !59
  %73 = call ptr @sDBRemoveLeadingSpaces(ptr noundef nonnull %43) #29
  call void @sDBRemoveFirstString(ptr noundef nonnull %43, ptr noundef nonnull %40) #29
  %74 = call ptr @sDBRemoveLeadingSpaces(ptr noundef nonnull %43) #29
  call void @sDBRemoveFirstString(ptr noundef nonnull %43, ptr noundef nonnull %41) #29
  %75 = call ptr @sDBRemoveLeadingSpaces(ptr noundef nonnull %43) #29
  %76 = load i8, ptr %43, align 16
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %131, label %78

78:                                               ; preds = %72, %123
  %79 = phi i32 [ %127, %123 ], [ 1, %72 ]
  %80 = phi i32 [ %126, %123 ], [ 1, %72 ]
  %81 = phi i32 [ %125, %123 ], [ 1, %72 ]
  %82 = phi i32 [ %124, %123 ], [ 1, %72 ]
  call void @sDBRemoveFirstString(ptr noundef nonnull %43, ptr noundef nonnull %42) #29
  %83 = call ptr @sDBRemoveControlAndPadding(ptr noundef nonnull %42, ptr noundef nonnull %41) #29
  %84 = call ptr @sDBRemoveLeadingSpaces(ptr noundef nonnull %43) #29
  call void @sDBRemoveFirstString(ptr noundef nonnull %43, ptr noundef nonnull %42) #29
  %85 = call ptr @sDBRemoveControlAndPadding(ptr noundef nonnull %42, ptr noundef nonnull %40) #29
  %86 = load i32, ptr %41, align 16
  switch i32 %86, label %122 [
    i32 7630441, label %87
    i32 7103076, label %101
    i32 7500915, label %111
  ]

87:                                               ; preds = %78
  switch i32 %82, label %99 [
    i32 1, label %95
    i32 2, label %88
    i32 3, label %89
    i32 4, label %90
    i32 5, label %91
    i32 6, label %92
    i32 7, label %93
    i32 8, label %94
  ]

88:                                               ; preds = %87
  br label %95

89:                                               ; preds = %87
  br label %95

90:                                               ; preds = %87
  br label %95

91:                                               ; preds = %87
  br label %95

92:                                               ; preds = %87
  br label %95

93:                                               ; preds = %87
  br label %95

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %87, %88, %89, %90, %91, %92, %93, %94
  %96 = phi ptr [ %18, %94 ], [ %16, %93 ], [ %14, %92 ], [ %12, %91 ], [ %10, %90 ], [ %8, %89 ], [ %6, %88 ], [ %4, %87 ]
  %97 = phi ptr [ %19, %94 ], [ %17, %93 ], [ %15, %92 ], [ %13, %91 ], [ %11, %90 ], [ %9, %89 ], [ %7, %88 ], [ %5, %87 ]
  store i32 %79, ptr %96, align 4, !tbaa !59
  %98 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %97, ptr noundef nonnull dereferenceable(1) %40) #24
  br label %99

99:                                               ; preds = %95, %87
  %100 = add nsw i32 %82, 1
  br label %123

101:                                              ; preds = %78
  switch i32 %81, label %109 [
    i32 1, label %105
    i32 2, label %102
    i32 3, label %103
    i32 4, label %104
  ]

102:                                              ; preds = %101
  br label %105

103:                                              ; preds = %101
  br label %105

104:                                              ; preds = %101
  br label %105

105:                                              ; preds = %101, %102, %103, %104
  %106 = phi ptr [ %26, %104 ], [ %24, %103 ], [ %22, %102 ], [ %20, %101 ]
  %107 = phi ptr [ %27, %104 ], [ %25, %103 ], [ %23, %102 ], [ %21, %101 ]
  store i32 %79, ptr %106, align 4, !tbaa !59
  %108 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %107, ptr noundef nonnull dereferenceable(1) %40) #24
  br label %109

109:                                              ; preds = %105, %101
  %110 = add nsw i32 %81, 1
  br label %123

111:                                              ; preds = %78
  switch i32 %80, label %120 [
    i32 1, label %116
    i32 2, label %112
    i32 3, label %113
    i32 4, label %114
    i32 5, label %115
  ]

112:                                              ; preds = %111
  br label %116

113:                                              ; preds = %111
  br label %116

114:                                              ; preds = %111
  br label %116

115:                                              ; preds = %111
  br label %116

116:                                              ; preds = %111, %112, %113, %114, %115
  %117 = phi ptr [ %36, %115 ], [ %34, %114 ], [ %32, %113 ], [ %30, %112 ], [ %28, %111 ]
  %118 = phi ptr [ %37, %115 ], [ %35, %114 ], [ %33, %113 ], [ %31, %112 ], [ %29, %111 ]
  store i32 %79, ptr %117, align 4, !tbaa !59
  %119 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(1) %40) #24
  br label %120

120:                                              ; preds = %116, %111
  %121 = add nsw i32 %80, 1
  br label %123

122:                                              ; preds = %78
  call fastcc void @ReportError(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #29
  br label %123

123:                                              ; preds = %109, %122, %120, %99
  %124 = phi i32 [ %100, %99 ], [ %82, %109 ], [ %82, %120 ], [ %82, %122 ]
  %125 = phi i32 [ %81, %99 ], [ %110, %109 ], [ %81, %120 ], [ %81, %122 ]
  %126 = phi i32 [ %80, %99 ], [ %80, %109 ], [ %121, %120 ], [ %80, %122 ]
  %127 = add nuw nsw i32 %79, 1
  %128 = call ptr @sDBRemoveLeadingSpaces(ptr noundef nonnull %43) #29
  %129 = load i8, ptr %43, align 16
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %78

131:                                              ; preds = %123, %72, %68, %52
  %132 = phi i8 [ 0, %52 ], [ 1, %68 ], [ 1, %72 ], [ 1, %123 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %44) #28
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %43) #28
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %42) #28
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %41) #28
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %40) #28
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %39) #28
  ret i8 %132
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc signext i8 @zbDBReadDataLine(ptr noundef %0, ptr noundef %1) unnamed_addr #14 !prof !34 !PGOFuncName !96 {
  %3 = tail call fastcc signext i8 @zbDBReadLine(ptr noundef %0, ptr noundef %1) #29, !range !71
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %1, align 1, !tbaa !35
  %7 = icmp ne i8 %6, 33
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi i8 [ %8, %5 ], [ 0, %2 ]
  ret i8 %10
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef signext i8 @bDBGetTable(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10, i32 noundef %11, i32 noundef %12, ptr noundef %13, i32 noundef %14, i32 noundef %15, ptr noundef %16, i32 noundef %17, i32 noundef %18, ptr noundef %19, i32 noundef %20, i32 noundef %21, ptr noundef %22, i32 noundef %23, i32 noundef %24, ptr noundef %25, i32 noundef %26, i32 noundef %27, ptr noundef %28, i32 noundef %29, i32 noundef %30, ptr noundef %31, i32 noundef %32, i32 noundef %33, ptr noundef %34, i32 noundef %35, i32 noundef %36, ptr noundef %37, i32 noundef %38, i32 noundef %39, ptr noundef %40, i32 noundef %41, i32 noundef %42, ptr noundef %43, i32 noundef %44, i32 noundef %45, ptr noundef %46, i32 noundef %47, i32 noundef %48, ptr noundef %49, i32 noundef %50, i32 noundef %51, ptr noundef %52, i32 noundef %53) local_unnamed_addr #14 !prof !34 {
  %55 = alloca [256 x i8], align 16
  %56 = alloca [256 x i8], align 16
  %57 = alloca [256 x i8], align 16
  %58 = alloca [1000 x i8], align 16
  %59 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %55) #28
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %56) #28
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %57) #28
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %58) #28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %59) #28
  store i32 0, ptr %2, align 4, !tbaa !59
  %60 = load i32, ptr %0, align 8, !tbaa !75
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 9
  %64 = call signext i8 @zbDBParseSimpleHeader(ptr noundef nonnull %0, ptr noundef nonnull %63, ptr noundef %1, ptr noundef nonnull %59) #29, !range !71
  br label %84

65:                                               ; preds = %54
  %66 = call fastcc ptr @sDataBaseName(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %55) #29
  %67 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 7
  %68 = load ptr, ptr %67, align 8, !tbaa !63
  %69 = call ptr @vPDictFind(ptr noundef %68, ptr noundef nonnull %55) #29
  %70 = icmp eq ptr %69, null
  br i1 %70, label %240, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.ENTRYt, ptr %69, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !77
  %74 = and i32 %73, 240
  %75 = icmp eq i32 %74, 64
  br i1 %75, label %76, label %240

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !65
  %79 = load i64, ptr %69, align 8, !tbaa !68
  %80 = call i32 @fseek(ptr noundef %78, i64 noundef %79, i32 noundef 0) #29
  %81 = call fastcc signext i8 @zbDBReadDataLine(ptr noundef nonnull %0, ptr noundef nonnull %58) #29, !range !71
  %82 = call ptr @sDBRemoveLeadingSpaces(ptr noundef nonnull %58) #29
  call void @sDBRemoveFirstString(ptr noundef nonnull %58, ptr noundef nonnull %56) #29
  %83 = call ptr @sDBRemoveLeadingSpaces(ptr noundef nonnull %58) #29
  call void @sDBRemoveFirstString(ptr noundef nonnull %58, ptr noundef nonnull %57) #29
  br label %84

84:                                               ; preds = %76, %62
  %85 = call fastcc signext i8 @zbDBReadDataLine(ptr noundef nonnull %0, ptr noundef nonnull %58) #29, !range !71
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %240, label %87

87:                                               ; preds = %84
  %88 = sext i32 %29 to i64
  %89 = sext i32 %26 to i64
  %90 = sext i32 %23 to i64
  %91 = sext i32 %20 to i64
  %92 = sext i32 %17 to i64
  %93 = sext i32 %14 to i64
  %94 = sext i32 %11 to i64
  %95 = sext i32 %8 to i64
  %96 = sext i32 %5 to i64
  br label %97

97:                                               ; preds = %87, %237
  %98 = phi ptr [ %4, %87 ], [ %233, %237 ]
  %99 = phi ptr [ %52, %87 ], [ %232, %237 ]
  %100 = phi ptr [ %7, %87 ], [ %231, %237 ]
  %101 = phi ptr [ %10, %87 ], [ %230, %237 ]
  %102 = phi ptr [ %49, %87 ], [ %229, %237 ]
  %103 = phi ptr [ %13, %87 ], [ %228, %237 ]
  %104 = phi ptr [ %16, %87 ], [ %227, %237 ]
  %105 = phi ptr [ %46, %87 ], [ %226, %237 ]
  %106 = phi ptr [ %19, %87 ], [ %225, %237 ]
  %107 = phi ptr [ %22, %87 ], [ %224, %237 ]
  %108 = phi ptr [ %43, %87 ], [ %223, %237 ]
  %109 = phi ptr [ %25, %87 ], [ %222, %237 ]
  %110 = phi ptr [ %28, %87 ], [ %221, %237 ]
  %111 = phi ptr [ %40, %87 ], [ %220, %237 ]
  %112 = phi ptr [ %31, %87 ], [ %219, %237 ]
  %113 = phi ptr [ %34, %87 ], [ %218, %237 ]
  %114 = phi ptr [ %37, %87 ], [ %217, %237 ]
  %115 = load i32, ptr %2, align 4, !tbaa !59
  %116 = add nsw i32 %115, 1
  store i32 %116, ptr %2, align 4, !tbaa !59
  br label %117

117:                                              ; preds = %216, %97
  %118 = phi ptr [ %114, %97 ], [ %217, %216 ]
  %119 = phi ptr [ %113, %97 ], [ %218, %216 ]
  %120 = phi ptr [ %112, %97 ], [ %219, %216 ]
  %121 = phi ptr [ %111, %97 ], [ %220, %216 ]
  %122 = phi ptr [ %110, %97 ], [ %221, %216 ]
  %123 = phi ptr [ %109, %97 ], [ %222, %216 ]
  %124 = phi ptr [ %108, %97 ], [ %223, %216 ]
  %125 = phi ptr [ %107, %97 ], [ %224, %216 ]
  %126 = phi ptr [ %106, %97 ], [ %225, %216 ]
  %127 = phi ptr [ %105, %97 ], [ %226, %216 ]
  %128 = phi ptr [ %104, %97 ], [ %227, %216 ]
  %129 = phi ptr [ %103, %97 ], [ %228, %216 ]
  %130 = phi ptr [ %102, %97 ], [ %229, %216 ]
  %131 = phi ptr [ %101, %97 ], [ %230, %216 ]
  %132 = phi ptr [ %100, %97 ], [ %231, %216 ]
  %133 = phi ptr [ %99, %97 ], [ %232, %216 ]
  %134 = phi ptr [ %98, %97 ], [ %233, %216 ]
  %135 = phi i32 [ 1, %97 ], [ %234, %216 ]
  %136 = icmp eq i32 %135, %3
  br i1 %136, label %137, label %139

137:                                              ; preds = %117
  call fastcc void @StripInteger(ptr noundef nonnull %58, ptr noundef %134) #29
  %138 = getelementptr inbounds i8, ptr %134, i64 %96
  br label %216

139:                                              ; preds = %117
  %140 = icmp eq i32 %135, %6
  br i1 %140, label %141, label %143

141:                                              ; preds = %139
  call fastcc void @StripInteger(ptr noundef nonnull %58, ptr noundef %132) #29
  %142 = getelementptr inbounds i8, ptr %132, i64 %95
  br label %216

143:                                              ; preds = %139
  %144 = icmp eq i32 %135, %9
  br i1 %144, label %145, label %147

145:                                              ; preds = %143
  call fastcc void @StripInteger(ptr noundef nonnull %58, ptr noundef %131) #29
  %146 = getelementptr inbounds i8, ptr %131, i64 %94
  br label %216

147:                                              ; preds = %143
  %148 = icmp eq i32 %135, %12
  br i1 %148, label %149, label %151

149:                                              ; preds = %147
  call fastcc void @StripInteger(ptr noundef nonnull %58, ptr noundef %129) #29
  %150 = getelementptr inbounds i8, ptr %129, i64 %93
  br label %216

151:                                              ; preds = %147
  %152 = icmp eq i32 %135, %15
  br i1 %152, label %153, label %155

153:                                              ; preds = %151
  call fastcc void @StripInteger(ptr noundef nonnull %58, ptr noundef %128) #29
  %154 = getelementptr inbounds i8, ptr %128, i64 %92
  br label %216

155:                                              ; preds = %151
  %156 = icmp eq i32 %135, %18
  br i1 %156, label %157, label %159

157:                                              ; preds = %155
  call fastcc void @StripInteger(ptr noundef nonnull %58, ptr noundef %126) #29
  %158 = getelementptr inbounds i8, ptr %126, i64 %91
  br label %216

159:                                              ; preds = %155
  %160 = icmp eq i32 %135, %21
  br i1 %160, label %161, label %163

161:                                              ; preds = %159
  call fastcc void @StripInteger(ptr noundef nonnull %58, ptr noundef %125) #29
  %162 = getelementptr inbounds i8, ptr %125, i64 %90
  br label %216

163:                                              ; preds = %159
  %164 = icmp eq i32 %135, %24
  br i1 %164, label %165, label %167

165:                                              ; preds = %163
  call fastcc void @StripInteger(ptr noundef nonnull %58, ptr noundef %123) #29
  %166 = getelementptr inbounds i8, ptr %123, i64 %89
  br label %216

167:                                              ; preds = %163
  %168 = icmp eq i32 %135, %27
  br i1 %168, label %169, label %171

169:                                              ; preds = %167
  call fastcc void @StripDouble(ptr noundef nonnull %58, ptr noundef %122) #29
  %170 = getelementptr inbounds i8, ptr %122, i64 %88
  br label %216

171:                                              ; preds = %167
  %172 = icmp eq i32 %135, %30
  br i1 %172, label %173, label %176

173:                                              ; preds = %171
  %174 = sext i32 %32 to i64
  call fastcc void @StripDouble(ptr noundef nonnull %58, ptr noundef %120) #29
  %175 = getelementptr inbounds i8, ptr %120, i64 %174
  br label %216

176:                                              ; preds = %171
  %177 = icmp eq i32 %135, %33
  br i1 %177, label %178, label %181

178:                                              ; preds = %176
  %179 = sext i32 %35 to i64
  call fastcc void @StripDouble(ptr noundef nonnull %58, ptr noundef %119) #29
  %180 = getelementptr inbounds i8, ptr %119, i64 %179
  br label %216

181:                                              ; preds = %176
  %182 = icmp eq i32 %135, %36
  br i1 %182, label %183, label %186

183:                                              ; preds = %181
  %184 = sext i32 %38 to i64
  call fastcc void @StripDouble(ptr noundef nonnull %58, ptr noundef %118) #29
  %185 = getelementptr inbounds i8, ptr %118, i64 %184
  br label %216

186:                                              ; preds = %181
  %187 = icmp eq i32 %135, %39
  br i1 %187, label %188, label %192

188:                                              ; preds = %186
  %189 = sext i32 %41 to i64
  %190 = call fastcc ptr @sStripString(ptr noundef nonnull %58, ptr noundef %121) #29
  %191 = getelementptr inbounds i8, ptr %121, i64 %189
  br label %216

192:                                              ; preds = %186
  %193 = icmp eq i32 %135, %42
  br i1 %193, label %194, label %198

194:                                              ; preds = %192
  %195 = sext i32 %44 to i64
  %196 = call fastcc ptr @sStripString(ptr noundef nonnull %58, ptr noundef %124) #29
  %197 = getelementptr inbounds i8, ptr %124, i64 %195
  br label %216

198:                                              ; preds = %192
  %199 = icmp eq i32 %135, %45
  br i1 %199, label %200, label %204

200:                                              ; preds = %198
  %201 = sext i32 %47 to i64
  %202 = call fastcc ptr @sStripString(ptr noundef nonnull %58, ptr noundef %127) #29
  %203 = getelementptr inbounds i8, ptr %127, i64 %201
  br label %216

204:                                              ; preds = %198
  %205 = icmp eq i32 %135, %48
  br i1 %205, label %206, label %210

206:                                              ; preds = %204
  %207 = sext i32 %50 to i64
  %208 = call fastcc ptr @sStripString(ptr noundef nonnull %58, ptr noundef %130) #29
  %209 = getelementptr inbounds i8, ptr %130, i64 %207
  br label %216

210:                                              ; preds = %204
  %211 = icmp eq i32 %135, %51
  br i1 %211, label %212, label %216

212:                                              ; preds = %210
  %213 = sext i32 %53 to i64
  %214 = call fastcc ptr @sStripString(ptr noundef nonnull %58, ptr noundef %133) #29
  %215 = getelementptr inbounds i8, ptr %133, i64 %213
  br label %216

216:                                              ; preds = %141, %149, %157, %165, %173, %183, %194, %206, %212, %210, %200, %188, %178, %169, %161, %153, %145, %137
  %217 = phi ptr [ %118, %137 ], [ %118, %141 ], [ %118, %145 ], [ %118, %149 ], [ %118, %153 ], [ %118, %157 ], [ %118, %161 ], [ %118, %165 ], [ %118, %169 ], [ %118, %173 ], [ %118, %178 ], [ %185, %183 ], [ %118, %188 ], [ %118, %194 ], [ %118, %200 ], [ %118, %206 ], [ %118, %212 ], [ %118, %210 ]
  %218 = phi ptr [ %119, %137 ], [ %119, %141 ], [ %119, %145 ], [ %119, %149 ], [ %119, %153 ], [ %119, %157 ], [ %119, %161 ], [ %119, %165 ], [ %119, %169 ], [ %119, %173 ], [ %180, %178 ], [ %119, %183 ], [ %119, %188 ], [ %119, %194 ], [ %119, %200 ], [ %119, %206 ], [ %119, %212 ], [ %119, %210 ]
  %219 = phi ptr [ %120, %137 ], [ %120, %141 ], [ %120, %145 ], [ %120, %149 ], [ %120, %153 ], [ %120, %157 ], [ %120, %161 ], [ %120, %165 ], [ %120, %169 ], [ %175, %173 ], [ %120, %178 ], [ %120, %183 ], [ %120, %188 ], [ %120, %194 ], [ %120, %200 ], [ %120, %206 ], [ %120, %212 ], [ %120, %210 ]
  %220 = phi ptr [ %121, %137 ], [ %121, %141 ], [ %121, %145 ], [ %121, %149 ], [ %121, %153 ], [ %121, %157 ], [ %121, %161 ], [ %121, %165 ], [ %121, %169 ], [ %121, %173 ], [ %121, %178 ], [ %121, %183 ], [ %191, %188 ], [ %121, %194 ], [ %121, %200 ], [ %121, %206 ], [ %121, %212 ], [ %121, %210 ]
  %221 = phi ptr [ %122, %137 ], [ %122, %141 ], [ %122, %145 ], [ %122, %149 ], [ %122, %153 ], [ %122, %157 ], [ %122, %161 ], [ %122, %165 ], [ %170, %169 ], [ %122, %173 ], [ %122, %178 ], [ %122, %183 ], [ %122, %188 ], [ %122, %194 ], [ %122, %200 ], [ %122, %206 ], [ %122, %212 ], [ %122, %210 ]
  %222 = phi ptr [ %123, %137 ], [ %123, %141 ], [ %123, %145 ], [ %123, %149 ], [ %123, %153 ], [ %123, %157 ], [ %123, %161 ], [ %166, %165 ], [ %123, %169 ], [ %123, %173 ], [ %123, %178 ], [ %123, %183 ], [ %123, %188 ], [ %123, %194 ], [ %123, %200 ], [ %123, %206 ], [ %123, %212 ], [ %123, %210 ]
  %223 = phi ptr [ %124, %137 ], [ %124, %141 ], [ %124, %145 ], [ %124, %149 ], [ %124, %153 ], [ %124, %157 ], [ %124, %161 ], [ %124, %165 ], [ %124, %169 ], [ %124, %173 ], [ %124, %178 ], [ %124, %183 ], [ %124, %188 ], [ %197, %194 ], [ %124, %200 ], [ %124, %206 ], [ %124, %212 ], [ %124, %210 ]
  %224 = phi ptr [ %125, %137 ], [ %125, %141 ], [ %125, %145 ], [ %125, %149 ], [ %125, %153 ], [ %125, %157 ], [ %162, %161 ], [ %125, %165 ], [ %125, %169 ], [ %125, %173 ], [ %125, %178 ], [ %125, %183 ], [ %125, %188 ], [ %125, %194 ], [ %125, %200 ], [ %125, %206 ], [ %125, %212 ], [ %125, %210 ]
  %225 = phi ptr [ %126, %137 ], [ %126, %141 ], [ %126, %145 ], [ %126, %149 ], [ %126, %153 ], [ %158, %157 ], [ %126, %161 ], [ %126, %165 ], [ %126, %169 ], [ %126, %173 ], [ %126, %178 ], [ %126, %183 ], [ %126, %188 ], [ %126, %194 ], [ %126, %200 ], [ %126, %206 ], [ %126, %212 ], [ %126, %210 ]
  %226 = phi ptr [ %127, %137 ], [ %127, %141 ], [ %127, %145 ], [ %127, %149 ], [ %127, %153 ], [ %127, %157 ], [ %127, %161 ], [ %127, %165 ], [ %127, %169 ], [ %127, %173 ], [ %127, %178 ], [ %127, %183 ], [ %127, %188 ], [ %127, %194 ], [ %203, %200 ], [ %127, %206 ], [ %127, %212 ], [ %127, %210 ]
  %227 = phi ptr [ %128, %137 ], [ %128, %141 ], [ %128, %145 ], [ %128, %149 ], [ %154, %153 ], [ %128, %157 ], [ %128, %161 ], [ %128, %165 ], [ %128, %169 ], [ %128, %173 ], [ %128, %178 ], [ %128, %183 ], [ %128, %188 ], [ %128, %194 ], [ %128, %200 ], [ %128, %206 ], [ %128, %212 ], [ %128, %210 ]
  %228 = phi ptr [ %129, %137 ], [ %129, %141 ], [ %129, %145 ], [ %150, %149 ], [ %129, %153 ], [ %129, %157 ], [ %129, %161 ], [ %129, %165 ], [ %129, %169 ], [ %129, %173 ], [ %129, %178 ], [ %129, %183 ], [ %129, %188 ], [ %129, %194 ], [ %129, %200 ], [ %129, %206 ], [ %129, %212 ], [ %129, %210 ]
  %229 = phi ptr [ %130, %137 ], [ %130, %141 ], [ %130, %145 ], [ %130, %149 ], [ %130, %153 ], [ %130, %157 ], [ %130, %161 ], [ %130, %165 ], [ %130, %169 ], [ %130, %173 ], [ %130, %178 ], [ %130, %183 ], [ %130, %188 ], [ %130, %194 ], [ %130, %200 ], [ %209, %206 ], [ %130, %212 ], [ %130, %210 ]
  %230 = phi ptr [ %131, %137 ], [ %131, %141 ], [ %146, %145 ], [ %131, %149 ], [ %131, %153 ], [ %131, %157 ], [ %131, %161 ], [ %131, %165 ], [ %131, %169 ], [ %131, %173 ], [ %131, %178 ], [ %131, %183 ], [ %131, %188 ], [ %131, %194 ], [ %131, %200 ], [ %131, %206 ], [ %131, %212 ], [ %131, %210 ]
  %231 = phi ptr [ %132, %137 ], [ %142, %141 ], [ %132, %145 ], [ %132, %149 ], [ %132, %153 ], [ %132, %157 ], [ %132, %161 ], [ %132, %165 ], [ %132, %169 ], [ %132, %173 ], [ %132, %178 ], [ %132, %183 ], [ %132, %188 ], [ %132, %194 ], [ %132, %200 ], [ %132, %206 ], [ %132, %212 ], [ %132, %210 ]
  %232 = phi ptr [ %133, %137 ], [ %133, %141 ], [ %133, %145 ], [ %133, %149 ], [ %133, %153 ], [ %133, %157 ], [ %133, %161 ], [ %133, %165 ], [ %133, %169 ], [ %133, %173 ], [ %133, %178 ], [ %133, %183 ], [ %133, %188 ], [ %133, %194 ], [ %133, %200 ], [ %133, %206 ], [ %215, %212 ], [ %133, %210 ]
  %233 = phi ptr [ %138, %137 ], [ %134, %141 ], [ %134, %145 ], [ %134, %149 ], [ %134, %153 ], [ %134, %157 ], [ %134, %161 ], [ %134, %165 ], [ %134, %169 ], [ %134, %173 ], [ %134, %178 ], [ %134, %183 ], [ %134, %188 ], [ %134, %194 ], [ %134, %200 ], [ %134, %206 ], [ %134, %212 ], [ %134, %210 ]
  %234 = add nuw nsw i32 %135, 1
  %235 = load i8, ptr %58, align 16
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %237, label %117, !llvm.loop !97

237:                                              ; preds = %216
  %238 = call fastcc signext i8 @zbDBReadDataLine(ptr noundef nonnull %0, ptr noundef nonnull %58) #29, !range !71
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %240, label %97, !llvm.loop !98

240:                                              ; preds = %237, %84, %71, %65
  %241 = phi i8 [ 0, %65 ], [ 0, %71 ], [ 1, %84 ], [ 1, %237 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %59) #28
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %58) #28
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %57) #28
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %56) #28
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %55) #28
  ret i8 %241
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @StripInteger(ptr noundef %0, ptr noundef %1) unnamed_addr #14 !prof !34 !PGOFuncName !99 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #28
  %4 = tail call ptr @sDBRemoveLeadingSpaces(ptr noundef %0) #29
  call void @sDBRemoveFirstString(ptr noundef %0, ptr noundef nonnull %3) #29
  %5 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %3, ptr noundef nonnull @.str.33, ptr noundef %1) #24
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @StripDouble(ptr noundef %0, ptr noundef %1) unnamed_addr #14 !prof !34 !PGOFuncName !100 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #28
  %4 = tail call ptr @sDBRemoveLeadingSpaces(ptr noundef %0) #29
  call void @sDBRemoveFirstString(ptr noundef %0, ptr noundef nonnull %3) #29
  %5 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %3, ptr noundef nonnull @.str.34, ptr noundef %1) #24
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @sStripString(ptr noundef %0, ptr noundef returned writeonly %1) unnamed_addr #3 !prof !34 !PGOFuncName !101 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %7, %3 ]
  %5 = load i8, ptr %4, align 1, !tbaa !35
  %6 = icmp eq i8 %5, 34
  %7 = getelementptr inbounds i8, ptr %4, i64 1
  br i1 %6, label %8, label %3, !llvm.loop !102

8:                                                ; preds = %3
  %9 = load i8, ptr %7, align 1, !tbaa !35
  br label %10

10:                                               ; preds = %20, %8
  %11 = phi i8 [ %23, %20 ], [ %9, %8 ]
  %12 = phi ptr [ %21, %20 ], [ %7, %8 ]
  %13 = phi ptr [ %22, %20 ], [ %1, %8 ]
  %14 = getelementptr inbounds i8, ptr %12, i64 1
  %15 = icmp eq i8 %11, 34
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i8, ptr %14, align 1, !tbaa !35
  %18 = getelementptr inbounds i8, ptr %12, i64 2
  %19 = icmp eq i8 %17, 34
  br i1 %19, label %20, label %25

20:                                               ; preds = %16, %10
  %21 = phi ptr [ %18, %16 ], [ %14, %10 ]
  %22 = getelementptr inbounds i8, ptr %13, i64 1
  store i8 %11, ptr %13, align 1, !tbaa !35
  %23 = load i8, ptr %21, align 1, !tbaa !35
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %10, !llvm.loop !103

25:                                               ; preds = %16, %20
  %26 = phi ptr [ %18, %16 ], [ %21, %20 ]
  %27 = phi ptr [ %13, %16 ], [ %22, %20 ]
  store i8 0, ptr %27, align 1, !tbaa !35
  %28 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %26) #24
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DBPutTable(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8, ptr nocapture noundef readonly %9, i32 noundef %10, i32 noundef %11, ptr nocapture noundef readonly %12, ptr nocapture noundef readonly %13, i32 noundef %14, i32 noundef %15, ptr nocapture noundef readonly %16, ptr nocapture noundef readonly %17, i32 noundef %18, i32 noundef %19, ptr nocapture noundef readonly %20, ptr nocapture noundef readonly %21, i32 noundef %22, i32 noundef %23, ptr nocapture noundef readonly %24, ptr nocapture noundef readonly %25, i32 noundef %26, i32 noundef %27, ptr nocapture noundef readonly %28, ptr nocapture noundef readonly %29, i32 noundef %30, i32 noundef %31, ptr nocapture noundef readonly %32, ptr nocapture noundef readonly %33, i32 noundef %34, i32 noundef %35, ptr nocapture noundef readonly %36, ptr nocapture noundef readonly %37, i32 noundef %38, i32 noundef %39, ptr nocapture noundef readonly %40, ptr nocapture noundef readonly %41, i32 noundef %42, i32 noundef %43, ptr nocapture noundef readonly %44, ptr nocapture noundef readonly %45, i32 noundef %46, i32 noundef %47, ptr nocapture noundef readonly %48, ptr nocapture noundef readonly %49, i32 noundef %50, i32 noundef %51, ptr nocapture noundef readonly %52, ptr nocapture noundef readonly %53, i32 noundef %54, i32 noundef %55, ptr nocapture noundef readonly %56, ptr nocapture noundef readonly %57, i32 noundef %58, i32 noundef %59, ptr nocapture noundef readonly %60, ptr nocapture noundef readonly %61, i32 noundef %62, i32 noundef %63, ptr nocapture noundef readonly %64, ptr nocapture noundef readonly %65, i32 noundef %66, i32 noundef %67, ptr nocapture noundef readonly %68, ptr nocapture noundef readonly %69, i32 noundef %70) local_unnamed_addr #7 !prof !34 {
  %72 = alloca [256 x i8], align 16
  %73 = alloca [1000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %72) #28
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %73) #28
  %74 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 3
  %75 = load i32, ptr %74, align 8, !tbaa !74
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18) #29
  br label %79

79:                                               ; preds = %77, %71
  %80 = call fastcc ptr @sDataBaseName(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %72) #29
  %81 = load i32, ptr %0, align 8, !tbaa !75
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !65
  %86 = call i32 @fseek(ptr noundef %85, i64 noundef 0, i32 noundef 2) #29
  br label %88

87:                                               ; preds = %79
  call fastcc void @ePrepareDatabaseForEntry(ptr noundef nonnull %0, ptr noundef nonnull %72, i32 noundef 64, i32 noundef %2) #29
  br label %88

88:                                               ; preds = %87, %83
  call fastcc void @ConstructDataHeader(ptr noundef nonnull %73, ptr noundef nonnull %72, i32 noundef 64) #29
  br label %89

89:                                               ; preds = %88, %141
  %90 = phi i32 [ 1, %88 ], [ %142, %141 ]
  %91 = icmp eq i32 %90, %3
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  call fastcc void @AddColumnType(ptr noundef nonnull %73, i32 noundef 1, ptr noundef %4) #29
  br label %141

93:                                               ; preds = %89
  %94 = icmp eq i32 %90, %7
  br i1 %94, label %95, label %96

95:                                               ; preds = %93
  call fastcc void @AddColumnType(ptr noundef nonnull %73, i32 noundef 1, ptr noundef %8) #29
  br label %141

96:                                               ; preds = %93
  %97 = icmp eq i32 %90, %11
  br i1 %97, label %98, label %99

98:                                               ; preds = %96
  call fastcc void @AddColumnType(ptr noundef nonnull %73, i32 noundef 1, ptr noundef %12) #29
  br label %141

99:                                               ; preds = %96
  %100 = icmp eq i32 %90, %15
  br i1 %100, label %101, label %102

101:                                              ; preds = %99
  call fastcc void @AddColumnType(ptr noundef nonnull %73, i32 noundef 1, ptr noundef %16) #29
  br label %141

102:                                              ; preds = %99
  %103 = icmp eq i32 %90, %19
  br i1 %103, label %104, label %105

104:                                              ; preds = %102
  call fastcc void @AddColumnType(ptr noundef nonnull %73, i32 noundef 1, ptr noundef %20) #29
  br label %141

105:                                              ; preds = %102
  %106 = icmp eq i32 %90, %23
  br i1 %106, label %107, label %108

107:                                              ; preds = %105
  call fastcc void @AddColumnType(ptr noundef nonnull %73, i32 noundef 1, ptr noundef %24) #29
  br label %141

108:                                              ; preds = %105
  %109 = icmp eq i32 %90, %27
  br i1 %109, label %110, label %111

110:                                              ; preds = %108
  call fastcc void @AddColumnType(ptr noundef nonnull %73, i32 noundef 1, ptr noundef %28) #29
  br label %141

111:                                              ; preds = %108
  %112 = icmp eq i32 %90, %31
  br i1 %112, label %113, label %114

113:                                              ; preds = %111
  call fastcc void @AddColumnType(ptr noundef nonnull %73, i32 noundef 1, ptr noundef %32) #29
  br label %141

114:                                              ; preds = %111
  %115 = icmp eq i32 %90, %35
  br i1 %115, label %116, label %117

116:                                              ; preds = %114
  call fastcc void @AddColumnType(ptr noundef nonnull %73, i32 noundef 2, ptr noundef %36) #29
  br label %141

117:                                              ; preds = %114
  %118 = icmp eq i32 %90, %39
  br i1 %118, label %119, label %120

119:                                              ; preds = %117
  call fastcc void @AddColumnType(ptr noundef nonnull %73, i32 noundef 2, ptr noundef %40) #29
  br label %141

120:                                              ; preds = %117
  %121 = icmp eq i32 %90, %43
  br i1 %121, label %122, label %123

122:                                              ; preds = %120
  call fastcc void @AddColumnType(ptr noundef nonnull %73, i32 noundef 2, ptr noundef %44) #29
  br label %141

123:                                              ; preds = %120
  %124 = icmp eq i32 %90, %47
  br i1 %124, label %125, label %126

125:                                              ; preds = %123
  call fastcc void @AddColumnType(ptr noundef nonnull %73, i32 noundef 2, ptr noundef %48) #29
  br label %141

126:                                              ; preds = %123
  %127 = icmp eq i32 %90, %51
  br i1 %127, label %128, label %129

128:                                              ; preds = %126
  call fastcc void @AddColumnType(ptr noundef nonnull %73, i32 noundef 3, ptr noundef %52) #29
  br label %141

129:                                              ; preds = %126
  %130 = icmp eq i32 %90, %55
  br i1 %130, label %131, label %132

131:                                              ; preds = %129
  call fastcc void @AddColumnType(ptr noundef nonnull %73, i32 noundef 3, ptr noundef %56) #29
  br label %141

132:                                              ; preds = %129
  %133 = icmp eq i32 %90, %59
  br i1 %133, label %134, label %135

134:                                              ; preds = %132
  call fastcc void @AddColumnType(ptr noundef nonnull %73, i32 noundef 3, ptr noundef %60) #29
  br label %141

135:                                              ; preds = %132
  %136 = icmp eq i32 %90, %63
  br i1 %136, label %137, label %138

137:                                              ; preds = %135
  call fastcc void @AddColumnType(ptr noundef nonnull %73, i32 noundef 3, ptr noundef %64) #29
  br label %141

138:                                              ; preds = %135
  %139 = icmp eq i32 %90, %67
  br i1 %139, label %140, label %141

140:                                              ; preds = %138
  call fastcc void @AddColumnType(ptr noundef nonnull %73, i32 noundef 3, ptr noundef %68) #29
  br label %141

141:                                              ; preds = %92, %98, %104, %110, %116, %122, %128, %134, %138, %140, %137, %131, %125, %119, %113, %107, %101, %95
  %142 = add nuw nsw i32 %90, 1
  %143 = icmp eq i32 %142, 17
  br i1 %143, label %144, label %89, !llvm.loop !104

144:                                              ; preds = %141
  call fastcc void @WriteDataLine(ptr noundef nonnull %0, ptr noundef nonnull %73) #29
  %145 = icmp sgt i32 %2, 0
  br i1 %145, label %146, label %292

146:                                              ; preds = %144
  %147 = sext i32 %38 to i64
  %148 = sext i32 %34 to i64
  %149 = sext i32 %30 to i64
  %150 = sext i32 %26 to i64
  %151 = sext i32 %22 to i64
  %152 = sext i32 %18 to i64
  %153 = sext i32 %14 to i64
  %154 = sext i32 %10 to i64
  %155 = sext i32 %6 to i64
  br label %156

156:                                              ; preds = %146, %289
  %157 = phi ptr [ %5, %146 ], [ %286, %289 ]
  %158 = phi i32 [ 0, %146 ], [ %290, %289 ]
  %159 = phi ptr [ %9, %146 ], [ %285, %289 ]
  %160 = phi ptr [ %13, %146 ], [ %284, %289 ]
  %161 = phi ptr [ %69, %146 ], [ %283, %289 ]
  %162 = phi ptr [ %17, %146 ], [ %282, %289 ]
  %163 = phi ptr [ %21, %146 ], [ %281, %289 ]
  %164 = phi ptr [ %25, %146 ], [ %280, %289 ]
  %165 = phi ptr [ %65, %146 ], [ %279, %289 ]
  %166 = phi ptr [ %29, %146 ], [ %278, %289 ]
  %167 = phi ptr [ %33, %146 ], [ %277, %289 ]
  %168 = phi ptr [ %37, %146 ], [ %276, %289 ]
  %169 = phi ptr [ %61, %146 ], [ %275, %289 ]
  %170 = phi ptr [ %41, %146 ], [ %274, %289 ]
  %171 = phi ptr [ %45, %146 ], [ %273, %289 ]
  %172 = phi ptr [ %49, %146 ], [ %272, %289 ]
  %173 = phi ptr [ %57, %146 ], [ %271, %289 ]
  %174 = phi ptr [ %53, %146 ], [ %270, %289 ]
  store i8 0, ptr %73, align 16
  br label %175

175:                                              ; preds = %156, %269
  %176 = phi ptr [ %157, %156 ], [ %286, %269 ]
  %177 = phi i32 [ 1, %156 ], [ %287, %269 ]
  %178 = phi ptr [ %159, %156 ], [ %285, %269 ]
  %179 = phi ptr [ %160, %156 ], [ %284, %269 ]
  %180 = phi ptr [ %161, %156 ], [ %283, %269 ]
  %181 = phi ptr [ %162, %156 ], [ %282, %269 ]
  %182 = phi ptr [ %163, %156 ], [ %281, %269 ]
  %183 = phi ptr [ %164, %156 ], [ %280, %269 ]
  %184 = phi ptr [ %165, %156 ], [ %279, %269 ]
  %185 = phi ptr [ %166, %156 ], [ %278, %269 ]
  %186 = phi ptr [ %167, %156 ], [ %277, %269 ]
  %187 = phi ptr [ %168, %156 ], [ %276, %269 ]
  %188 = phi ptr [ %169, %156 ], [ %275, %269 ]
  %189 = phi ptr [ %170, %156 ], [ %274, %269 ]
  %190 = phi ptr [ %171, %156 ], [ %273, %269 ]
  %191 = phi ptr [ %172, %156 ], [ %272, %269 ]
  %192 = phi ptr [ %173, %156 ], [ %271, %269 ]
  %193 = phi ptr [ %174, %156 ], [ %270, %269 ]
  %194 = icmp eq i32 %177, %3
  br i1 %194, label %195, label %197

195:                                              ; preds = %175
  call fastcc void @ConcatInteger(ptr noundef nonnull %73, ptr noundef %176) #29
  %196 = getelementptr inbounds i8, ptr %176, i64 %155
  br label %269

197:                                              ; preds = %175
  %198 = icmp eq i32 %177, %7
  br i1 %198, label %199, label %201

199:                                              ; preds = %197
  call fastcc void @ConcatInteger(ptr noundef nonnull %73, ptr noundef %178) #29
  %200 = getelementptr inbounds i8, ptr %178, i64 %154
  br label %269

201:                                              ; preds = %197
  %202 = icmp eq i32 %177, %11
  br i1 %202, label %203, label %205

203:                                              ; preds = %201
  call fastcc void @ConcatInteger(ptr noundef nonnull %73, ptr noundef %179) #29
  %204 = getelementptr inbounds i8, ptr %179, i64 %153
  br label %269

205:                                              ; preds = %201
  %206 = icmp eq i32 %177, %15
  br i1 %206, label %207, label %209

207:                                              ; preds = %205
  call fastcc void @ConcatInteger(ptr noundef nonnull %73, ptr noundef %181) #29
  %208 = getelementptr inbounds i8, ptr %181, i64 %152
  br label %269

209:                                              ; preds = %205
  %210 = icmp eq i32 %177, %19
  br i1 %210, label %211, label %213

211:                                              ; preds = %209
  call fastcc void @ConcatInteger(ptr noundef nonnull %73, ptr noundef %182) #29
  %212 = getelementptr inbounds i8, ptr %182, i64 %151
  br label %269

213:                                              ; preds = %209
  %214 = icmp eq i32 %177, %23
  br i1 %214, label %215, label %217

215:                                              ; preds = %213
  call fastcc void @ConcatInteger(ptr noundef nonnull %73, ptr noundef %183) #29
  %216 = getelementptr inbounds i8, ptr %183, i64 %150
  br label %269

217:                                              ; preds = %213
  %218 = icmp eq i32 %177, %27
  br i1 %218, label %219, label %221

219:                                              ; preds = %217
  call fastcc void @ConcatInteger(ptr noundef nonnull %73, ptr noundef %185) #29
  %220 = getelementptr inbounds i8, ptr %185, i64 %149
  br label %269

221:                                              ; preds = %217
  %222 = icmp eq i32 %177, %31
  br i1 %222, label %223, label %225

223:                                              ; preds = %221
  call fastcc void @ConcatInteger(ptr noundef nonnull %73, ptr noundef %186) #29
  %224 = getelementptr inbounds i8, ptr %186, i64 %148
  br label %269

225:                                              ; preds = %221
  %226 = icmp eq i32 %177, %35
  br i1 %226, label %227, label %229

227:                                              ; preds = %225
  call fastcc void @ConcatDouble(ptr noundef nonnull %73, ptr noundef %187) #29
  %228 = getelementptr inbounds i8, ptr %187, i64 %147
  br label %269

229:                                              ; preds = %225
  %230 = icmp eq i32 %177, %39
  br i1 %230, label %231, label %234

231:                                              ; preds = %229
  %232 = sext i32 %42 to i64
  call fastcc void @ConcatDouble(ptr noundef nonnull %73, ptr noundef %189) #29
  %233 = getelementptr inbounds i8, ptr %189, i64 %232
  br label %269

234:                                              ; preds = %229
  %235 = icmp eq i32 %177, %43
  br i1 %235, label %236, label %239

236:                                              ; preds = %234
  %237 = sext i32 %46 to i64
  call fastcc void @ConcatDouble(ptr noundef nonnull %73, ptr noundef %190) #29
  %238 = getelementptr inbounds i8, ptr %190, i64 %237
  br label %269

239:                                              ; preds = %234
  %240 = icmp eq i32 %177, %47
  br i1 %240, label %241, label %244

241:                                              ; preds = %239
  %242 = sext i32 %50 to i64
  call fastcc void @ConcatDouble(ptr noundef nonnull %73, ptr noundef %191) #29
  %243 = getelementptr inbounds i8, ptr %191, i64 %242
  br label %269

244:                                              ; preds = %239
  %245 = icmp eq i32 %177, %51
  br i1 %245, label %246, label %249

246:                                              ; preds = %244
  %247 = sext i32 %54 to i64
  call fastcc void @ConcatString(ptr noundef nonnull %73, ptr noundef %193) #29
  %248 = getelementptr inbounds i8, ptr %193, i64 %247
  br label %269

249:                                              ; preds = %244
  %250 = icmp eq i32 %177, %55
  br i1 %250, label %251, label %254

251:                                              ; preds = %249
  %252 = sext i32 %58 to i64
  call fastcc void @ConcatString(ptr noundef nonnull %73, ptr noundef %192) #29
  %253 = getelementptr inbounds i8, ptr %192, i64 %252
  br label %269

254:                                              ; preds = %249
  %255 = icmp eq i32 %177, %59
  br i1 %255, label %256, label %259

256:                                              ; preds = %254
  %257 = sext i32 %62 to i64
  call fastcc void @ConcatString(ptr noundef nonnull %73, ptr noundef %188) #29
  %258 = getelementptr inbounds i8, ptr %188, i64 %257
  br label %269

259:                                              ; preds = %254
  %260 = icmp eq i32 %177, %63
  br i1 %260, label %261, label %264

261:                                              ; preds = %259
  %262 = sext i32 %66 to i64
  call fastcc void @ConcatString(ptr noundef nonnull %73, ptr noundef %184) #29
  %263 = getelementptr inbounds i8, ptr %184, i64 %262
  br label %269

264:                                              ; preds = %259
  %265 = icmp eq i32 %177, %67
  br i1 %265, label %266, label %269

266:                                              ; preds = %264
  %267 = sext i32 %70 to i64
  call fastcc void @ConcatString(ptr noundef nonnull %73, ptr noundef %180) #29
  %268 = getelementptr inbounds i8, ptr %180, i64 %267
  br label %269

269:                                              ; preds = %195, %203, %211, %219, %227, %236, %246, %256, %264, %266, %261, %251, %241, %231, %223, %215, %207, %199
  %270 = phi ptr [ %193, %195 ], [ %193, %199 ], [ %193, %203 ], [ %193, %207 ], [ %193, %211 ], [ %193, %215 ], [ %193, %219 ], [ %193, %223 ], [ %193, %227 ], [ %193, %231 ], [ %193, %236 ], [ %193, %241 ], [ %248, %246 ], [ %193, %251 ], [ %193, %256 ], [ %193, %261 ], [ %193, %266 ], [ %193, %264 ]
  %271 = phi ptr [ %192, %195 ], [ %192, %199 ], [ %192, %203 ], [ %192, %207 ], [ %192, %211 ], [ %192, %215 ], [ %192, %219 ], [ %192, %223 ], [ %192, %227 ], [ %192, %231 ], [ %192, %236 ], [ %192, %241 ], [ %192, %246 ], [ %253, %251 ], [ %192, %256 ], [ %192, %261 ], [ %192, %266 ], [ %192, %264 ]
  %272 = phi ptr [ %191, %195 ], [ %191, %199 ], [ %191, %203 ], [ %191, %207 ], [ %191, %211 ], [ %191, %215 ], [ %191, %219 ], [ %191, %223 ], [ %191, %227 ], [ %191, %231 ], [ %191, %236 ], [ %243, %241 ], [ %191, %246 ], [ %191, %251 ], [ %191, %256 ], [ %191, %261 ], [ %191, %266 ], [ %191, %264 ]
  %273 = phi ptr [ %190, %195 ], [ %190, %199 ], [ %190, %203 ], [ %190, %207 ], [ %190, %211 ], [ %190, %215 ], [ %190, %219 ], [ %190, %223 ], [ %190, %227 ], [ %190, %231 ], [ %238, %236 ], [ %190, %241 ], [ %190, %246 ], [ %190, %251 ], [ %190, %256 ], [ %190, %261 ], [ %190, %266 ], [ %190, %264 ]
  %274 = phi ptr [ %189, %195 ], [ %189, %199 ], [ %189, %203 ], [ %189, %207 ], [ %189, %211 ], [ %189, %215 ], [ %189, %219 ], [ %189, %223 ], [ %189, %227 ], [ %233, %231 ], [ %189, %236 ], [ %189, %241 ], [ %189, %246 ], [ %189, %251 ], [ %189, %256 ], [ %189, %261 ], [ %189, %266 ], [ %189, %264 ]
  %275 = phi ptr [ %188, %195 ], [ %188, %199 ], [ %188, %203 ], [ %188, %207 ], [ %188, %211 ], [ %188, %215 ], [ %188, %219 ], [ %188, %223 ], [ %188, %227 ], [ %188, %231 ], [ %188, %236 ], [ %188, %241 ], [ %188, %246 ], [ %188, %251 ], [ %258, %256 ], [ %188, %261 ], [ %188, %266 ], [ %188, %264 ]
  %276 = phi ptr [ %187, %195 ], [ %187, %199 ], [ %187, %203 ], [ %187, %207 ], [ %187, %211 ], [ %187, %215 ], [ %187, %219 ], [ %187, %223 ], [ %228, %227 ], [ %187, %231 ], [ %187, %236 ], [ %187, %241 ], [ %187, %246 ], [ %187, %251 ], [ %187, %256 ], [ %187, %261 ], [ %187, %266 ], [ %187, %264 ]
  %277 = phi ptr [ %186, %195 ], [ %186, %199 ], [ %186, %203 ], [ %186, %207 ], [ %186, %211 ], [ %186, %215 ], [ %186, %219 ], [ %224, %223 ], [ %186, %227 ], [ %186, %231 ], [ %186, %236 ], [ %186, %241 ], [ %186, %246 ], [ %186, %251 ], [ %186, %256 ], [ %186, %261 ], [ %186, %266 ], [ %186, %264 ]
  %278 = phi ptr [ %185, %195 ], [ %185, %199 ], [ %185, %203 ], [ %185, %207 ], [ %185, %211 ], [ %185, %215 ], [ %220, %219 ], [ %185, %223 ], [ %185, %227 ], [ %185, %231 ], [ %185, %236 ], [ %185, %241 ], [ %185, %246 ], [ %185, %251 ], [ %185, %256 ], [ %185, %261 ], [ %185, %266 ], [ %185, %264 ]
  %279 = phi ptr [ %184, %195 ], [ %184, %199 ], [ %184, %203 ], [ %184, %207 ], [ %184, %211 ], [ %184, %215 ], [ %184, %219 ], [ %184, %223 ], [ %184, %227 ], [ %184, %231 ], [ %184, %236 ], [ %184, %241 ], [ %184, %246 ], [ %184, %251 ], [ %184, %256 ], [ %263, %261 ], [ %184, %266 ], [ %184, %264 ]
  %280 = phi ptr [ %183, %195 ], [ %183, %199 ], [ %183, %203 ], [ %183, %207 ], [ %183, %211 ], [ %216, %215 ], [ %183, %219 ], [ %183, %223 ], [ %183, %227 ], [ %183, %231 ], [ %183, %236 ], [ %183, %241 ], [ %183, %246 ], [ %183, %251 ], [ %183, %256 ], [ %183, %261 ], [ %183, %266 ], [ %183, %264 ]
  %281 = phi ptr [ %182, %195 ], [ %182, %199 ], [ %182, %203 ], [ %182, %207 ], [ %212, %211 ], [ %182, %215 ], [ %182, %219 ], [ %182, %223 ], [ %182, %227 ], [ %182, %231 ], [ %182, %236 ], [ %182, %241 ], [ %182, %246 ], [ %182, %251 ], [ %182, %256 ], [ %182, %261 ], [ %182, %266 ], [ %182, %264 ]
  %282 = phi ptr [ %181, %195 ], [ %181, %199 ], [ %181, %203 ], [ %208, %207 ], [ %181, %211 ], [ %181, %215 ], [ %181, %219 ], [ %181, %223 ], [ %181, %227 ], [ %181, %231 ], [ %181, %236 ], [ %181, %241 ], [ %181, %246 ], [ %181, %251 ], [ %181, %256 ], [ %181, %261 ], [ %181, %266 ], [ %181, %264 ]
  %283 = phi ptr [ %180, %195 ], [ %180, %199 ], [ %180, %203 ], [ %180, %207 ], [ %180, %211 ], [ %180, %215 ], [ %180, %219 ], [ %180, %223 ], [ %180, %227 ], [ %180, %231 ], [ %180, %236 ], [ %180, %241 ], [ %180, %246 ], [ %180, %251 ], [ %180, %256 ], [ %180, %261 ], [ %268, %266 ], [ %180, %264 ]
  %284 = phi ptr [ %179, %195 ], [ %179, %199 ], [ %204, %203 ], [ %179, %207 ], [ %179, %211 ], [ %179, %215 ], [ %179, %219 ], [ %179, %223 ], [ %179, %227 ], [ %179, %231 ], [ %179, %236 ], [ %179, %241 ], [ %179, %246 ], [ %179, %251 ], [ %179, %256 ], [ %179, %261 ], [ %179, %266 ], [ %179, %264 ]
  %285 = phi ptr [ %178, %195 ], [ %200, %199 ], [ %178, %203 ], [ %178, %207 ], [ %178, %211 ], [ %178, %215 ], [ %178, %219 ], [ %178, %223 ], [ %178, %227 ], [ %178, %231 ], [ %178, %236 ], [ %178, %241 ], [ %178, %246 ], [ %178, %251 ], [ %178, %256 ], [ %178, %261 ], [ %178, %266 ], [ %178, %264 ]
  %286 = phi ptr [ %196, %195 ], [ %176, %199 ], [ %176, %203 ], [ %176, %207 ], [ %176, %211 ], [ %176, %215 ], [ %176, %219 ], [ %176, %223 ], [ %176, %227 ], [ %176, %231 ], [ %176, %236 ], [ %176, %241 ], [ %176, %246 ], [ %176, %251 ], [ %176, %256 ], [ %176, %261 ], [ %176, %266 ], [ %176, %264 ]
  %287 = add nuw nsw i32 %177, 1
  %288 = icmp eq i32 %287, 17
  br i1 %288, label %289, label %175, !llvm.loop !105

289:                                              ; preds = %269
  call fastcc void @WriteDataLine(ptr noundef nonnull %0, ptr noundef nonnull %73) #29
  %290 = add nuw nsw i32 %158, 1
  %291 = icmp eq i32 %290, %2
  br i1 %291, label %292, label %156, !llvm.loop !106

292:                                              ; preds = %289, %144
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %73) #28
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %72) #28
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @AddColumnType(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #18 !prof !34 !PGOFuncName !107 {
  %4 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  store i16 32, ptr %5, align 1
  %6 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  store i16 32, ptr %7, align 1
  %8 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %9 = add nsw i32 %1, -1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [3 x i32], ptr @switch.table.AddColumnType, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %0, i64 %8
  store i32 %12, ptr %13, align 1
  %14 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %15 = getelementptr inbounds i8, ptr %0, i64 %14
  store i16 32, ptr %15, align 1
  %16 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2) #24
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @WriteDataLine(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #14 !prof !34 !PGOFuncName !108 {
  %3 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.22, ptr noundef %1) #29
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @ConcatInteger(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !prof !34 !PGOFuncName !109 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #28
  %4 = load i32, ptr %1, align 4, !tbaa !59
  %5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %4) #24
  %6 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %3) #24
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @ConcatDouble(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !prof !34 !PGOFuncName !110 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #28
  %4 = load double, ptr %1, align 8, !tbaa !111
  %5 = fcmp oeq double %4, 0.000000e+00
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %3, ptr noundef nonnull align 1 dereferenceable(5) @.str.36, i64 5, i1 false)
  br label %16

7:                                                ; preds = %2
  %8 = tail call double @llvm.fabs.f64(double %4)
  %9 = fcmp olt double %8, 1.000000e+03
  %10 = fcmp ogt double %8, 1.000000e-04
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.37, double noundef %4) #24
  br label %16

14:                                               ; preds = %7
  %15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.38, double noundef %4) #24
  br label %16

16:                                               ; preds = %12, %14, %6
  %17 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %3) #24
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @ConcatString(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !prof !34 !PGOFuncName !113 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #28
  %4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef 34) #24
  %5 = load i8, ptr %1, align 1, !tbaa !35
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %2, %19
  %8 = phi i8 [ %22, %19 ], [ %5, %2 ]
  %9 = phi i32 [ %20, %19 ], [ 2, %2 ]
  %10 = phi ptr [ %21, %19 ], [ %1, %2 ]
  %11 = add nsw i32 %9, 1
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [256 x i8], ptr %3, i64 0, i64 %12
  store i8 %8, ptr %13, align 1, !tbaa !35
  %14 = icmp eq i8 %8, 34
  br i1 %14, label %15, label %19

15:                                               ; preds = %7
  %16 = add nsw i32 %9, 2
  %17 = sext i32 %11 to i64
  %18 = getelementptr inbounds [256 x i8], ptr %3, i64 0, i64 %17
  store i8 34, ptr %18, align 1, !tbaa !35
  br label %19

19:                                               ; preds = %15, %7
  %20 = phi i32 [ %16, %15 ], [ %11, %7 ]
  %21 = getelementptr inbounds i8, ptr %10, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !35
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %7, !llvm.loop !114

24:                                               ; preds = %19, %2
  %25 = phi i32 [ 2, %2 ], [ %20, %19 ]
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds [256 x i8], ptr %3, i64 0, i64 %27
  store i8 34, ptr %28, align 1, !tbaa !35
  %29 = sext i32 %26 to i64
  %30 = getelementptr inbounds [256 x i8], ptr %3, i64 0, i64 %29
  store i8 0, ptr %30, align 1, !tbaa !35
  %31 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %3) #24
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DBClose(ptr nocapture noundef %0) local_unnamed_addr #7 !prof !34 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  %4 = load ptr, ptr %0, align 8, !tbaa !50
  %5 = load i32, ptr %4, align 8, !tbaa !75
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.DATABASEt, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = tail call i32 @fclose(ptr noundef %9) #29
  br label %41

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.DATABASEt, ptr %4, i64 0, i32 6
  %13 = load i8, ptr %12, align 8, !tbaa !66
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  tail call void @CompactDataBase(ptr noundef nonnull %4) #29
  %16 = load ptr, ptr %0, align 8, !tbaa !50
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi ptr [ %16, %15 ], [ %4, %11 ]
  %19 = getelementptr inbounds %struct.DATABASEt, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !65
  %21 = tail call i32 @fclose(ptr noundef %20) #29
  %22 = load ptr, ptr %0, align 8, !tbaa !50
  %23 = getelementptr inbounds %struct.DATABASEt, ptr %22, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  %25 = tail call i32 @dlDictLoop(ptr noundef %24) #29
  store i32 0, ptr %2, align 4, !tbaa !59
  %26 = load ptr, ptr %0, align 8, !tbaa !50
  %27 = getelementptr inbounds %struct.DATABASEt, ptr %26, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !63
  %29 = call ptr @vPDictNext(ptr noundef %28, ptr noundef nonnull %2, ptr noundef nonnull %3) #29
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %17, %31
  %32 = phi ptr [ %36, %31 ], [ %29, %17 ]
  tail call void @free(ptr noundef nonnull %32) #24
  %33 = load ptr, ptr %0, align 8, !tbaa !50
  %34 = getelementptr inbounds %struct.DATABASEt, ptr %33, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !63
  %36 = call ptr @vPDictNext(ptr noundef %35, ptr noundef nonnull %2, ptr noundef nonnull %3) #29
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %31, !llvm.loop !115

38:                                               ; preds = %31, %17
  %39 = phi ptr [ %26, %17 ], [ %33, %31 ]
  %40 = getelementptr inbounds %struct.DATABASEt, ptr %39, i64 0, i32 7
  tail call void @DictDestroy(ptr noundef nonnull %40) #29
  br label %41

41:                                               ; preds = %38, %7
  %42 = load ptr, ptr %0, align 8, !tbaa !50
  tail call void @free(ptr noundef %42) #24
  store ptr null, ptr %0, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #28
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @DBPushPrefix(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #14 !prof !34 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #28
  %4 = call fastcc ptr @sDataBaseName(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #29
  %5 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !80
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr %5, align 4, !tbaa !80
  %8 = icmp sgt i32 %6, 8
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25) #29
  %11 = load i32, ptr %5, align 4, !tbaa !80
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i32 [ %11, %9 ], [ %7, %2 ]
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 5, i64 %14
  %16 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %3) #24
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @DBPopPrefix(ptr nocapture noundef %0) local_unnamed_addr #14 !prof !34 {
  %2 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !80
  %4 = add nsw i32 %3, -1
  store i32 %4, ptr %2, align 4, !tbaa !80
  %5 = icmp slt i32 %3, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26) #29
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @DBZeroPrefix(ptr nocapture noundef writeonly %0) local_unnamed_addr #19 !prof !34 {
  %2 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 4
  store i32 0, ptr %2, align 4, !tbaa !80
  %3 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 5
  store i8 0, ptr %3, align 1
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @DBPushZeroPrefix(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #14 !prof !34 {
  %3 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !80
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %3, align 4, !tbaa !80
  %6 = icmp sgt i32 %4, 8
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25) #29
  %9 = load i32, ptr %3, align 4, !tbaa !80
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ %9, %7 ], [ %5, %2 ]
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 5, i64 %12
  %14 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %1) #24
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc noundef ptr @eEntryCreate(ptr nocapture noundef readonly %0, i32 noundef %1, i64 noundef %2) unnamed_addr #20 !prof !34 !PGOFuncName !116 {
  %4 = tail call noalias dereferenceable_or_null(272) ptr @malloc(i64 noundef 272) #25
  %5 = getelementptr inbounds %struct.ENTRYt, ptr %4, i64 0, i32 2
  store i32 %1, ptr %5, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.ENTRYt, ptr %4, i64 0, i32 1
  %7 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %0) #24
  store i64 %2, ptr %4, align 8, !tbaa !68
  ret ptr %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #21

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #23

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { nofree nounwind }
attributes #24 = { nounwind optsize }
attributes #25 = { nounwind optsize allocsize(0) }
attributes #26 = { nounwind optsize allocsize(1) }
attributes #27 = { nounwind optsize willreturn memory(read) }
attributes #28 = { nounwind }
attributes #29 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 36494405452}
!4 = !{!"MaxCount", i64 7149406114}
!5 = !{!"MaxInternalCount", i64 7149406114}
!6 = !{!"MaxFunctionCount", i64 1283723375}
!7 = !{!"NumCounts", i64 1914}
!8 = !{!"NumFunctions", i64 240}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 7149406114, i32 1}
!14 = !{i32 100000, i64 7149406114, i32 1}
!15 = !{i32 200000, i64 7140152539, i32 2}
!16 = !{i32 300000, i64 7140152539, i32 2}
!17 = !{i32 400000, i64 3344610218, i32 4}
!18 = !{i32 500000, i64 3344610218, i32 4}
!19 = !{i32 600000, i64 2054445201, i32 5}
!20 = !{i32 700000, i64 2041548705, i32 10}
!21 = !{i32 800000, i64 2041548705, i32 10}
!22 = !{i32 900000, i64 2041548705, i32 10}
!23 = !{i32 950000, i64 855650904, i32 12}
!24 = !{i32 990000, i64 428072471, i32 14}
!25 = !{i32 999000, i64 9072759, i32 28}
!26 = !{i32 999900, i64 104986, i32 54}
!27 = !{i32 999990, i64 19030, i32 143}
!28 = !{i32 999999, i64 2509, i32 165}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = distinct !{!40, !39}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !39}
!43 = distinct !{!43, !39}
!44 = distinct !{!44, !39}
!45 = !{!46, !47, i64 0}
!46 = !{!"", !47, i64 0, !48, i64 8}
!47 = !{!"int", !36, i64 0}
!48 = !{!"any pointer", !36, i64 0}
!49 = !{!46, !48, i64 8}
!50 = !{!48, !48, i64 0}
!51 = !{!52, !48, i64 0}
!52 = !{!"", !48, i64 0, !48, i64 8}
!53 = distinct !{!53, !39}
!54 = !{!52, !48, i64 8}
!55 = distinct !{!55, !39}
!56 = distinct !{!56, !39}
!57 = !{i64 0, i64 8, !50, i64 8, i64 8, !50}
!58 = distinct !{!58, !39}
!59 = !{!47, !47, i64 0}
!60 = !{!"database.c:ReportError"}
!61 = !{!62, !47, i64 2856}
!62 = !{!"", !47, i64 0, !48, i64 8, !36, i64 16, !47, i64 272, !47, i64 276, !36, i64 280, !36, i64 2840, !48, i64 2848, !47, i64 2856, !36, i64 2860, !47, i64 3860, !36, i64 3864, !47, i64 4120}
!63 = !{!62, !48, i64 2848}
!64 = distinct !{!64, !39}
!65 = !{!62, !48, i64 8}
!66 = !{!62, !36, i64 2840}
!67 = !{!"database.c:TransferEntryToNewFile"}
!68 = !{!69, !70, i64 0}
!69 = !{!"", !70, i64 0, !36, i64 8, !47, i64 264, !47, i64 268}
!70 = !{!"long", !36, i64 0}
!71 = !{i8 0, i8 2}
!72 = !{!69, !47, i64 268}
!73 = distinct !{!73, !39}
!74 = !{!62, !47, i64 272}
!75 = !{!62, !47, i64 0}
!76 = !{!"database.c:bScanDataBase"}
!77 = !{!69, !47, i64 264}
!78 = distinct !{!78, !39}
!79 = !{!"database.c:sDataBaseName"}
!80 = !{!62, !47, i64 276}
!81 = !{!62, !47, i64 4120}
!82 = distinct !{!82, !39}
!83 = !{!62, !47, i64 3860}
!84 = !{!"database.c:zbDBReadLine"}
!85 = distinct !{!85, !39}
!86 = !{!"database.c:zbDBGetValue"}
!87 = distinct !{!87, !39}
!88 = distinct !{!88, !39}
!89 = distinct !{!89, !39}
!90 = !{!"database.c:ePrepareDatabaseForEntry"}
!91 = !{!"database.c:ConstructDataHeader"}
!92 = !{!"database.c:zPutValue"}
!93 = distinct !{!93, !39}
!94 = distinct !{!94, !39}
!95 = distinct !{!95, !39}
!96 = !{!"database.c:zbDBReadDataLine"}
!97 = distinct !{!97, !39}
!98 = distinct !{!98, !39}
!99 = !{!"database.c:StripInteger"}
!100 = !{!"database.c:StripDouble"}
!101 = !{!"database.c:sStripString"}
!102 = distinct !{!102, !39}
!103 = distinct !{!103, !39}
!104 = distinct !{!104, !39}
!105 = distinct !{!105, !39}
!106 = distinct !{!106, !39}
!107 = !{!"database.c:AddColumnType"}
!108 = !{!"database.c:WriteDataLine"}
!109 = !{!"database.c:ConcatInteger"}
!110 = !{!"database.c:ConcatDouble"}
!111 = !{!112, !112, i64 0}
!112 = !{!"double", !36, i64 0}
!113 = !{!"database.c:ConcatString"}
!114 = distinct !{!114, !39}
!115 = distinct !{!115, !39}
!116 = !{!"database.c:eEntryCreate"}
