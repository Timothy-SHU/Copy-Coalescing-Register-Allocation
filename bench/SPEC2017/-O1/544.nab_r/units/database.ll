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

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
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

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @sDBRemoveControlAndPadding(ptr nocapture noundef readonly %0, ptr noundef returned %1) local_unnamed_addr #0 !prof !34 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %9, %3 ]
  %5 = load i8, ptr %4, align 1, !tbaa !35
  %6 = icmp ne i8 %5, 0
  %7 = icmp slt i8 %5, 33
  %8 = and i1 %6, %7
  %9 = getelementptr inbounds i8, ptr %4, i64 1
  br i1 %8, label %3, label %10, !llvm.loop !41

10:                                               ; preds = %3
  %11 = icmp eq i8 %5, 0
  br i1 %11, label %36, label %12

12:                                               ; preds = %10
  %13 = load i8, ptr %4, align 1, !tbaa !35
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %12, %22
  %16 = phi i8 [ %25, %22 ], [ %13, %12 ]
  %17 = phi ptr [ %23, %22 ], [ %1, %12 ]
  %18 = phi ptr [ %24, %22 ], [ %4, %12 ]
  %19 = icmp sgt i8 %16, 31
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  store i8 %16, ptr %17, align 1, !tbaa !35
  %21 = getelementptr inbounds i8, ptr %17, i64 1
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi ptr [ %21, %20 ], [ %17, %15 ]
  %24 = getelementptr inbounds i8, ptr %18, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !35
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %15, !llvm.loop !42

27:                                               ; preds = %22, %12
  %28 = phi ptr [ %1, %12 ], [ %23, %22 ]
  store i8 0, ptr %28, align 1, !tbaa !35
  %29 = load i8, ptr %1, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %27, %31
  %32 = phi ptr [ %33, %31 ], [ %28, %27 ]
  %33 = getelementptr inbounds i8, ptr %32, i64 -1
  %34 = load i8, ptr %33, align 1, !tbaa !35
  %35 = icmp eq i8 %34, 32
  br i1 %35, label %31, label %36, !llvm.loop !43

36:                                               ; preds = %31, %10
  %37 = phi ptr [ %1, %10 ], [ %32, %31 ]
  store i8 0, ptr %37, align 1, !tbaa !35
  br label %38

38:                                               ; preds = %36, %27
  ret ptr %1
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @sDBRemoveLeadingSpaces(ptr noundef returned %0) local_unnamed_addr #3 !prof !34 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ]
  %4 = load i8, ptr %3, align 1, !tbaa !35
  %5 = icmp eq i8 %4, 32
  %6 = getelementptr inbounds i8, ptr %3, i64 1
  br i1 %5, label %2, label %7, !llvm.loop !44

7:                                                ; preds = %2
  %8 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %3) #23
  ret ptr %0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
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
  br label %3, !llvm.loop !45

8:                                                ; preds = %3
  %9 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %0) #23
  store i8 0, ptr %0, align 1, !tbaa !35
  br label %14

10:                                               ; preds = %3
  store i8 0, ptr %4, align 1, !tbaa !35
  %11 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %0) #23
  %12 = getelementptr inbounds i8, ptr %4, i64 1
  %13 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %12) #23
  br label %14

14:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @dDictCreate() local_unnamed_addr #5 !prof !34 {
  %1 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24
  store i32 0, ptr %1, align 8, !tbaa !46
  %2 = getelementptr inbounds %struct.DICTt, ptr %1, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !50
  ret ptr %1
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind uwtable
define dso_local void @DictDestroy(ptr nocapture noundef %0) local_unnamed_addr #7 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !51
  %3 = load i32, ptr %2, align 8, !tbaa !46
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DICTt, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %13, %8 ], [ %7, %5 ]
  %10 = phi i32 [ %12, %8 ], [ 0, %5 ]
  %11 = load ptr, ptr %9, align 8, !tbaa !52
  tail call void @free(ptr noundef %11) #23
  %12 = add nuw nsw i32 %10, 1
  %13 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %9, i64 1
  %14 = load ptr, ptr %0, align 8, !tbaa !51
  %15 = load i32, ptr %14, align 8, !tbaa !46
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %8, label %17, !llvm.loop !54

17:                                               ; preds = %8, %1
  %18 = phi ptr [ %2, %1 ], [ %14, %8 ]
  %19 = getelementptr inbounds %struct.DICTt, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  tail call void @free(ptr noundef %20) #23
  %21 = load ptr, ptr %0, align 8, !tbaa !51
  tail call void @free(ptr noundef %21) #23
  store ptr null, ptr %0, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define dso_local void @DictAdd(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.DICTt, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24
  store ptr %8, ptr %4, align 8, !tbaa !50
  br label %18

9:                                                ; preds = %3
  %10 = load i32, ptr %0, align 8, !tbaa !46
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 4
  %14 = tail call ptr @realloc(ptr noundef nonnull %5, i64 noundef %13) #25
  store ptr %14, ptr %4, align 8, !tbaa !50
  %15 = load i32, ptr %0, align 8, !tbaa !46
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %14, i64 %16
  br label %18

18:                                               ; preds = %9, %7
  %19 = phi ptr [ %8, %7 ], [ %17, %9 ]
  %20 = load i32, ptr %0, align 8, !tbaa !46
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %0, align 8, !tbaa !46
  %22 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %23 = add i64 %22, 1
  %24 = tail call noalias ptr @malloc(i64 noundef %23) #24
  store ptr %24, ptr %19, align 8, !tbaa !52
  %25 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(1) %1) #23
  %26 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %19, i64 0, i32 1
  store ptr %2, ptr %26, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: cold nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @vPDictFind(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 !prof !34 {
  %3 = getelementptr inbounds %struct.DICTt, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 8, !tbaa !46
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %6, %18
  %10 = phi ptr [ %20, %18 ], [ %4, %6 ]
  %11 = phi i32 [ %19, %18 ], [ 0, %6 ]
  %12 = load ptr, ptr %10, align 8, !tbaa !52
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #26
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %10, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !55
  br label %22

18:                                               ; preds = %9
  %19 = add nuw nsw i32 %11, 1
  %20 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %10, i64 1
  %21 = icmp eq i32 %19, %7
  br i1 %21, label %22, label %9, !llvm.loop !56

22:                                               ; preds = %18, %6, %2, %15
  %23 = phi ptr [ %17, %15 ], [ null, %2 ], [ null, %6 ], [ null, %18 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @vPDictDelete(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 !prof !34 {
  %3 = getelementptr inbounds %struct.DICTt, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = icmp eq ptr %4, null
  br i1 %5, label %43, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 8, !tbaa !46
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %43

9:                                                ; preds = %6, %15
  %10 = phi ptr [ %17, %15 ], [ %4, %6 ]
  %11 = phi i32 [ %16, %15 ], [ 0, %6 ]
  %12 = load ptr, ptr %10, align 8, !tbaa !52
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #26
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = add nuw nsw i32 %11, 1
  %17 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %10, i64 1
  %18 = icmp eq i32 %16, %7
  br i1 %18, label %43, label %9, !llvm.loop !57

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %10, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !55
  %22 = add nsw i32 %7, -1
  %23 = icmp slt i32 %11, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load i32, ptr %0, align 8, !tbaa !46
  %26 = add nsw i32 %25, -1
  %27 = icmp slt i32 %11, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24, %28
  %29 = phi ptr [ %31, %28 ], [ %10, %24 ]
  %30 = phi i32 [ %32, %28 ], [ %11, %24 ]
  %31 = getelementptr %struct.DICT_ENTRYt, ptr %29, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %31, i64 16, i1 false), !tbaa.struct !58
  %32 = add nuw nsw i32 %30, 1
  %33 = load i32, ptr %0, align 8, !tbaa !46
  %34 = add nsw i32 %33, -1
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %28, label %36, !llvm.loop !59

36:                                               ; preds = %28, %24
  %37 = phi i32 [ %26, %24 ], [ %34, %28 ]
  store i32 %37, ptr %0, align 8, !tbaa !46
  %38 = load ptr, ptr %3, align 8, !tbaa !50
  %39 = sext i32 %37 to i64
  %40 = shl nsw i64 %39, 4
  %41 = tail call ptr @realloc(ptr noundef %38, i64 noundef %40) #25
  br label %43

42:                                               ; preds = %19
  tail call void @free(ptr noundef %4) #23
  store ptr null, ptr %3, align 8, !tbaa !50
  br label %43

43:                                               ; preds = %15, %6, %36, %42, %2
  %44 = phi ptr [ null, %2 ], [ %21, %42 ], [ %21, %36 ], [ null, %6 ], [ null, %15 ]
  ret ptr %44
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ziDictKeyCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !52
  %4 = load ptr, ptr %1, align 8, !tbaa !52
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %4) #26
  ret i32 %5
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local noundef i32 @dlDictLoop(ptr nocapture noundef readonly %0) local_unnamed_addr #14 !prof !34 {
  %2 = getelementptr inbounds %struct.DICTt, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = load i32, ptr %0, align 8, !tbaa !46
  %5 = sext i32 %4 to i64
  tail call void @qsort(ptr noundef %3, i64 noundef %5, i64 noundef 16, ptr noundef nonnull @ziDictKeyCompare) #23
  ret i32 0
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @vPDictNext(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #16 !prof !34 {
  %4 = load i32, ptr %1, align 4, !tbaa !60
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %1, align 4, !tbaa !60
  %6 = load i32, ptr %0, align 8, !tbaa !46
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.DICTt, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = sext i32 %4 to i64
  %12 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  store ptr %13, ptr %2, align 8, !tbaa !51
  %14 = load ptr, ptr %9, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %14, i64 %11, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !55
  br label %17

17:                                               ; preds = %3, %8
  %18 = phi ptr [ %16, %8 ], [ null, %3 ]
  ret ptr %18
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local noundef signext i8 @zbDBParseSimpleHeader(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #14 !prof !34 {
  %5 = alloca [1000 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #23
  %8 = load i8, ptr %1, align 1, !tbaa !35
  switch i8 %8, label %77 [
    i8 0, label %79
    i8 33, label %9
  ]

9:                                                ; preds = %4, %9
  %10 = phi ptr [ %15, %9 ], [ %1, %4 ]
  %11 = load i8, ptr %10, align 1, !tbaa !35
  %12 = icmp ne i8 %11, 0
  %13 = icmp slt i8 %11, 33
  %14 = and i1 %12, %13
  %15 = getelementptr inbounds i8, ptr %10, i64 1
  br i1 %14, label %9, label %16, !llvm.loop !41

16:                                               ; preds = %9
  %17 = icmp eq i8 %11, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  %19 = load i8, ptr %10, align 1, !tbaa !35
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %34, label %22

21:                                               ; preds = %16
  store i8 0, ptr %5, align 16, !tbaa !35
  br label %44

22:                                               ; preds = %18, %29
  %23 = phi i8 [ %32, %29 ], [ %19, %18 ]
  %24 = phi ptr [ %30, %29 ], [ %5, %18 ]
  %25 = phi ptr [ %31, %29 ], [ %10, %18 ]
  %26 = icmp sgt i8 %23, 31
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  store i8 %23, ptr %24, align 1, !tbaa !35
  %28 = getelementptr inbounds i8, ptr %24, i64 1
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi ptr [ %28, %27 ], [ %24, %22 ]
  %31 = getelementptr inbounds i8, ptr %25, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !35
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %22, !llvm.loop !42

34:                                               ; preds = %29, %18
  %35 = phi ptr [ %5, %18 ], [ %30, %29 ]
  store i8 0, ptr %35, align 1, !tbaa !35
  %36 = load i8, ptr %5, align 16
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %34, %38
  %39 = phi ptr [ %40, %38 ], [ %35, %34 ]
  %40 = getelementptr inbounds i8, ptr %39, i64 -1
  %41 = load i8, ptr %40, align 1, !tbaa !35
  %42 = icmp eq i8 %41, 32
  br i1 %42, label %38, label %43, !llvm.loop !43

43:                                               ; preds = %38
  store i8 0, ptr %39, align 1, !tbaa !35
  br label %44

44:                                               ; preds = %21, %34, %43
  %45 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7) #23
  %46 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %6, ptr noundef nonnull dereferenceable(7) @.str.1, i64 7)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %44
  %49 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.2, i64 6)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %48
  %52 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.3, i64 6)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 8
  %56 = load i32, ptr %55, align 8, !tbaa !61
  %57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %56)
  %58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef nonnull @.str.4)
  br label %79

59:                                               ; preds = %51, %48, %44
  %60 = phi i1 [ false, %44 ], [ false, %48 ], [ true, %51 ]
  %61 = phi i32 [ 16, %44 ], [ 32, %48 ], [ 64, %51 ]
  br i1 %60, label %75, label %62

62:                                               ; preds = %59
  %63 = load i32, ptr %7, align 16
  switch i32 %63, label %70 [
    i32 7630441, label %64
    i32 7103076, label %66
    i32 7500915, label %68
  ]

64:                                               ; preds = %62
  %65 = or disjoint i32 %61, 1
  br label %75

66:                                               ; preds = %62
  %67 = or disjoint i32 %61, 2
  br label %75

68:                                               ; preds = %62
  %69 = or disjoint i32 %61, 3
  br label %75

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 8
  %72 = load i32, ptr %71, align 8, !tbaa !61
  %73 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %72)
  %74 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef nonnull @.str.8)
  br label %79

75:                                               ; preds = %64, %68, %66, %59
  %76 = phi i32 [ %65, %64 ], [ %67, %66 ], [ %69, %68 ], [ 64, %59 ]
  store i32 %76, ptr %3, align 4, !tbaa !60
  br label %79

77:                                               ; preds = %4
  %78 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull %1)
  br label %79

79:                                               ; preds = %75, %77, %4, %70, %54
  %80 = phi i8 [ 0, %70 ], [ 0, %54 ], [ 1, %4 ], [ 1, %77 ], [ 1, %75 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %5) #23
  ret i8 %80
}

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @CompactDataBase(ptr noundef %0) local_unnamed_addr #14 !prof !34 {
  %2 = alloca [1000 x i8], align 16
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %3, ptr noundef nonnull align 16 dereferenceable(9) @.str.10, i64 9, i1 false) #23
  %4 = call noalias ptr @fopen(ptr noundef nonnull %3, ptr noundef nonnull @.str.11)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !61
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %8)
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef nonnull @.str.12)
  br label %11

11:                                               ; preds = %6, %1
  %12 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !63
  %14 = getelementptr inbounds %struct.DICTt, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = load i32, ptr %13, align 8, !tbaa !46
  %17 = sext i32 %16 to i64
  tail call void @qsort(ptr noundef %15, i64 noundef %17, i64 noundef 16, ptr noundef nonnull @ziDictKeyCompare) #23
  %18 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  br label %19

19:                                               ; preds = %52, %11
  %20 = phi i64 [ %22, %52 ], [ 0, %11 ]
  %21 = load ptr, ptr %12, align 8, !tbaa !63
  %22 = add nuw i64 %20, 1
  %23 = load i32, ptr %21, align 8, !tbaa !46
  %24 = sext i32 %23 to i64
  %25 = icmp slt i64 %20, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.DICTt, ptr %21, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !50
  %29 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %28, i64 %20, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !55
  br label %31

31:                                               ; preds = %19, %26
  %32 = phi ptr [ %30, %26 ], [ null, %19 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %53, label %34

34:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %2) #23
  %35 = call i32 @fseek(ptr noundef %4, i64 noundef 0, i32 noundef 2)
  %36 = call i64 @ftell(ptr noundef %4)
  %37 = load ptr, ptr %18, align 8, !tbaa !64
  %38 = load i64, ptr %32, align 8, !tbaa !65
  %39 = call i32 @fseek(ptr noundef %37, i64 noundef %38, i32 noundef 0)
  %40 = call fastcc signext i8 @zbDBReadLine(ptr noundef %0, ptr noundef nonnull %2), !range !68
  %41 = call i32 @fputs(ptr noundef nonnull %2, ptr noundef %4)
  %42 = getelementptr inbounds %struct.ENTRYt, ptr %32, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !69
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %34, %45
  %46 = phi i32 [ %49, %45 ], [ 0, %34 ]
  %47 = call fastcc signext i8 @zbDBReadLine(ptr noundef %0, ptr noundef nonnull %2), !range !68
  %48 = call i32 @fputs(ptr noundef nonnull %2, ptr noundef %4)
  %49 = add nuw nsw i32 %46, 1
  %50 = load i32, ptr %42, align 4, !tbaa !69
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %45, label %52, !llvm.loop !70

52:                                               ; preds = %45, %34
  store i64 %36, ptr %32, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %2) #23
  br label %19, !llvm.loop !71

53:                                               ; preds = %31
  %54 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !64
  %56 = call i32 @fclose(ptr noundef %55)
  %57 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 2
  %58 = call i32 @unlink(ptr noundef nonnull %57) #23
  %59 = call i32 @fclose(ptr noundef %4)
  %60 = call i32 @rename(ptr noundef nonnull %3, ptr noundef nonnull %57) #23
  %61 = call noalias ptr @fopen(ptr noundef nonnull %57, ptr noundef nonnull @.str.13)
  store ptr %61, ptr %54, align 8, !tbaa !64
  %62 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 6
  store i8 0, ptr %62, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #23
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @dbDBRndOpen(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 !prof !34 {
  %3 = alloca [1000 x i8], align 16
  %4 = alloca [256 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  %7 = tail call noalias dereferenceable_or_null(4128) ptr @malloc(i64 noundef 4128) #24
  store ptr %7, ptr %6, align 8, !tbaa !51
  store i32 0, ptr @GiDBLastError, align 4, !tbaa !60
  switch i32 %1, label %21 [
    i32 1, label %8
    i32 2, label %13
  ]

8:                                                ; preds = %2
  %9 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.14)
  %10 = getelementptr inbounds %struct.DATABASEt, ptr %7, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !64
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  store i32 1, ptr @GiDBLastError, align 4, !tbaa !60
  br label %32

13:                                               ; preds = %2
  %14 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.13)
  %15 = getelementptr inbounds %struct.DATABASEt, ptr %7, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !64
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.15)
  store ptr %18, ptr %15, align 8, !tbaa !64
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  store i32 1, ptr @GiDBLastError, align 4, !tbaa !60
  br label %32

