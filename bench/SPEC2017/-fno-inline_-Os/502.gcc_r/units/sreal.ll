; ModuleID = 'sreal.c'
source_filename = "sreal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sreal = type { i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"(%lu * 2^%d)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"sreal.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_sreal(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !47 {
  %3 = load i64, ptr %1, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.sreal, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !54
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i64 noundef %3, i32 noundef %5) #8
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local noundef ptr @sreal_init(ptr noundef returned %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #2 !prof !55 {
  store i64 %1, ptr %0, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.sreal, ptr %0, i64 0, i32 1
  store i32 %2, ptr %4, align 8, !tbaa !54
  tail call fastcc void @normalize(ptr noundef nonnull %0) #8
  ret ptr %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @normalize(ptr nocapture noundef %0) unnamed_addr #2 !prof !56 !PGOFuncName !57 {
  %2 = load i64, ptr %0, align 8, !tbaa !48
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %6, !prof !58

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.sreal, ptr %0, i64 0, i32 1
  store i32 -536870911, ptr %5, align 8, !tbaa !54
  br label %41

6:                                                ; preds = %1
  %7 = icmp ult i64 %2, 2147483648
  br i1 %7, label %8, label %20, !prof !59

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.sreal, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !54
  br label %11

11:                                               ; preds = %8, %11
  %12 = phi i32 [ %10, %8 ], [ %15, %11 ]
  %13 = phi i64 [ %2, %8 ], [ %14, %11 ]
  %14 = shl nuw nsw i64 %13, 1
  %15 = add nsw i32 %12, -1
  %16 = icmp ult i64 %13, 1073741824
  br i1 %16, label %11, label %17, !prof !60, !llvm.loop !61

17:                                               ; preds = %11
  store i64 %14, ptr %0, align 8, !tbaa !48
  store i32 %15, ptr %9, align 8, !tbaa !54
  %18 = icmp slt i32 %12, -536870910
  br i1 %18, label %19, label %41, !prof !63

19:                                               ; preds = %17
  store i32 -536870911, ptr %9, align 8, !tbaa !54
  store i64 0, ptr %0, align 8, !tbaa !48
  br label %41

20:                                               ; preds = %6
  %21 = icmp ugt i64 %2, 4294967295
  br i1 %21, label %22, label %41, !prof !64

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.sreal, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !54
  br label %25

25:                                               ; preds = %22, %25
  %26 = phi i32 [ %24, %22 ], [ %29, %25 ]
  %27 = phi i64 [ %2, %22 ], [ %28, %25 ]
  %28 = lshr i64 %27, 1
  %29 = add nsw i32 %26, 1
  %30 = icmp ugt i64 %27, 8589934591
  br i1 %30, label %25, label %31, !prof !65, !llvm.loop !66

31:                                               ; preds = %25
  store i32 %29, ptr %23, align 8, !tbaa !54
  %32 = and i64 %27, 1
  %33 = add nuw nsw i64 %28, %32
  store i64 %33, ptr %0, align 8, !tbaa !48
  %34 = icmp ugt i64 %33, 4294967295
  br i1 %34, label %35, label %37, !prof !67

35:                                               ; preds = %31
  store i64 2147483648, ptr %0, align 8, !tbaa !48
  %36 = add nsw i32 %26, 2
  store i32 %36, ptr %23, align 8, !tbaa !54
  br label %37

37:                                               ; preds = %31, %35
  %38 = phi i32 [ %36, %35 ], [ %29, %31 ]
  %39 = icmp sgt i32 %38, 536870911
  br i1 %39, label %40, label %41, !prof !67

40:                                               ; preds = %37
  store i32 536870911, ptr %23, align 8, !tbaa !54
  store i64 4294967295, ptr %0, align 8, !tbaa !48
  br label %41

41:                                               ; preds = %37, %40, %19, %17, %20, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @sreal_to_int(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !68 {
  %2 = getelementptr inbounds %struct.sreal, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !54
  %4 = icmp slt i32 %3, -31
  br i1 %4, label %20, label %5, !prof !69

5:                                                ; preds = %1
  %6 = icmp sgt i32 %3, 31
  br i1 %6, label %20, label %7, !prof !70

7:                                                ; preds = %5
  %8 = icmp sgt i32 %3, 0
  br i1 %8, label %9, label %13, !prof !70

9:                                                ; preds = %7
  %10 = load i64, ptr %0, align 8, !tbaa !48
  %11 = zext nneg i32 %3 to i64
  %12 = shl i64 %10, %11
  br label %20

13:                                               ; preds = %7
  %14 = icmp slt i32 %3, 0
  %15 = load i64, ptr %0, align 8, !tbaa !48
  br i1 %14, label %16, label %20, !prof !71

16:                                               ; preds = %13
  %17 = sub nsw i32 0, %3
  %18 = zext nneg i32 %17 to i64
  %19 = lshr i64 %15, %18
  br label %20

20:                                               ; preds = %13, %5, %1, %16, %9
  %21 = phi i64 [ %12, %9 ], [ %19, %16 ], [ 0, %1 ], [ 9223372036854775807, %5 ], [ %15, %13 ]
  ret i64 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @sreal_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 !prof !72 {
  %3 = getelementptr inbounds %struct.sreal, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.sreal, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !54
  %7 = icmp sgt i32 %4, %6
  br i1 %7, label %17, label %8, !prof !73

8:                                                ; preds = %2
  %9 = icmp slt i32 %4, %6
  br i1 %9, label %17, label %10, !prof !74

10:                                               ; preds = %8
  %11 = load i64, ptr %0, align 8, !tbaa !48
  %12 = load i64, ptr %1, align 8, !tbaa !48
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %17, label %14, !prof !75

14:                                               ; preds = %10
  %15 = icmp ult i64 %11, %12
  %16 = sext i1 %15 to i32
  br label %17

17:                                               ; preds = %14, %10, %8, %2
  %18 = phi i32 [ 1, %2 ], [ -1, %8 ], [ 1, %10 ], [ %16, %14 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @sreal_add(ptr noundef returned %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 !prof !76 {
  %4 = alloca %struct.sreal, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %5 = tail call i32 @sreal_compare(ptr noundef %1, ptr noundef %2) #8, !range !77
  %6 = icmp slt i32 %5, 0
  %7 = select i1 %6, ptr %1, ptr %2, !prof !78
  %8 = select i1 %6, ptr %2, ptr %1, !prof !78
  %9 = getelementptr inbounds %struct.sreal, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.sreal, ptr %7, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !54
  %13 = sub nsw i32 %10, %12
  %14 = getelementptr inbounds %struct.sreal, ptr %0, i64 0, i32 1
  store i32 %10, ptr %14, align 8, !tbaa !54
  %15 = icmp sgt i32 %13, 32
  br i1 %15, label %16, label %18, !prof !79

16:                                               ; preds = %3
  %17 = load i64, ptr %8, align 8, !tbaa !48
  store i64 %17, ptr %0, align 8, !tbaa !48
  br label %26

18:                                               ; preds = %3
  %19 = icmp eq i32 %10, %12
  br i1 %19, label %21, label %20, !prof !80

20:                                               ; preds = %18
  call fastcc void @copy(ptr noundef nonnull %4, ptr noundef nonnull %7) #8
  call fastcc void @shift_right(ptr noundef nonnull %4, i32 noundef %13) #8
  br label %21

21:                                               ; preds = %18, %20
  %22 = phi ptr [ %4, %20 ], [ %7, %18 ]
  %23 = load i64, ptr %8, align 8, !tbaa !48
  %24 = load i64, ptr %22, align 8, !tbaa !48
  %25 = add i64 %24, %23
  store i64 %25, ptr %0, align 8, !tbaa !48
  tail call fastcc void @normalize(ptr noundef nonnull %0) #8
  br label %26

26:                                               ; preds = %21, %16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !prof !81 !PGOFuncName !82 {
  %3 = load i64, ptr %1, align 8, !tbaa !48
  store i64 %3, ptr %0, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.sreal, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.sreal, ptr %0, i64 0, i32 1
  store i32 %5, ptr %6, align 8, !tbaa !54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shift_right(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 !prof !81 !PGOFuncName !83 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %5, label %4, !prof !84

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 96, ptr noundef nonnull @.str.2) #10
  br label %5

5:                                                ; preds = %4, %2
  %6 = getelementptr inbounds %struct.sreal, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !54
  %8 = add nsw i32 %7, %1
  %9 = icmp slt i32 %8, 536870912
  br i1 %9, label %13, label %10, !prof !84

10:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 101, ptr noundef nonnull @.str.2) #10
  %11 = load i32, ptr %6, align 8, !tbaa !54
  %12 = add nsw i32 %11, %1
  br label %13

13:                                               ; preds = %5, %10
  %14 = phi i32 [ %8, %5 ], [ %12, %10 ]
  store i32 %14, ptr %6, align 8, !tbaa !54
  %15 = add nsw i32 %1, -1
  %16 = zext nneg i32 %15 to i64
  %17 = shl nuw i64 1, %16
  %18 = load i64, ptr %0, align 8, !tbaa !48
  %19 = add i64 %18, %17
  %20 = zext nneg i32 %1 to i64
  %21 = lshr i64 %19, %20
  store i64 %21, ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @sreal_sub(ptr noundef returned %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 !prof !85 {
  %4 = alloca %struct.sreal, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %5 = tail call i32 @sreal_compare(ptr noundef %1, ptr noundef %2) #8, !range !77
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %8, label %7, !prof !86

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 398, ptr noundef nonnull @.str.2) #10
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.sreal, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.sreal, ptr %2, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !54
  %13 = sub nsw i32 %10, %12
  %14 = getelementptr inbounds %struct.sreal, ptr %0, i64 0, i32 1
  store i32 %10, ptr %14, align 8, !tbaa !54
  %15 = icmp sgt i32 %13, 32
  br i1 %15, label %16, label %18, !prof !87

16:                                               ; preds = %8
  %17 = load i64, ptr %1, align 8, !tbaa !48
  store i64 %17, ptr %0, align 8, !tbaa !48
  br label %26

18:                                               ; preds = %8
  %19 = icmp eq i32 %10, %12
  br i1 %19, label %21, label %20, !prof !87

20:                                               ; preds = %18
  call fastcc void @copy(ptr noundef nonnull %4, ptr noundef nonnull %2) #8
  call fastcc void @shift_right(ptr noundef nonnull %4, i32 noundef %13) #8
  br label %21

21:                                               ; preds = %18, %20
  %22 = phi ptr [ %4, %20 ], [ %2, %18 ]
  %23 = load i64, ptr %1, align 8, !tbaa !48
  %24 = load i64, ptr %22, align 8, !tbaa !48
  %25 = sub i64 %23, %24
  store i64 %25, ptr %0, align 8, !tbaa !48
  tail call fastcc void @normalize(ptr noundef nonnull %0) #8
  br label %26

26:                                               ; preds = %21, %16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret ptr %0
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local noundef ptr @sreal_mul(ptr noundef returned %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 !prof !88 {
  %4 = load i64, ptr %1, align 8, !tbaa !48
  %5 = icmp ult i64 %4, 2147483648
  br i1 %5, label %9, label %6, !prof !89

6:                                                ; preds = %3
  %7 = load i64, ptr %2, align 8, !tbaa !48
  %8 = icmp ult i64 %7, 2147483648
  br i1 %8, label %9, label %11, !prof !90

9:                                                ; preds = %6, %3
  store i64 0, ptr %0, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.sreal, ptr %0, i64 0, i32 1
  store i32 -536870911, ptr %10, align 8, !tbaa !54
  br label %19

11:                                               ; preds = %6
  %12 = mul i64 %7, %4
  store i64 %12, ptr %0, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct.sreal, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.sreal, ptr %2, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !54
  %17 = add nsw i32 %16, %14
  %18 = getelementptr inbounds %struct.sreal, ptr %0, i64 0, i32 1
  store i32 %17, ptr %18, align 8, !tbaa !54
  tail call fastcc void @normalize(ptr noundef nonnull %0) #8
  br label %19

19:                                               ; preds = %11, %9
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @sreal_div(ptr noundef returned %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 !prof !91 {
  %4 = load i64, ptr %2, align 8, !tbaa !48
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %8, !prof !92

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 537, ptr noundef nonnull @.str.2) #10
  %7 = load i64, ptr %2, align 8, !tbaa !48
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i64 [ %4, %3 ], [ %7, %6 ]
  %10 = load i64, ptr %1, align 8, !tbaa !48
  %11 = shl i64 %10, 32
  %12 = udiv i64 %11, %9
  store i64 %12, ptr %0, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct.sreal, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.sreal, ptr %2, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !54
  %17 = add i32 %14, -32
  %18 = sub i32 %17, %16
  %19 = getelementptr inbounds %struct.sreal, ptr %0, i64 0, i32 1
  store i32 %18, ptr %19, align 8, !tbaa !54
  tail call fastcc void @normalize(ptr noundef nonnull %0) #8
  ret ptr %0
}

attributes #0 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!46}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!35 = !{ptr @sreal_init, ptr @normalize, i64 1171409}
!36 = !{ptr @sreal_add, ptr @sreal_compare, i64 879088}
!37 = !{ptr @sreal_add, ptr @copy, i64 547957}
!38 = !{ptr @sreal_add, ptr @shift_right, i64 547957}
!39 = !{ptr @sreal_add, ptr @normalize, i64 584198}
!40 = !{ptr @shift_right, ptr @fancy_abort, i64 2}
!41 = !{ptr @sreal_sub, ptr @sreal_compare, i64 1}
!42 = !{ptr @sreal_sub, ptr @normalize, i64 1}
!43 = !{ptr @sreal_mul, ptr @normalize, i64 2050307}
!44 = !{ptr @sreal_div, ptr @fancy_abort, i64 1}
!45 = !{ptr @sreal_div, ptr @normalize, i64 79}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 0}
!48 = !{!49, !50, i64 0}
!49 = !{!"sreal", !50, i64 0, !53, i64 8}
!50 = !{!"long", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !{!"int", !51, i64 0}
!54 = !{!49, !53, i64 8}
!55 = !{!"function_entry_count", i64 1171409}
!56 = !{!"function_entry_count", i64 3805996}
!57 = !{!"sreal.c:normalize"}
!58 = !{!"branch_weights", i32 124, i32 3805874}
!59 = !{!"branch_weights", i32 1171288, i32 2634587}
!60 = !{!"branch_weights", i32 21718025, i32 1171288}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"branch_weights", i32 1, i32 1171288}
!64 = !{!"branch_weights", i32 2151194, i32 483394}
!65 = !{!"branch_weights", i32 62812096, i32 2151194}
!66 = distinct !{!66, !62}
!67 = !{!"branch_weights", i32 1, i32 2151194}
!68 = !{!"function_entry_count", i64 293386}
!69 = !{!"branch_weights", i32 50139, i32 243249}
!70 = !{!"branch_weights", i32 1, i32 243249}
!71 = !{!"branch_weights", i32 243249, i32 1}
!72 = !{!"function_entry_count", i64 1465627}
!73 = !{!"branch_weights", i32 778971, i32 686658}
!74 = !{!"branch_weights", i32 357009, i32 329650}
!75 = !{!"branch_weights", i32 30135, i32 299516}
!76 = !{!"function_entry_count", i64 879088}
!77 = !{i32 -1, i32 2}
!78 = !{!"branch_weights", i32 362791, i32 516299}
!79 = !{!"branch_weights", i32 294891, i32 584199}
!80 = !{!"branch_weights", i32 36241, i32 547959}
!81 = !{!"function_entry_count", i64 547959}
!82 = !{!"sreal.c:copy"}
!83 = !{!"sreal.c:shift_right"}
!84 = !{!"branch_weights", i32 547960, i32 1}
!85 = !{!"function_entry_count", i64 1}
!86 = !{!"branch_weights", i32 2, i32 1}
!87 = !{!"branch_weights", i32 1, i32 2}
!88 = !{!"function_entry_count", i64 2050492}
!89 = !{!"branch_weights", i32 184, i32 2050310}
!90 = !{!"branch_weights", i32 1, i32 2050310}
!91 = !{!"function_entry_count", i64 79}
!92 = !{!"branch_weights", i32 1, i32 80}
