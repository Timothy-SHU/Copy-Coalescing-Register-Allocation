; ModuleID = 'implicit.c'
source_filename = "implicit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64 }
%struct.node = type { i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }
%struct.arc = type { i32, i64, ptr, ptr, i16, ptr, ptr, i64, i64 }
%struct.list_elem = type { ptr, ptr }

@.str = private unnamed_addr constant [31 x i8] c"network %s: not enough memory\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @refreshArcPointers(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !prof !56 {
  %4 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !57
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %48, label %7, !prof !64

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  br label %9

9:                                                ; preds = %7, %44
  %10 = phi i64 [ 0, %7 ], [ %45, %44 ]
  %11 = load ptr, ptr %8, align 8, !tbaa !65
  %12 = getelementptr inbounds %struct.node, ptr %11, i64 %10, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15, !prof !69

15:                                               ; preds = %9
  %16 = load i32, ptr %13, align 8, !tbaa !70
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %22, !prof !73

18:                                               ; preds = %15
  %19 = zext nneg i32 %16 to i64
  %20 = tail call i64 %1(ptr noundef nonnull %0, i64 noundef %19) #16
  %21 = getelementptr inbounds %struct.arc, ptr %2, i64 %20
  store ptr %21, ptr %12, align 8, !tbaa !66
  br label %22

22:                                               ; preds = %18, %15, %9
  %23 = getelementptr inbounds %struct.node, ptr %11, i64 %10, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !74
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26, !prof !69

26:                                               ; preds = %22
  %27 = load i32, ptr %24, align 8, !tbaa !70
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %33, !prof !75

29:                                               ; preds = %26
  %30 = zext nneg i32 %27 to i64
  %31 = tail call i64 %1(ptr noundef nonnull %0, i64 noundef %30) #16
  %32 = getelementptr inbounds %struct.arc, ptr %2, i64 %31
  store ptr %32, ptr %23, align 8, !tbaa !74
  br label %33

33:                                               ; preds = %29, %26, %22
  %34 = getelementptr inbounds %struct.node, ptr %11, i64 %10, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !76
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37, !prof !69

37:                                               ; preds = %33
  %38 = load i32, ptr %35, align 8, !tbaa !70
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %44, !prof !77

40:                                               ; preds = %37
  %41 = zext nneg i32 %38 to i64
  %42 = tail call i64 %1(ptr noundef nonnull %0, i64 noundef %41) #16
  %43 = getelementptr inbounds %struct.arc, ptr %2, i64 %42
  store ptr %43, ptr %34, align 8, !tbaa !76
  br label %44

44:                                               ; preds = %33, %37, %40
  %45 = add nuw nsw i64 %10, 1
  %46 = load i64, ptr %4, align 8, !tbaa !57
  %47 = icmp slt i64 %10, %46
  br i1 %47, label %9, label %48, !prof !78, !llvm.loop !79