21:                                               ; preds = %2
  %22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.40)
  br label %32

23:                                               ; preds = %8, %13
  %24 = getelementptr inbounds %struct.DATABASEt, ptr %7, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !64
  %26 = tail call i32 @fseek(ptr noundef %25, i64 noundef 0, i32 noundef 0)
  %27 = load ptr, ptr %24, align 8, !tbaa !64
  %28 = tail call i32 @fgetc(ptr noundef %27)
  %29 = and i32 %28, 255
  %30 = icmp eq i32 %29, 33
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  store i32 2, ptr @GiDBLastError, align 4, !tbaa !60
  br label %32

32:                                               ; preds = %21, %17, %20, %12, %23, %31
  %33 = load i32, ptr @GiDBLastError, align 4, !tbaa !60
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @free(ptr noundef %7) #23
  br label %118

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.DATABASEt, ptr %7, i64 0, i32 2
  %38 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(1) %0) #23
  %39 = getelementptr inbounds %struct.DATABASEt, ptr %7, i64 0, i32 3
  store i32 %1, ptr %39, align 8, !tbaa !73
  store i32 1, ptr %7, align 8, !tbaa !74
  %40 = getelementptr inbounds %struct.DATABASEt, ptr %7, i64 0, i32 4
  store i32 0, ptr %40, align 4, !tbaa !75
  %41 = getelementptr inbounds %struct.DATABASEt, ptr %7, i64 0, i32 5
  store i8 0, ptr %41, align 1
  %42 = getelementptr inbounds %struct.DATABASEt, ptr %7, i64 0, i32 6
  store i8 0, ptr %42, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #23
  %43 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24
  store i32 0, ptr %43, align 8, !tbaa !46
  %44 = getelementptr inbounds %struct.DICTt, ptr %43, i64 0, i32 1
  store ptr null, ptr %44, align 8, !tbaa !50
  %45 = getelementptr inbounds %struct.DATABASEt, ptr %7, i64 0, i32 7
  store ptr %43, ptr %45, align 8, !tbaa !63
  %46 = getelementptr inbounds %struct.DATABASEt, ptr %7, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !64
  %48 = tail call i32 @fseek(ptr noundef %47, i64 noundef 0, i32 noundef 0)
  %49 = load ptr, ptr %46, align 8, !tbaa !64
  %50 = tail call i32 @feof(ptr noundef %49) #23
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %110

52:                                               ; preds = %36, %104
  %53 = phi ptr [ %106, %104 ], [ null, %36 ]
  %54 = phi i32 [ %105, %104 ], [ 0, %36 ]
  %55 = load ptr, ptr %46, align 8, !tbaa !64
  %56 = call i64 @ftell(ptr noundef %55)
  store i8 0, ptr %3, align 16, !tbaa !35
  %57 = call fastcc signext i8 @zbDBReadLine(ptr noundef nonnull %7, ptr noundef nonnull %3), !range !68
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %110, label %59

59:                                               ; preds = %52
  %60 = load i8, ptr %3, align 16, !tbaa !35
  switch i8 %60, label %117 [
    i8 33, label %61
    i8 32, label %102
  ]

61:                                               ; preds = %59
  %62 = call signext i8 @zbDBParseSimpleHeader(ptr noundef nonnull %7, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5), !range !68
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %117, label %64

64:                                               ; preds = %61
  %65 = icmp eq ptr %53, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.ENTRYt, ptr %53, i64 0, i32 3
  store i32 %54, ptr %67, align 4, !tbaa !69
  br label %68

68:                                               ; preds = %66, %64
  %69 = load ptr, ptr %45, align 8, !tbaa !63
  %70 = getelementptr inbounds %struct.DICTt, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !50
  %72 = icmp eq ptr %71, null
  br i1 %72, label %89, label %73

73:                                               ; preds = %68
  %74 = load i32, ptr %69, align 8, !tbaa !46
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %73, %85
  %77 = phi ptr [ %87, %85 ], [ %71, %73 ]
  %78 = phi i32 [ %86, %85 ], [ 0, %73 ]
  %79 = load ptr, ptr %77, align 8, !tbaa !52
  %80 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %79, ptr noundef nonnull dereferenceable(1) %4) #26
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %77, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !55
  br label %89

85:                                               ; preds = %76
  %86 = add nuw nsw i32 %78, 1
  %87 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %77, i64 1
  %88 = icmp eq i32 %86, %74
  br i1 %88, label %89, label %76, !llvm.loop !56

89:                                               ; preds = %85, %73, %82, %68
  %90 = phi ptr [ %84, %82 ], [ null, %68 ], [ null, %73 ], [ null, %85 ]
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i32, ptr %5, align 4, !tbaa !60
  %94 = call noalias dereferenceable_or_null(272) ptr @malloc(i64 noundef 272) #24
  %95 = getelementptr inbounds %struct.ENTRYt, ptr %94, i64 0, i32 2
  store i32 %93, ptr %95, align 8, !tbaa !76
  %96 = getelementptr inbounds %struct.ENTRYt, ptr %94, i64 0, i32 1
  %97 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %96, ptr noundef nonnull dereferenceable(1) %4) #23
  store i64 %56, ptr %94, align 8, !tbaa !65
  call void @DictAdd(ptr noundef %69, ptr noundef nonnull %4, ptr noundef nonnull %94)
  br label %104

98:                                               ; preds = %89
  %99 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, ptr noundef nonnull %4)
  %100 = load i32, ptr %5, align 4, !tbaa !60
  %101 = getelementptr inbounds %struct.ENTRYt, ptr %90, i64 0, i32 2
  store i32 %100, ptr %101, align 8, !tbaa !76
  store i64 %56, ptr %90, align 8, !tbaa !65
  br label %104

102:                                              ; preds = %59
  %103 = add nsw i32 %54, 1
  br label %104

104:                                              ; preds = %102, %98, %92
  %105 = phi i32 [ %103, %102 ], [ 0, %98 ], [ 0, %92 ]
  %106 = phi ptr [ %53, %102 ], [ %90, %98 ], [ %94, %92 ]
  %107 = load ptr, ptr %46, align 8, !tbaa !64
  %108 = call i32 @feof(ptr noundef %107) #23
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %52, label %110, !llvm.loop !77

110:                                              ; preds = %104, %52, %36
  %111 = phi i32 [ 0, %36 ], [ %105, %104 ], [ %54, %52 ]
  %112 = phi ptr [ null, %36 ], [ %106, %104 ], [ %53, %52 ]
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.ENTRYt, ptr %112, i64 0, i32 3
  store i32 %111, ptr %115, align 4, !tbaa !69
  br label %116

116:                                              ; preds = %110, %114
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %3) #23
  br label %118

117:                                              ; preds = %59, %61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %3) #23
  store i32 2, ptr @GiDBLastError, align 4, !tbaa !60
  call void @DBClose(ptr noundef nonnull %6)
  br label %118

118:                                              ; preds = %116, %117, %35
  %119 = phi ptr [ null, %35 ], [ %7, %116 ], [ null, %117 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  ret ptr %119
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind uwtable
define dso_local noundef signext i8 @bDBRndDeleteEntry(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 !prof !34 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #23
  %4 = load i32, ptr %0, align 8, !tbaa !74
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17)
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !73
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18)
  br label %14

14:                                               ; preds = %12, %8
  %15 = call fastcc ptr @sDataBaseName(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3)
  %16 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !63
  %18 = getelementptr inbounds %struct.DICTt, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = icmp eq ptr %19, null
  br i1 %20, label %41, label %21

21:                                               ; preds = %14
  %22 = load i32, ptr %17, align 8, !tbaa !46
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %21, %34
  %25 = phi ptr [ %36, %34 ], [ %19, %21 ]
  %26 = phi i32 [ %35, %34 ], [ 0, %21 ]
  %27 = load ptr, ptr %25, align 8, !tbaa !52
  %28 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(1) %3) #26
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %25, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !55
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %38

34:                                               ; preds = %24
  %35 = add nuw nsw i32 %26, 1
  %36 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %25, i64 1
  %37 = icmp eq i32 %35, %22
  br i1 %37, label %41, label %24, !llvm.loop !56

38:                                               ; preds = %30
  %39 = call ptr @vPDictDelete(ptr noundef nonnull %17, ptr noundef nonnull %3)
  %40 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 6
  store i8 1, ptr %40, align 8, !tbaa !72
  br label %41

41:                                               ; preds = %34, %21, %14, %30, %38
  %42 = phi i8 [ 1, %38 ], [ 0, %30 ], [ 0, %14 ], [ 0, %21 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #23
  ret i8 %42
}

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @sDataBaseName(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef returned %2) unnamed_addr #3 !prof !34 {
  %4 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #23
  store i8 0, ptr %2, align 1
  %5 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !75
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 5, i64 %7
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #26
  %10 = and i64 %9, 4294967295
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %8) #23
  br label %14

14:                                               ; preds = %12, %3
  br label %15

15:                                               ; preds = %14, %15
  %16 = phi ptr [ %21, %15 ], [ %1, %14 ]
  %17 = load i8, ptr %16, align 1, !tbaa !35
  %18 = icmp ne i8 %17, 0
  %19 = icmp slt i8 %17, 33
  %20 = and i1 %18, %19
  %21 = getelementptr inbounds i8, ptr %16, i64 1
  br i1 %20, label %15, label %22, !llvm.loop !41

22:                                               ; preds = %15
  %23 = icmp eq i8 %17, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  %25 = load i8, ptr %16, align 1, !tbaa !35
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %40, label %28

27:                                               ; preds = %22
  store i8 0, ptr %4, align 16, !tbaa !35
  br label %50

28:                                               ; preds = %24, %35
  %29 = phi i8 [ %38, %35 ], [ %25, %24 ]
  %30 = phi ptr [ %36, %35 ], [ %4, %24 ]
  %31 = phi ptr [ %37, %35 ], [ %16, %24 ]
  %32 = icmp sgt i8 %29, 31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  store i8 %29, ptr %30, align 1, !tbaa !35
  %34 = getelementptr inbounds i8, ptr %30, i64 1
  br label %35

35:                                               ; preds = %33, %28
  %36 = phi ptr [ %34, %33 ], [ %30, %28 ]
  %37 = getelementptr inbounds i8, ptr %31, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !35
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %28, !llvm.loop !42

40:                                               ; preds = %35, %24
  %41 = phi ptr [ %4, %24 ], [ %36, %35 ]
  store i8 0, ptr %41, align 1, !tbaa !35
  %42 = load i8, ptr %4, align 16
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40, %44
  %45 = phi ptr [ %46, %44 ], [ %41, %40 ]
  %46 = getelementptr inbounds i8, ptr %45, i64 -1
  %47 = load i8, ptr %46, align 1, !tbaa !35
  %48 = icmp eq i8 %47, 32
  br i1 %48, label %44, label %49, !llvm.loop !43

49:                                               ; preds = %44
  store i8 0, ptr %45, align 1, !tbaa !35
  br label %50

50:                                               ; preds = %27, %40, %49
  %51 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %4) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #23
  ret ptr %2
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @DBRndLoopEntryWithPrefix(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #14 !prof !34 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #23
  %4 = call fastcc ptr @sDataBaseName(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %5 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 11
  %6 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %3) #23
  %7 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = getelementptr inbounds %struct.DICTt, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = load i32, ptr %8, align 8, !tbaa !46
  %12 = sext i32 %11 to i64
  call void @qsort(ptr noundef %10, i64 noundef %12, i64 noundef 16, ptr noundef nonnull @ziDictKeyCompare) #23
  %13 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 12
  store i32 0, ptr %13, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #23
  ret void
}

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef signext i8 @bDBRndNextEntryWithPrefix(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !34 {
  %3 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 11
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %5 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 7
  %6 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 12
  %7 = shl i64 %4, 32
  %8 = ashr exact i64 %7, 32
  br label %9

9:                                                ; preds = %28, %2
  %10 = phi ptr [ undef, %2 ], [ %25, %28 ]
  %11 = load ptr, ptr %5, align 8, !tbaa !63
  %12 = load i32, ptr %6, align 4, !tbaa !60
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %6, align 4, !tbaa !60
  %14 = load i32, ptr %11, align 8, !tbaa !46
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.DICTt, ptr %11, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = sext i32 %12 to i64
  %20 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !52
  %22 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %18, i64 %19, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !55
  br label %24

24:                                               ; preds = %9, %16
  %25 = phi ptr [ %21, %16 ], [ %10, %9 ]
  %26 = phi ptr [ %23, %16 ], [ null, %9 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %25) #23
  %30 = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull %3, i64 noundef %8) #26
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %9, !llvm.loop !79

32:                                               ; preds = %28, %24
  %33 = phi i8 [ 0, %24 ], [ 1, %28 ]
  ret i8 %33
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind uwtable
define dso_local noundef ptr @dbDBSeqOpen(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #14 !prof !34 {
  %3 = tail call noalias dereferenceable_or_null(4128) ptr @malloc(i64 noundef 4128) #24
  switch i32 %1, label %13 [
    i32 1, label %4
    i32 2, label %7
  ]

4:                                                ; preds = %2
  %5 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.14)
  %6 = getelementptr inbounds %struct.DATABASEt, ptr %3, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !64
  br label %15

7:                                                ; preds = %2
  %8 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.13)
  %9 = getelementptr inbounds %struct.DATABASEt, ptr %3, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !64
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.15)
  store ptr %12, ptr %9, align 8, !tbaa !64
  br label %15

13:                                               ; preds = %2
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.40)
  br label %15

15:                                               ; preds = %7, %11, %13, %4
  %16 = getelementptr inbounds %struct.DATABASEt, ptr %3, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !64
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.DATABASEt, ptr %3, i64 0, i32 2
  %21 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) %0) #23
  %22 = getelementptr inbounds %struct.DATABASEt, ptr %3, i64 0, i32 3
  store i32 %1, ptr %22, align 8, !tbaa !73
  store i32 2, ptr %3, align 8, !tbaa !74
  %23 = getelementptr inbounds %struct.DATABASEt, ptr %3, i64 0, i32 4
  store i32 0, ptr %23, align 4, !tbaa !75
  %24 = getelementptr inbounds %struct.DATABASEt, ptr %3, i64 0, i32 5
  store i8 0, ptr %24, align 1
  %25 = getelementptr inbounds %struct.DATABASEt, ptr %3, i64 0, i32 6
  store i8 0, ptr %25, align 8, !tbaa !72
  tail call void @DBSeqRewind(ptr noundef nonnull %3)
  %26 = getelementptr inbounds %struct.DATABASEt, ptr %3, i64 0, i32 10
  store i32 1, ptr %26, align 4, !tbaa !80
  br label %27

27:                                               ; preds = %15, %19
  %28 = phi ptr [ %3, %19 ], [ null, %15 ]
  ret ptr %28
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @DBSeqRewind(ptr noundef %0) local_unnamed_addr #14 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !74
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17)
  br label %6

6:                                                ; preds = %4, %1
  %7 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !64
  %9 = tail call i32 @fseek(ptr noundef %8, i64 noundef 0, i32 noundef 0)
  %10 = load ptr, ptr %7, align 8, !tbaa !64
  %11 = tail call i32 @feof(ptr noundef %10) #23
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 9
  %15 = tail call fastcc signext i8 @zbDBReadLine(ptr noundef nonnull %0, ptr noundef nonnull %14), !range !68
  br label %16

16:                                               ; preds = %13, %6
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc noundef signext i8 @zbDBReadLine(ptr noundef %0, ptr noundef %1) unnamed_addr #14 !prof !34 {
  %3 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = tail call i32 @feof(ptr noundef %4) #23
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2, %7
  store i8 0, ptr %1, align 1, !tbaa !35
  %8 = load ptr, ptr %3, align 8, !tbaa !64
  %9 = tail call ptr @fgets(ptr noundef nonnull %1, i32 noundef 1000, ptr noundef %8)
  %10 = load i8, ptr %1, align 1, !tbaa !35
  switch i8 %10, label %11 [
    i8 10, label %7
    i8 0, label %14
  ]

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 9
  %13 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #23
  br label %14

14:                                               ; preds = %7, %2, %11
  %15 = phi i8 [ 1, %11 ], [ 0, %2 ], [ %10, %7 ]
  ret i8 %15
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @DBSeqSkipData(ptr noundef %0) local_unnamed_addr #14 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !74
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17)
  br label %6

6:                                                ; preds = %4, %1
  %7 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 9
  br label %8

8:                                                ; preds = %8, %6
  %9 = tail call fastcc signext i8 @zbDBReadLine(ptr noundef nonnull %0, ptr noundef nonnull %7), !range !68
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %8, !llvm.loop !81

11:                                               ; preds = %8
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local noundef i64 @lDBSeqCurPos(ptr nocapture noundef readonly %0) local_unnamed_addr #14 !prof !34 {
  %2 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = tail call i64 @ftell(ptr noundef %3)
  ret i64 %4
}

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @DBSeqGoto(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #14 !prof !34 {
  %3 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = tail call i32 @fseek(ptr noundef %4, i64 noundef %1, i32 noundef 0)
  %6 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 9
  store i8 0, ptr %6, align 4, !tbaa !35
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local noundef signext i8 @bDBGetType(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #14 !prof !34 {
  %5 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #23
  %6 = load i32, ptr %0, align 8, !tbaa !74
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 10
  %10 = load i32, ptr %9, align 4, !tbaa !80
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19)
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = tail call i32 @feof(ptr noundef %16) #23
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 9
  %21 = tail call signext i8 @zbDBParseSimpleHeader(ptr noundef nonnull %0, ptr noundef nonnull %20, ptr noundef %1, ptr noundef %2), !range !68
  store i32 -1, ptr %3, align 4, !tbaa !60
  store i32 1, ptr %9, align 4, !tbaa !80
  br label %53

22:                                               ; preds = %4
  %23 = call fastcc ptr @sDataBaseName(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5)
  %24 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !63
  %26 = getelementptr inbounds %struct.DICTt, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  %28 = icmp eq ptr %27, null
  br i1 %28, label %45, label %29

29:                                               ; preds = %22
  %30 = load i32, ptr %25, align 8, !tbaa !46
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %29, %41
  %33 = phi ptr [ %43, %41 ], [ %27, %29 ]
  %34 = phi i32 [ %42, %41 ], [ 0, %29 ]
  %35 = load ptr, ptr %33, align 8, !tbaa !52
  %36 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) %5) #26
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %33, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !55
  br label %45

