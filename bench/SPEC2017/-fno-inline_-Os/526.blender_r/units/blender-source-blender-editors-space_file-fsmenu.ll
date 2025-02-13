; ModuleID = 'blender/source/blender/editors/space_file/fsmenu.c'
source_filename = "blender/source/blender/editors/space_file/fsmenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FSMenu = type { ptr, ptr, ptr, ptr }
%struct._FSMenuEntry = type { ptr, ptr, i16 }

@g_fsmenu = internal unnamed_addr global ptr null, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"fsmenu\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"fsme\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"[Bookmarks]\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"[Recent]\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"[Bookmarks]\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @fsmenu_get() local_unnamed_addr #0 {
  %1 = load ptr, ptr @g_fsmenu, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 32, ptr noundef nonnull @.str) #11
  store ptr %5, ptr @g_fsmenu, align 8, !tbaa !34
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi ptr [ %5, %3 ], [ %1, %0 ]
  ret ptr %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @fsmenu_get_nentries(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = tail call fastcc ptr @fsmenu_get_category(ptr noundef %0, i32 noundef %1) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2, %5
  %6 = phi i32 [ %8, %5 ], [ 0, %2 ]
  %7 = phi ptr [ %9, %5 ], [ %3, %2 ]
  %8 = add nuw nsw i32 %6, 1
  %9 = load ptr, ptr %7, align 8, !tbaa !38
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %5, !llvm.loop !41

11:                                               ; preds = %5, %2
  %12 = phi i32 [ 0, %2 ], [ %8, %5 ]
  ret i32 %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @fsmenu_get_category(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !PGOFuncName !43 {
  switch i32 %1, label %12 [
    i32 0, label %9
    i32 1, label %3
    i32 2, label %5
    i32 3, label %7
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 1
  br label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 2
  br label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %2, %3, %5, %7
  %10 = phi ptr [ %8, %7 ], [ %6, %5 ], [ %4, %3 ], [ %0, %2 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi ptr [ null, %2 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @fsmenu_get_entry(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = tail call fastcc ptr @fsmenu_get_category(ptr noundef %0, i32 noundef %1) #12
  %5 = icmp ne ptr %4, null
  %6 = icmp ne i32 %2, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %3, %8
  %9 = phi ptr [ %12, %8 ], [ %4, %3 ]
  %10 = phi i32 [ %11, %8 ], [ %2, %3 ]
  %11 = add nsw i32 %10, -1
  %12 = load ptr, ptr %9, align 8, !tbaa !38
  %13 = icmp ne ptr %12, null
  %14 = icmp ne i32 %11, 0
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %8, label %16, !llvm.loop !44

16:                                               ; preds = %8, %3
  %17 = phi ptr [ %4, %3 ], [ %12, %8 ]
  %18 = phi i1 [ %5, %3 ], [ %13, %8 ]
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct._FSMenuEntry, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  br label %22

22:                                               ; preds = %16, %19
  %23 = phi ptr [ %21, %19 ], [ null, %16 ]
  ret ptr %23
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local signext i16 @fsmenu_can_save(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = tail call fastcc ptr @fsmenu_get_category(ptr noundef %0, i32 noundef %1) #12
  %5 = icmp ne ptr %4, null
  %6 = icmp ne i32 %2, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %3, %8
  %9 = phi ptr [ %12, %8 ], [ %4, %3 ]
  %10 = phi i32 [ %11, %8 ], [ %2, %3 ]
  %11 = add nsw i32 %10, -1
  %12 = load ptr, ptr %9, align 8, !tbaa !38
  %13 = icmp ne ptr %12, null
  %14 = icmp ne i32 %11, 0
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %8, label %16, !llvm.loop !46

16:                                               ; preds = %8, %3
  %17 = phi ptr [ %4, %3 ], [ %12, %8 ]
  %18 = phi i1 [ %5, %3 ], [ %13, %8 ]
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct._FSMenuEntry, ptr %17, i64 0, i32 2
  %21 = load i16, ptr %20, align 8, !tbaa !47
  br label %22

22:                                               ; preds = %16, %19
  %23 = phi i16 [ %21, %19 ], [ 0, %16 ]
  ret i16 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fsmenu_insert_entry(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @fsmenu_get_category(ptr noundef %0, i32 noundef %1) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %4
  %8 = and i32 %3, 1
  %9 = icmp ne i32 %8, 0
  %10 = and i32 %3, 2
  %11 = icmp eq i32 %10, 0
  br label %12

12:                                               ; preds = %7, %32
  %13 = phi ptr [ %5, %7 ], [ %14, %32 ]
  %14 = phi ptr [ %5, %7 ], [ %33, %32 ]
  %15 = getelementptr inbounds %struct._FSMenuEntry, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %12
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %16) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = and i32 %3, 4
  %23 = icmp eq i32 %22, 0
  %24 = icmp eq ptr %14, %5
  %25 = or i1 %23, %24
  br i1 %25, label %53, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %14, align 8, !tbaa !38
  store ptr %27, ptr %13, align 8, !tbaa !38
  store ptr %5, ptr %14, align 8, !tbaa !38
  tail call fastcc void @fsmenu_set_category(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %14) #12
  br label %53

28:                                               ; preds = %18
  %29 = icmp slt i32 %19, 0
  %30 = and i1 %9, %29
  br i1 %30, label %35, label %32

31:                                               ; preds = %12
  br i1 %11, label %32, label %35

32:                                               ; preds = %28, %31
  %33 = load ptr, ptr %14, align 8, !tbaa !38
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %12, !llvm.loop !48

35:                                               ; preds = %32, %31, %28, %4
  %36 = phi ptr [ null, %4 ], [ %13, %28 ], [ %13, %31 ], [ %14, %32 ]
  %37 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %38 = tail call ptr %37(i64 noundef 24, ptr noundef nonnull @.str.1) #11
  %39 = tail call ptr @BLI_strdup(ptr noundef %2) #11
  %40 = getelementptr inbounds %struct._FSMenuEntry, ptr %38, i64 0, i32 1
  store ptr %39, ptr %40, align 8, !tbaa !45
  %41 = trunc i32 %3 to i16
  %42 = lshr i16 %41, 1
  %43 = and i16 %42, 1
  %44 = getelementptr inbounds %struct._FSMenuEntry, ptr %38, i64 0, i32 2
  store i16 %43, ptr %44, align 8, !tbaa !47
  %45 = icmp eq ptr %36, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %35
  %47 = and i32 %3, 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store ptr %5, ptr %38, align 8, !tbaa !38
  tail call fastcc void @fsmenu_set_category(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %38) #12
  br label %53

50:                                               ; preds = %46
  %51 = load ptr, ptr %36, align 8, !tbaa !38
  store ptr %51, ptr %38, align 8, !tbaa !38
  store ptr %38, ptr %36, align 8, !tbaa !38
  br label %53

52:                                               ; preds = %35
  store ptr %5, ptr %38, align 8, !tbaa !38
  tail call fastcc void @fsmenu_set_category(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %38) #12
  br label %53

53:                                               ; preds = %21, %26, %52, %50, %49
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, inaccessiblemem: none) uwtable
define internal fastcc void @fsmenu_set_category(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #5 !PGOFuncName !49 {
  switch i32 %1, label %12 [
    i32 0, label %10
    i32 1, label %4
    i32 2, label %6
    i32 3, label %8
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 1
  br label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 2
  br label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 3
  br label %10

10:                                               ; preds = %3, %4, %6, %8
  %11 = phi ptr [ %9, %8 ], [ %7, %6 ], [ %5, %4 ], [ %0, %3 ]
  store ptr %2, ptr %11, align 8, !tbaa !34
  br label %12

12:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fsmenu_remove_entry(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @fsmenu_get_category(ptr noundef %0, i32 noundef %1) #12
  %5 = icmp ne ptr %4, null
  %6 = icmp ne i32 %2, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %3, %8
  %9 = phi ptr [ %12, %8 ], [ %4, %3 ]
  %10 = phi i32 [ %11, %8 ], [ %2, %3 ]
  %11 = add nsw i32 %10, -1
  %12 = load ptr, ptr %9, align 8, !tbaa !38
  %13 = icmp ne ptr %12, null
  %14 = icmp ne i32 %11, 0
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %8, label %16, !llvm.loop !50

16:                                               ; preds = %8, %3
  %17 = phi ptr [ null, %3 ], [ %9, %8 ]
  %18 = phi ptr [ %4, %3 ], [ %12, %8 ]
  %19 = phi i1 [ %5, %3 ], [ %13, %8 ]
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._FSMenuEntry, ptr %18, i64 0, i32 2
  %22 = load i16, ptr %21, align 8, !tbaa !47
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct._FSMenuEntry, ptr %18, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !45
  %27 = icmp eq ptr %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = icmp eq ptr %17, null
  %30 = load ptr, ptr %18, align 8, !tbaa !38
  br i1 %29, label %32, label %31

31:                                               ; preds = %28
  store ptr %30, ptr %17, align 8, !tbaa !38
  br label %34

32:                                               ; preds = %28
  tail call fastcc void @fsmenu_set_category(ptr noundef %0, i32 noundef %1, ptr noundef %30) #12
  %33 = load ptr, ptr %25, align 8, !tbaa !45
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi ptr [ %33, %32 ], [ %26, %31 ]
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %36(ptr noundef %35) #11
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %37(ptr noundef nonnull %18) #11
  br label %38

38:                                               ; preds = %20, %24, %34, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fsmenu_write_file(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_fopen(ptr noundef %1, ptr noundef nonnull @.str.2) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %47, label %5

5:                                                ; preds = %2
  %6 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 12, i64 1, ptr nonnull %3)
  %7 = tail call fastcc ptr @fsmenu_get_category(ptr noundef %0, i32 noundef 2) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %5, %20
  %10 = phi ptr [ %21, %20 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct._FSMenuEntry, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._FSMenuEntry, ptr %10, i64 0, i32 2
  %16 = load i16, ptr %15, align 8, !tbaa !47
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.4, ptr noundef nonnull %12) #12
  br label %20

20:                                               ; preds = %9, %14, %18
  %21 = load ptr, ptr %10, align 8, !tbaa !38
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %9, !llvm.loop !51

23:                                               ; preds = %20, %5
  %24 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 9, i64 1, ptr nonnull %3)
  %25 = tail call fastcc ptr @fsmenu_get_category(ptr noundef %0, i32 noundef 3) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %45, label %27

27:                                               ; preds = %23, %39
  %28 = phi ptr [ %40, %39 ], [ %25, %23 ]
  %29 = phi i32 [ %41, %39 ], [ 0, %23 ]
  %30 = getelementptr inbounds %struct._FSMenuEntry, ptr %28, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !45
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct._FSMenuEntry, ptr %28, i64 0, i32 2
  %35 = load i16, ptr %34, align 8, !tbaa !47
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.4, ptr noundef nonnull %31) #12
  br label %39

39:                                               ; preds = %27, %33, %37
  %40 = load ptr, ptr %28, align 8, !tbaa !38
  %41 = add nuw nsw i32 %29, 1
  %42 = icmp ne ptr %40, null
  %43 = icmp ult i32 %29, 9
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %27, label %45, !llvm.loop !52

45:                                               ; preds = %39, %23
  %46 = tail call i32 @fclose(ptr noundef nonnull %3) #12
  br label %47

47:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fsmenu_read_bookmarks(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [768 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %3) #14
  %4 = tail call ptr @BLI_fopen(ptr noundef %1, ptr noundef nonnull @.str.6) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %2
  %7 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 768, ptr noundef nonnull %4) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %6, %28
  %10 = phi i32 [ %29, %28 ], [ 2, %6 ]
  %11 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %3, ptr noundef nonnull dereferenceable(11) @.str.7, i64 11)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %9
  %14 = load i64, ptr %3, align 16
  %15 = icmp eq i64 %14, 6734128724564071003
  br i1 %15, label %28, label %16

16:                                               ; preds = %13
  %17 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #13
  %18 = trunc i64 %17 to i32
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = add i64 %17, 4294967295
  %22 = and i64 %21, 4294967295
  %23 = getelementptr inbounds [768 x i8], ptr %3, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !53
  %25 = icmp eq i8 %24, 10
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i8 0, ptr %23, align 1, !tbaa !53
  br label %27

27:                                               ; preds = %26, %20
  call void @fsmenu_insert_entry(ptr noundef %0, i32 noundef %10, ptr noundef nonnull %3, i32 noundef 2) #12
  br label %28

28:                                               ; preds = %16, %27, %13, %9
  %29 = phi i32 [ 2, %9 ], [ 3, %13 ], [ %10, %27 ], [ %10, %16 ]
  %30 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 768, ptr noundef nonnull %4) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %9, !llvm.loop !54

32:                                               ; preds = %28, %6
  %33 = call i32 @fclose(ptr noundef nonnull %4) #12
  br label %34

34:                                               ; preds = %2, %32
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @fsmenu_read_system(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #8 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fsmenu_refresh_system_category(ptr nocapture noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @fsmenu_free_category(ptr noundef %0, i32 noundef 0) #12
  tail call fastcc void @fsmenu_set_category(ptr noundef %0, i32 noundef 0, ptr noundef null) #12
  tail call fastcc void @fsmenu_free_category(ptr noundef %0, i32 noundef 1) #12
  tail call fastcc void @fsmenu_set_category(ptr noundef %0, i32 noundef 1, ptr noundef null) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fsmenu_free_category(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !55 {
  %3 = tail call fastcc ptr @fsmenu_get_category(ptr noundef %0, i32 noundef %1) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2, %13
  %6 = phi ptr [ %7, %13 ], [ %3, %2 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = getelementptr inbounds %struct._FSMenuEntry, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %12(ptr noundef nonnull %9) #11
  br label %13

13:                                               ; preds = %11, %5
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %14(ptr noundef nonnull %6) #11
  %15 = icmp eq ptr %7, null
  br i1 %15, label %16, label %5, !llvm.loop !56

16:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fsmenu_free() local_unnamed_addr #0 {
  %1 = load ptr, ptr @g_fsmenu, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  tail call fastcc void @fsmenu_free_category(ptr noundef nonnull %1, i32 noundef 0) #12
  %4 = load ptr, ptr @g_fsmenu, align 8, !tbaa !34
  tail call fastcc void @fsmenu_free_category(ptr noundef %4, i32 noundef 1) #12
  %5 = load ptr, ptr @g_fsmenu, align 8, !tbaa !34
  tail call fastcc void @fsmenu_free_category(ptr noundef %5, i32 noundef 2) #12
  %6 = load ptr, ptr @g_fsmenu, align 8, !tbaa !34
  tail call fastcc void @fsmenu_free_category(ptr noundef %6, i32 noundef 3) #12
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %8 = load ptr, ptr @g_fsmenu, align 8, !tbaa !34
  tail call void %7(ptr noundef %8) #11
  br label %9

9:                                                ; preds = %3, %0
  store ptr null, ptr @g_fsmenu, align 8, !tbaa !34
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize willreturn memory(read) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 0}
!39 = !{!"_FSMenuEntry", !35, i64 0, !35, i64 8, !40, i64 16}
!40 = !{!"short", !36, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"fsmenu.c:fsmenu_get_category"}
!44 = distinct !{!44, !42}
!45 = !{!39, !35, i64 8}
!46 = distinct !{!46, !42}
!47 = !{!39, !40, i64 16}
!48 = distinct !{!48, !42}
!49 = !{!"fsmenu.c:fsmenu_set_category"}
!50 = distinct !{!50, !42}
!51 = distinct !{!51, !42}
!52 = distinct !{!52, !42}
!53 = !{!36, !36, i64 0}
!54 = distinct !{!54, !42}
!55 = !{!"fsmenu.c:fsmenu_free_category"}
!56 = distinct !{!56, !42}