48:                                               ; preds = %44, %3
  ret i64 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @refreshPositions(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 !prof !56 {
  %4 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 25
  %5 = load ptr, ptr %4, align 8, !tbaa !81
  %6 = tail call i64 @refreshArcPointers(ptr noundef %0, ptr noundef %1, ptr noundef %5) #17
  %7 = icmp sgt i64 %2, 0
  br i1 %7, label %8, label %23, !prof !82

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  br label %10

10:                                               ; preds = %8, %20
  %11 = phi i64 [ 0, %8 ], [ %21, %20 ]
  %12 = load ptr, ptr %9, align 8, !tbaa !83
  %13 = getelementptr inbounds %struct.arc, ptr %12, i64 %11
  %14 = load i32, ptr %13, align 8, !tbaa !70
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16, !prof !84

16:                                               ; preds = %10
  %17 = zext nneg i32 %14 to i64
  %18 = tail call i64 %1(ptr noundef nonnull %0, i64 noundef %17) #16
  %19 = getelementptr inbounds %struct.arc, ptr %5, i64 %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %19, ptr noundef nonnull align 8 dereferenceable(72) %13, i64 72, i1 false), !tbaa.struct !85
  br label %20

20:                                               ; preds = %10, %16
  %21 = add nuw nsw i64 %11, 1
  %22 = icmp eq i64 %21, %2
  br i1 %22, label %23, label %10, !prof !90, !llvm.loop !91

23:                                               ; preds = %20, %3
  %24 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %25 = load ptr, ptr %24, align 8, !tbaa !83
  store ptr %5, ptr %24, align 8, !tbaa !83
  store ptr %25, ptr %4, align 8, !tbaa !81
  %26 = getelementptr inbounds %struct.arc, ptr %5, i64 %2
  %27 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 24
  store ptr %26, ptr %27, align 8, !tbaa !92
  ret i64 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @marc_arcs(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #3 !prof !93 {
  %5 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !94
  %7 = icmp slt i64 %6, 15001
  %8 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 8
  %9 = load i64, ptr %8, align 8, !tbaa !95
  %10 = select i1 %7, i64 -1000000, i64 -4000000, !prof !96
  %11 = add nsw i64 %9, %10
  store i64 0, ptr %1, align 8, !tbaa !87
  %12 = load i64, ptr %2, align 8, !tbaa !87
  store i64 %12, ptr %1, align 8, !tbaa !87
  %13 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %14 = icmp sgt i64 %12, 0
  %15 = icmp sgt i64 %11, 0
  %16 = select i1 %14, i1 %15, i1 false, !prof !97
  br i1 %16, label %17, label %38, !prof !98

17:                                               ; preds = %4
  %18 = load ptr, ptr %3, align 8, !tbaa !88
  %19 = load i64, ptr %13, align 8, !tbaa !99
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi ptr [ %18, %17 ], [ %32, %20 ]
  %22 = phi i64 [ 0, %17 ], [ %33, %20 ]
  %23 = phi i64 [ %19, %17 ], [ %28, %20 ]
  %24 = phi i64 [ 0, %17 ], [ %31, %20 ]
  %25 = load i64, ptr %2, align 8, !tbaa !87
  %26 = icmp slt i64 %22, %25
  tail call void @llvm.assume(i1 %26)
  %27 = load ptr, ptr %21, align 8, !tbaa !88
  %28 = add nsw i64 %23, 1
  %29 = trunc i64 %23 to i32
  store i32 %29, ptr %27, align 8, !tbaa !70
  %30 = getelementptr inbounds %struct.arc, ptr %27, i64 0, i32 7
  store i64 1, ptr %30, align 8, !tbaa !100
  %31 = add nuw nsw i64 %24, 1
  %32 = getelementptr inbounds ptr, ptr %21, i64 1
  %33 = add nuw nsw i64 %22, 1
  %34 = load i64, ptr %1, align 8, !tbaa !87
  %35 = icmp slt i64 %31, %34
  %36 = icmp slt i64 %31, %11
  %37 = select i1 %35, i1 %36, i1 false, !prof !97
  br i1 %37, label %20, label %38, !prof !101, !llvm.loop !102

38:                                               ; preds = %20, %4
  %39 = phi i64 [ 0, %4 ], [ %33, %20 ]
  store i64 %39, ptr %1, align 8, !tbaa !87
  %40 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 32
  store i64 4000, ptr %40, align 8, !tbaa !103
  %41 = load i64, ptr %1, align 8, !tbaa !87
  %42 = load i64, ptr %13, align 8, !tbaa !99
  %43 = add i64 %41, -1
  %44 = add i64 %43, %42
  %45 = sdiv i64 %44, 4000
  %46 = add nsw i64 %45, 1
  %47 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 30
  store i64 %46, ptr %47, align 8, !tbaa !104
  %48 = load i64, ptr %1, align 8, !tbaa !87
  %49 = add nsw i64 %48, %42
  %50 = srem i64 %49, 4000
  %51 = icmp eq i64 %50, 0
  %52 = add nsw i64 %45, -3999
  %53 = add nsw i64 %52, %50
  %54 = select i1 %51, i64 %46, i64 %53, !prof !96
  %55 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 31
  store i64 %54, ptr %55, align 8
  %56 = icmp slt i64 %54, 0
  br i1 %56, label %57, label %64, !prof !98

57:                                               ; preds = %38, %57
  %58 = phi i64 [ %61, %57 ], [ 4000, %38 ]
  %59 = phi i64 [ %60, %57 ], [ %54, %38 ]
  %60 = add nsw i64 %59, %46
  %61 = add nsw i64 %58, -1
  %62 = icmp slt i64 %60, 0
  br i1 %62, label %57, label %63, !prof !105, !llvm.loop !106

63:                                               ; preds = %57
  store i64 %60, ptr %55, align 8, !tbaa !107
  store i64 %61, ptr %40, align 8, !tbaa !103
  br label %64

64:                                               ; preds = %63, %38
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @arc_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 !prof !108 !PGOFuncName !109 {
  %3 = load ptr, ptr %0, align 8, !tbaa !88
  %4 = getelementptr inbounds %struct.arc, ptr %3, i64 0, i32 7
  %5 = load i64, ptr %4, align 8, !tbaa !100
  %6 = load ptr, ptr %1, align 8, !tbaa !88
  %7 = getelementptr inbounds %struct.arc, ptr %6, i64 0, i32 7
  %8 = load i64, ptr %7, align 8, !tbaa !100
  %9 = icmp sgt i64 %5, %8
  br i1 %9, label %17, label %10, !prof !110

10:                                               ; preds = %2
  %11 = icmp slt i64 %5, %8
  br i1 %11, label %17, label %12, !prof !111

12:                                               ; preds = %10
  %13 = load i32, ptr %3, align 8, !tbaa !70
  %14 = load i32, ptr %6, align 8, !tbaa !70
  %15 = icmp slt i32 %13, %14
  %16 = select i1 %15, i32 -1, i32 1, !prof !112
  br label %17

17:                                               ; preds = %12, %10, %2
  %18 = phi i32 [ 1, %2 ], [ -1, %10 ], [ %16, %12 ]
  ret i32 %18
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @resize_prob(ptr noundef %0) local_unnamed_addr #0 !prof !113 {
  %2 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 9
  %3 = load i64, ptr %2, align 8, !tbaa !114
  %4 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !115
  %6 = add nsw i64 %5, %3
  store i64 %6, ptr %4, align 8, !tbaa !115
  %7 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 8
  %8 = load i64, ptr %7, align 8, !tbaa !95
  %9 = add nsw i64 %8, %3
  store i64 %9, ptr %7, align 8, !tbaa !95
  %10 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  %12 = mul i64 %6, 72
  %13 = tail call ptr @realloc(ptr noundef %11, i64 noundef %12) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19, !prof !116

15:                                               ; preds = %1
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %0) #17
  %17 = load ptr, ptr @stdout, align 8, !tbaa !88
  %18 = tail call i32 @fflush(ptr noundef %17) #17
  br label %56

19:                                               ; preds = %1
  %20 = load ptr, ptr %10, align 8, !tbaa !83
  store ptr %13, ptr %10, align 8, !tbaa !83
  %21 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %22 = load i64, ptr %21, align 8, !tbaa !99
  %23 = getelementptr inbounds %struct.arc, ptr %13, i64 %22
  %24 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 24
  store ptr %23, ptr %24, align 8, !tbaa !92
  %25 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  %26 = load ptr, ptr %25, align 8, !tbaa !65
  %27 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 22
  %28 = load ptr, ptr %27, align 8, !tbaa !117
  %29 = getelementptr inbounds %struct.node, ptr %26, i64 1
  %30 = icmp ult ptr %29, %28
  br i1 %30, label %31, label %50, !prof !118

31:                                               ; preds = %19
  %32 = ptrtoint ptr %20 to i64
  br label %33

33:                                               ; preds = %31, %47
  %34 = phi ptr [ %29, %31 ], [ %48, %47 ]
  %35 = phi ptr [ %26, %31 ], [ %34, %47 ]
  %36 = getelementptr inbounds %struct.node, ptr %35, i64 1, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !66
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39, !prof !119

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.node, ptr %35, i64 1, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !120
  %42 = icmp eq ptr %41, %26
  br i1 %42, label %47, label %43, !prof !121

43:                                               ; preds = %39
  %44 = ptrtoint ptr %37 to i64
  %45 = sub i64 %44, %32
  %46 = getelementptr inbounds i8, ptr %13, i64 %45
  store ptr %46, ptr %36, align 8, !tbaa !66
  br label %47

47:                                               ; preds = %33, %39, %43
  %48 = getelementptr inbounds %struct.node, ptr %34, i64 1
  %49 = icmp ult ptr %48, %28
  br i1 %49, label %33, label %50, !prof !122, !llvm.loop !123

50:                                               ; preds = %47, %19
  %51 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 25
  %52 = load ptr, ptr %51, align 8, !tbaa !81
  %53 = load i64, ptr %4, align 8, !tbaa !115
  %54 = mul i64 %53, 72
  %55 = tail call ptr @realloc(ptr noundef %52, i64 noundef %54) #18
  store ptr %55, ptr %51, align 8, !tbaa !81
  br label %56

56:                                               ; preds = %50, %15
  %57 = phi i64 [ 0, %50 ], [ -1, %15 ]
  ret i64 %57
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @insert_new_arc(ptr nocapture noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i64 %6, i64 noundef %7) local_unnamed_addr #9 !prof !124 {
  %9 = getelementptr inbounds %struct.arc, ptr %0, i64 %1
  %10 = getelementptr inbounds %struct.arc, ptr %0, i64 %1, i32 2
  store ptr %2, ptr %10, align 8, !tbaa !125
  %11 = getelementptr inbounds %struct.arc, ptr %0, i64 %1, i32 3
  store ptr %3, ptr %11, align 8, !tbaa !126
  %12 = getelementptr inbounds %struct.arc, ptr %0, i64 %1, i32 8
  store i64 %4, ptr %12, align 8, !tbaa !127
  %13 = getelementptr inbounds %struct.arc, ptr %0, i64 %1, i32 1
  store i64 %4, ptr %13, align 8, !tbaa !128
  %14 = getelementptr inbounds %struct.arc, ptr %0, i64 %1, i32 7
  store i64 %5, ptr %14, align 8, !tbaa !100
  %15 = trunc i64 %7 to i32
  store i32 %15, ptr %9, align 8, !tbaa !70
  %16 = icmp eq i64 %1, 0
  br i1 %16, label %43, label %17, !prof !129

17:                                               ; preds = %8
  %18 = add nsw i64 %1, 1
  br label %19

19:                                               ; preds = %17, %27
  %20 = phi i64 [ %41, %27 ], [ %1, %17 ]
  %21 = phi i64 [ %22, %27 ], [ %18, %17 ]
  %22 = sdiv i64 %21, 2
  %23 = getelementptr %struct.arc, ptr %0, i64 %22
  %24 = getelementptr %struct.arc, ptr %23, i64 -1, i32 7
  %25 = load i64, ptr %24, align 8, !tbaa !100
  %26 = icmp slt i64 %25, %5
  br i1 %26, label %27, label %43, !prof !130

27:                                               ; preds = %19
  %28 = getelementptr %struct.arc, ptr %23, i64 -1
  %29 = getelementptr %struct.arc, ptr %23, i64 -1, i32 2
  %30 = getelementptr inbounds %struct.arc, ptr %0, i64 %20
  %31 = getelementptr inbounds %struct.arc, ptr %0, i64 %20, i32 2
  %32 = getelementptr %struct.arc, ptr %23, i64 -1, i32 3
  %33 = load <2 x ptr>, ptr %29, align 8, !tbaa !88
  store <2 x ptr> %33, ptr %31, align 8, !tbaa !88
  %34 = getelementptr %struct.arc, ptr %23, i64 -1, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !128
  %36 = getelementptr inbounds %struct.arc, ptr %0, i64 %20, i32 1
  store i64 %35, ptr %36, align 8, !tbaa !128
  %37 = getelementptr inbounds %struct.arc, ptr %0, i64 %20, i32 8
  store i64 %35, ptr %37, align 8, !tbaa !127
  %38 = getelementptr inbounds %struct.arc, ptr %0, i64 %20, i32 7
  store i64 %25, ptr %38, align 8, !tbaa !100
  %39 = load i32, ptr %28, align 8, !tbaa !70
  store i32 %39, ptr %30, align 8, !tbaa !70
  store ptr %2, ptr %29, align 8, !tbaa !125
  store ptr %3, ptr %32, align 8, !tbaa !126
  store i64 %4, ptr %34, align 8, !tbaa !128
  %40 = getelementptr %struct.arc, ptr %23, i64 -1, i32 8
  store i64 %4, ptr %40, align 8, !tbaa !127
  store i64 %5, ptr %24, align 8, !tbaa !100
  store i32 %15, ptr %28, align 8, !tbaa !70
  %41 = add nsw i64 %22, -1
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %19, !prof !131, !llvm.loop !132

43:                                               ; preds = %19, %27, %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @replace_weaker_arc(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #9 !prof !133 {
  %8 = getelementptr inbounds %struct.arc, ptr %0, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !125
  %9 = getelementptr inbounds %struct.arc, ptr %0, i64 0, i32 3
  store ptr %2, ptr %9, align 8, !tbaa !126
  %10 = getelementptr inbounds %struct.arc, ptr %0, i64 0, i32 8
  store i64 %3, ptr %10, align 8, !tbaa !127
  %11 = getelementptr inbounds %struct.arc, ptr %0, i64 0, i32 1
  store i64 %3, ptr %11, align 8, !tbaa !128
  %12 = getelementptr inbounds %struct.arc, ptr %0, i64 0, i32 7
  store i64 %4, ptr %12, align 8, !tbaa !100
  %13 = trunc i64 %6 to i32
  store i32 %13, ptr %0, align 8, !tbaa !70
  %14 = getelementptr inbounds %struct.arc, ptr %0, i64 1, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !100
  %16 = getelementptr inbounds %struct.arc, ptr %0, i64 2, i32 7
  %17 = load i64, ptr %16, align 8, !tbaa !100
  %18 = icmp sgt i64 %15, %17
  %19 = select i1 %18, i64 2, i64 3
  %20 = getelementptr %struct.arc, ptr %0, i64 -1, i32 7
  %21 = icmp sgt i64 %19, %5
  br i1 %21, label %57, label %22, !prof !134

22:                                               ; preds = %7, %54
  %23 = phi i64 [ %55, %54 ], [ %19, %7 ]
  %24 = phi i64 [ %23, %54 ], [ 1, %7 ]
  %25 = getelementptr %struct.arc, ptr %0, i64 %23
  %26 = getelementptr %struct.arc, ptr %25, i64 -1, i32 7
  %27 = load i64, ptr %26, align 8, !tbaa !100
  %28 = icmp sgt i64 %27, %4
  br i1 %28, label %29, label %57, !prof !135

29:                                               ; preds = %22
  %30 = getelementptr %struct.arc, ptr %25, i64 -1
  %31 = getelementptr %struct.arc, ptr %25, i64 -1, i32 2
  %32 = getelementptr %struct.arc, ptr %0, i64 %24
  %33 = getelementptr %struct.arc, ptr %32, i64 -1
  %34 = getelementptr %struct.arc, ptr %32, i64 -1, i32 2
  %35 = getelementptr %struct.arc, ptr %25, i64 -1, i32 3
  %36 = load <2 x ptr>, ptr %31, align 8, !tbaa !88
  store <2 x ptr> %36, ptr %34, align 8, !tbaa !88
  %37 = getelementptr %struct.arc, ptr %25, i64 -1, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !128
  %39 = getelementptr %struct.arc, ptr %32, i64 -1, i32 1
  store i64 %38, ptr %39, align 8, !tbaa !128
  %40 = getelementptr %struct.arc, ptr %32, i64 -1, i32 8
  store i64 %38, ptr %40, align 8, !tbaa !127
  %41 = getelementptr %struct.arc, ptr %32, i64 -1, i32 7
  store i64 %27, ptr %41, align 8, !tbaa !100
  %42 = load i32, ptr %30, align 8, !tbaa !70
  store i32 %42, ptr %33, align 8, !tbaa !70
  store ptr %1, ptr %31, align 8, !tbaa !125
  store ptr %2, ptr %35, align 8, !tbaa !126
  store i64 %3, ptr %37, align 8, !tbaa !128
  %43 = getelementptr %struct.arc, ptr %25, i64 -1, i32 8
  store i64 %3, ptr %43, align 8, !tbaa !127
  store i64 %4, ptr %26, align 8, !tbaa !100
  store i32 %13, ptr %30, align 8, !tbaa !70
  %44 = shl nsw i64 %23, 1
  %45 = icmp slt i64 %44, %5
  br i1 %45, label %46, label %54, !prof !136

46:                                               ; preds = %29
  %47 = getelementptr %struct.arc, ptr %20, i64 %44
  %48 = load i64, ptr %47, align 8, !tbaa !100
  %49 = getelementptr inbounds %struct.arc, ptr %0, i64 %44, i32 7
  %50 = load i64, ptr %49, align 8, !tbaa !100
  %51 = icmp slt i64 %48, %50
  %52 = zext i1 %51 to i64
  %53 = or disjoint i64 %44, %52
  br label %54

54:                                               ; preds = %46, %29
  %55 = phi i64 [ %44, %29 ], [ %53, %46 ]
  %56 = icmp sgt i64 %55, %5
  br i1 %56, label %57, label %22, !prof !137, !llvm.loop !138

57:                                               ; preds = %22, %54, %7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @calculate_max_redcost(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #10 !prof !139 {
  store i64 0, ptr %1, align 8, !tbaa !87
  %5 = icmp sgt i64 %3, 0
  br i1 %5, label %6, label %20, !prof !140

6:                                                ; preds = %4, %16
  %7 = phi i64 [ %17, %16 ], [ 0, %4 ]
  %8 = phi i64 [ %18, %16 ], [ 0, %4 ]
  %9 = getelementptr inbounds ptr, ptr %2, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !88
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  %12 = getelementptr inbounds %struct.arc, ptr %11, i64 0, i32 7
  %13 = load i64, ptr %12, align 8, !tbaa !100
  %14 = icmp sgt i64 %13, %7
  br i1 %14, label %15, label %16, !prof !141

15:                                               ; preds = %6
  store i64 %13, ptr %1, align 8, !tbaa !87
  br label %16

16:                                               ; preds = %6, %15
  %17 = phi i64 [ %7, %6 ], [ %13, %15 ]
  %18 = add nuw nsw i64 %8, 1
  %19 = icmp eq i64 %18, %3
  br i1 %19, label %20, label %6, !prof !140, !llvm.loop !142

20:                                               ; preds = %16, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @switch_arcs(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #11 !prof !143 {
  %9 = icmp sgt i64 %7, 0
  br i1 %9, label %10, label %64, !prof !144

10:                                               ; preds = %8
  %11 = sext i32 %4 to i64
  %12 = getelementptr inbounds %struct.arc, ptr %3, i64 0, i32 7
  br label %13

13:                                               ; preds = %10, %58
  %14 = phi i64 [ 0, %10 ], [ %60, %58 ]
  %15 = phi i64 [ %11, %10 ], [ %62, %58 ]
  %16 = phi i64 [ 0, %10 ], [ %59, %58 ]
  %17 = getelementptr inbounds i64, ptr %1, i64 %15
  %18 = load i64, ptr %17, align 8, !tbaa !87
  %19 = tail call i64 @llvm.smin.i64(i64 %18, i64 %6)
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %58, !prof !144

21:                                               ; preds = %13
  %22 = getelementptr inbounds ptr, ptr %2, i64 %15
  br label %23

23:                                               ; preds = %21, %54
  %24 = phi i64 [ 0, %21 ], [ %56, %54 ]
  %25 = phi i64 [ %16, %21 ], [ %55, %54 ]
  %26 = load ptr, ptr %22, align 8, !tbaa !88
  %27 = getelementptr inbounds %struct.arc, ptr %26, i64 %24
  %28 = getelementptr inbounds %struct.arc, ptr %26, i64 %24, i32 4
  %29 = load i16, ptr %28, align 8, !tbaa !145
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %54, !prof !146

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.arc, ptr %26, i64 %24, i32 7
  %33 = load i64, ptr %32, align 8
  %34 = load i64, ptr %12, align 8, !tbaa !100
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %38, !prof !147

36:                                               ; preds = %31
  %37 = load i32, ptr %27, align 8, !tbaa.struct !85
  br label %44

38:                                               ; preds = %31
  %39 = icmp eq i64 %33, %34
  br i1 %39, label %40, label %54, !prof !148

40:                                               ; preds = %38
  %41 = load i32, ptr %27, align 8
  %42 = load i32, ptr %3, align 8, !tbaa !70
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %54, !prof !149

44:                                               ; preds = %36, %40
  %45 = phi i32 [ %37, %36 ], [ %41, %40 ]
  %46 = getelementptr inbounds i8, ptr %27, i64 8
  %47 = load i64, ptr %46, align 8, !tbaa.struct !150
  %48 = getelementptr inbounds i8, ptr %27, i64 16
  %49 = load ptr, ptr %48, align 8, !tbaa.struct !151
  %50 = getelementptr inbounds i8, ptr %27, i64 24
  %51 = load ptr, ptr %50, align 8, !tbaa.struct !152
  %52 = add nsw i64 %25, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %27, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false), !tbaa.struct !85
  %53 = sext i32 %45 to i64
  tail call void @replace_weaker_arc(ptr noundef nonnull %3, ptr noundef %49, ptr noundef %51, i64 noundef %47, i64 noundef %33, i64 noundef %5, i64 noundef %53) #17
  br label %54

54:                                               ; preds = %23, %38, %40, %44
  %55 = phi i64 [ %25, %23 ], [ %52, %44 ], [ %25, %40 ], [ %25, %38 ]
  %56 = add nuw nsw i64 %24, 1
  %57 = icmp eq i64 %56, %19
  br i1 %57, label %58, label %23, !prof !153, !llvm.loop !154

58:                                               ; preds = %54, %13
  %59 = phi i64 [ %16, %13 ], [ %55, %54 ]
  %60 = add nuw nsw i64 %14, 1
  %61 = add nsw i64 %15, 1
  %62 = srem i64 %61, %7
  %63 = icmp eq i64 %60, %7
  br i1 %63, label %64, label %13, !prof !144, !llvm.loop !155

64:                                               ; preds = %58, %8
  %65 = phi i64 [ 0, %8 ], [ %59, %58 ]
  ret i64 %65
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @price_out_impl(ptr noundef %0) local_unnamed_addr #0 !prof !93 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store i64 0, ptr %2, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 18
  %5 = load i64, ptr %4, align 8, !tbaa !156
  %6 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #20
  %7 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #20
  %8 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #20
  %9 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #20
  %10 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !94
  %12 = icmp slt i64 %11, 15001
  %13 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %14 = load i64, ptr %13, align 8, !tbaa !99
  %15 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 9
  %16 = load i64, ptr %15, align 8, !tbaa !114
  %17 = add nsw i64 %16, %14
  %18 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !115
  %20 = icmp sgt i64 %17, %19
  br i1 %12, label %21, label %30, !prof !96

21:                                               ; preds = %1
  br i1 %20, label %22, label %40

22:                                               ; preds = %21
  %23 = mul nsw i64 %11, %11
  %24 = lshr i64 %23, 1
  %25 = add nsw i64 %14, %24
  %26 = icmp sgt i64 %25, %19
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = tail call i64 @resize_prob(ptr noundef nonnull %0) #17, !range !157
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %39, label %326

30:                                               ; preds = %1
  br i1 %20, label %31, label %40, !prof !158

31:                                               ; preds = %30
  %32 = mul nsw i64 %11, %11
  %33 = lshr i64 %32, 1
  %34 = add nsw i64 %14, %33
  %35 = icmp sgt i64 %34, %19
  br i1 %35, label %36, label %40, !prof !159

36:                                               ; preds = %31
  %37 = tail call i64 @resize_prob(ptr noundef nonnull %0) #17, !range !157
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %326, !prof !159

39:                                               ; preds = %36, %27
  tail call void @refresh_neighbour_lists(ptr noundef nonnull %0, ptr noundef nonnull @getOriginalArcPosition) #16
  br label %40

40:                                               ; preds = %39, %30, %31, %21, %22
  %41 = phi i1 [ true, %22 ], [ true, %21 ], [ true, %31 ], [ true, %30 ], [ false, %39 ]
  %42 = load i64, ptr %10, align 8, !tbaa !94
  %43 = icmp slt i64 %42, 15001
  %44 = select i1 %43, i64 1000, i64 2000, !prof !96
  %45 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 25
  %46 = load ptr, ptr %45, align 8, !tbaa !81
  %47 = icmp eq ptr %46, null
  br i1 %47, label %326, label %48, !prof !96

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 8
  %50 = load i64, ptr %49, align 8, !tbaa !95
  %51 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 4
  %52 = load i64, ptr %51, align 8, !tbaa !115
  store i64 0, ptr %3, align 8, !tbaa !87
  store ptr %46, ptr %9, align 8, !tbaa !88
  store i64 0, ptr %7, align 8, !tbaa !87
  store i64 0, ptr %6, align 8, !tbaa !87
  %53 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 24
  %54 = load ptr, ptr %53, align 8, !tbaa !92
  %55 = tail call noalias ptr @calloc(i64 noundef %50, i64 noundef 8) #21
  store ptr %55, ptr %8, align 8, !tbaa !88
  %56 = icmp sgt i64 %50, 0
  br i1 %56, label %57, label %81, !prof !160

57:                                               ; preds = %48
  %58 = add nuw i64 %50, 1
  %59 = and i64 %58, -2
  %60 = add nsw i64 %50, -1
  %61 = insertelement <2 x i64> poison, i64 %60, i64 0
  %62 = shufflevector <2 x i64> %61, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %63

63:                                               ; preds = %77, %57
  %64 = phi i64 [ 0, %57 ], [ %78, %77 ]
  %65 = phi <2 x i64> [ <i64 0, i64 1>, %57 ], [ %79, %77 ]
  %66 = icmp ule <2 x i64> %65, %62
  %67 = extractelement <2 x i1> %66, i64 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = getelementptr inbounds ptr, ptr %55, i64 %64
  %70 = getelementptr inbounds %struct.arc, ptr %54, i64 %64
  store ptr %70, ptr %69, align 8, !tbaa !88
  br label %71

71:                                               ; preds = %68, %63
  %72 = extractelement <2 x i1> %66, i64 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %71
  %74 = or disjoint i64 %64, 1
  %75 = getelementptr inbounds ptr, ptr %55, i64 %74
  %76 = getelementptr inbounds %struct.arc, ptr %54, i64 %74
  store ptr %76, ptr %75, align 8, !tbaa !88
  br label %77

77:                                               ; preds = %73, %71
  %78 = add i64 %64, 2
  %79 = add <2 x i64> %65, <i64 2, i64 2>
  %80 = icmp eq i64 %78, %59
  br i1 %80, label %81, label %63, !prof !161, !llvm.loop !162

81:                                               ; preds = %77, %48
  %82 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %83 = load ptr, ptr %82, align 8, !tbaa !83
  %84 = icmp sgt i64 %42, 0
  br i1 %84, label %85, label %95, !prof !118

85:                                               ; preds = %81, %91
  %86 = phi i64 [ %92, %91 ], [ 0, %81 ]
  %87 = phi ptr [ %93, %91 ], [ %83, %81 ]
  %88 = getelementptr inbounds %struct.arc, ptr %87, i64 1, i32 4
  %89 = load i16, ptr %88, align 8, !tbaa !145
  %90 = icmp eq i16 %89, -1
  br i1 %90, label %91, label %95, !prof !96

91:                                               ; preds = %85
  %92 = add nuw nsw i64 %86, 1
  %93 = getelementptr inbounds %struct.arc, ptr %87, i64 3
  %94 = icmp eq i64 %92, %42
  br i1 %94, label %249, label %85, !prof !165, !llvm.loop !166

95:                                               ; preds = %85, %81
  %96 = phi ptr [ %83, %81 ], [ %87, %85 ]
  %97 = phi i64 [ 0, %81 ], [ %86, %85 ]
  %98 = icmp slt i64 %97, %42
  br i1 %98, label %99, label %249, !prof !167

99:                                               ; preds = %95
  %100 = add i64 %5, -15
  %101 = getelementptr inbounds %struct.arc, ptr %54, i64 0, i32 7
  br label %102

102:                                              ; preds = %99, %238
  %103 = phi i64 [ 0, %99 ], [ %239, %238 ]
  %104 = phi i64 [ 0, %99 ], [ %240, %238 ]
  %105 = phi i64 [ 0, %99 ], [ %241, %238 ]
  %106 = phi i64 [ %97, %99 ], [ %246, %238 ]
  %107 = phi i64 [ 0, %99 ], [ %245, %238 ]
  %108 = phi i64 [ -1, %99 ], [ %138, %238 ]
  %109 = phi i16 [ 1, %99 ], [ %244, %238 ]
  %110 = phi i16 [ 1, %99 ], [ %243, %238 ]
  %111 = phi ptr [ %96, %99 ], [ %247, %238 ]
  %112 = phi i64 [ 0, %99 ], [ %242, %238 ]
  %113 = phi ptr [ null, %99 ], [ %137, %238 ]
  %114 = icmp eq i16 %109, 0
  br i1 %114, label %115, label %118, !prof !168

115:                                              ; preds = %102
  call void @calculate_max_redcost(ptr poison, ptr noundef nonnull %3, ptr noundef nonnull %8, i64 noundef 1) #17
  %116 = urem i64 %106, %44
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %122, label %124, !prof !169

118:                                              ; preds = %102
  %119 = urem i64 %106, %44
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %124, !prof !169

121:                                              ; preds = %118
  call void @calculate_max_redcost(ptr poison, ptr noundef nonnull %3, ptr noundef nonnull %8, i64 noundef 1) #17
  br label %124

122:                                              ; preds = %115
  call void @calculate_max_redcost(ptr poison, ptr noundef nonnull %3, ptr noundef nonnull %8, i64 noundef 1) #17
  store i64 %112, ptr %7, align 8, !tbaa !87
  %123 = tail call i64 @switch_arcs(ptr poison, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef %54, i32 noundef 0, i64 noundef %50, i64 noundef %52, i64 noundef 1) #17
  store i64 0, ptr %7, align 8, !tbaa !87
  br label %124

124:                                              ; preds = %121, %118, %122, %115
  %125 = phi i64 [ 0, %122 ], [ %103, %115 ], [ %103, %118 ], [ %103, %121 ]
  %126 = phi i64 [ 0, %122 ], [ %104, %115 ], [ %104, %118 ], [ %104, %121 ]
  %127 = phi i64 [ 0, %122 ], [ %112, %115 ], [ %112, %118 ], [ %112, %121 ]
  %128 = getelementptr inbounds %struct.arc, ptr %111, i64 1, i32 4
  %129 = load i16, ptr %128, align 8, !tbaa !145
  %130 = icmp eq i16 %129, -1
  br i1 %130, label %136, label %131, !prof !170

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.arc, ptr %111, i64 1
  %133 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #21
  %134 = getelementptr inbounds %struct.list_elem, ptr %133, i64 0, i32 1
  store ptr %113, ptr %134, align 8, !tbaa !171
  store ptr %132, ptr %133, align 8, !tbaa !173
  %135 = add nsw i64 %108, 1
  br label %136

136:                                              ; preds = %131, %124
  %137 = phi ptr [ %133, %131 ], [ %113, %124 ]
  %138 = phi i64 [ %135, %131 ], [ %108, %124 ]
  %139 = getelementptr inbounds %struct.arc, ptr %111, i64 0, i32 4
  %140 = load i16, ptr %139, align 8, !tbaa !145
  %141 = icmp eq i16 %140, -1
  br i1 %141, label %142, label %144, !prof !170

142:                                              ; preds = %136
  %143 = add nsw i64 %138, %107
  br label %238

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.arc, ptr %111, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !126
  %147 = getelementptr inbounds %struct.node, ptr %146, i64 0, i32 13
  %148 = load i32, ptr %147, align 4, !tbaa !174
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.arc, ptr %111, i64 0, i32 8
  %151 = load i64, ptr %150, align 8, !tbaa !127
  %152 = sub i64 %100, %151
  %153 = add i64 %152, %149
  %154 = getelementptr inbounds %struct.list_elem, ptr %137, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !171
  %156 = icmp eq ptr %155, null
  br i1 %156, label %238, label %157, !prof !175

157:                                              ; preds = %144
  %158 = load i64, ptr %3, align 8
  br label %159

159:                                              ; preds = %157, %227
  %160 = phi i64 [ %125, %157 ], [ %228, %227 ]
  %161 = phi i64 [ %126, %157 ], [ %229, %227 ]
  %162 = phi i64 [ %105, %157 ], [ %230, %227 ]
  %163 = phi ptr [ %155, %157 ], [ %236, %227 ]
  %164 = phi i64 [ %107, %157 ], [ %235, %227 ]
  %165 = phi i16 [ %109, %157 ], [ %233, %227 ]
  %166 = phi i16 [ %110, %157 ], [ %232, %227 ]
  %167 = phi i64 [ %127, %157 ], [ %231, %227 ]
  br label %168

168:                                              ; preds = %159, %181
  %169 = phi ptr [ %163, %159 ], [ %184, %181 ]
  %170 = phi i64 [ %164, %159 ], [ %183, %181 ]
  %171 = load ptr, ptr %169, align 8, !tbaa !173
  %172 = getelementptr inbounds %struct.arc, ptr %171, i64 0, i32 2
  %173 = load ptr, ptr %172, align 8, !tbaa !125
  %174 = getelementptr inbounds %struct.node, ptr %173, i64 0, i32 13
  %175 = load i32, ptr %174, align 4, !tbaa !174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.arc, ptr %171, i64 0, i32 8
  %178 = load i64, ptr %177, align 8, !tbaa !127
  %179 = add nsw i64 %178, %176
  %180 = icmp sgt i64 %179, %153
  br i1 %180, label %181, label %186, !prof !176

181:                                              ; preds = %168
  %182 = getelementptr inbounds %struct.list_elem, ptr %169, i64 0, i32 1
  %183 = add nsw i64 %170, 1
  %184 = load ptr, ptr %182, align 8, !tbaa !171
  %185 = icmp eq ptr %184, null
  br i1 %185, label %238, label %168, !prof !177, !llvm.loop !178

186:                                              ; preds = %168
  %187 = load i64, ptr %173, align 8, !tbaa !179
  %188 = load i64, ptr %146, align 8, !tbaa !179
  %189 = sub i64 %188, %187
  %190 = add i64 %189, 30
  %191 = icmp slt i64 %190, 0
  br i1 %191, label %192, label %227, !prof !180

192:                                              ; preds = %186
  %193 = icmp slt i64 %162, %50
  br i1 %193, label %194, label %196, !prof !181

194:                                              ; preds = %192
  tail call void @insert_new_arc(ptr noundef %54, i64 noundef %162, ptr noundef nonnull %173, ptr noundef nonnull %146, i64 noundef 30, i64 noundef %190, i64 poison, i64 noundef %170) #17
  %195 = add nsw i64 %162, 1
  store i64 %195, ptr %6, align 8, !tbaa !87
  br label %219

196:                                              ; preds = %192
  %197 = load i64, ptr %101, align 8, !tbaa !100
  %198 = icmp sgt i64 %197, %190
  br i1 %198, label %199, label %207, !prof !182

199:                                              ; preds = %196
  %200 = icmp eq i16 %166, 0
  br i1 %200, label %202, label %201, !prof !183

201:                                              ; preds = %199
  br label %202

202:                                              ; preds = %201, %199
  %203 = phi i16 [ 0, %201 ], [ %165, %199 ]
  %204 = getelementptr inbounds %struct.arc, ptr %46, i64 %161
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %204, ptr noundef nonnull align 8 dereferenceable(72) %54, i64 72, i1 false), !tbaa.struct !85
  %205 = add nsw i64 %161, 1
  store i64 %205, ptr %7, align 8, !tbaa !87
  %206 = add nsw i64 %167, 1
  tail call void @replace_weaker_arc(ptr noundef nonnull %54, ptr noundef nonnull %173, ptr noundef nonnull %146, i64 noundef 30, i64 noundef %190, i64 noundef %50, i64 noundef %170) #17
  br label %219

207:                                              ; preds = %196
  %208 = icmp slt i64 %190, %158
  br i1 %208, label %209, label %219, !prof !184

209:                                              ; preds = %207
  %210 = add nsw i64 %161, 1
  store i64 %210, ptr %7, align 8, !tbaa !87
  %211 = getelementptr inbounds %struct.arc, ptr %46, i64 %161
  %212 = getelementptr inbounds %struct.arc, ptr %46, i64 %161, i32 2
  store ptr %173, ptr %212, align 8, !tbaa !125
  %213 = getelementptr inbounds %struct.arc, ptr %46, i64 %161, i32 3
  store ptr %146, ptr %213, align 8, !tbaa !126
  %214 = getelementptr inbounds %struct.arc, ptr %46, i64 %161, i32 8
  store i64 30, ptr %214, align 8, !tbaa !127
  %215 = getelementptr inbounds %struct.arc, ptr %46, i64 %161, i32 1
  store i64 30, ptr %215, align 8, !tbaa !128
  %216 = getelementptr inbounds %struct.arc, ptr %46, i64 %161, i32 7
  store i64 %190, ptr %216, align 8, !tbaa !100
  %217 = trunc i64 %170 to i32
  store i32 %217, ptr %211, align 8, !tbaa !70
  %218 = add nsw i64 %167, 1
  br label %219

219:                                              ; preds = %202, %209, %207, %194
  %220 = phi i64 [ %160, %194 ], [ %205, %202 ], [ %210, %209 ], [ %160, %207 ]
  %221 = phi i64 [ %195, %194 ], [ %162, %202 ], [ %162, %209 ], [ %162, %207 ]
  %222 = phi i64 [ %167, %194 ], [ %206, %202 ], [ %218, %209 ], [ %167, %207 ]
  %223 = phi i16 [ %166, %194 ], [ 0, %202 ], [ %166, %209 ], [ %166, %207 ]
  %224 = phi i16 [ %165, %194 ], [ %203, %202 ], [ %165, %209 ], [ %165, %207 ]
  %225 = icmp eq i64 %220, %52
  br i1 %225, label %226, label %227, !prof !185

226:                                              ; preds = %219
  store i64 0, ptr %7, align 8, !tbaa !87
  br label %227

227:                                              ; preds = %219, %226, %186
  %228 = phi i64 [ 0, %226 ], [ %220, %219 ], [ %160, %186 ]
  %229 = phi i64 [ 0, %226 ], [ %220, %219 ], [ %161, %186 ]
  %230 = phi i64 [ %221, %226 ], [ %221, %219 ], [ %162, %186 ]
  %231 = phi i64 [ %222, %226 ], [ %222, %219 ], [ %167, %186 ]
  %232 = phi i16 [ %223, %226 ], [ %223, %219 ], [ %166, %186 ]
  %233 = phi i16 [ %224, %226 ], [ %224, %219 ], [ %165, %186 ]
  %234 = getelementptr inbounds %struct.list_elem, ptr %169, i64 0, i32 1
  %235 = add nsw i64 %170, 1
  %236 = load ptr, ptr %234, align 8, !tbaa !171
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %159, !prof !186, !llvm.loop !178

238:                                              ; preds = %227, %181, %144, %142
  %239 = phi i64 [ %125, %142 ], [ %125, %144 ], [ %160, %181 ], [ %228, %227 ]
  %240 = phi i64 [ %126, %142 ], [ %126, %144 ], [ %161, %181 ], [ %229, %227 ]
  %241 = phi i64 [ %105, %142 ], [ %105, %144 ], [ %162, %181 ], [ %230, %227 ]
  %242 = phi i64 [ %127, %142 ], [ %127, %144 ], [ %167, %181 ], [ %231, %227 ]
  %243 = phi i16 [ %110, %142 ], [ %110, %144 ], [ %166, %181 ], [ %232, %227 ]
  %244 = phi i16 [ %109, %142 ], [ %109, %144 ], [ %165, %181 ], [ %233, %227 ]
  %245 = phi i64 [ %143, %142 ], [ %107, %144 ], [ %183, %181 ], [ %235, %227 ]
  %246 = add i64 %106, 1
  %247 = getelementptr inbounds %struct.arc, ptr %111, i64 3
  %248 = icmp eq i64 %246, %42
  br i1 %248, label %250, label %102, !prof !187, !llvm.loop !188

249:                                              ; preds = %91, %95
  store i64 0, ptr %7, align 8, !tbaa !87
  br label %252

250:                                              ; preds = %238
  %251 = icmp eq i16 %244, 0
  store i64 %242, ptr %7, align 8, !tbaa !87
  br i1 %251, label %257, label %252, !prof !189

252:                                              ; preds = %257, %249, %250
  %253 = phi ptr [ null, %249 ], [ %137, %250 ], [ %137, %257 ]
  %254 = getelementptr inbounds %struct.list_elem, ptr %253, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !171
  %256 = icmp eq ptr %255, null
  br i1 %256, label %266, label %260, !prof !190

257:                                              ; preds = %250, %257
  %258 = tail call i64 @switch_arcs(ptr poison, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef %54, i32 noundef 0, i64 noundef %50, i64 noundef %52, i64 noundef 1) #17
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %252, label %257, !prof !191

260:                                              ; preds = %252, %260
  %261 = phi ptr [ %264, %260 ], [ %255, %252 ]
  %262 = phi ptr [ %261, %260 ], [ %253, %252 ]
  tail call void @free(ptr noundef nonnull %262) #16
  %263 = getelementptr inbounds %struct.list_elem, ptr %261, i64 0, i32 1
  %264 = load ptr, ptr %263, align 8, !tbaa !171
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %260, !prof !192, !llvm.loop !193

266:                                              ; preds = %260, %252
  %267 = phi ptr [ %253, %252 ], [ %261, %260 ]
  tail call void @free(ptr noundef nonnull %267) #16
  %268 = load ptr, ptr %8, align 8, !tbaa !88
  %269 = load i64, ptr %6, align 8, !tbaa !87
  tail call void @spec_qsort(ptr noundef %268, i64 noundef %269, i64 noundef 8, ptr noundef nonnull @arc_compare) #16
  call void @marc_arcs(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %8) #17
  tail call void @free(ptr noundef %268) #16
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %312, label %271, !prof !158

271:                                              ; preds = %266
  %272 = load ptr, ptr %53, align 8, !tbaa !92
  %273 = getelementptr inbounds %struct.arc, ptr %272, i64 %269
  br i1 %41, label %288, label %274, !prof !194

274:                                              ; preds = %271, %285
  %275 = phi ptr [ %286, %285 ], [ %272, %271 ]
  %276 = getelementptr inbounds %struct.arc, ptr %275, i64 0, i32 7
  %277 = load i64, ptr %276, align 8, !tbaa !100
  %278 = icmp eq i64 %277, 1
  br i1 %278, label %279, label %285, !prof !195

279:                                              ; preds = %274
  store i64 0, ptr %276, align 8, !tbaa !100
  %280 = getelementptr inbounds %struct.arc, ptr %275, i64 0, i32 4
  store i16 1, ptr %280, align 8, !tbaa !145
  %281 = load i32, ptr %275, align 8, !tbaa !70
  %282 = sext i32 %281 to i64
  %283 = tail call i64 @getArcPosition(ptr noundef %0, i64 noundef %282) #16
  %284 = getelementptr inbounds %struct.arc, ptr %46, i64 %283
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %284, ptr noundef nonnull align 8 dereferenceable(72) %275, i64 72, i1 false), !tbaa.struct !85
  br label %285

285:                                              ; preds = %274, %279
  %286 = getelementptr inbounds %struct.arc, ptr %275, i64 1
  %287 = icmp eq ptr %286, %273
  br i1 %287, label %312, label %274, !prof !196, !llvm.loop !197

288:                                              ; preds = %271, %309
  %289 = phi ptr [ %310, %309 ], [ %272, %271 ]
  %290 = getelementptr inbounds %struct.arc, ptr %289, i64 0, i32 7
  %291 = load i64, ptr %290, align 8, !tbaa !100
  %292 = icmp eq i64 %291, 1
  br i1 %292, label %293, label %309, !prof !198

293:                                              ; preds = %288
  store i64 0, ptr %290, align 8, !tbaa !100
  %294 = getelementptr inbounds %struct.arc, ptr %289, i64 0, i32 4
  store i16 1, ptr %294, align 8, !tbaa !145
  %295 = getelementptr inbounds %struct.arc, ptr %289, i64 0, i32 2
  %296 = load ptr, ptr %295, align 8, !tbaa !125
  %297 = getelementptr inbounds %struct.node, ptr %296, i64 0, i32 7
  %298 = load ptr, ptr %297, align 8, !tbaa !76
  %299 = getelementptr inbounds %struct.arc, ptr %289, i64 0, i32 5
  store ptr %298, ptr %299, align 8, !tbaa !199
  store ptr %289, ptr %297, align 8, !tbaa !76
  %300 = getelementptr inbounds %struct.arc, ptr %289, i64 0, i32 3
  %301 = load ptr, ptr %300, align 8, !tbaa !126
  %302 = getelementptr inbounds %struct.node, ptr %301, i64 0, i32 8
  %303 = load ptr, ptr %302, align 8, !tbaa !74
  %304 = getelementptr inbounds %struct.arc, ptr %289, i64 0, i32 6
  store ptr %303, ptr %304, align 8, !tbaa !200
  store ptr %289, ptr %302, align 8, !tbaa !74
  %305 = load i32, ptr %289, align 8, !tbaa !70
  %306 = sext i32 %305 to i64
  %307 = tail call i64 @getArcPosition(ptr noundef %0, i64 noundef %306) #16
  %308 = getelementptr inbounds %struct.arc, ptr %46, i64 %307
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %308, ptr noundef nonnull align 8 dereferenceable(72) %289, i64 72, i1 false), !tbaa.struct !85
  br label %309

309:                                              ; preds = %288, %293
  %310 = getelementptr inbounds %struct.arc, ptr %289, i64 1
  %311 = icmp eq ptr %310, %273
  br i1 %311, label %312, label %288, !prof !201, !llvm.loop !202

312:                                              ; preds = %285, %309, %266
  %313 = load i64, ptr %2, align 8, !tbaa !87
  %314 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 7
  %315 = load i64, ptr %314, align 8, !tbaa !203
  %316 = add nsw i64 %315, %313
  store i64 %316, ptr %314, align 8, !tbaa !203
  %317 = load i64, ptr %49, align 8, !tbaa !95
  %318 = sub nsw i64 %317, %313
  store i64 %318, ptr %49, align 8, !tbaa !95
  %319 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %320 = load i64, ptr %319, align 8, !tbaa !99
  %321 = tail call i64 @refreshPositions(ptr noundef %0, ptr noundef nonnull @getArcPosition, i64 noundef %320) #17
  %322 = load i64, ptr %319, align 8, !tbaa !99
  %323 = add nsw i64 %322, %313
  store i64 %323, ptr %319, align 8, !tbaa !99
  %324 = load ptr, ptr %82, align 8, !tbaa !83
  %325 = getelementptr inbounds %struct.arc, ptr %324, i64 %323
  store ptr %325, ptr %53, align 8, !tbaa !92
  tail call void @free(ptr noundef %6) #16
  tail call void @free(ptr noundef %7) #16
  tail call void @free(ptr noundef %8) #16
  tail call void @free(ptr noundef %9) #16
  br label %326

326:                                              ; preds = %40, %36, %27, %312
  %327 = phi i64 [ %313, %312 ], [ -1, %27 ], [ -1, %36 ], [ -1, %40 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret i64 %327
}

; Function Attrs: optsize
declare void @refresh_neighbour_lists(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare i64 @getOriginalArcPosition(ptr noundef, i64 noundef) #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare i64 @getArcPosition(ptr noundef, i64 noundef) #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @suspend_impl(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 !prof !204 {
  %4 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 32
  store i64 4000, ptr %4, align 8, !tbaa !103
  %5 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !99
  %7 = add nsw i64 %6, -1
  %8 = sdiv i64 %7, 4000
  %9 = add nsw i64 %8, 1
  %10 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 30
  store i64 %9, ptr %10, align 8, !tbaa !104
  %11 = srem i64 %6, 4000
  %12 = add nsw i64 %11, -4000
  %13 = add nsw i64 %12, %9
  %14 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 31
  store i64 %13, ptr %14, align 8, !tbaa !107
  %15 = icmp slt i64 %13, 0
  br i1 %15, label %16, label %23, !prof !205

16:                                               ; preds = %3, %16
  %17 = phi i64 [ %20, %16 ], [ 4000, %3 ]
  %18 = phi i64 [ %19, %16 ], [ %13, %3 ]
  %19 = add nsw i64 %18, %9
  %20 = add nsw i64 %17, -1
  %21 = icmp slt i64 %19, 0
  br i1 %21, label %16, label %22, !prof !206, !llvm.loop !207

22:                                               ; preds = %16
  store i64 %19, ptr %14, align 8, !tbaa !107
  store i64 %20, ptr %4, align 8, !tbaa !103
  br label %23

23:                                               ; preds = %22, %3
  %24 = icmp eq i64 %2, 0
  %25 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 7
  %26 = load i64, ptr %25, align 8, !tbaa !203
  br i1 %24, label %27, label %77, !prof !208

27:                                               ; preds = %23
  %28 = icmp sgt i64 %26, 0
  br i1 %28, label %29, label %114, !prof !205

29:                                               ; preds = %27
  %30 = sub nsw i64 %6, %26
  %31 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  br label %32

32:                                               ; preds = %29, %70
  %33 = phi i64 [ %30, %29 ], [ %73, %70 ]
  %34 = phi i64 [ %30, %29 ], [ %74, %70 ]
  %35 = phi i64 [ 0, %29 ], [ %72, %70 ]
  %36 = load ptr, ptr %31, align 8, !tbaa !83
  %37 = tail call i64 @getArcPosition(ptr noundef nonnull %0, i64 noundef %34) #16
  %38 = getelementptr inbounds %struct.arc, ptr %36, i64 %37
  %39 = getelementptr inbounds %struct.arc, ptr %36, i64 %37, i32 4
  %40 = load i16, ptr %39, align 8, !tbaa !145
  switch i16 %40, label %62 [
    i16 1, label %41
    i16 0, label %52
  ], !prof !209

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.arc, ptr %36, i64 %37, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !128
  %44 = getelementptr inbounds %struct.arc, ptr %36, i64 %37, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !125
  %46 = load i64, ptr %45, align 8, !tbaa !179
  %47 = sub i64 %43, %46
  %48 = getelementptr inbounds %struct.arc, ptr %36, i64 %37, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !126
  %50 = load i64, ptr %49, align 8, !tbaa !179
  %51 = add nsw i64 %47, %50
  br label %62

52:                                               ; preds = %32
  %53 = getelementptr inbounds %struct.arc, ptr %36, i64 %37, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !125
  %55 = getelementptr inbounds %struct.node, ptr %54, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !66
  %57 = icmp eq ptr %56, %38
  br i1 %57, label %62, label %58, !prof !210

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.arc, ptr %36, i64 %37, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !126
  %61 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 6
  store ptr %38, ptr %61, align 8, !tbaa !66
  br label %62

62:                                               ; preds = %32, %58, %52, %41
  %63 = phi i64 [ %51, %41 ], [ -2, %52 ], [ -2, %58 ], [ -2, %32 ]
  %64 = icmp sgt i64 %63, %1
  br i1 %64, label %65, label %67, !prof !211

65:                                               ; preds = %62
  %66 = add nsw i64 %35, 1
  br label %70

67:                                               ; preds = %62
  %68 = trunc i64 %33 to i32
  %69 = add nsw i64 %33, 1
  br label %70

70:                                               ; preds = %65, %67
  %71 = phi i32 [ -1, %65 ], [ %68, %67 ]
  %72 = phi i64 [ %66, %65 ], [ %35, %67 ]
  %73 = phi i64 [ %33, %65 ], [ %69, %67 ]
  store i32 %71, ptr %38, align 8
  %74 = add nsw i64 %34, 1
  %75 = load i64, ptr %5, align 8, !tbaa !99
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %32, label %77, !prof !212, !llvm.loop !213

77:                                               ; preds = %70, %23
  %78 = phi i64 [ %6, %23 ], [ %75, %70 ]
  %79 = phi i64 [ %26, %23 ], [ %72, %70 ]
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %114, label %81, !prof !214

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 7
  %83 = load i64, ptr %82, align 8, !tbaa !203
  %84 = sub nsw i64 %83, %79
  store i64 %84, ptr %82, align 8, !tbaa !203
  %85 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 8
  %86 = load i64, ptr %85, align 8, !tbaa !95
  %87 = add nsw i64 %86, %79
  store i64 %87, ptr %85, align 8, !tbaa !95
  store i64 4000, ptr %4, align 8, !tbaa !103
  %88 = xor i64 %79, -1
  %89 = add i64 %78, %88
  %90 = sdiv i64 %89, 4000
  %91 = add nsw i64 %90, 1
  store i64 %91, ptr %10, align 8, !tbaa !104
  %92 = sub nsw i64 %78, %79
  %93 = srem i64 %92, 4000
  %94 = icmp eq i64 %93, 0
  %95 = add nsw i64 %93, -4000
  %96 = select i1 %94, i64 0, i64 %95, !prof !215
  %97 = add nsw i64 %96, %91
  store i64 %97, ptr %14, align 8, !tbaa !107
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %106, !prof !205

99:                                               ; preds = %81, %99
  %100 = phi i64 [ %103, %99 ], [ 4000, %81 ]
  %101 = phi i64 [ %102, %99 ], [ %97, %81 ]
  %102 = add nsw i64 %101, %91
  %103 = add nsw i64 %100, -1
  %104 = icmp slt i64 %102, 0
  br i1 %104, label %99, label %105, !prof !216, !llvm.loop !217

105:                                              ; preds = %99
  store i64 %102, ptr %14, align 8, !tbaa !107
  store i64 %103, ptr %4, align 8, !tbaa !103
  br label %106

106:                                              ; preds = %105, %81
  %107 = tail call i64 @refreshPositions(ptr noundef nonnull %0, ptr noundef nonnull @getOriginalArcPosition, i64 noundef %78) #17
  %108 = load i64, ptr %5, align 8, !tbaa !99
  %109 = sub nsw i64 %108, %79
  store i64 %109, ptr %5, align 8, !tbaa !99
  %110 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 24
  %111 = load ptr, ptr %110, align 8, !tbaa !92
  %112 = sub i64 0, %79
  %113 = getelementptr inbounds %struct.arc, ptr %111, i64 %112
  store ptr %113, ptr %110, align 8, !tbaa !92
  tail call void @refresh_neighbour_lists(ptr noundef nonnull %0, ptr noundef nonnull @getOriginalArcPosition) #16
  br label %114

114:                                              ; preds = %27, %106, %77
  %115 = phi i64 [ %79, %106 ], [ 0, %77 ], [ 0, %27 ]
  ret i64 %115
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize allocsize(1) }
attributes #19 = { nounwind }
attributes #20 = { nounwind optsize allocsize(0) }
attributes #21 = { nounwind optsize allocsize(0,1) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!55}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 142077978206}
!4 = !{!"MaxCount", i64 28590381975}
!5 = !{!"MaxInternalCount", i64 14978154134}
!6 = !{!"MaxFunctionCount", i64 28590381975}
!7 = !{!"NumCounts", i64 220}
!8 = !{!"NumFunctions", i64 31}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 28590381975, i32 1}
!14 = !{i32 100000, i64 28590381975, i32 1}
!15 = !{i32 200000, i64 28590381975, i32 1}
!16 = !{i32 300000, i64 17552692142, i32 2}
!17 = !{i32 400000, i64 14978154134, i32 3}
!18 = !{i32 500000, i64 12636872640, i32 4}
!19 = !{i32 600000, i64 11748475564, i32 5}
!20 = !{i32 700000, i64 9740370976, i32 7}
!21 = !{i32 800000, i64 2641604201, i32 10}
!22 = !{i32 900000, i64 1154233495, i32 16}
!23 = !{i32 950000, i64 353949924, i32 30}
!24 = !{i32 990000, i64 202655375, i32 46}
!25 = !{i32 999000, i64 28900000, i32 57}
!26 = !{i32 999900, i64 1101517, i32 82}
!27 = !{i32 999990, i64 864162, i32 94}
!28 = !{i32 999999, i64 50268, i32 104}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!36 = !{ptr @refreshPositions, ptr @refreshArcPointers, i64 80}
!37 = !{ptr @resize_prob, ptr @realloc, i64 2}
!38 = !{ptr @switch_arcs, ptr @replace_weaker_arc, i64 234}
!39 = !{ptr @price_out_impl, ptr @malloc, i64 160}
!40 = !{ptr @price_out_impl, ptr @resize_prob, i64 1}
!41 = !{ptr @price_out_impl, ptr @refresh_neighbour_lists, i64 1}
!42 = !{ptr @price_out_impl, ptr @calloc, i64 949419}
!43 = !{ptr @price_out_impl, ptr @calculate_max_redcost, i64 61478}
!44 = !{ptr @price_out_impl, ptr @switch_arcs, i64 44}
!45 = !{ptr @price_out_impl, ptr @insert_new_arc, i64 3614777990}
!46 = !{ptr @price_out_impl, ptr @replace_weaker_arc, i64 1133274829}
!47 = !{ptr @price_out_impl, ptr @free, i64 944341}
!48 = !{ptr @price_out_impl, ptr @spec_qsort, i64 38}
!49 = !{ptr @price_out_impl, ptr @marc_arcs, i64 38}
!50 = !{ptr @price_out_impl, ptr @getArcPosition, i64 307884290}
!51 = !{ptr @price_out_impl, ptr @refreshPositions, i64 38}
!52 = !{ptr @suspend_impl, ptr @getArcPosition, i64 327413112}
!53 = !{ptr @suspend_impl, ptr @refreshPositions, i64 38}
!54 = !{ptr @suspend_impl, ptr @refresh_neighbour_lists, i64 38}
!55 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!56 = !{!"function_entry_count", i64 80}
!57 = !{!58, !61, i64 400}
!58 = !{!"network", !59, i64 0, !59, i64 200, !61, i64 400, !61, i64 408, !61, i64 416, !61, i64 424, !61, i64 432, !61, i64 440, !61, i64 448, !61, i64 456, !61, i64 464, !61, i64 472, !61, i64 480, !61, i64 488, !61, i64 496, !61, i64 504, !61, i64 512, !61, i64 520, !61, i64 528, !62, i64 536, !61, i64 544, !63, i64 552, !63, i64 560, !63, i64 568, !63, i64 576, !63, i64 584, !63, i64 592, !63, i64 600, !61, i64 608, !61, i64 616, !61, i64 624, !61, i64 632, !61, i64 640}
!59 = !{!"omnipotent char", !60, i64 0}
!60 = !{!"Simple C/C++ TBAA"}
!61 = !{!"long", !59, i64 0}
!62 = !{!"double", !59, i64 0}
!63 = !{!"any pointer", !59, i64 0}
!64 = !{!"branch_weights", i32 1, i32 161}
!65 = !{!58, !63, i64 552}
!66 = !{!67, !63, i64 48}
!67 = !{!"node", !61, i64 0, !68, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !61, i64 80, !61, i64 88, !68, i64 96, !68, i64 100}
!68 = !{!"int", !59, i64 0}
!69 = !{!"branch_weights", i32 81, i32 4022001}
!70 = !{!71, !68, i64 0}
!71 = !{!"arc", !68, i64 0, !61, i64 8, !63, i64 16, !63, i64 24, !72, i64 32, !63, i64 40, !63, i64 48, !61, i64 56, !61, i64 64}
!72 = !{!"short", !59, i64 0}
!73 = !{!"branch_weights", i32 4021673, i32 329}
!74 = !{!67, !63, i64 64}
!75 = !{!"branch_weights", i32 3745493, i32 276509}
!76 = !{!67, !63, i64 56}
!77 = !{!"branch_weights", i32 3677211, i32 344791}
!78 = !{!"branch_weights", i32 8044001, i32 161}
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!58, !63, i64 584}
!82 = !{!"branch_weights", i32 161, i32 1}
!83 = !{!58, !63, i64 568}
!84 = !{!"branch_weights", i32 341752740, i32 24394371}
!85 = !{i64 0, i64 4, !86, i64 8, i64 8, !87, i64 16, i64 8, !88, i64 24, i64 8, !88, i64 32, i64 2, !89, i64 40, i64 8, !88, i64 48, i64 8, !88, i64 56, i64 8, !87, i64 64, i64 8, !87}
!86 = !{!68, !68, i64 0}
!87 = !{!61, !61, i64 0}
!88 = !{!63, !63, i64 0}
!89 = !{!72, !72, i64 0}
!90 = !{!"branch_weights", i32 161, i32 732294059}
!91 = distinct !{!91, !80}
!92 = !{!58, !63, i64 576}
!93 = !{!"function_entry_count", i64 40}
!94 = !{!58, !61, i64 408}
!95 = !{!58, !61, i64 448}
!96 = !{!"branch_weights", i32 1, i32 41}
!97 = !{!"branch_weights", i32 341799653, i32 33}
!98 = !{!"branch_weights", i32 163, i32 1}
!99 = !{!58, !61, i64 424}
!100 = !{!71, !61, i64 56}
!101 = !{!"branch_weights", i32 1367198417, i32 163}
!102 = distinct !{!102, !80}
!103 = !{!58, !61, i64 640}
!104 = !{!58, !61, i64 624}
!105 = !{!"branch_weights", i32 2041, i32 163}
!106 = distinct !{!106, !80}
!107 = !{!58, !61, i64 632}
!108 = !{!"function_entry_count", i64 9499321622}
!109 = !{!"implicit.c:arc_compare"}
!110 = !{!"branch_weights", i32 472321274, i32 -17627758}
!111 = !{!"branch_weights", i32 483463353, i32 -501091110}
!112 = !{!"branch_weights", i32 -619611515, i32 -382570705}
!113 = !{!"function_entry_count", i64 1}
!114 = !{!58, !61, i64 456}
!115 = !{!58, !61, i64 416}
!116 = !{!"branch_weights", i32 1, i32 2}
!117 = !{!58, !63, i64 560}
!118 = !{!"branch_weights", i32 127, i32 1}
!119 = !{!"branch_weights", i32 1, i32 50276}
!120 = !{!67, !63, i64 24}
!121 = !{!"branch_weights", i32 8, i32 50269}
!122 = !{!"branch_weights", i32 3217537, i32 127}
!123 = distinct !{!123, !80}
!124 = !{!"function_entry_count", i64 368380674}
!125 = !{!71, !63, i64 16}
!126 = !{!71, !63, i64 24}
!127 = !{!71, !61, i64 64}
!128 = !{!71, !61, i64 8}
!129 = !{!"branch_weights", i32 1, i32 196}
!130 = !{!"branch_weights", i32 330000317, i32 368380675}
!131 = !{!"branch_weights", i32 196, i32 698380599}
!132 = distinct !{!132, !80}
!133 = !{!"function_entry_count", i64 115491851}
!134 = !{!"branch_weights", i32 1, i32 46662429}
!135 = !{!"branch_weights", i32 -1688261592, i32 115491852}
!136 = !{!"branch_weights", i32 -1734924021, i32 46662430}
!137 = !{!"branch_weights", i32 46662429, i32 -1666094599}
!138 = distinct !{!138, !80}
!139 = !{!"function_entry_count", i64 65109}
!140 = !{!"branch_weights", i32 65109, i32 1}
!141 = !{!"branch_weights", i32 1, i32 65110}
!142 = distinct !{!142, !80}
!143 = !{!"function_entry_count", i64 44}
!144 = !{!"branch_weights", i32 179, i32 1}
!145 = !{!71, !72, i64 32}
!146 = !{!"branch_weights", i32 301632950, i32 34583882}
!147 = !{!"branch_weights", i32 1, i32 301632950}
!148 = !{!"branch_weights", i32 31395833, i32 270237118}
!149 = !{!"branch_weights", i32 238, i32 31395596}
!150 = !{i64 0, i64 8, !87, i64 8, i64 8, !88, i64 16, i64 8, !88, i64 24, i64 2, !89, i64 32, i64 8, !88, i64 40, i64 8, !88, i64 48, i64 8, !87, i64 56, i64 8, !87}
!151 = !{i64 0, i64 8, !88, i64 8, i64 8, !88, i64 16, i64 2, !89, i64 24, i64 8, !88, i64 32, i64 8, !88, i64 40, i64 8, !87, i64 48, i64 8, !87}
!152 = !{i64 0, i64 8, !88, i64 8, i64 2, !89, i64 16, i64 8, !88, i64 24, i64 8, !88, i64 32, i64 8, !87, i64 40, i64 8, !87}
!153 = !{!"branch_weights", i32 179, i32 1344867145}
!154 = distinct !{!154, !80}
!155 = distinct !{!155, !80}
!156 = !{!58, !61, i64 528}
!157 = !{i64 -1, i64 1}
!158 = !{!"branch_weights", i32 2, i32 40}
!159 = !{!"branch_weights", i32 2, i32 1}
!160 = !{!"branch_weights", i32 81, i32 1}
!161 = !{!"branch_weights", i32 81, i32 1154233395}
!162 = distinct !{!162, !80, !163, !164}
!163 = !{!"llvm.loop.isvectorized", i32 1}
!164 = !{!"llvm.loop.unroll.runtime.disable"}
!165 = !{!"branch_weights", i32 127, i32 5121}
!166 = distinct !{!166, !80}
!167 = !{!"branch_weights", i32 -2147483648, i32 0}
!168 = !{!"branch_weights", i32 64590, i32 940892}
!169 = !{!"branch_weights", i32 521, i32 1004961}
!170 = !{!"branch_weights", i32 1, i32 1005481}
!171 = !{!172, !63, i64 8}
!172 = !{!"list_elem", !63, i64 0, !63, i64 8}
!173 = !{!172, !63, i64 0}
!174 = !{!67, !68, i64 100}
!175 = !{!"branch_weights", i32 1, i32 127}
!176 = !{!"branch_weights", i32 254917814, i32 -337594229}
!177 = !{!"branch_weights", i32 335160, i32 -83011575}
!178 = distinct !{!178, !80}
!179 = !{!67, !61, i64 0}
!180 = !{!"branch_weights", i32 222405166, i32 -559999394}
!181 = !{!"branch_weights", i32 368380675, i32 298834822}
!182 = !{!"branch_weights", i32 115491615, i32 183343208}
!183 = !{!"branch_weights", i32 115491609, i32 7}
!184 = !{!"branch_weights", i32 183343208, i32 1}
!185 = !{!"branch_weights", i32 1, i32 667215496}
!186 = !{!"branch_weights", i32 127, i32 42900353}
!187 = !{!"branch_weights", i32 163, i32 4021761}
!188 = distinct !{!188, !80}
!189 = !{!"branch_weights", i32 697367381, i32 1450116267}
!190 = !{!"branch_weights", i32 1, i32 163}
!191 = !{!"branch_weights", i32 13, i32 0}
!192 = !{!"branch_weights", i32 163, i32 4021601}
!193 = distinct !{!193, !80}
!194 = !{!"branch_weights", i32 39, i32 2}
!195 = !{!"branch_weights", i32 24900001, i32 4000001}
!196 = !{!"branch_weights", i32 127, i32 1849599937}
!197 = distinct !{!197, !80}
!198 = !{!"branch_weights", i32 316899645, i32 22581031}
!199 = !{!71, !63, i64 40}
!200 = !{!71, !63, i64 48}
!201 = !{!"branch_weights", i32 155, i32 1357922545}
!202 = distinct !{!202, !80}
!203 = !{!58, !61, i64 440}
!204 = !{!"function_entry_count", i64 39}
!205 = !{!"branch_weights", i32 159, i32 1}
!206 = !{!"branch_weights", i32 2029, i32 159}
!207 = distinct !{!207, !80}
!208 = !{!"branch_weights", i32 40, i32 1}
!209 = !{!"branch_weights", i32 6, i32 -1992001722, i32 11903928}
!210 = !{!"branch_weights", i32 902344, i32 864163}
!211 = !{!"branch_weights", i32 341752740, i32 1766506}
!212 = !{!"branch_weights", i32 1374076821, i32 159}
!213 = distinct !{!213, !80}
!214 = !{!"branch_weights", i32 39524239, i32 2107959409}
!215 = !{!"branch_weights", i32 1, i32 40}
!216 = !{!"branch_weights", i32 2869, i32 159}
!217 = distinct !{!217, !80}