41:                                               ; preds = %32
  %42 = add nuw nsw i32 %34, 1
  %43 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %33, i64 1
  %44 = icmp eq i32 %42, %30
  br i1 %44, label %45, label %32, !llvm.loop !56

45:                                               ; preds = %41, %29, %22, %38
  %46 = phi ptr [ %40, %38 ], [ null, %22 ], [ null, %29 ], [ null, %41 ]
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.ENTRYt, ptr %46, i64 0, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !76
  store i32 %50, ptr %2, align 4, !tbaa !60
  %51 = getelementptr inbounds %struct.ENTRYt, ptr %46, i64 0, i32 3
  %52 = load i32, ptr %51, align 4, !tbaa !69
  store i32 %52, ptr %3, align 4, !tbaa !60
  br label %53

53:                                               ; preds = %45, %14, %48, %19
  %54 = phi i8 [ 1, %19 ], [ 1, %48 ], [ 0, %14 ], [ 0, %45 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #23
  ret i8 %54
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local noundef signext i8 @bDBGetValue(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #14 !prof !34 {
  %6 = alloca [256 x i8], align 16
  %7 = alloca [1000 x i8], align 16
  %8 = alloca [256 x i8], align 16
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #23
  %10 = load i32, ptr %0, align 8, !tbaa !74
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 9
  %14 = call signext i8 @zbDBParseSimpleHeader(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef %1, ptr noundef nonnull %9), !range !68
  br label %49

15:                                               ; preds = %5
  %16 = call fastcc ptr @sDataBaseName(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %8)
  %17 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !63
  %19 = getelementptr inbounds %struct.DICTt, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %15
  %23 = load i32, ptr %18, align 8, !tbaa !46
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22, %34
  %26 = phi ptr [ %36, %34 ], [ %20, %22 ]
  %27 = phi i32 [ %35, %34 ], [ 0, %22 ]
  %28 = load ptr, ptr %26, align 8, !tbaa !52
  %29 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) %8) #26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %26, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !55
  br label %38

34:                                               ; preds = %25
  %35 = add nuw nsw i32 %27, 1
  %36 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %26, i64 1
  %37 = icmp eq i32 %35, %23
  br i1 %37, label %38, label %25, !llvm.loop !56

38:                                               ; preds = %34, %22, %15, %31
  %39 = phi ptr [ %33, %31 ], [ null, %15 ], [ null, %22 ], [ null, %34 ]
  %40 = icmp eq ptr %39, null
  br i1 %40, label %178, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.ENTRYt, ptr %39, i64 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !76
  store i32 %43, ptr %9, align 4, !tbaa !60
  %44 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !64
  %46 = load i64, ptr %39, align 8, !tbaa !65
  %47 = call i32 @fseek(ptr noundef %45, i64 noundef %46, i32 noundef 0)
  %48 = call fastcc signext i8 @zbDBReadLine(ptr noundef nonnull %0, ptr noundef nonnull %7), !range !68
  br label %49

49:                                               ; preds = %41, %12
  %50 = load i32, ptr %9, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #23
  store i32 0, ptr %2, align 4, !tbaa !60
  %51 = trunc i32 %50 to i8
  %52 = and i8 %51, -16
  switch i8 %52, label %177 [
    i8 16, label %53
    i8 32, label %94
  ]

53:                                               ; preds = %49
  %54 = and i32 %50, 15
  switch i32 %54, label %91 [
    i32 1, label %55
    i32 2, label %58
    i32 3, label %61
  ]

55:                                               ; preds = %53
  %56 = call fastcc signext i8 @zbDBReadLine(ptr noundef nonnull %0, ptr noundef nonnull %6), !range !68
  call fastcc void @StripInteger(ptr noundef nonnull %6, ptr noundef %3)
  %57 = call fastcc signext i8 @zbDBReadLine(ptr noundef nonnull %0, ptr noundef nonnull %6), !range !68
  br label %93

58:                                               ; preds = %53
  %59 = call fastcc signext i8 @zbDBReadLine(ptr noundef nonnull %0, ptr noundef nonnull %6), !range !68
  call fastcc void @StripDouble(ptr noundef nonnull %6, ptr noundef %3)
  %60 = call fastcc signext i8 @zbDBReadLine(ptr noundef nonnull %0, ptr noundef nonnull %6), !range !68
  br label %93

61:                                               ; preds = %53
  %62 = call fastcc signext i8 @zbDBReadLine(ptr noundef nonnull %0, ptr noundef nonnull %6), !range !68
  br label %63

63:                                               ; preds = %63, %61
  %64 = phi ptr [ %6, %61 ], [ %67, %63 ]
  %65 = load i8, ptr %64, align 1, !tbaa !35
  %66 = icmp eq i8 %65, 34
  %67 = getelementptr inbounds i8, ptr %64, i64 1
  br i1 %66, label %68, label %63, !llvm.loop !82

68:                                               ; preds = %63
  %69 = getelementptr inbounds i8, ptr %64, i64 1
  br label %70

70:                                               ; preds = %80, %68
  %71 = phi ptr [ %69, %68 ], [ %82, %80 ]
  %72 = phi ptr [ %3, %68 ], [ %83, %80 ]
  %73 = load i8, ptr %71, align 1, !tbaa !35
  %74 = getelementptr inbounds i8, ptr %71, i64 1
  %75 = icmp eq i8 %73, 34
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i8, ptr %74, align 1, !tbaa !35
  %78 = getelementptr inbounds i8, ptr %71, i64 2
  %79 = icmp eq i8 %77, 34
  br i1 %79, label %80, label %86

80:                                               ; preds = %70, %76
  %81 = phi i8 [ %77, %76 ], [ %73, %70 ]
  %82 = phi ptr [ %78, %76 ], [ %74, %70 ]
  %83 = getelementptr inbounds i8, ptr %72, i64 1
  store i8 %81, ptr %72, align 1, !tbaa !35
  %84 = load i8, ptr %82, align 1, !tbaa !35
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %70, !llvm.loop !83

86:                                               ; preds = %76, %80
  %87 = phi ptr [ %82, %80 ], [ %78, %76 ]
  %88 = phi ptr [ %83, %80 ], [ %72, %76 ]
  store i8 0, ptr %88, align 1, !tbaa !35
  %89 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %87) #23
  %90 = call fastcc signext i8 @zbDBReadLine(ptr noundef nonnull %0, ptr noundef nonnull %6), !range !68
  br label %93

91:                                               ; preds = %53
  %92 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %50)
  br label %93

93:                                               ; preds = %86, %58, %55, %91
  store i32 1, ptr %2, align 4, !tbaa !60
  br label %177

94:                                               ; preds = %49
  %95 = and i32 %50, 15
  switch i32 %95, label %177 [
    i32 1, label %112
    i32 2, label %104
    i32 3, label %96
  ]

96:                                               ; preds = %94
  %97 = call fastcc signext i8 @zbDBReadLine(ptr noundef nonnull %0, ptr noundef nonnull %6), !range !68
  %98 = icmp eq i8 %97, 0
  %99 = load i8, ptr %6, align 16
  %100 = icmp eq i8 %99, 33
  %101 = select i1 %98, i1 true, i1 %100
  br i1 %101, label %177, label %102

102:                                              ; preds = %96
  %103 = sext i32 %4 to i64
  br label %140

104:                                              ; preds = %94
  %105 = call fastcc signext i8 @zbDBReadLine(ptr noundef nonnull %0, ptr noundef nonnull %6), !range !68
  %106 = icmp eq i8 %105, 0
  %107 = load i8, ptr %6, align 16
  %108 = icmp eq i8 %107, 33
  %109 = select i1 %106, i1 true, i1 %108
  br i1 %109, label %177, label %110

110:                                              ; preds = %104
  %111 = sext i32 %4 to i64
  br label %130

112:                                              ; preds = %94
  %113 = call fastcc signext i8 @zbDBReadLine(ptr noundef nonnull %0, ptr noundef nonnull %6), !range !68
  %114 = icmp eq i8 %113, 0
  %115 = load i8, ptr %6, align 16
  %116 = icmp eq i8 %115, 33
  %117 = select i1 %114, i1 true, i1 %116
  br i1 %117, label %177, label %118

118:                                              ; preds = %112
  %119 = sext i32 %4 to i64
  br label %120

120:                                              ; preds = %118, %120
  %121 = phi ptr [ %3, %118 ], [ %122, %120 ]
  call fastcc void @StripInteger(ptr noundef nonnull %6, ptr noundef %121)
  %122 = getelementptr inbounds i8, ptr %121, i64 %119
  %123 = load i32, ptr %2, align 4, !tbaa !60
  %124 = add nsw i32 %123, 1
  store i32 %124, ptr %2, align 4, !tbaa !60
  %125 = call fastcc signext i8 @zbDBReadLine(ptr noundef nonnull %0, ptr noundef nonnull %6), !range !68
  %126 = icmp eq i8 %125, 0
  %127 = load i8, ptr %6, align 16
  %128 = icmp eq i8 %127, 33
  %129 = select i1 %126, i1 true, i1 %128
  br i1 %129, label %177, label %120, !llvm.loop !84

130:                                              ; preds = %110, %130
  %131 = phi ptr [ %3, %110 ], [ %132, %130 ]
  call fastcc void @StripDouble(ptr noundef nonnull %6, ptr noundef %131)
  %132 = getelementptr inbounds i8, ptr %131, i64 %111
  %133 = load i32, ptr %2, align 4, !tbaa !60
  %134 = add nsw i32 %133, 1
  store i32 %134, ptr %2, align 4, !tbaa !60
  %135 = call fastcc signext i8 @zbDBReadLine(ptr noundef nonnull %0, ptr noundef nonnull %6), !range !68
  %136 = icmp eq i8 %135, 0
  %137 = load i8, ptr %6, align 16
  %138 = icmp eq i8 %137, 33
  %139 = select i1 %136, i1 true, i1 %138
  br i1 %139, label %177, label %130, !llvm.loop !85

140:                                              ; preds = %102, %165
  %141 = phi ptr [ %3, %102 ], [ %169, %165 ]
  br label %142

142:                                              ; preds = %142, %140
  %143 = phi ptr [ %146, %142 ], [ %6, %140 ]
  %144 = load i8, ptr %143, align 1, !tbaa !35
  %145 = icmp eq i8 %144, 34
  %146 = getelementptr inbounds i8, ptr %143, i64 1
  br i1 %145, label %147, label %142, !llvm.loop !82

147:                                              ; preds = %142
  %148 = getelementptr inbounds i8, ptr %143, i64 1
  br label %149

149:                                              ; preds = %159, %147
  %150 = phi ptr [ %148, %147 ], [ %161, %159 ]
  %151 = phi ptr [ %141, %147 ], [ %162, %159 ]
  %152 = load i8, ptr %150, align 1, !tbaa !35
  %153 = getelementptr inbounds i8, ptr %150, i64 1
  %154 = icmp eq i8 %152, 34
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = load i8, ptr %153, align 1, !tbaa !35
  %157 = getelementptr inbounds i8, ptr %150, i64 2
  %158 = icmp eq i8 %156, 34
  br i1 %158, label %159, label %165

159:                                              ; preds = %149, %155
  %160 = phi i8 [ %156, %155 ], [ %152, %149 ]
  %161 = phi ptr [ %157, %155 ], [ %153, %149 ]
  %162 = getelementptr inbounds i8, ptr %151, i64 1
  store i8 %160, ptr %151, align 1, !tbaa !35
  %163 = load i8, ptr %161, align 1, !tbaa !35
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %149, !llvm.loop !83

165:                                              ; preds = %155, %159
  %166 = phi ptr [ %161, %159 ], [ %157, %155 ]
  %167 = phi ptr [ %162, %159 ], [ %151, %155 ]
  store i8 0, ptr %167, align 1, !tbaa !35
  %168 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %166) #23
  %169 = getelementptr inbounds i8, ptr %141, i64 %103
  %170 = load i32, ptr %2, align 4, !tbaa !60
  %171 = add nsw i32 %170, 1
  store i32 %171, ptr %2, align 4, !tbaa !60
  %172 = call fastcc signext i8 @zbDBReadLine(ptr noundef nonnull %0, ptr noundef nonnull %6), !range !68
  %173 = icmp eq i8 %172, 0
  %174 = load i8, ptr %6, align 16
  %175 = icmp eq i8 %174, 33
  %176 = select i1 %173, i1 true, i1 %175
  br i1 %176, label %177, label %140, !llvm.loop !86

177:                                              ; preds = %165, %130, %120, %96, %104, %112, %49, %93, %94
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #23
  br label %178

178:                                              ; preds = %38, %177
  %179 = phi i8 [ 1, %177 ], [ 0, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %7) #23
  ret i8 %179
}

; Function Attrs: cold nounwind uwtable
define dso_local void @DBPutValue(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) local_unnamed_addr #7 !prof !34 {
  %7 = alloca [256 x i8], align 16
  %8 = alloca [256 x i8], align 16
  %9 = alloca [1000 x i8], align 16
  %10 = alloca [256 x i8], align 16
  %11 = alloca [1000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %11) #23
  %12 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !73
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %6
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18)
  br label %17

17:                                               ; preds = %15, %6
  %18 = and i32 %2, 240
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20)
  br label %22

22:                                               ; preds = %20, %17
  %23 = and i32 %2, 15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21)
  br label %27

27:                                               ; preds = %25, %22
  %28 = call fastcc ptr @sDataBaseName(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10)
  %29 = load i32, ptr %0, align 8, !tbaa !74
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !64
  %34 = call i32 @fseek(ptr noundef %33, i64 noundef 0, i32 noundef 2)
  br label %36

35:                                               ; preds = %27
  call fastcc void @ePrepareDatabaseForEntry(ptr noundef nonnull %0, ptr noundef nonnull %10, i32 noundef %2, i32 noundef %3)
  br label %36

36:                                               ; preds = %35, %31
  call fastcc void @ConstructDataHeader(ptr noundef nonnull %11, ptr noundef nonnull %10, i32 noundef %2)
  %37 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !64
  %39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.22, ptr noundef nonnull %11)
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %9) #23
  store i8 0, ptr %9, align 16
  %40 = trunc i32 %2 to i8
  %41 = and i8 %40, -16
  switch i8 %41, label %97 [
    i8 16, label %42
    i8 32, label %57
  ]

42:                                               ; preds = %36
  switch i32 %23, label %55 [
    i32 1, label %43
    i32 2, label %49
    i32 3, label %52
  ]

43:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #23
  %44 = load i32, ptr %4, align 4, !tbaa !60
  %45 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %44) #23
  %46 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %8) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #23
  %47 = load ptr, ptr %37, align 8, !tbaa !64
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.22, ptr noundef nonnull %9)
  br label %97

49:                                               ; preds = %42
  call fastcc void @ConcatDouble(ptr noundef nonnull %9, ptr noundef %4)
  %50 = load ptr, ptr %37, align 8, !tbaa !64
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.22, ptr noundef nonnull %9)
  br label %97

52:                                               ; preds = %42
  call fastcc void @ConcatString(ptr noundef nonnull %9, ptr noundef %4)
  %53 = load ptr, ptr %37, align 8, !tbaa !64
  %54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef nonnull @.str.22, ptr noundef nonnull %9)
  br label %97

55:                                               ; preds = %42
  %56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %2)
  br label %97

57:                                               ; preds = %36
  switch i32 %23, label %97 [
    i32 1, label %66
    i32 2, label %62
    i32 3, label %58
  ]

58:                                               ; preds = %57
  %59 = icmp sgt i32 %3, 0
  br i1 %59, label %60, label %97

60:                                               ; preds = %58
  %61 = sext i32 %5 to i64
  br label %89

62:                                               ; preds = %57
  %63 = icmp sgt i32 %3, 0
  br i1 %63, label %64, label %97

64:                                               ; preds = %62
  %65 = sext i32 %5 to i64
  br label %81

66:                                               ; preds = %57
  %67 = icmp sgt i32 %3, 0
  br i1 %67, label %68, label %97

68:                                               ; preds = %66
  %69 = sext i32 %5 to i64
  br label %70

70:                                               ; preds = %68, %70
  %71 = phi i32 [ 0, %68 ], [ %79, %70 ]
  %72 = phi ptr [ %4, %68 ], [ %78, %70 ]
  store i8 0, ptr %9, align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #23
  %73 = load i32, ptr %72, align 4, !tbaa !60
  %74 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %73) #23
  %75 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %7) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #23
  %76 = load ptr, ptr %37, align 8, !tbaa !64
  %77 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.22, ptr noundef nonnull %9)
  %78 = getelementptr inbounds i8, ptr %72, i64 %69
  %79 = add nuw nsw i32 %71, 1
  %80 = icmp eq i32 %79, %3
  br i1 %80, label %97, label %70, !llvm.loop !87

81:                                               ; preds = %64, %81
  %82 = phi i32 [ 0, %64 ], [ %87, %81 ]
  %83 = phi ptr [ %4, %64 ], [ %86, %81 ]
  store i8 0, ptr %9, align 16
  call fastcc void @ConcatDouble(ptr noundef nonnull %9, ptr noundef %83)
  %84 = load ptr, ptr %37, align 8, !tbaa !64
  %85 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %84, ptr noundef nonnull @.str.22, ptr noundef nonnull %9)
  %86 = getelementptr inbounds i8, ptr %83, i64 %65
  %87 = add nuw nsw i32 %82, 1
  %88 = icmp eq i32 %87, %3
  br i1 %88, label %97, label %81, !llvm.loop !88

