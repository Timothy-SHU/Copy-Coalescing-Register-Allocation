; ModuleID = 'blender/source/blender/blenlib/intern/listbase.c'
source_filename = "blender/source/blender/blenlib/intern/listbase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ListBase = type { ptr, ptr }
%struct.Link = type { ptr, ptr }
%struct.LinkData = type { ptr, ptr, ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.BLI_genericNodeN = private unnamed_addr constant [17 x i8] c"BLI_genericNodeN\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_movelisttolist(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  store ptr %3, ptr %0, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.ListBase, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !39
  br label %18

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !39
  store ptr %3, ptr %14, align 8, !tbaa !40
  %15 = getelementptr inbounds %struct.Link, ptr %3, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct.ListBase, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !39
  store ptr %17, ptr %13, align 8, !tbaa !39
  br label %18

18:                                               ; preds = %12, %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %19

19:                                               ; preds = %2, %18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_addhead(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %5, ptr %1, align 8, !tbaa !40
  %6 = getelementptr inbounds %struct.Link, ptr %1, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !42
  %7 = icmp eq ptr %5, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Link, ptr %5, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !42
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store ptr %1, ptr %11, align 8, !tbaa !39
  br label %15

15:                                               ; preds = %14, %10
  store ptr %1, ptr %0, align 8, !tbaa !34
  br label %16

16:                                               ; preds = %2, %15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_addtail(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  store ptr null, ptr %1, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.Link, ptr %1, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !42
  %8 = icmp eq ptr %6, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  store ptr %1, ptr %6, align 8, !tbaa !40
  br label %10

10:                                               ; preds = %9, %4
  %11 = load ptr, ptr %0, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store ptr %1, ptr %0, align 8, !tbaa !34
  br label %14

14:                                               ; preds = %13, %10
  store ptr %1, ptr %5, align 8, !tbaa !39
  br label %15

15:                                               ; preds = %2, %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_remlink(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.Link, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  br i1 %6, label %11, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Link, ptr %5, i64 0, i32 1
  store ptr %8, ptr %10, align 8, !tbaa !42
  br label %11

11:                                               ; preds = %4, %9
  %12 = icmp eq ptr %8, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  store ptr %5, ptr %8, align 8, !tbaa !40
  br label %14

14:                                               ; preds = %13, %11
  %15 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !39
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store ptr %8, ptr %15, align 8, !tbaa !39
  br label %19

19:                                               ; preds = %18, %14
  %20 = load ptr, ptr %0, align 8, !tbaa !34
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load ptr, ptr %1, align 8, !tbaa !40
  store ptr %23, ptr %0, align 8, !tbaa !34
  br label %24

24:                                               ; preds = %19, %22, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BLI_remlink_safe(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call i32 @BLI_findindex(ptr noundef %0, ptr noundef %1) #10
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @BLI_remlink(ptr noundef %0, ptr noundef %1) #10
  br label %6

6:                                                ; preds = %2, %5
  %7 = phi i8 [ 1, %5 ], [ 0, %2 ]
  ret i8 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_findindex(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %4, %11
  %8 = phi ptr [ %13, %11 ], [ %5, %4 ]
  %9 = phi i32 [ %12, %11 ], [ 0, %4 ]
  %10 = icmp eq ptr %8, %1
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = add nuw nsw i32 %9, 1
  %13 = load ptr, ptr %8, align 8, !tbaa !43
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7, !llvm.loop !44

15:                                               ; preds = %7, %11, %4, %2
  %16 = phi i32 [ -1, %2 ], [ -1, %4 ], [ %9, %7 ], [ -1, %11 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_listbase_swaplinks(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne ptr %2, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %59

7:                                                ; preds = %3
  %8 = load ptr, ptr %2, align 8, !tbaa !40
  %9 = icmp eq ptr %8, %1
  %10 = select i1 %9, ptr %1, ptr %2
  %11 = select i1 %9, ptr %2, ptr %1
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  %13 = icmp eq ptr %12, %10
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = load ptr, ptr %10, align 8, !tbaa !40
  %16 = getelementptr inbounds %struct.Link, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds %struct.Link, ptr %10, i64 0, i32 1
  store ptr %17, ptr %18, align 8, !tbaa !42
  store ptr %10, ptr %16, align 8, !tbaa !42
  store ptr %15, ptr %11, align 8
  store ptr %11, ptr %10, align 8, !tbaa !40
  br label %27

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.Link, ptr %11, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.Link, ptr %10, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  store ptr %23, ptr %20, align 8, !tbaa !42
  store ptr %21, ptr %22, align 8, !tbaa !42
  %24 = load ptr, ptr %10, align 8, !tbaa !40
  %25 = load ptr, ptr %20, align 8, !tbaa !42
  store ptr %24, ptr %11, align 8
  store ptr %12, ptr %10, align 8, !tbaa !40
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %14, %19
  %28 = phi ptr [ %10, %14 ], [ %25, %19 ]
  store ptr %11, ptr %28, align 8, !tbaa !40
  br label %29

29:                                               ; preds = %27, %19
  %30 = load ptr, ptr %11, align 8, !tbaa !40
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.Link, ptr %30, i64 0, i32 1
  store ptr %11, ptr %33, align 8, !tbaa !42
  br label %34

34:                                               ; preds = %32, %29
  %35 = getelementptr inbounds %struct.Link, ptr %10, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !42
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store ptr %10, ptr %36, align 8, !tbaa !40
  br label %39

39:                                               ; preds = %38, %34
  %40 = load ptr, ptr %10, align 8, !tbaa !40
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.Link, ptr %40, i64 0, i32 1
  store ptr %10, ptr %43, align 8, !tbaa !42
  br label %44

44:                                               ; preds = %42, %39
  %45 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !39
  %47 = icmp eq ptr %46, %11
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = icmp eq ptr %46, %10
  br i1 %49, label %50, label %52

50:                                               ; preds = %48, %44
  %51 = phi ptr [ %10, %44 ], [ %11, %48 ]
  store ptr %51, ptr %45, align 8, !tbaa !39
  br label %52

52:                                               ; preds = %50, %48
  %53 = load ptr, ptr %0, align 8, !tbaa !34
  %54 = icmp eq ptr %53, %11
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = icmp eq ptr %53, %10
  br i1 %56, label %57, label %59

57:                                               ; preds = %55, %52
  %58 = phi ptr [ %10, %52 ], [ %11, %55 ]
  store ptr %58, ptr %0, align 8, !tbaa !34
  br label %59

59:                                               ; preds = %57, %55, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_pophead(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %2) #10
  br label %5

5:                                                ; preds = %4, %1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_poptail(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %3) #10
  br label %6

6:                                                ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_freelinkN(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  tail call void @BLI_remlink(ptr noundef %0, ptr noundef nonnull %1) #10
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %5(ptr noundef nonnull %1) #11
  br label %6

6:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_sortlist(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !40
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %7, %24
  %11 = phi ptr [ %12, %24 ], [ %8, %7 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  %13 = getelementptr inbounds %struct.Link, ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  tail call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %11) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %10, %20
  %17 = phi ptr [ %22, %20 ], [ %14, %10 ]
  %18 = tail call i32 %1(ptr noundef nonnull %17, ptr noundef nonnull %11) #11
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Link, ptr %17, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %16, !llvm.loop !46

24:                                               ; preds = %16, %20, %10
  %25 = phi ptr [ null, %10 ], [ null, %20 ], [ %17, %16 ]
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %0, ptr noundef %25, ptr noundef nonnull %11) #10
  %26 = icmp eq ptr %12, null
  br i1 %26, label %27, label %10, !llvm.loop !47

27:                                               ; preds = %24, %7, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_insertlinkafter(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  store ptr %2, ptr %0, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  br label %27

10:                                               ; preds = %5
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.Link, ptr %2, i64 0, i32 1
  store ptr null, ptr %13, align 8, !tbaa !42
  store ptr %6, ptr %2, align 8, !tbaa !40
  %14 = getelementptr inbounds %struct.Link, ptr %6, i64 0, i32 1
  store ptr %2, ptr %14, align 8, !tbaa !42
  br label %27

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !39
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store ptr %2, ptr %16, align 8, !tbaa !39
  br label %20

20:                                               ; preds = %19, %15
  %21 = load ptr, ptr %1, align 8, !tbaa !40
  store ptr %21, ptr %2, align 8, !tbaa !40
  %22 = getelementptr inbounds %struct.Link, ptr %2, i64 0, i32 1
  store ptr %1, ptr %22, align 8, !tbaa !42
  store ptr %2, ptr %1, align 8, !tbaa !40
  %23 = load ptr, ptr %2, align 8, !tbaa !40
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.Link, ptr %23, i64 0, i32 1
  br label %27

27:                                               ; preds = %8, %12, %25
  %28 = phi ptr [ %26, %25 ], [ %0, %12 ], [ %9, %8 ]
  store ptr %2, ptr %28, align 8, !tbaa !43
  br label %29

29:                                               ; preds = %27, %20, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_sortlist_r(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %28, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !40
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %8, %25
  %12 = phi ptr [ %13, %25 ], [ %9, %8 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  %14 = getelementptr inbounds %struct.Link, ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  tail call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %12) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %11, %21
  %18 = phi ptr [ %23, %21 ], [ %15, %11 ]
  %19 = tail call i32 %2(ptr noundef %1, ptr noundef nonnull %18, ptr noundef nonnull %12) #11
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.Link, ptr %18, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %17, !llvm.loop !48

25:                                               ; preds = %17, %21, %11
  %26 = phi ptr [ null, %11 ], [ null, %21 ], [ %18, %17 ]
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %0, ptr noundef %26, ptr noundef nonnull %12) #10
  %27 = icmp eq ptr %13, null
  br i1 %27, label %28, label %11, !llvm.loop !49

28:                                               ; preds = %25, %8, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_insertlinkbefore(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  store ptr %2, ptr %0, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  br label %25

10:                                               ; preds = %5
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !39
  %15 = getelementptr inbounds %struct.Link, ptr %2, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !42
  store ptr null, ptr %2, align 8, !tbaa !40
  store ptr %2, ptr %14, align 8, !tbaa !40
  br label %25

16:                                               ; preds = %10
  %17 = icmp eq ptr %6, %1
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  store ptr %2, ptr %0, align 8, !tbaa !34
  br label %19

19:                                               ; preds = %18, %16
  store ptr %1, ptr %2, align 8, !tbaa !40
  %20 = getelementptr inbounds %struct.Link, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.Link, ptr %2, i64 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !42
  store ptr %2, ptr %20, align 8, !tbaa !42
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19, %8, %12
  %26 = phi ptr [ %13, %12 ], [ %9, %8 ], [ %23, %19 ]
  store ptr %2, ptr %26, align 8, !tbaa !43
  br label %27

27:                                               ; preds = %25, %19, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_freelist(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  tail call void @free(ptr noundef nonnull %5) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !50

8:                                                ; preds = %4, %1
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #6 !PGOFuncName !51 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_freelistN(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %7(ptr noundef nonnull %5) #11
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %4, !llvm.loop !52

9:                                                ; preds = %4, %1
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_countlist(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %6, %3 ], [ %0, %1 ]
  %5 = phi i32 [ %8, %3 ], [ 0, %1 ]
  %6 = load ptr, ptr %4, align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  %8 = add nuw nsw i32 %5, 1
  br i1 %7, label %9, label %3, !llvm.loop !53

9:                                                ; preds = %3, %1
  %10 = phi i32 [ 0, %1 ], [ %5, %3 ]
  ret i32 %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_findlink(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp sgt i32 %1, -1
  br i1 %3, label %4, label %12

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %11, %4 ], [ %1, %2 ]
  %6 = phi ptr [ %7, %4 ], [ %0, %2 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp ne ptr %7, null
  %9 = icmp ne i32 %5, 0
  %10 = select i1 %8, i1 %9, i1 false
  %11 = add nsw i32 %5, -1
  br i1 %10, label %4, label %12, !llvm.loop !54

12:                                               ; preds = %4, %2
  %13 = phi ptr [ null, %2 ], [ %7, %4 ]
  ret ptr %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_rfindlink(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp sgt i32 %1, -1
  br i1 %3, label %4, label %19

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = icmp ne ptr %6, null
  %8 = icmp ne i32 %1, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %15, %10 ], [ %6, %4 ]
  %12 = phi i32 [ %13, %10 ], [ %1, %4 ]
  %13 = add nsw i32 %12, -1
  %14 = getelementptr inbounds %struct.Link, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = icmp ne ptr %15, null
  %17 = icmp ne i32 %13, 0
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %10, label %19, !llvm.loop !55

19:                                               ; preds = %10, %4, %2
  %20 = phi ptr [ null, %2 ], [ %6, %4 ], [ %15, %10 ]
  ret ptr %20
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_findstring(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = load ptr, ptr %0, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = sext i32 %2 to i64
  %8 = load i8, ptr %1, align 1, !tbaa !56
  br label %9

9:                                                ; preds = %6, %17
  %10 = phi ptr [ %4, %6 ], [ %18, %17 ]
  %11 = getelementptr inbounds i8, ptr %10, i64 %7
  %12 = load i8, ptr %11, align 1, !tbaa !56
  %13 = icmp eq i8 %8, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %11) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %9, %14
  %18 = load ptr, ptr %10, align 8, !tbaa !43
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %9, !llvm.loop !57

20:                                               ; preds = %14, %17, %3
  %21 = phi ptr [ null, %3 ], [ null, %17 ], [ %10, %14 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_rfindstring(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = sext i32 %2 to i64
  %9 = load i8, ptr %1, align 1, !tbaa !56
  br label %10

10:                                               ; preds = %7, %18
  %11 = phi ptr [ %5, %7 ], [ %20, %18 ]
  %12 = getelementptr inbounds i8, ptr %11, i64 %8
  %13 = load i8, ptr %12, align 1, !tbaa !56
  %14 = icmp eq i8 %9, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %12) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %10, %15
  %19 = getelementptr inbounds %struct.Link, ptr %11, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %10, !llvm.loop !58

22:                                               ; preds = %15, %18, %3
  %23 = phi ptr [ null, %3 ], [ null, %18 ], [ %11, %15 ]
  ret ptr %23
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_findstring_ptr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = load ptr, ptr %0, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = sext i32 %2 to i64
  %8 = load i8, ptr %1, align 1, !tbaa !56
  br label %9

9:                                                ; preds = %6, %18
  %10 = phi ptr [ %4, %6 ], [ %19, %18 ]
  %11 = getelementptr inbounds i8, ptr %10, i64 %7
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = load i8, ptr %12, align 1, !tbaa !56
  %14 = icmp eq i8 %8, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %12) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %9, %15
  %19 = load ptr, ptr %10, align 8, !tbaa !43
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %9, !llvm.loop !59

21:                                               ; preds = %15, %18, %3
  %22 = phi ptr [ null, %3 ], [ null, %18 ], [ %10, %15 ]
  ret ptr %22
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_rfindstring_ptr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = sext i32 %2 to i64
  %9 = load i8, ptr %1, align 1, !tbaa !56
  br label %10

10:                                               ; preds = %7, %19
  %11 = phi ptr [ %5, %7 ], [ %21, %19 ]
  %12 = getelementptr inbounds i8, ptr %11, i64 %8
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = load i8, ptr %13, align 1, !tbaa !56
  %15 = icmp eq i8 %9, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %13) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %10, %16
  %20 = getelementptr inbounds %struct.Link, ptr %11, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %10, !llvm.loop !60

23:                                               ; preds = %16, %19, %3
  %24 = phi ptr [ null, %3 ], [ null, %19 ], [ %11, %16 ]
  ret ptr %24
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_findptr(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = sext i32 %2 to i64
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %0, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds i8, ptr %7, i64 %4
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %5, !llvm.loop !61

13:                                               ; preds = %5, %9
  ret ptr %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_rfindptr(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %5 = sext i32 %2 to i64
  %6 = load ptr, ptr %4, align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %3, %13
  %9 = phi ptr [ %15, %13 ], [ %6, %3 ]
  %10 = getelementptr inbounds i8, ptr %9, i64 %5
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.Link, ptr %9, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %8, !llvm.loop !62

17:                                               ; preds = %8, %13, %3
  %18 = phi ptr [ null, %3 ], [ null, %13 ], [ %9, %8 ]
  ret ptr %18
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_findstringindex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = load ptr, ptr %0, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %3
  %7 = sext i32 %2 to i64
  %8 = load i8, ptr %1, align 1, !tbaa !56
  br label %9

9:                                                ; preds = %6, %18
  %10 = phi ptr [ %4, %6 ], [ %20, %18 ]
  %11 = phi i32 [ 0, %6 ], [ %19, %18 ]
  %12 = getelementptr inbounds i8, ptr %10, i64 %7
  %13 = load i8, ptr %12, align 1, !tbaa !56
  %14 = icmp eq i8 %8, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %12) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15, %9
  %19 = add nuw nsw i32 %11, 1
  %20 = load ptr, ptr %10, align 8, !tbaa !43
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %9, !llvm.loop !63

22:                                               ; preds = %15, %18, %3
  %23 = phi i32 [ -1, %3 ], [ -1, %18 ], [ %11, %15 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_duplicatelist(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br i1 %4, label %11, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %9, %5 ], [ %3, %2 ]
  %7 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !43
  %8 = tail call ptr %7(ptr noundef nonnull %6) #11
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %8) #10
  %9 = load ptr, ptr %6, align 8, !tbaa !40
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %5, !llvm.loop !64

11:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_listbase_reverse(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ null, %1 ]
  %6 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  store ptr %5, ptr %6, align 8, !tbaa !40
  %8 = getelementptr inbounds %struct.Link, ptr %6, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !42
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %4, !llvm.loop !65

10:                                               ; preds = %4, %1
  %11 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  store ptr %12, ptr %0, align 8, !tbaa !34
  store ptr %2, ptr %11, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_listbase_rotate_first(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.Link, ptr %5, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !42
  store ptr %5, ptr %4, align 8, !tbaa !40
  store ptr %1, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.Link, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  store ptr %8, ptr %3, align 8, !tbaa !39
  store ptr null, ptr %7, align 8, !tbaa !42
  store ptr null, ptr %8, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_listbase_rotate_last(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.Link, ptr %5, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !42
  store ptr %5, ptr %4, align 8, !tbaa !40
  %7 = load ptr, ptr %1, align 8, !tbaa !40
  store ptr %7, ptr %0, align 8, !tbaa !34
  store ptr %1, ptr %3, align 8, !tbaa !39
  %8 = getelementptr inbounds %struct.Link, ptr %7, i64 0, i32 1
  store ptr null, ptr %8, align 8, !tbaa !42
  store ptr null, ptr %1, align 8, !tbaa !40
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_genericNodeN(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %5 = tail call ptr %4(i64 noundef 24, ptr noundef nonnull @__func__.BLI_genericNodeN) #11
  %6 = getelementptr inbounds %struct.LinkData, ptr %5, i64 0, i32 2
  store ptr %0, ptr %6, align 8, !tbaa !66
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"ListBase", !36, i64 0, !36, i64 8}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!35, !36, i64 8}
!40 = !{!41, !36, i64 0}
!41 = !{!"Link", !36, i64 0, !36, i64 8}
!42 = !{!41, !36, i64 8}
!43 = !{!36, !36, i64 0}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = distinct !{!46, !45}
!47 = distinct !{!47, !45}
!48 = distinct !{!48, !45}
!49 = distinct !{!49, !45}
!50 = distinct !{!50, !45}
!51 = !{!"listbase.c:BLI_listbase_clear"}
!52 = distinct !{!52, !45}
!53 = distinct !{!53, !45}
!54 = distinct !{!54, !45}
!55 = distinct !{!55, !45}
!56 = !{!37, !37, i64 0}
!57 = distinct !{!57, !45}
!58 = distinct !{!58, !45}
!59 = distinct !{!59, !45}
!60 = distinct !{!60, !45}
!61 = distinct !{!61, !45}
!62 = distinct !{!62, !45}
!63 = distinct !{!63, !45}
!64 = distinct !{!64, !45}
!65 = distinct !{!65, !45}
!66 = !{!67, !36, i64 16}
!67 = !{!"LinkData", !36, i64 0, !36, i64 8, !36, i64 16}