89:                                               ; preds = %60, %89
  %90 = phi i32 [ 0, %60 ], [ %95, %89 ]
  %91 = phi ptr [ %4, %60 ], [ %94, %89 ]
  store i8 0, ptr %9, align 16
  call fastcc void @ConcatString(ptr noundef nonnull %9, ptr noundef %91)
  %92 = load ptr, ptr %37, align 8, !tbaa !64
  %93 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef nonnull @.str.22, ptr noundef nonnull %9)
  %94 = getelementptr inbounds i8, ptr %91, i64 %61
  %95 = add nuw nsw i32 %90, 1
  %96 = icmp eq i32 %95, %3
  br i1 %96, label %97, label %89, !llvm.loop !89

97:                                               ; preds = %89, %81, %70, %58, %62, %66, %36, %43, %49, %52, %55, %57
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %9) #23
  %98 = load ptr, ptr %37, align 8, !tbaa !64
  %99 = call i32 @fflush(ptr noundef %98)
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %10) #23
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @ePrepareDatabaseForEntry(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #7 !prof !34 {
  %5 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = tail call i32 @fseek(ptr noundef %6, i64 noundef 0, i32 noundef 2)
  %8 = load ptr, ptr %5, align 8, !tbaa !64
  %9 = tail call i64 @ftell(ptr noundef %8)
  %10 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  %12 = getelementptr inbounds %struct.DICTt, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %4
  %16 = load i32, ptr %11, align 8, !tbaa !46
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15, %27
  %19 = phi ptr [ %29, %27 ], [ %13, %15 ]
  %20 = phi i32 [ %28, %27 ], [ 0, %15 ]
  %21 = load ptr, ptr %19, align 8, !tbaa !52
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(1) %1) #26
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %19, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !55
  br label %31

27:                                               ; preds = %18
  %28 = add nuw nsw i32 %20, 1
  %29 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %19, i64 1
  %30 = icmp eq i32 %28, %16
  br i1 %30, label %31, label %18, !llvm.loop !56

31:                                               ; preds = %27, %15, %4, %24
  %32 = phi ptr [ %26, %24 ], [ null, %4 ], [ null, %15 ], [ null, %27 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = tail call noalias dereferenceable_or_null(272) ptr @malloc(i64 noundef 272) #24
  %36 = getelementptr inbounds %struct.ENTRYt, ptr %35, i64 0, i32 2
  store i32 %2, ptr %36, align 8, !tbaa !76
  %37 = getelementptr inbounds %struct.ENTRYt, ptr %35, i64 0, i32 1
  %38 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(1) %1) #23
  store i64 %9, ptr %35, align 8, !tbaa !65
  %39 = getelementptr inbounds %struct.ENTRYt, ptr %35, i64 0, i32 3
  store i32 %3, ptr %39, align 4, !tbaa !69
  tail call void @DictAdd(ptr noundef %11, ptr noundef %1, ptr noundef nonnull %35)
  br label %44

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.ENTRYt, ptr %32, i64 0, i32 2
  store i32 %2, ptr %41, align 8, !tbaa !76
  %42 = getelementptr inbounds %struct.ENTRYt, ptr %32, i64 0, i32 3
  store i32 %3, ptr %42, align 4, !tbaa !69
  store i64 %9, ptr %32, align 8, !tbaa !65
  %43 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 6
  store i8 1, ptr %43, align 8, !tbaa !72
  br label %44

44:                                               ; preds = %40, %34
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ConstructDataHeader(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #18 !prof !34 {
  store i16 33, ptr %0, align 1
  %4 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #23
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

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: cold nofree nounwind uwtable
define dso_local noundef signext i8 @bDBGetTableType(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr noundef %5, ptr nocapture noundef writeonly %6, ptr noundef %7, ptr nocapture noundef writeonly %8, ptr noundef %9, ptr nocapture noundef writeonly %10, ptr noundef %11, ptr nocapture noundef writeonly %12, ptr noundef %13, ptr nocapture noundef writeonly %14, ptr noundef %15, ptr nocapture noundef writeonly %16, ptr noundef %17, ptr nocapture noundef writeonly %18, ptr noundef %19, ptr nocapture noundef writeonly %20, ptr noundef %21, ptr nocapture noundef writeonly %22, ptr noundef %23, ptr nocapture noundef writeonly %24, ptr noundef %25, ptr nocapture noundef writeonly %26, ptr noundef %27, ptr nocapture noundef writeonly %28, ptr noundef %29, ptr nocapture noundef writeonly %30, ptr noundef %31, ptr nocapture noundef writeonly %32, ptr noundef %33, ptr nocapture noundef writeonly %34, ptr noundef %35, ptr nocapture noundef writeonly %36, ptr noundef %37) local_unnamed_addr #14 !prof !34 {
  %39 = alloca [256 x i8], align 16
  %40 = alloca [256 x i8], align 16
  %41 = alloca [256 x i8], align 16
  %42 = alloca [256 x i8], align 16
  %43 = alloca [1000 x i8], align 16
  %44 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %39) #23
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %40) #23
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %41) #23
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %42) #23
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %43) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %44) #23
  %45 = load i32, ptr %0, align 8, !tbaa !74
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 9
  %49 = call signext i8 @zbDBParseSimpleHeader(ptr noundef nonnull %0, ptr noundef nonnull %48, ptr noundef %1, ptr noundef nonnull %44), !range !68
  %50 = load i32, ptr %44, align 4, !tbaa !60
  store i32 %50, ptr %2, align 4, !tbaa !60
  store i32 -1, ptr %3, align 4, !tbaa !60
  %51 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(1) %48) #23
  br label %88

52:                                               ; preds = %38
  %53 = call fastcc ptr @sDataBaseName(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %39)
  %54 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !63
  %56 = getelementptr inbounds %struct.DICTt, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !50
  %58 = icmp eq ptr %57, null
  br i1 %58, label %75, label %59

59:                                               ; preds = %52
  %60 = load i32, ptr %55, align 8, !tbaa !46
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %59, %71
  %63 = phi ptr [ %73, %71 ], [ %57, %59 ]
  %64 = phi i32 [ %72, %71 ], [ 0, %59 ]
  %65 = load ptr, ptr %63, align 8, !tbaa !52
  %66 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(1) %39) #26
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %63, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !55
  br label %75

71:                                               ; preds = %62
  %72 = add nuw nsw i32 %64, 1
  %73 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %63, i64 1
  %74 = icmp eq i32 %72, %60
  br i1 %74, label %75, label %62, !llvm.loop !56

75:                                               ; preds = %71, %59, %52, %68
  %76 = phi ptr [ %70, %68 ], [ null, %52 ], [ null, %59 ], [ null, %71 ]
  %77 = icmp eq ptr %76, null
  br i1 %77, label %247, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.ENTRYt, ptr %76, i64 0, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !76
  store i32 %80, ptr %44, align 4, !tbaa !60
  store i32 %80, ptr %2, align 4, !tbaa !60
  %81 = getelementptr inbounds %struct.ENTRYt, ptr %76, i64 0, i32 3
  %82 = load i32, ptr %81, align 4, !tbaa !69
  store i32 %82, ptr %3, align 4, !tbaa !60
  %83 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !64
  %85 = load i64, ptr %76, align 8, !tbaa !65
  %86 = call i32 @fseek(ptr noundef %84, i64 noundef %85, i32 noundef 0)
  %87 = call fastcc signext i8 @zbDBReadLine(ptr noundef nonnull %0, ptr noundef nonnull %43), !range !68
  br label %88

88:                                               ; preds = %78, %47
  %89 = load i32, ptr %44, align 4, !tbaa !60
  %90 = and i32 %89, 240
  %91 = icmp eq i32 %90, 64
  br i1 %91, label %92, label %247

92:                                               ; preds = %88
  store i32 0, ptr %4, align 4, !tbaa !60
  store i32 0, ptr %6, align 4, !tbaa !60
  store i32 0, ptr %8, align 4, !tbaa !60
  store i32 0, ptr %10, align 4, !tbaa !60
  store i32 0, ptr %12, align 4, !tbaa !60
  store i32 0, ptr %14, align 4, !tbaa !60
  store i32 0, ptr %16, align 4, !tbaa !60
  store i32 0, ptr %18, align 4, !tbaa !60
  store i32 0, ptr %20, align 4, !tbaa !60
  store i32 0, ptr %22, align 4, !tbaa !60
  store i32 0, ptr %24, align 4, !tbaa !60
  store i32 0, ptr %26, align 4, !tbaa !60
  store i32 0, ptr %28, align 4, !tbaa !60
  store i32 0, ptr %30, align 4, !tbaa !60
  store i32 0, ptr %32, align 4, !tbaa !60
  store i32 0, ptr %34, align 4, !tbaa !60
  store i32 0, ptr %36, align 4, !tbaa !60
  br label %93

93:                                               ; preds = %93, %92
  %94 = phi ptr [ %43, %92 ], [ %97, %93 ]
  %95 = load i8, ptr %94, align 1, !tbaa !35
  %96 = icmp eq i8 %95, 32
  %97 = getelementptr inbounds i8, ptr %94, i64 1
  br i1 %96, label %93, label %98, !llvm.loop !44

98:                                               ; preds = %93
  %99 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(1) %94) #23
  call void @sDBRemoveFirstString(ptr noundef nonnull %43, ptr noundef nonnull %40)
  br label %100

100:                                              ; preds = %100, %98
  %101 = phi ptr [ %43, %98 ], [ %104, %100 ]
  %102 = load i8, ptr %101, align 1, !tbaa !35
  %103 = icmp eq i8 %102, 32
  %104 = getelementptr inbounds i8, ptr %101, i64 1
  br i1 %103, label %100, label %105, !llvm.loop !44

105:                                              ; preds = %100
  %106 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(1) %101) #23
  call void @sDBRemoveFirstString(ptr noundef nonnull %43, ptr noundef nonnull %41)
  br label %107

107:                                              ; preds = %242, %105
  %108 = phi i32 [ 1, %105 ], [ %243, %242 ]
  %109 = phi i32 [ 1, %105 ], [ %244, %242 ]
  %110 = phi i32 [ 1, %105 ], [ %245, %242 ]
  %111 = phi i32 [ 1, %105 ], [ %246, %242 ]
  br label %112

112:                                              ; preds = %112, %107
  %113 = phi ptr [ %43, %107 ], [ %116, %112 ]
  %114 = load i8, ptr %113, align 1, !tbaa !35
  %115 = icmp eq i8 %114, 32
  %116 = getelementptr inbounds i8, ptr %113, i64 1
  br i1 %115, label %112, label %117, !llvm.loop !44

117:                                              ; preds = %112
  %118 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(1) %113) #23
  %119 = load i8, ptr %43, align 16
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %247, label %121

121:                                              ; preds = %117
  call void @sDBRemoveFirstString(ptr noundef nonnull %43, ptr noundef nonnull %42)
  br label %122

122:                                              ; preds = %122, %121
  %123 = phi ptr [ %42, %121 ], [ %128, %122 ]
  %124 = load i8, ptr %123, align 1, !tbaa !35
  %125 = icmp ne i8 %124, 0
  %126 = icmp slt i8 %124, 33
  %127 = and i1 %125, %126
  %128 = getelementptr inbounds i8, ptr %123, i64 1
  br i1 %127, label %122, label %129, !llvm.loop !41

129:                                              ; preds = %122
  %130 = icmp eq i8 %124, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %129
  %132 = load i8, ptr %123, align 1, !tbaa !35
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %147, label %135

134:                                              ; preds = %129
  store i8 0, ptr %41, align 16, !tbaa !35
  br label %157

135:                                              ; preds = %131, %142
  %136 = phi i8 [ %145, %142 ], [ %132, %131 ]
  %137 = phi ptr [ %143, %142 ], [ %41, %131 ]
  %138 = phi ptr [ %144, %142 ], [ %123, %131 ]
  %139 = icmp sgt i8 %136, 31
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  store i8 %136, ptr %137, align 1, !tbaa !35
  %141 = getelementptr inbounds i8, ptr %137, i64 1
  br label %142

142:                                              ; preds = %140, %135
  %143 = phi ptr [ %141, %140 ], [ %137, %135 ]
  %144 = getelementptr inbounds i8, ptr %138, i64 1
  %145 = load i8, ptr %144, align 1, !tbaa !35
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %135, !llvm.loop !42

147:                                              ; preds = %142, %131
  %148 = phi ptr [ %41, %131 ], [ %143, %142 ]
  store i8 0, ptr %148, align 1, !tbaa !35
  %149 = load i8, ptr %41, align 16
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %147, %151
  %152 = phi ptr [ %153, %151 ], [ %148, %147 ]
  %153 = getelementptr inbounds i8, ptr %152, i64 -1
  %154 = load i8, ptr %153, align 1, !tbaa !35
  %155 = icmp eq i8 %154, 32
  br i1 %155, label %151, label %156, !llvm.loop !43

156:                                              ; preds = %151
  store i8 0, ptr %152, align 1, !tbaa !35
  br label %157

157:                                              ; preds = %134, %147, %156
  br label %158

158:                                              ; preds = %157, %158
  %159 = phi ptr [ %162, %158 ], [ %43, %157 ]
  %160 = load i8, ptr %159, align 1, !tbaa !35
  %161 = icmp eq i8 %160, 32
  %162 = getelementptr inbounds i8, ptr %159, i64 1
  br i1 %161, label %158, label %163, !llvm.loop !44

163:                                              ; preds = %158
  %164 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(1) %159) #23
  call void @sDBRemoveFirstString(ptr noundef nonnull %43, ptr noundef nonnull %42)
  br label %165

165:                                              ; preds = %165, %163
  %166 = phi ptr [ %42, %163 ], [ %171, %165 ]
  %167 = load i8, ptr %166, align 1, !tbaa !35
  %168 = icmp ne i8 %167, 0
  %169 = icmp slt i8 %167, 33
  %170 = and i1 %168, %169
  %171 = getelementptr inbounds i8, ptr %166, i64 1
  br i1 %170, label %165, label %172, !llvm.loop !41

172:                                              ; preds = %165
  %173 = icmp eq i8 %167, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %172
  %175 = load i8, ptr %166, align 1, !tbaa !35
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %190, label %178

177:                                              ; preds = %172
  store i8 0, ptr %40, align 16, !tbaa !35
  br label %200

178:                                              ; preds = %174, %185
  %179 = phi i8 [ %188, %185 ], [ %175, %174 ]
  %180 = phi ptr [ %186, %185 ], [ %40, %174 ]
  %181 = phi ptr [ %187, %185 ], [ %166, %174 ]
  %182 = icmp sgt i8 %179, 31
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  store i8 %179, ptr %180, align 1, !tbaa !35
  %184 = getelementptr inbounds i8, ptr %180, i64 1
  br label %185

185:                                              ; preds = %183, %178
  %186 = phi ptr [ %184, %183 ], [ %180, %178 ]
  %187 = getelementptr inbounds i8, ptr %181, i64 1
  %188 = load i8, ptr %187, align 1, !tbaa !35
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %190, label %178, !llvm.loop !42

190:                                              ; preds = %185, %174
  %191 = phi ptr [ %40, %174 ], [ %186, %185 ]
  store i8 0, ptr %191, align 1, !tbaa !35
  %192 = load i8, ptr %40, align 16
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %200, label %194

194:                                              ; preds = %190, %194
  %195 = phi ptr [ %196, %194 ], [ %191, %190 ]
  %196 = getelementptr inbounds i8, ptr %195, i64 -1
  %197 = load i8, ptr %196, align 1, !tbaa !35
  %198 = icmp eq i8 %197, 32
  br i1 %198, label %194, label %199, !llvm.loop !43

199:                                              ; preds = %194
  store i8 0, ptr %195, align 1, !tbaa !35
  br label %200

200:                                              ; preds = %177, %190, %199
  %201 = load i32, ptr %41, align 16
  switch i32 %201, label %237 [
    i32 7630441, label %202
    i32 7103076, label %216
    i32 7500915, label %226
  ]

202:                                              ; preds = %200
  switch i32 %108, label %214 [
    i32 1, label %210
    i32 2, label %203
    i32 3, label %204
    i32 4, label %205
    i32 5, label %206
    i32 6, label %207
    i32 7, label %208
    i32 8, label %209
  ]

203:                                              ; preds = %202
  br label %210

204:                                              ; preds = %202
  br label %210

205:                                              ; preds = %202
  br label %210

206:                                              ; preds = %202
  br label %210

207:                                              ; preds = %202
  br label %210

208:                                              ; preds = %202
  br label %210

209:                                              ; preds = %202
  br label %210

210:                                              ; preds = %202, %203, %204, %205, %206, %207, %208, %209
  %211 = phi ptr [ %18, %209 ], [ %16, %208 ], [ %14, %207 ], [ %12, %206 ], [ %10, %205 ], [ %8, %204 ], [ %6, %203 ], [ %4, %202 ]
  %212 = phi ptr [ %19, %209 ], [ %17, %208 ], [ %15, %207 ], [ %13, %206 ], [ %11, %205 ], [ %9, %204 ], [ %7, %203 ], [ %5, %202 ]
  store i32 %111, ptr %211, align 4, !tbaa !60
  %213 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %212, ptr noundef nonnull dereferenceable(1) %40) #23
  br label %214

214:                                              ; preds = %210, %202
  %215 = add nsw i32 %108, 1
  br label %242

216:                                              ; preds = %200
  switch i32 %109, label %224 [
    i32 1, label %220
    i32 2, label %217
    i32 3, label %218
    i32 4, label %219
  ]

217:                                              ; preds = %216
  br label %220

218:                                              ; preds = %216
  br label %220

219:                                              ; preds = %216
  br label %220

220:                                              ; preds = %216, %217, %218, %219
  %221 = phi ptr [ %26, %219 ], [ %24, %218 ], [ %22, %217 ], [ %20, %216 ]
  %222 = phi ptr [ %27, %219 ], [ %25, %218 ], [ %23, %217 ], [ %21, %216 ]
  store i32 %111, ptr %221, align 4, !tbaa !60
  %223 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %222, ptr noundef nonnull dereferenceable(1) %40) #23
  br label %224

224:                                              ; preds = %220, %216
  %225 = add nsw i32 %109, 1
  br label %242

226:                                              ; preds = %200
  switch i32 %110, label %235 [
    i32 1, label %231
    i32 2, label %227
    i32 3, label %228
    i32 4, label %229
    i32 5, label %230
  ]

227:                                              ; preds = %226
  br label %231

228:                                              ; preds = %226
  br label %231

229:                                              ; preds = %226
  br label %231

230:                                              ; preds = %226
  br label %231

231:                                              ; preds = %226, %227, %228, %229, %230
  %232 = phi ptr [ %36, %230 ], [ %34, %229 ], [ %32, %228 ], [ %30, %227 ], [ %28, %226 ]
  %233 = phi ptr [ %37, %230 ], [ %35, %229 ], [ %33, %228 ], [ %31, %227 ], [ %29, %226 ]
  store i32 %111, ptr %232, align 4, !tbaa !60
  %234 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %233, ptr noundef nonnull dereferenceable(1) %40) #23
  br label %235

235:                                              ; preds = %231, %226
  %236 = add nsw i32 %110, 1
  br label %242

237:                                              ; preds = %200
  %238 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 8
  %239 = load i32, ptr %238, align 8, !tbaa !61
  %240 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %239)
  %241 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef nonnull @.str.23)
  br label %242

242:                                              ; preds = %224, %237, %235, %214
  %243 = phi i32 [ %215, %214 ], [ %108, %224 ], [ %108, %235 ], [ %108, %237 ]
  %244 = phi i32 [ %109, %214 ], [ %225, %224 ], [ %109, %235 ], [ %109, %237 ]
  %245 = phi i32 [ %110, %214 ], [ %110, %224 ], [ %236, %235 ], [ %110, %237 ]
  %246 = add nuw nsw i32 %111, 1
  br label %107, !llvm.loop !90

247:                                              ; preds = %117, %88, %75
  %248 = phi i8 [ 0, %75 ], [ 1, %88 ], [ 1, %117 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %44) #23
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %43) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %42) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %41) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %40) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %39) #23
  ret i8 %248
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local noundef signext i8 @bDBGetTable(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10, i32 noundef %11, i32 noundef %12, ptr noundef %13, i32 noundef %14, i32 noundef %15, ptr noundef %16, i32 noundef %17, i32 noundef %18, ptr noundef %19, i32 noundef %20, i32 noundef %21, ptr noundef %22, i32 noundef %23, i32 noundef %24, ptr noundef %25, i32 noundef %26, i32 noundef %27, ptr noundef %28, i32 noundef %29, i32 noundef %30, ptr noundef %31, i32 noundef %32, i32 noundef %33, ptr noundef %34, i32 noundef %35, i32 noundef %36, ptr noundef %37, i32 noundef %38, i32 noundef %39, ptr nocapture noundef writeonly %40, i32 noundef %41, i32 noundef %42, ptr nocapture noundef writeonly %43, i32 noundef %44, i32 noundef %45, ptr nocapture noundef writeonly %46, i32 noundef %47, i32 noundef %48, ptr nocapture noundef writeonly %49, i32 noundef %50, i32 noundef %51, ptr nocapture noundef writeonly %52, i32 noundef %53) local_unnamed_addr #14 !prof !34 {
  %55 = alloca [256 x i8], align 16
  %56 = alloca [256 x i8], align 16
  %57 = alloca [256 x i8], align 16
  %58 = alloca [1000 x i8], align 16
  %59 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %55) #23
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %56) #23
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %57) #23
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %58) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %59) #23
  store i32 0, ptr %2, align 4, !tbaa !60
  %60 = load i32, ptr %0, align 8, !tbaa !74
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 9
  %64 = call signext i8 @zbDBParseSimpleHeader(ptr noundef nonnull %0, ptr noundef nonnull %63, ptr noundef %1, ptr noundef nonnull %59), !range !68
  br label %116

65:                                               ; preds = %54
  %66 = call fastcc ptr @sDataBaseName(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %55)
  %67 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 7
  %68 = load ptr, ptr %67, align 8, !tbaa !63
  %69 = getelementptr inbounds %struct.DICTt, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !50
  %71 = icmp eq ptr %70, null
  br i1 %71, label %88, label %72

72:                                               ; preds = %65
  %73 = load i32, ptr %68, align 8, !tbaa !46
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %72, %84
  %76 = phi ptr [ %86, %84 ], [ %70, %72 ]
  %77 = phi i32 [ %85, %84 ], [ 0, %72 ]
  %78 = load ptr, ptr %76, align 8, !tbaa !52
  %79 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %78, ptr noundef nonnull dereferenceable(1) %55) #26
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %76, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !55
  br label %88

84:                                               ; preds = %75
  %85 = add nuw nsw i32 %77, 1
  %86 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %76, i64 1
  %87 = icmp eq i32 %85, %73
  br i1 %87, label %88, label %75, !llvm.loop !56

88:                                               ; preds = %84, %72, %65, %81
  %89 = phi ptr [ %83, %81 ], [ null, %65 ], [ null, %72 ], [ null, %84 ]
  %90 = icmp eq ptr %89, null
  br i1 %90, label %403, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.ENTRYt, ptr %89, i64 0, i32 2
  %93 = load i32, ptr %92, align 8, !tbaa !76
  %94 = and i32 %93, 240
  %95 = icmp eq i32 %94, 64
  br i1 %95, label %96, label %403

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !64
  %99 = load i64, ptr %89, align 8, !tbaa !65
  %100 = call i32 @fseek(ptr noundef %98, i64 noundef %99, i32 noundef 0)
  %101 = call fastcc signext i8 @zbDBReadLine(ptr noundef nonnull %0, ptr noundef nonnull %58), !range !68
  br label %102

102:                                              ; preds = %102, %96
  %103 = phi ptr [ %58, %96 ], [ %106, %102 ]
  %104 = load i8, ptr %103, align 1, !tbaa !35
  %105 = icmp eq i8 %104, 32
  %106 = getelementptr inbounds i8, ptr %103, i64 1
  br i1 %105, label %102, label %107, !llvm.loop !44

107:                                              ; preds = %102
  %108 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %58, ptr noundef nonnull dereferenceable(1) %103) #23
  call void @sDBRemoveFirstString(ptr noundef nonnull %58, ptr noundef nonnull %56)
  br label %109

109:                                              ; preds = %109, %107
  %110 = phi ptr [ %58, %107 ], [ %113, %109 ]
  %111 = load i8, ptr %110, align 1, !tbaa !35
  %112 = icmp eq i8 %111, 32
  %113 = getelementptr inbounds i8, ptr %110, i64 1
  br i1 %112, label %109, label %114, !llvm.loop !44

114:                                              ; preds = %109
  %115 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %58, ptr noundef nonnull dereferenceable(1) %110) #23
  call void @sDBRemoveFirstString(ptr noundef nonnull %58, ptr noundef nonnull %57)
  br label %116

116:                                              ; preds = %114, %62
  %117 = call fastcc signext i8 @zbDBReadLine(ptr noundef nonnull %0, ptr noundef nonnull %58), !range !68
  %118 = icmp eq i8 %117, 0
  %119 = load i8, ptr %58, align 16
  %120 = icmp eq i8 %119, 33
  %121 = select i1 %118, i1 true, i1 %120
  br i1 %121, label %403, label %122

122:                                              ; preds = %116
  %123 = sext i32 %53 to i64
  %124 = sext i32 %50 to i64
  %125 = sext i32 %47 to i64
  %126 = sext i32 %44 to i64
  %127 = sext i32 %41 to i64
  %128 = sext i32 %38 to i64
  %129 = sext i32 %35 to i64
  %130 = sext i32 %32 to i64
  %131 = sext i32 %29 to i64
  %132 = sext i32 %26 to i64
  %133 = sext i32 %23 to i64
  %134 = sext i32 %20 to i64
  %135 = sext i32 %17 to i64
  %136 = sext i32 %14 to i64
  %137 = sext i32 %11 to i64
  %138 = sext i32 %8 to i64
  %139 = sext i32 %5 to i64
  br label %140

140:                                              ; preds = %122, %397
  %141 = phi ptr [ %4, %122 ], [ %393, %397 ]
  %142 = phi ptr [ %52, %122 ], [ %392, %397 ]
  %143 = phi ptr [ %7, %122 ], [ %391, %397 ]
  %144 = phi ptr [ %10, %122 ], [ %390, %397 ]
  %145 = phi ptr [ %49, %122 ], [ %389, %397 ]
  %146 = phi ptr [ %13, %122 ], [ %388, %397 ]
  %147 = phi ptr [ %16, %122 ], [ %387, %397 ]
  %148 = phi ptr [ %46, %122 ], [ %386, %397 ]
  %149 = phi ptr [ %19, %122 ], [ %385, %397 ]
  %150 = phi ptr [ %22, %122 ], [ %384, %397 ]
  %151 = phi ptr [ %43, %122 ], [ %383, %397 ]
  %152 = phi ptr [ %25, %122 ], [ %382, %397 ]
  %153 = phi ptr [ %28, %122 ], [ %381, %397 ]
  %154 = phi ptr [ %40, %122 ], [ %380, %397 ]
  %155 = phi ptr [ %31, %122 ], [ %379, %397 ]
  %156 = phi ptr [ %34, %122 ], [ %378, %397 ]
  %157 = phi ptr [ %37, %122 ], [ %377, %397 ]
  %158 = load i32, ptr %2, align 4, !tbaa !60
  %159 = add nsw i32 %158, 1
  store i32 %159, ptr %2, align 4, !tbaa !60
  br label %160

160:                                              ; preds = %376, %140
  %161 = phi ptr [ %157, %140 ], [ %377, %376 ]
  %162 = phi ptr [ %156, %140 ], [ %378, %376 ]
  %163 = phi ptr [ %155, %140 ], [ %379, %376 ]
  %164 = phi ptr [ %154, %140 ], [ %380, %376 ]
  %165 = phi ptr [ %153, %140 ], [ %381, %376 ]
  %166 = phi ptr [ %152, %140 ], [ %382, %376 ]
  %167 = phi ptr [ %151, %140 ], [ %383, %376 ]
  %168 = phi ptr [ %150, %140 ], [ %384, %376 ]
  %169 = phi ptr [ %149, %140 ], [ %385, %376 ]
  %170 = phi ptr [ %148, %140 ], [ %386, %376 ]
  %171 = phi ptr [ %147, %140 ], [ %387, %376 ]
  %172 = phi ptr [ %146, %140 ], [ %388, %376 ]
  %173 = phi ptr [ %145, %140 ], [ %389, %376 ]
  %174 = phi ptr [ %144, %140 ], [ %390, %376 ]
  %175 = phi ptr [ %143, %140 ], [ %391, %376 ]
  %176 = phi ptr [ %142, %140 ], [ %392, %376 ]
  %177 = phi ptr [ %141, %140 ], [ %393, %376 ]
  %178 = phi i32 [ 1, %140 ], [ %394, %376 ]
  %179 = icmp eq i32 %178, %3
  br i1 %179, label %180, label %182

180:                                              ; preds = %160
  call fastcc void @StripInteger(ptr noundef nonnull %58, ptr noundef %177)
  %181 = getelementptr inbounds i8, ptr %177, i64 %139
  br label %376

182:                                              ; preds = %160
  %183 = icmp eq i32 %178, %6
  br i1 %183, label %184, label %186

184:                                              ; preds = %182
  call fastcc void @StripInteger(ptr noundef nonnull %58, ptr noundef %175)
  %185 = getelementptr inbounds i8, ptr %175, i64 %138
  br label %376

186:                                              ; preds = %182
  %187 = icmp eq i32 %178, %9
  br i1 %187, label %188, label %190

188:                                              ; preds = %186
  call fastcc void @StripInteger(ptr noundef nonnull %58, ptr noundef %174)
  %189 = getelementptr inbounds i8, ptr %174, i64 %137
  br label %376

190:                                              ; preds = %186
  %191 = icmp eq i32 %178, %12
  br i1 %191, label %192, label %194

192:                                              ; preds = %190
  call fastcc void @StripInteger(ptr noundef nonnull %58, ptr noundef %172)
  %193 = getelementptr inbounds i8, ptr %172, i64 %136
  br label %376

194:                                              ; preds = %190
  %195 = icmp eq i32 %178, %15
  br i1 %195, label %196, label %198

196:                                              ; preds = %194
  call fastcc void @StripInteger(ptr noundef nonnull %58, ptr noundef %171)
  %197 = getelementptr inbounds i8, ptr %171, i64 %135
  br label %376

198:                                              ; preds = %194
  %199 = icmp eq i32 %178, %18
  br i1 %199, label %200, label %202

200:                                              ; preds = %198
  call fastcc void @StripInteger(ptr noundef nonnull %58, ptr noundef %169)
  %201 = getelementptr inbounds i8, ptr %169, i64 %134
  br label %376

202:                                              ; preds = %198
  %203 = icmp eq i32 %178, %21
  br i1 %203, label %204, label %206

204:                                              ; preds = %202
  call fastcc void @StripInteger(ptr noundef nonnull %58, ptr noundef %168)
  %205 = getelementptr inbounds i8, ptr %168, i64 %133
  br label %376

206:                                              ; preds = %202
  %207 = icmp eq i32 %178, %24
  br i1 %207, label %208, label %210

208:                                              ; preds = %206
  call fastcc void @StripInteger(ptr noundef nonnull %58, ptr noundef %166)
  %209 = getelementptr inbounds i8, ptr %166, i64 %132
  br label %376

210:                                              ; preds = %206
  %211 = icmp eq i32 %178, %27
  br i1 %211, label %212, label %214

212:                                              ; preds = %210
  call fastcc void @StripDouble(ptr noundef nonnull %58, ptr noundef %165)
  %213 = getelementptr inbounds i8, ptr %165, i64 %131
  br label %376

214:                                              ; preds = %210
  %215 = icmp eq i32 %178, %30
  br i1 %215, label %216, label %218

216:                                              ; preds = %214
  call fastcc void @StripDouble(ptr noundef nonnull %58, ptr noundef %163)
  %217 = getelementptr inbounds i8, ptr %163, i64 %130
  br label %376

218:                                              ; preds = %214
  %219 = icmp eq i32 %178, %33
  br i1 %219, label %220, label %222

220:                                              ; preds = %218
  call fastcc void @StripDouble(ptr noundef nonnull %58, ptr noundef %162)
  %221 = getelementptr inbounds i8, ptr %162, i64 %129
  br label %376

222:                                              ; preds = %218
  %223 = icmp eq i32 %178, %36
  br i1 %223, label %224, label %226

224:                                              ; preds = %222
  call fastcc void @StripDouble(ptr noundef nonnull %58, ptr noundef %161)
  %225 = getelementptr inbounds i8, ptr %161, i64 %128
  br label %376

226:                                              ; preds = %222
  %227 = icmp eq i32 %178, %39
  br i1 %227, label %228, label %256

228:                                              ; preds = %226, %228
  %229 = phi ptr [ %232, %228 ], [ %58, %226 ]
  %230 = load i8, ptr %229, align 1, !tbaa !35
  %231 = icmp eq i8 %230, 34
  %232 = getelementptr inbounds i8, ptr %229, i64 1
  br i1 %231, label %233, label %228, !llvm.loop !82

233:                                              ; preds = %228
  %234 = getelementptr inbounds i8, ptr %229, i64 1
  br label %235

235:                                              ; preds = %245, %233
  %236 = phi ptr [ %234, %233 ], [ %247, %245 ]
  %237 = phi ptr [ %164, %233 ], [ %248, %245 ]
  %238 = load i8, ptr %236, align 1, !tbaa !35
  %239 = getelementptr inbounds i8, ptr %236, i64 1
  %240 = icmp eq i8 %238, 34
  br i1 %240, label %241, label %245

241:                                              ; preds = %235
  %242 = load i8, ptr %239, align 1, !tbaa !35
  %243 = getelementptr inbounds i8, ptr %236, i64 2
  %244 = icmp eq i8 %242, 34
  br i1 %244, label %245, label %251

245:                                              ; preds = %235, %241
  %246 = phi i8 [ %242, %241 ], [ %238, %235 ]
  %247 = phi ptr [ %243, %241 ], [ %239, %235 ]
  %248 = getelementptr inbounds i8, ptr %237, i64 1
  store i8 %246, ptr %237, align 1, !tbaa !35
  %249 = load i8, ptr %247, align 1, !tbaa !35
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %251, label %235, !llvm.loop !83

251:                                              ; preds = %241, %245
  %252 = phi ptr [ %247, %245 ], [ %243, %241 ]
  %253 = phi ptr [ %248, %245 ], [ %237, %241 ]
  store i8 0, ptr %253, align 1, !tbaa !35
  %254 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %58, ptr noundef nonnull dereferenceable(1) %252) #23
  %255 = getelementptr inbounds i8, ptr %164, i64 %127
  br label %376

256:                                              ; preds = %226
  %257 = icmp eq i32 %178, %42
  br i1 %257, label %258, label %286

258:                                              ; preds = %256, %258
  %259 = phi ptr [ %262, %258 ], [ %58, %256 ]
  %260 = load i8, ptr %259, align 1, !tbaa !35
  %261 = icmp eq i8 %260, 34
  %262 = getelementptr inbounds i8, ptr %259, i64 1
  br i1 %261, label %263, label %258, !llvm.loop !82

263:                                              ; preds = %258
  %264 = getelementptr inbounds i8, ptr %259, i64 1
  br label %265

265:                                              ; preds = %275, %263
  %266 = phi ptr [ %264, %263 ], [ %277, %275 ]
  %267 = phi ptr [ %167, %263 ], [ %278, %275 ]
  %268 = load i8, ptr %266, align 1, !tbaa !35
  %269 = getelementptr inbounds i8, ptr %266, i64 1
  %270 = icmp eq i8 %268, 34
  br i1 %270, label %271, label %275

271:                                              ; preds = %265
  %272 = load i8, ptr %269, align 1, !tbaa !35
  %273 = getelementptr inbounds i8, ptr %266, i64 2
  %274 = icmp eq i8 %272, 34
  br i1 %274, label %275, label %281

275:                                              ; preds = %265, %271
  %276 = phi i8 [ %272, %271 ], [ %268, %265 ]
  %277 = phi ptr [ %273, %271 ], [ %269, %265 ]
  %278 = getelementptr inbounds i8, ptr %267, i64 1
  store i8 %276, ptr %267, align 1, !tbaa !35
  %279 = load i8, ptr %277, align 1, !tbaa !35
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %281, label %265, !llvm.loop !83

281:                                              ; preds = %271, %275
  %282 = phi ptr [ %277, %275 ], [ %273, %271 ]
  %283 = phi ptr [ %278, %275 ], [ %267, %271 ]
  store i8 0, ptr %283, align 1, !tbaa !35
  %284 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %58, ptr noundef nonnull dereferenceable(1) %282) #23
  %285 = getelementptr inbounds i8, ptr %167, i64 %126
  br label %376

286:                                              ; preds = %256
  %287 = icmp eq i32 %178, %45
  br i1 %287, label %288, label %316

288:                                              ; preds = %286, %288
  %289 = phi ptr [ %292, %288 ], [ %58, %286 ]
  %290 = load i8, ptr %289, align 1, !tbaa !35
  %291 = icmp eq i8 %290, 34
  %292 = getelementptr inbounds i8, ptr %289, i64 1
  br i1 %291, label %293, label %288, !llvm.loop !82

293:                                              ; preds = %288
  %294 = getelementptr inbounds i8, ptr %289, i64 1
  br label %295

295:                                              ; preds = %305, %293
  %296 = phi ptr [ %294, %293 ], [ %307, %305 ]
  %297 = phi ptr [ %170, %293 ], [ %308, %305 ]
  %298 = load i8, ptr %296, align 1, !tbaa !35
  %299 = getelementptr inbounds i8, ptr %296, i64 1
  %300 = icmp eq i8 %298, 34
  br i1 %300, label %301, label %305

301:                                              ; preds = %295
  %302 = load i8, ptr %299, align 1, !tbaa !35
  %303 = getelementptr inbounds i8, ptr %296, i64 2
  %304 = icmp eq i8 %302, 34
  br i1 %304, label %305, label %311

305:                                              ; preds = %295, %301
  %306 = phi i8 [ %302, %301 ], [ %298, %295 ]
  %307 = phi ptr [ %303, %301 ], [ %299, %295 ]
  %308 = getelementptr inbounds i8, ptr %297, i64 1
  store i8 %306, ptr %297, align 1, !tbaa !35
  %309 = load i8, ptr %307, align 1, !tbaa !35
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %311, label %295, !llvm.loop !83

311:                                              ; preds = %301, %305
  %312 = phi ptr [ %307, %305 ], [ %303, %301 ]
  %313 = phi ptr [ %308, %305 ], [ %297, %301 ]
  store i8 0, ptr %313, align 1, !tbaa !35
  %314 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %58, ptr noundef nonnull dereferenceable(1) %312) #23
  %315 = getelementptr inbounds i8, ptr %170, i64 %125
  br label %376

316:                                              ; preds = %286
  %317 = icmp eq i32 %178, %48
  br i1 %317, label %318, label %346

318:                                              ; preds = %316, %318
  %319 = phi ptr [ %322, %318 ], [ %58, %316 ]
  %320 = load i8, ptr %319, align 1, !tbaa !35
  %321 = icmp eq i8 %320, 34
  %322 = getelementptr inbounds i8, ptr %319, i64 1
  br i1 %321, label %323, label %318, !llvm.loop !82

323:                                              ; preds = %318
  %324 = getelementptr inbounds i8, ptr %319, i64 1
  br label %325

325:                                              ; preds = %335, %323
  %326 = phi ptr [ %324, %323 ], [ %337, %335 ]
  %327 = phi ptr [ %173, %323 ], [ %338, %335 ]
  %328 = load i8, ptr %326, align 1, !tbaa !35
  %329 = getelementptr inbounds i8, ptr %326, i64 1
  %330 = icmp eq i8 %328, 34
  br i1 %330, label %331, label %335

331:                                              ; preds = %325
  %332 = load i8, ptr %329, align 1, !tbaa !35
  %333 = getelementptr inbounds i8, ptr %326, i64 2
  %334 = icmp eq i8 %332, 34
  br i1 %334, label %335, label %341

335:                                              ; preds = %325, %331
  %336 = phi i8 [ %332, %331 ], [ %328, %325 ]
  %337 = phi ptr [ %333, %331 ], [ %329, %325 ]
  %338 = getelementptr inbounds i8, ptr %327, i64 1
  store i8 %336, ptr %327, align 1, !tbaa !35
  %339 = load i8, ptr %337, align 1, !tbaa !35
  %340 = icmp eq i8 %339, 0
  br i1 %340, label %341, label %325, !llvm.loop !83

341:                                              ; preds = %331, %335
  %342 = phi ptr [ %337, %335 ], [ %333, %331 ]
  %343 = phi ptr [ %338, %335 ], [ %327, %331 ]
  store i8 0, ptr %343, align 1, !tbaa !35
  %344 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %58, ptr noundef nonnull dereferenceable(1) %342) #23
  %345 = getelementptr inbounds i8, ptr %173, i64 %124
  br label %376

346:                                              ; preds = %316
  %347 = icmp eq i32 %178, %51
  br i1 %347, label %348, label %376

348:                                              ; preds = %346, %348
  %349 = phi ptr [ %352, %348 ], [ %58, %346 ]
  %350 = load i8, ptr %349, align 1, !tbaa !35
  %351 = icmp eq i8 %350, 34
  %352 = getelementptr inbounds i8, ptr %349, i64 1
  br i1 %351, label %353, label %348, !llvm.loop !82

353:                                              ; preds = %348
  %354 = getelementptr inbounds i8, ptr %349, i64 1
  br label %355

355:                                              ; preds = %365, %353
  %356 = phi ptr [ %354, %353 ], [ %367, %365 ]
  %357 = phi ptr [ %176, %353 ], [ %368, %365 ]
  %358 = load i8, ptr %356, align 1, !tbaa !35
  %359 = getelementptr inbounds i8, ptr %356, i64 1
  %360 = icmp eq i8 %358, 34
  br i1 %360, label %361, label %365

361:                                              ; preds = %355
  %362 = load i8, ptr %359, align 1, !tbaa !35
  %363 = getelementptr inbounds i8, ptr %356, i64 2
  %364 = icmp eq i8 %362, 34
  br i1 %364, label %365, label %371

365:                                              ; preds = %355, %361
  %366 = phi i8 [ %362, %361 ], [ %358, %355 ]
  %367 = phi ptr [ %363, %361 ], [ %359, %355 ]
  %368 = getelementptr inbounds i8, ptr %357, i64 1
  store i8 %366, ptr %357, align 1, !tbaa !35
  %369 = load i8, ptr %367, align 1, !tbaa !35
  %370 = icmp eq i8 %369, 0
  br i1 %370, label %371, label %355, !llvm.loop !83

371:                                              ; preds = %361, %365
  %372 = phi ptr [ %367, %365 ], [ %363, %361 ]
  %373 = phi ptr [ %368, %365 ], [ %357, %361 ]
  store i8 0, ptr %373, align 1, !tbaa !35
  %374 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %58, ptr noundef nonnull dereferenceable(1) %372) #23
  %375 = getelementptr inbounds i8, ptr %176, i64 %123
  br label %376

376:                                              ; preds = %184, %192, %200, %208, %216, %224, %281, %341, %371, %346, %311, %251, %220, %212, %204, %196, %188, %180
  %377 = phi ptr [ %161, %180 ], [ %161, %184 ], [ %161, %188 ], [ %161, %192 ], [ %161, %196 ], [ %161, %200 ], [ %161, %204 ], [ %161, %208 ], [ %161, %212 ], [ %161, %216 ], [ %161, %220 ], [ %225, %224 ], [ %161, %251 ], [ %161, %281 ], [ %161, %311 ], [ %161, %341 ], [ %161, %371 ], [ %161, %346 ]
  %378 = phi ptr [ %162, %180 ], [ %162, %184 ], [ %162, %188 ], [ %162, %192 ], [ %162, %196 ], [ %162, %200 ], [ %162, %204 ], [ %162, %208 ], [ %162, %212 ], [ %162, %216 ], [ %221, %220 ], [ %162, %224 ], [ %162, %251 ], [ %162, %281 ], [ %162, %311 ], [ %162, %341 ], [ %162, %371 ], [ %162, %346 ]
  %379 = phi ptr [ %163, %180 ], [ %163, %184 ], [ %163, %188 ], [ %163, %192 ], [ %163, %196 ], [ %163, %200 ], [ %163, %204 ], [ %163, %208 ], [ %163, %212 ], [ %217, %216 ], [ %163, %220 ], [ %163, %224 ], [ %163, %251 ], [ %163, %281 ], [ %163, %311 ], [ %163, %341 ], [ %163, %371 ], [ %163, %346 ]
  %380 = phi ptr [ %164, %180 ], [ %164, %184 ], [ %164, %188 ], [ %164, %192 ], [ %164, %196 ], [ %164, %200 ], [ %164, %204 ], [ %164, %208 ], [ %164, %212 ], [ %164, %216 ], [ %164, %220 ], [ %164, %224 ], [ %255, %251 ], [ %164, %281 ], [ %164, %311 ], [ %164, %341 ], [ %164, %371 ], [ %164, %346 ]
  %381 = phi ptr [ %165, %180 ], [ %165, %184 ], [ %165, %188 ], [ %165, %192 ], [ %165, %196 ], [ %165, %200 ], [ %165, %204 ], [ %165, %208 ], [ %213, %212 ], [ %165, %216 ], [ %165, %220 ], [ %165, %224 ], [ %165, %251 ], [ %165, %281 ], [ %165, %311 ], [ %165, %341 ], [ %165, %371 ], [ %165, %346 ]
  %382 = phi ptr [ %166, %180 ], [ %166, %184 ], [ %166, %188 ], [ %166, %192 ], [ %166, %196 ], [ %166, %200 ], [ %166, %204 ], [ %209, %208 ], [ %166, %212 ], [ %166, %216 ], [ %166, %220 ], [ %166, %224 ], [ %166, %251 ], [ %166, %281 ], [ %166, %311 ], [ %166, %341 ], [ %166, %371 ], [ %166, %346 ]
  %383 = phi ptr [ %167, %180 ], [ %167, %184 ], [ %167, %188 ], [ %167, %192 ], [ %167, %196 ], [ %167, %200 ], [ %167, %204 ], [ %167, %208 ], [ %167, %212 ], [ %167, %216 ], [ %167, %220 ], [ %167, %224 ], [ %167, %251 ], [ %285, %281 ], [ %167, %311 ], [ %167, %341 ], [ %167, %371 ], [ %167, %346 ]
  %384 = phi ptr [ %168, %180 ], [ %168, %184 ], [ %168, %188 ], [ %168, %192 ], [ %168, %196 ], [ %168, %200 ], [ %205, %204 ], [ %168, %208 ], [ %168, %212 ], [ %168, %216 ], [ %168, %220 ], [ %168, %224 ], [ %168, %251 ], [ %168, %281 ], [ %168, %311 ], [ %168, %341 ], [ %168, %371 ], [ %168, %346 ]
  %385 = phi ptr [ %169, %180 ], [ %169, %184 ], [ %169, %188 ], [ %169, %192 ], [ %169, %196 ], [ %201, %200 ], [ %169, %204 ], [ %169, %208 ], [ %169, %212 ], [ %169, %216 ], [ %169, %220 ], [ %169, %224 ], [ %169, %251 ], [ %169, %281 ], [ %169, %311 ], [ %169, %341 ], [ %169, %371 ], [ %169, %346 ]
  %386 = phi ptr [ %170, %180 ], [ %170, %184 ], [ %170, %188 ], [ %170, %192 ], [ %170, %196 ], [ %170, %200 ], [ %170, %204 ], [ %170, %208 ], [ %170, %212 ], [ %170, %216 ], [ %170, %220 ], [ %170, %224 ], [ %170, %251 ], [ %170, %281 ], [ %315, %311 ], [ %170, %341 ], [ %170, %371 ], [ %170, %346 ]
  %387 = phi ptr [ %171, %180 ], [ %171, %184 ], [ %171, %188 ], [ %171, %192 ], [ %197, %196 ], [ %171, %200 ], [ %171, %204 ], [ %171, %208 ], [ %171, %212 ], [ %171, %216 ], [ %171, %220 ], [ %171, %224 ], [ %171, %251 ], [ %171, %281 ], [ %171, %311 ], [ %171, %341 ], [ %171, %371 ], [ %171, %346 ]
  %388 = phi ptr [ %172, %180 ], [ %172, %184 ], [ %172, %188 ], [ %193, %192 ], [ %172, %196 ], [ %172, %200 ], [ %172, %204 ], [ %172, %208 ], [ %172, %212 ], [ %172, %216 ], [ %172, %220 ], [ %172, %224 ], [ %172, %251 ], [ %172, %281 ], [ %172, %311 ], [ %172, %341 ], [ %172, %371 ], [ %172, %346 ]
  %389 = phi ptr [ %173, %180 ], [ %173, %184 ], [ %173, %188 ], [ %173, %192 ], [ %173, %196 ], [ %173, %200 ], [ %173, %204 ], [ %173, %208 ], [ %173, %212 ], [ %173, %216 ], [ %173, %220 ], [ %173, %224 ], [ %173, %251 ], [ %173, %281 ], [ %173, %311 ], [ %345, %341 ], [ %173, %371 ], [ %173, %346 ]
  %390 = phi ptr [ %174, %180 ], [ %174, %184 ], [ %189, %188 ], [ %174, %192 ], [ %174, %196 ], [ %174, %200 ], [ %174, %204 ], [ %174, %208 ], [ %174, %212 ], [ %174, %216 ], [ %174, %220 ], [ %174, %224 ], [ %174, %251 ], [ %174, %281 ], [ %174, %311 ], [ %174, %341 ], [ %174, %371 ], [ %174, %346 ]
  %391 = phi ptr [ %175, %180 ], [ %185, %184 ], [ %175, %188 ], [ %175, %192 ], [ %175, %196 ], [ %175, %200 ], [ %175, %204 ], [ %175, %208 ], [ %175, %212 ], [ %175, %216 ], [ %175, %220 ], [ %175, %224 ], [ %175, %251 ], [ %175, %281 ], [ %175, %311 ], [ %175, %341 ], [ %175, %371 ], [ %175, %346 ]
  %392 = phi ptr [ %176, %180 ], [ %176, %184 ], [ %176, %188 ], [ %176, %192 ], [ %176, %196 ], [ %176, %200 ], [ %176, %204 ], [ %176, %208 ], [ %176, %212 ], [ %176, %216 ], [ %176, %220 ], [ %176, %224 ], [ %176, %251 ], [ %176, %281 ], [ %176, %311 ], [ %176, %341 ], [ %375, %371 ], [ %176, %346 ]
  %393 = phi ptr [ %181, %180 ], [ %177, %184 ], [ %177, %188 ], [ %177, %192 ], [ %177, %196 ], [ %177, %200 ], [ %177, %204 ], [ %177, %208 ], [ %177, %212 ], [ %177, %216 ], [ %177, %220 ], [ %177, %224 ], [ %177, %251 ], [ %177, %281 ], [ %177, %311 ], [ %177, %341 ], [ %177, %371 ], [ %177, %346 ]
  %394 = add nuw nsw i32 %178, 1
  %395 = load i8, ptr %58, align 16
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %397, label %160, !llvm.loop !91

397:                                              ; preds = %376
  %398 = call fastcc signext i8 @zbDBReadLine(ptr noundef nonnull %0, ptr noundef nonnull %58), !range !68
  %399 = icmp eq i8 %398, 0
  %400 = load i8, ptr %58, align 16
  %401 = icmp eq i8 %400, 33
  %402 = select i1 %399, i1 true, i1 %401
  br i1 %402, label %403, label %140, !llvm.loop !92

403:                                              ; preds = %397, %116, %91, %88
  %404 = phi i8 [ 0, %88 ], [ 0, %91 ], [ 1, %116 ], [ 1, %397 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %59) #23
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %58) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %57) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %56) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %55) #23
  ret i8 %404
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @StripInteger(ptr noundef %0, ptr noundef %1) unnamed_addr #14 !prof !34 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #23
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi ptr [ %0, %2 ], [ %8, %4 ]
  %6 = load i8, ptr %5, align 1, !tbaa !35
  %7 = icmp eq i8 %6, 32
  %8 = getelementptr inbounds i8, ptr %5, i64 1
  br i1 %7, label %4, label %9, !llvm.loop !44

9:                                                ; preds = %4
  %10 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %5) #23
  call void @sDBRemoveFirstString(ptr noundef %0, ptr noundef nonnull %3)
  %11 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %3, ptr noundef nonnull @.str.33, ptr noundef %1) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #23
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @StripDouble(ptr noundef %0, ptr noundef %1) unnamed_addr #14 !prof !34 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #23
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi ptr [ %0, %2 ], [ %8, %4 ]
  %6 = load i8, ptr %5, align 1, !tbaa !35
  %7 = icmp eq i8 %6, 32
  %8 = getelementptr inbounds i8, ptr %5, i64 1
  br i1 %7, label %4, label %9, !llvm.loop !44

9:                                                ; preds = %4
  %10 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %5) #23
  call void @sDBRemoveFirstString(ptr noundef %0, ptr noundef nonnull %3)
  %11 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %3, ptr noundef nonnull @.str.34, ptr noundef %1) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #23
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @DBPutTable(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8, ptr nocapture noundef readonly %9, i32 noundef %10, i32 noundef %11, ptr nocapture noundef readonly %12, ptr nocapture noundef readonly %13, i32 noundef %14, i32 noundef %15, ptr nocapture noundef readonly %16, ptr nocapture noundef readonly %17, i32 noundef %18, i32 noundef %19, ptr nocapture noundef readonly %20, ptr nocapture noundef readonly %21, i32 noundef %22, i32 noundef %23, ptr nocapture noundef readonly %24, ptr nocapture noundef readonly %25, i32 noundef %26, i32 noundef %27, ptr nocapture noundef readonly %28, ptr nocapture noundef readonly %29, i32 noundef %30, i32 noundef %31, ptr nocapture noundef readonly %32, ptr nocapture noundef readonly %33, i32 noundef %34, i32 noundef %35, ptr nocapture noundef readonly %36, ptr nocapture noundef readonly %37, i32 noundef %38, i32 noundef %39, ptr nocapture noundef readonly %40, ptr nocapture noundef readonly %41, i32 noundef %42, i32 noundef %43, ptr nocapture noundef readonly %44, ptr nocapture noundef readonly %45, i32 noundef %46, i32 noundef %47, ptr nocapture noundef readonly %48, ptr nocapture noundef readonly %49, i32 noundef %50, i32 noundef %51, ptr nocapture noundef readonly %52, ptr nocapture noundef readonly %53, i32 noundef %54, i32 noundef %55, ptr nocapture noundef readonly %56, ptr nocapture noundef readonly %57, i32 noundef %58, i32 noundef %59, ptr nocapture noundef readonly %60, ptr nocapture noundef readonly %61, i32 noundef %62, i32 noundef %63, ptr nocapture noundef readonly %64, ptr nocapture noundef readonly %65, i32 noundef %66, i32 noundef %67, ptr nocapture noundef readonly %68, ptr nocapture noundef readonly %69, i32 noundef %70) local_unnamed_addr #7 !prof !34 {
  %72 = alloca [256 x i8], align 16
  %73 = alloca [256 x i8], align 16
  %74 = alloca [256 x i8], align 16
  %75 = alloca [256 x i8], align 16
  %76 = alloca [256 x i8], align 16
  %77 = alloca [256 x i8], align 16
  %78 = alloca [256 x i8], align 16
  %79 = alloca [256 x i8], align 16
  %80 = alloca [256 x i8], align 16
  %81 = alloca [1000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %80) #23
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %81) #23
  %82 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 3
  %83 = load i32, ptr %82, align 8, !tbaa !73
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %87

85:                                               ; preds = %71
  %86 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18)
  br label %87

87:                                               ; preds = %85, %71
  %88 = call fastcc ptr @sDataBaseName(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %80)
  %89 = load i32, ptr %0, align 8, !tbaa !74
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !64
  %94 = call i32 @fseek(ptr noundef %93, i64 noundef 0, i32 noundef 2)
  br label %96

95:                                               ; preds = %87
  call fastcc void @ePrepareDatabaseForEntry(ptr noundef nonnull %0, ptr noundef nonnull %80, i32 noundef 64, i32 noundef %2)
  br label %96

96:                                               ; preds = %95, %91
  store i16 33, ptr %81, align 16
  %97 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %81, ptr noundef nonnull dereferenceable(1) %80) #23
  %98 = call i64 @strlen(ptr nonnull dereferenceable(1) %81)
  %99 = getelementptr inbounds i8, ptr %81, i64 %98
  store i16 32, ptr %99, align 1
  %100 = call i64 @strlen(ptr nonnull dereferenceable(1) %81)
  %101 = getelementptr inbounds i8, ptr %81, i64 %100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %101, ptr noundef nonnull align 1 dereferenceable(6) @.str.3, i64 6, i1 false)
  br label %102

102:                                              ; preds = %96, %154
  %103 = phi i32 [ 1, %96 ], [ %155, %154 ]
  %104 = icmp eq i32 %103, %3
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  call fastcc void @AddColumnType(ptr noundef nonnull %81, i32 noundef 1, ptr noundef %4)
  br label %154

106:                                              ; preds = %102
  %107 = icmp eq i32 %103, %7
  br i1 %107, label %108, label %109

108:                                              ; preds = %106
  call fastcc void @AddColumnType(ptr noundef nonnull %81, i32 noundef 1, ptr noundef %8)
  br label %154

109:                                              ; preds = %106
  %110 = icmp eq i32 %103, %11
  br i1 %110, label %111, label %112

111:                                              ; preds = %109
  call fastcc void @AddColumnType(ptr noundef nonnull %81, i32 noundef 1, ptr noundef %12)
  br label %154

112:                                              ; preds = %109
  %113 = icmp eq i32 %103, %15
  br i1 %113, label %114, label %115

114:                                              ; preds = %112
  call fastcc void @AddColumnType(ptr noundef nonnull %81, i32 noundef 1, ptr noundef %16)
  br label %154

115:                                              ; preds = %112
  %116 = icmp eq i32 %103, %19
  br i1 %116, label %117, label %118

117:                                              ; preds = %115
  call fastcc void @AddColumnType(ptr noundef nonnull %81, i32 noundef 1, ptr noundef %20)
  br label %154

118:                                              ; preds = %115
  %119 = icmp eq i32 %103, %23
  br i1 %119, label %120, label %121

120:                                              ; preds = %118
  call fastcc void @AddColumnType(ptr noundef nonnull %81, i32 noundef 1, ptr noundef %24)
  br label %154

121:                                              ; preds = %118
  %122 = icmp eq i32 %103, %27
  br i1 %122, label %123, label %124

123:                                              ; preds = %121
  call fastcc void @AddColumnType(ptr noundef nonnull %81, i32 noundef 1, ptr noundef %28)
  br label %154

124:                                              ; preds = %121
  %125 = icmp eq i32 %103, %31
  br i1 %125, label %126, label %127

126:                                              ; preds = %124
  call fastcc void @AddColumnType(ptr noundef nonnull %81, i32 noundef 1, ptr noundef %32)
  br label %154

127:                                              ; preds = %124
  %128 = icmp eq i32 %103, %35
  br i1 %128, label %129, label %130

129:                                              ; preds = %127
  call fastcc void @AddColumnType(ptr noundef nonnull %81, i32 noundef 2, ptr noundef %36)
  br label %154

130:                                              ; preds = %127
  %131 = icmp eq i32 %103, %39
  br i1 %131, label %132, label %133

132:                                              ; preds = %130
  call fastcc void @AddColumnType(ptr noundef nonnull %81, i32 noundef 2, ptr noundef %40)
  br label %154

133:                                              ; preds = %130
  %134 = icmp eq i32 %103, %43
  br i1 %134, label %135, label %136

135:                                              ; preds = %133
  call fastcc void @AddColumnType(ptr noundef nonnull %81, i32 noundef 2, ptr noundef %44)
  br label %154

136:                                              ; preds = %133
  %137 = icmp eq i32 %103, %47
  br i1 %137, label %138, label %139

138:                                              ; preds = %136
  call fastcc void @AddColumnType(ptr noundef nonnull %81, i32 noundef 2, ptr noundef %48)
  br label %154

139:                                              ; preds = %136
  %140 = icmp eq i32 %103, %51
  br i1 %140, label %141, label %142

141:                                              ; preds = %139
  call fastcc void @AddColumnType(ptr noundef nonnull %81, i32 noundef 3, ptr noundef %52)
  br label %154

142:                                              ; preds = %139
  %143 = icmp eq i32 %103, %55
  br i1 %143, label %144, label %145

144:                                              ; preds = %142
  call fastcc void @AddColumnType(ptr noundef nonnull %81, i32 noundef 3, ptr noundef %56)
  br label %154

145:                                              ; preds = %142
  %146 = icmp eq i32 %103, %59
  br i1 %146, label %147, label %148

147:                                              ; preds = %145
  call fastcc void @AddColumnType(ptr noundef nonnull %81, i32 noundef 3, ptr noundef %60)
  br label %154

148:                                              ; preds = %145
  %149 = icmp eq i32 %103, %63
  br i1 %149, label %150, label %151

150:                                              ; preds = %148
  call fastcc void @AddColumnType(ptr noundef nonnull %81, i32 noundef 3, ptr noundef %64)
  br label %154

151:                                              ; preds = %148
  %152 = icmp eq i32 %103, %67
  br i1 %152, label %153, label %154

153:                                              ; preds = %151
  call fastcc void @AddColumnType(ptr noundef nonnull %81, i32 noundef 3, ptr noundef %68)
  br label %154

154:                                              ; preds = %105, %111, %117, %123, %129, %135, %141, %147, %151, %153, %150, %144, %138, %132, %126, %120, %114, %108
  %155 = add nuw nsw i32 %103, 1
  %156 = icmp eq i32 %155, 17
  br i1 %156, label %157, label %102, !llvm.loop !93

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !64
  %160 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %159, ptr noundef nonnull @.str.22, ptr noundef nonnull %81)
  %161 = icmp sgt i32 %2, 0
  br i1 %161, label %162, label %334

162:                                              ; preds = %157
  %163 = sext i32 %34 to i64
  %164 = sext i32 %30 to i64
  %165 = sext i32 %26 to i64
  %166 = sext i32 %22 to i64
  %167 = sext i32 %18 to i64
  %168 = sext i32 %14 to i64
  %169 = sext i32 %10 to i64
  %170 = sext i32 %6 to i64
  br label %171

171:                                              ; preds = %162, %329
  %172 = phi ptr [ %5, %162 ], [ %326, %329 ]
  %173 = phi i32 [ 0, %162 ], [ %332, %329 ]
  %174 = phi ptr [ %9, %162 ], [ %325, %329 ]
  %175 = phi ptr [ %13, %162 ], [ %324, %329 ]
  %176 = phi ptr [ %69, %162 ], [ %323, %329 ]
  %177 = phi ptr [ %17, %162 ], [ %322, %329 ]
  %178 = phi ptr [ %21, %162 ], [ %321, %329 ]
  %179 = phi ptr [ %25, %162 ], [ %320, %329 ]
  %180 = phi ptr [ %65, %162 ], [ %319, %329 ]
  %181 = phi ptr [ %29, %162 ], [ %318, %329 ]
  %182 = phi ptr [ %33, %162 ], [ %317, %329 ]
  %183 = phi ptr [ %37, %162 ], [ %316, %329 ]
  %184 = phi ptr [ %61, %162 ], [ %315, %329 ]
  %185 = phi ptr [ %41, %162 ], [ %314, %329 ]
  %186 = phi ptr [ %45, %162 ], [ %313, %329 ]
  %187 = phi ptr [ %49, %162 ], [ %312, %329 ]
  %188 = phi ptr [ %57, %162 ], [ %311, %329 ]
  %189 = phi ptr [ %53, %162 ], [ %310, %329 ]
  store i8 0, ptr %81, align 16
  br label %190

190:                                              ; preds = %171, %309
  %191 = phi ptr [ %172, %171 ], [ %326, %309 ]
  %192 = phi i32 [ 1, %171 ], [ %327, %309 ]
  %193 = phi ptr [ %174, %171 ], [ %325, %309 ]
  %194 = phi ptr [ %175, %171 ], [ %324, %309 ]
  %195 = phi ptr [ %176, %171 ], [ %323, %309 ]
  %196 = phi ptr [ %177, %171 ], [ %322, %309 ]
  %197 = phi ptr [ %178, %171 ], [ %321, %309 ]
  %198 = phi ptr [ %179, %171 ], [ %320, %309 ]
  %199 = phi ptr [ %180, %171 ], [ %319, %309 ]
  %200 = phi ptr [ %181, %171 ], [ %318, %309 ]
  %201 = phi ptr [ %182, %171 ], [ %317, %309 ]
  %202 = phi ptr [ %183, %171 ], [ %316, %309 ]
  %203 = phi ptr [ %184, %171 ], [ %315, %309 ]
  %204 = phi ptr [ %185, %171 ], [ %314, %309 ]
  %205 = phi ptr [ %186, %171 ], [ %313, %309 ]
  %206 = phi ptr [ %187, %171 ], [ %312, %309 ]
  %207 = phi ptr [ %188, %171 ], [ %311, %309 ]
  %208 = phi ptr [ %189, %171 ], [ %310, %309 ]
  %209 = icmp eq i32 %192, %3
  br i1 %209, label %210, label %215

210:                                              ; preds = %190
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %79) #23
  %211 = load i32, ptr %191, align 4, !tbaa !60
  %212 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %79, ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %211) #23
  %213 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %81, ptr noundef nonnull dereferenceable(1) %79) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %79) #23
  %214 = getelementptr inbounds i8, ptr %191, i64 %170
  br label %309

215:                                              ; preds = %190
  %216 = icmp eq i32 %192, %7
  br i1 %216, label %217, label %222

217:                                              ; preds = %215
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %78) #23
  %218 = load i32, ptr %193, align 4, !tbaa !60
  %219 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %78, ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %218) #23
  %220 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %81, ptr noundef nonnull dereferenceable(1) %78) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %78) #23
  %221 = getelementptr inbounds i8, ptr %193, i64 %169
  br label %309

222:                                              ; preds = %215
  %223 = icmp eq i32 %192, %11
  br i1 %223, label %224, label %229

224:                                              ; preds = %222
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %77) #23
  %225 = load i32, ptr %194, align 4, !tbaa !60
  %226 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %77, ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %225) #23
  %227 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %81, ptr noundef nonnull dereferenceable(1) %77) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %77) #23
  %228 = getelementptr inbounds i8, ptr %194, i64 %168
  br label %309

229:                                              ; preds = %222
  %230 = icmp eq i32 %192, %15
  br i1 %230, label %231, label %236

231:                                              ; preds = %229
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %76) #23
  %232 = load i32, ptr %196, align 4, !tbaa !60
  %233 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %76, ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %232) #23
  %234 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %81, ptr noundef nonnull dereferenceable(1) %76) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %76) #23
  %235 = getelementptr inbounds i8, ptr %196, i64 %167
  br label %309

236:                                              ; preds = %229
  %237 = icmp eq i32 %192, %19
  br i1 %237, label %238, label %243

238:                                              ; preds = %236
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %75) #23
  %239 = load i32, ptr %197, align 4, !tbaa !60
  %240 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %239) #23
  %241 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %81, ptr noundef nonnull dereferenceable(1) %75) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %75) #23
  %242 = getelementptr inbounds i8, ptr %197, i64 %166
  br label %309

243:                                              ; preds = %236
  %244 = icmp eq i32 %192, %23
  br i1 %244, label %245, label %250

245:                                              ; preds = %243
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %74) #23
  %246 = load i32, ptr %198, align 4, !tbaa !60
  %247 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %74, ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %246) #23
  %248 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %81, ptr noundef nonnull dereferenceable(1) %74) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %74) #23
  %249 = getelementptr inbounds i8, ptr %198, i64 %165
  br label %309

250:                                              ; preds = %243
  %251 = icmp eq i32 %192, %27
  br i1 %251, label %252, label %257

252:                                              ; preds = %250
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %73) #23
  %253 = load i32, ptr %200, align 4, !tbaa !60
  %254 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %73, ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %253) #23
  %255 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %81, ptr noundef nonnull dereferenceable(1) %73) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %73) #23
  %256 = getelementptr inbounds i8, ptr %200, i64 %164
  br label %309

257:                                              ; preds = %250
  %258 = icmp eq i32 %192, %31
  br i1 %258, label %259, label %264

259:                                              ; preds = %257
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %72) #23
  %260 = load i32, ptr %201, align 4, !tbaa !60
  %261 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %72, ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %260) #23
  %262 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %81, ptr noundef nonnull dereferenceable(1) %72) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %72) #23
  %263 = getelementptr inbounds i8, ptr %201, i64 %163
  br label %309

264:                                              ; preds = %257
  %265 = icmp eq i32 %192, %35
  br i1 %265, label %266, label %269

266:                                              ; preds = %264
  %267 = sext i32 %38 to i64
  call fastcc void @ConcatDouble(ptr noundef nonnull %81, ptr noundef %202)
  %268 = getelementptr inbounds i8, ptr %202, i64 %267
  br label %309

269:                                              ; preds = %264
  %270 = icmp eq i32 %192, %39
  br i1 %270, label %271, label %274

271:                                              ; preds = %269
  %272 = sext i32 %42 to i64
  call fastcc void @ConcatDouble(ptr noundef nonnull %81, ptr noundef %204)
  %273 = getelementptr inbounds i8, ptr %204, i64 %272
  br label %309

274:                                              ; preds = %269
  %275 = icmp eq i32 %192, %43
  br i1 %275, label %276, label %279

276:                                              ; preds = %274
  %277 = sext i32 %46 to i64
  call fastcc void @ConcatDouble(ptr noundef nonnull %81, ptr noundef %205)
  %278 = getelementptr inbounds i8, ptr %205, i64 %277
  br label %309

279:                                              ; preds = %274
  %280 = icmp eq i32 %192, %47
  br i1 %280, label %281, label %284

281:                                              ; preds = %279
  %282 = sext i32 %50 to i64
  call fastcc void @ConcatDouble(ptr noundef nonnull %81, ptr noundef %206)
  %283 = getelementptr inbounds i8, ptr %206, i64 %282
  br label %309

284:                                              ; preds = %279
  %285 = icmp eq i32 %192, %51
  br i1 %285, label %286, label %289

286:                                              ; preds = %284
  %287 = sext i32 %54 to i64
  call fastcc void @ConcatString(ptr noundef nonnull %81, ptr noundef %208)
  %288 = getelementptr inbounds i8, ptr %208, i64 %287
  br label %309

289:                                              ; preds = %284
  %290 = icmp eq i32 %192, %55
  br i1 %290, label %291, label %294

291:                                              ; preds = %289
  %292 = sext i32 %58 to i64
  call fastcc void @ConcatString(ptr noundef nonnull %81, ptr noundef %207)
  %293 = getelementptr inbounds i8, ptr %207, i64 %292
  br label %309

294:                                              ; preds = %289
  %295 = icmp eq i32 %192, %59
  br i1 %295, label %296, label %299

296:                                              ; preds = %294
  %297 = sext i32 %62 to i64
  call fastcc void @ConcatString(ptr noundef nonnull %81, ptr noundef %203)
  %298 = getelementptr inbounds i8, ptr %203, i64 %297
  br label %309

299:                                              ; preds = %294
  %300 = icmp eq i32 %192, %63
  br i1 %300, label %301, label %304

301:                                              ; preds = %299
  %302 = sext i32 %66 to i64
  call fastcc void @ConcatString(ptr noundef nonnull %81, ptr noundef %199)
  %303 = getelementptr inbounds i8, ptr %199, i64 %302
  br label %309

304:                                              ; preds = %299
  %305 = icmp eq i32 %192, %67
  br i1 %305, label %306, label %309

306:                                              ; preds = %304
  %307 = sext i32 %70 to i64
  call fastcc void @ConcatString(ptr noundef nonnull %81, ptr noundef %195)
  %308 = getelementptr inbounds i8, ptr %195, i64 %307
  br label %309

309:                                              ; preds = %210, %224, %238, %252, %266, %276, %286, %296, %304, %306, %301, %291, %281, %271, %259, %245, %231, %217
  %310 = phi ptr [ %208, %210 ], [ %208, %217 ], [ %208, %224 ], [ %208, %231 ], [ %208, %238 ], [ %208, %245 ], [ %208, %252 ], [ %208, %259 ], [ %208, %266 ], [ %208, %271 ], [ %208, %276 ], [ %208, %281 ], [ %288, %286 ], [ %208, %291 ], [ %208, %296 ], [ %208, %301 ], [ %208, %306 ], [ %208, %304 ]
  %311 = phi ptr [ %207, %210 ], [ %207, %217 ], [ %207, %224 ], [ %207, %231 ], [ %207, %238 ], [ %207, %245 ], [ %207, %252 ], [ %207, %259 ], [ %207, %266 ], [ %207, %271 ], [ %207, %276 ], [ %207, %281 ], [ %207, %286 ], [ %293, %291 ], [ %207, %296 ], [ %207, %301 ], [ %207, %306 ], [ %207, %304 ]
  %312 = phi ptr [ %206, %210 ], [ %206, %217 ], [ %206, %224 ], [ %206, %231 ], [ %206, %238 ], [ %206, %245 ], [ %206, %252 ], [ %206, %259 ], [ %206, %266 ], [ %206, %271 ], [ %206, %276 ], [ %283, %281 ], [ %206, %286 ], [ %206, %291 ], [ %206, %296 ], [ %206, %301 ], [ %206, %306 ], [ %206, %304 ]
  %313 = phi ptr [ %205, %210 ], [ %205, %217 ], [ %205, %224 ], [ %205, %231 ], [ %205, %238 ], [ %205, %245 ], [ %205, %252 ], [ %205, %259 ], [ %205, %266 ], [ %205, %271 ], [ %278, %276 ], [ %205, %281 ], [ %205, %286 ], [ %205, %291 ], [ %205, %296 ], [ %205, %301 ], [ %205, %306 ], [ %205, %304 ]
  %314 = phi ptr [ %204, %210 ], [ %204, %217 ], [ %204, %224 ], [ %204, %231 ], [ %204, %238 ], [ %204, %245 ], [ %204, %252 ], [ %204, %259 ], [ %204, %266 ], [ %273, %271 ], [ %204, %276 ], [ %204, %281 ], [ %204, %286 ], [ %204, %291 ], [ %204, %296 ], [ %204, %301 ], [ %204, %306 ], [ %204, %304 ]
  %315 = phi ptr [ %203, %210 ], [ %203, %217 ], [ %203, %224 ], [ %203, %231 ], [ %203, %238 ], [ %203, %245 ], [ %203, %252 ], [ %203, %259 ], [ %203, %266 ], [ %203, %271 ], [ %203, %276 ], [ %203, %281 ], [ %203, %286 ], [ %203, %291 ], [ %298, %296 ], [ %203, %301 ], [ %203, %306 ], [ %203, %304 ]
  %316 = phi ptr [ %202, %210 ], [ %202, %217 ], [ %202, %224 ], [ %202, %231 ], [ %202, %238 ], [ %202, %245 ], [ %202, %252 ], [ %202, %259 ], [ %268, %266 ], [ %202, %271 ], [ %202, %276 ], [ %202, %281 ], [ %202, %286 ], [ %202, %291 ], [ %202, %296 ], [ %202, %301 ], [ %202, %306 ], [ %202, %304 ]
  %317 = phi ptr [ %201, %210 ], [ %201, %217 ], [ %201, %224 ], [ %201, %231 ], [ %201, %238 ], [ %201, %245 ], [ %201, %252 ], [ %263, %259 ], [ %201, %266 ], [ %201, %271 ], [ %201, %276 ], [ %201, %281 ], [ %201, %286 ], [ %201, %291 ], [ %201, %296 ], [ %201, %301 ], [ %201, %306 ], [ %201, %304 ]
  %318 = phi ptr [ %200, %210 ], [ %200, %217 ], [ %200, %224 ], [ %200, %231 ], [ %200, %238 ], [ %200, %245 ], [ %256, %252 ], [ %200, %259 ], [ %200, %266 ], [ %200, %271 ], [ %200, %276 ], [ %200, %281 ], [ %200, %286 ], [ %200, %291 ], [ %200, %296 ], [ %200, %301 ], [ %200, %306 ], [ %200, %304 ]
  %319 = phi ptr [ %199, %210 ], [ %199, %217 ], [ %199, %224 ], [ %199, %231 ], [ %199, %238 ], [ %199, %245 ], [ %199, %252 ], [ %199, %259 ], [ %199, %266 ], [ %199, %271 ], [ %199, %276 ], [ %199, %281 ], [ %199, %286 ], [ %199, %291 ], [ %199, %296 ], [ %303, %301 ], [ %199, %306 ], [ %199, %304 ]
  %320 = phi ptr [ %198, %210 ], [ %198, %217 ], [ %198, %224 ], [ %198, %231 ], [ %198, %238 ], [ %249, %245 ], [ %198, %252 ], [ %198, %259 ], [ %198, %266 ], [ %198, %271 ], [ %198, %276 ], [ %198, %281 ], [ %198, %286 ], [ %198, %291 ], [ %198, %296 ], [ %198, %301 ], [ %198, %306 ], [ %198, %304 ]
  %321 = phi ptr [ %197, %210 ], [ %197, %217 ], [ %197, %224 ], [ %197, %231 ], [ %242, %238 ], [ %197, %245 ], [ %197, %252 ], [ %197, %259 ], [ %197, %266 ], [ %197, %271 ], [ %197, %276 ], [ %197, %281 ], [ %197, %286 ], [ %197, %291 ], [ %197, %296 ], [ %197, %301 ], [ %197, %306 ], [ %197, %304 ]
  %322 = phi ptr [ %196, %210 ], [ %196, %217 ], [ %196, %224 ], [ %235, %231 ], [ %196, %238 ], [ %196, %245 ], [ %196, %252 ], [ %196, %259 ], [ %196, %266 ], [ %196, %271 ], [ %196, %276 ], [ %196, %281 ], [ %196, %286 ], [ %196, %291 ], [ %196, %296 ], [ %196, %301 ], [ %196, %306 ], [ %196, %304 ]
  %323 = phi ptr [ %195, %210 ], [ %195, %217 ], [ %195, %224 ], [ %195, %231 ], [ %195, %238 ], [ %195, %245 ], [ %195, %252 ], [ %195, %259 ], [ %195, %266 ], [ %195, %271 ], [ %195, %276 ], [ %195, %281 ], [ %195, %286 ], [ %195, %291 ], [ %195, %296 ], [ %195, %301 ], [ %308, %306 ], [ %195, %304 ]
  %324 = phi ptr [ %194, %210 ], [ %194, %217 ], [ %228, %224 ], [ %194, %231 ], [ %194, %238 ], [ %194, %245 ], [ %194, %252 ], [ %194, %259 ], [ %194, %266 ], [ %194, %271 ], [ %194, %276 ], [ %194, %281 ], [ %194, %286 ], [ %194, %291 ], [ %194, %296 ], [ %194, %301 ], [ %194, %306 ], [ %194, %304 ]
  %325 = phi ptr [ %193, %210 ], [ %221, %217 ], [ %193, %224 ], [ %193, %231 ], [ %193, %238 ], [ %193, %245 ], [ %193, %252 ], [ %193, %259 ], [ %193, %266 ], [ %193, %271 ], [ %193, %276 ], [ %193, %281 ], [ %193, %286 ], [ %193, %291 ], [ %193, %296 ], [ %193, %301 ], [ %193, %306 ], [ %193, %304 ]
  %326 = phi ptr [ %214, %210 ], [ %191, %217 ], [ %191, %224 ], [ %191, %231 ], [ %191, %238 ], [ %191, %245 ], [ %191, %252 ], [ %191, %259 ], [ %191, %266 ], [ %191, %271 ], [ %191, %276 ], [ %191, %281 ], [ %191, %286 ], [ %191, %291 ], [ %191, %296 ], [ %191, %301 ], [ %191, %306 ], [ %191, %304 ]
  %327 = add nuw nsw i32 %192, 1
  %328 = icmp eq i32 %327, 17
  br i1 %328, label %329, label %190, !llvm.loop !94

329:                                              ; preds = %309
  %330 = load ptr, ptr %158, align 8, !tbaa !64
  %331 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %330, ptr noundef nonnull @.str.22, ptr noundef nonnull %81)
  %332 = add nuw nsw i32 %173, 1
  %333 = icmp eq i32 %332, %2
  br i1 %333, label %334, label %171, !llvm.loop !95

334:                                              ; preds = %329, %157
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %81) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %80) #23
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @AddColumnType(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #18 !prof !34 {
  %4 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  store i16 32, ptr %5, align 1
  %6 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  store i16 32, ptr %7, align 1
  %8 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = add nsw i32 %1, -1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [3 x i32], ptr @switch.table.AddColumnType, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %9, align 1
  %14 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %15 = getelementptr inbounds i8, ptr %0, i64 %14
  store i16 32, ptr %15, align 1
  %16 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2) #23
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @ConcatDouble(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !prof !34 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #23
  %4 = load double, ptr %1, align 8, !tbaa !96
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
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.37, double noundef %4) #23
  br label %16

14:                                               ; preds = %7
  %15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.38, double noundef %4) #23
  br label %16

16:                                               ; preds = %12, %14, %6
  %17 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %3) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #23
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @ConcatString(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !prof !34 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #23
  %4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef 34) #23
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
  br i1 %23, label %24, label %7, !llvm.loop !98

24:                                               ; preds = %19, %2
  %25 = phi i32 [ 2, %2 ], [ %20, %19 ]
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds [256 x i8], ptr %3, i64 0, i64 %27
  store i8 34, ptr %28, align 1, !tbaa !35
  %29 = sext i32 %26 to i64
  %30 = getelementptr inbounds [256 x i8], ptr %3, i64 0, i64 %29
  store i8 0, ptr %30, align 1, !tbaa !35
  %31 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %3) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #23
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @DBClose(ptr nocapture noundef %0) local_unnamed_addr #7 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !51
  %3 = load i32, ptr %2, align 8, !tbaa !74
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DATABASEt, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = tail call i32 @fclose(ptr noundef %7)
  br label %46

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.DATABASEt, ptr %2, i64 0, i32 6
  %11 = load i8, ptr %10, align 8, !tbaa !72
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @CompactDataBase(ptr noundef nonnull %2)
  br label %14

14:                                               ; preds = %13, %9
  %15 = load ptr, ptr %0, align 8, !tbaa !51
  %16 = getelementptr inbounds %struct.DATABASEt, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !64
  %18 = tail call i32 @fclose(ptr noundef %17)
  %19 = load ptr, ptr %0, align 8, !tbaa !51
  %20 = getelementptr inbounds %struct.DATABASEt, ptr %19, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !63
  %22 = getelementptr inbounds %struct.DICTt, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  %24 = load i32, ptr %21, align 8, !tbaa !46
  %25 = sext i32 %24 to i64
  tail call void @qsort(ptr noundef %23, i64 noundef %25, i64 noundef 16, ptr noundef nonnull @ziDictKeyCompare) #23
  br label %26

26:                                               ; preds = %43, %14
  %27 = phi i64 [ %31, %43 ], [ 0, %14 ]
  %28 = load ptr, ptr %0, align 8, !tbaa !51
  %29 = getelementptr inbounds %struct.DATABASEt, ptr %28, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !63
  %31 = add nuw i64 %27, 1
  %32 = load i32, ptr %30, align 8, !tbaa !46
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %27, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.DICTt, ptr %30, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !50
  %38 = getelementptr inbounds %struct.DICT_ENTRYt, ptr %37, i64 %27, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !55
  br label %40

40:                                               ; preds = %26, %35
  %41 = phi ptr [ %39, %35 ], [ null, %26 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void @free(ptr noundef %41) #23
  br label %26, !llvm.loop !99

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.DATABASEt, ptr %28, i64 0, i32 7
  tail call void @DictDestroy(ptr noundef nonnull %45)
  br label %46

46:                                               ; preds = %44, %5
  %47 = load ptr, ptr %0, align 8, !tbaa !51
  tail call void @free(ptr noundef %47) #23
  store ptr null, ptr %0, align 8, !tbaa !51
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @DBPushPrefix(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #14 !prof !34 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #23
  %4 = call fastcc ptr @sDataBaseName(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %5 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !75
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr %5, align 4, !tbaa !75
  %8 = icmp sgt i32 %6, 8
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25)
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i32, ptr %5, align 4, !tbaa !75
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 5, i64 %13
  %15 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %3) #23
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #23
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @DBPopPrefix(ptr nocapture noundef %0) local_unnamed_addr #14 !prof !34 {
  %2 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !75
  %4 = add nsw i32 %3, -1
  store i32 %4, ptr %2, align 4, !tbaa !75
  %5 = icmp slt i32 %3, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26)
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @DBZeroPrefix(ptr nocapture noundef writeonly %0) local_unnamed_addr #19 !prof !34 {
  %2 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 4
  store i32 0, ptr %2, align 4, !tbaa !75
  %3 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 5
  store i8 0, ptr %3, align 1
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @DBPushZeroPrefix(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #14 !prof !34 {
  %3 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !75
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %3, align 4, !tbaa !75
  %6 = icmp sgt i32 %4, 8
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25)
  br label %9

9:                                                ; preds = %7, %2
  %10 = load i32, ptr %3, align 4, !tbaa !75
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.DATABASEt, ptr %0, i64 0, i32 5, i64 %11
  %13 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #23
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #20

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #22

attributes #0 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold mustprogress nofree nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { nofree nounwind }
attributes #23 = { nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind allocsize(1) }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 71759502456}
!8 = !{!"MaxCount", i64 6437746295}
!9 = !{!"MaxInternalCount", i64 6437746295}
!10 = !{!"MaxFunctionCount", i64 4086992896}
!11 = !{!"NumCounts", i64 3105}
!12 = !{!"NumFunctions", i64 247}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6437746295, i32 1}
!18 = !{i32 100000, i64 6429262894, i32 2}
!19 = !{i32 200000, i64 6273947450, i32 3}
!20 = !{i32 300000, i64 4086992896, i32 5}
!21 = !{i32 400000, i64 4086990118, i32 7}
!22 = !{i32 500000, i64 3500958832, i32 9}
!23 = !{i32 600000, i64 2110410321, i32 10}
!24 = !{i32 700000, i64 2043496448, i32 13}
!25 = !{i32 800000, i64 2030599974, i32 17}
!26 = !{i32 900000, i64 778157900, i32 22}
!27 = !{i32 950000, i64 477845251, i32 29}
!28 = !{i32 990000, i64 428072471, i32 35}
!29 = !{i32 999000, i64 4254510, i32 72}
!30 = !{i32 999900, i64 290502, i32 105}
!31 = !{i32 999990, i64 19030, i32 222}
!32 = !{i32 999999, i64 3606, i32 249}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = distinct !{!41, !39, !40}
!42 = distinct !{!42, !39, !40}
!43 = distinct !{!43, !39, !40}
!44 = distinct !{!44, !39, !40}
!45 = distinct !{!45, !39, !40}
!46 = !{!47, !48, i64 0}
!47 = !{!"", !48, i64 0, !49, i64 8}
!48 = !{!"int", !36, i64 0}
!49 = !{!"any pointer", !36, i64 0}
!50 = !{!47, !49, i64 8}
!51 = !{!49, !49, i64 0}
!52 = !{!53, !49, i64 0}
!53 = !{!"", !49, i64 0, !49, i64 8}
!54 = distinct !{!54, !39, !40}
!55 = !{!53, !49, i64 8}
!56 = distinct !{!56, !39, !40}
!57 = distinct !{!57, !39, !40}
!58 = !{i64 0, i64 8, !51, i64 8, i64 8, !51}
!59 = distinct !{!59, !39, !40}
!60 = !{!48, !48, i64 0}
!61 = !{!62, !48, i64 2856}
!62 = !{!"", !48, i64 0, !49, i64 8, !36, i64 16, !48, i64 272, !48, i64 276, !36, i64 280, !36, i64 2840, !49, i64 2848, !48, i64 2856, !36, i64 2860, !48, i64 3860, !36, i64 3864, !48, i64 4120}
!63 = !{!62, !49, i64 2848}
!64 = !{!62, !49, i64 8}
!65 = !{!66, !67, i64 0}
!66 = !{!"", !67, i64 0, !36, i64 8, !48, i64 264, !48, i64 268}
!67 = !{!"long", !36, i64 0}
!68 = !{i8 0, i8 2}
!69 = !{!66, !48, i64 268}
!70 = distinct !{!70, !39, !40}
!71 = distinct !{!71, !39, !40}
!72 = !{!62, !36, i64 2840}
!73 = !{!62, !48, i64 272}
!74 = !{!62, !48, i64 0}
!75 = !{!62, !48, i64 276}
!76 = !{!66, !48, i64 264}
!77 = distinct !{!77, !39, !40}
!78 = !{!62, !48, i64 4120}
!79 = distinct !{!79, !39, !40}
!80 = !{!62, !48, i64 3860}
!81 = distinct !{!81, !39, !40}
!82 = distinct !{!82, !39, !40}
!83 = distinct !{!83, !39, !40}
!84 = distinct !{!84, !39, !40}
!85 = distinct !{!85, !39, !40}
!86 = distinct !{!86, !39, !40}
!87 = distinct !{!87, !39, !40}
!88 = distinct !{!88, !39, !40}
!89 = distinct !{!89, !39, !40}
!90 = distinct !{!90, !40}
!91 = distinct !{!91, !39, !40}
!92 = distinct !{!92, !39, !40}
!93 = distinct !{!93, !39, !40}
!94 = distinct !{!94, !39, !40}
!95 = distinct !{!95, !39, !40}
!96 = !{!97, !97, i64 0}
!97 = !{!"double", !36, i64 0}
!98 = distinct !{!98, !39, !40}
!99 = distinct !{!99, !39, !40}
