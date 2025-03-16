; ModuleID = 'src/dump.c'
source_filename = "src/dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct.flagent = type { ptr, ptr, i16, i16, i16, i16, i16, [228 x i8] }

@hashheader = external local_unnamed_addr global %struct.hashheader, align 4
@.str = private unnamed_addr constant [16 x i8] c"flagmarker \\%c\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"flagmarker \\%3.3o\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"flagmarker %c\0A\00", align 1
@numpflags = external local_unnamed_addr global i32, align 4
@pflaglist = external local_unnamed_addr global ptr, align 8
@numsflags = external local_unnamed_addr global i32, align 4
@sflaglist = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"  flag %s%c: \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@outfile1 = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"\09> \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"-%s,\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"[^\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%c-%c\00", align 1
@str = private unnamed_addr constant [9 x i8] c"prefixes\00", align 1
@str.14 = private unnamed_addr constant [9 x i8] c"suffixes\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @dumpmode() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4
  %2 = sext i8 %1 to i32
  switch i8 %1, label %5 [
    i8 92, label %3
    i8 91, label %3
    i8 62, label %3
    i8 58, label %3
    i8 45, label %3
    i8 44, label %3
    i8 35, label %3
  ]

3:                                                ; preds = %0, %0, %0, %0, %0, %0, %0
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %2)
  br label %13

5:                                                ; preds = %0
  %6 = add i8 %1, -127
  %7 = icmp ult i8 %6, -95
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = and i32 %2, 255
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %9)
  br label %13

11:                                               ; preds = %5
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %2)
  br label %13

13:                                               ; preds = %8, %11, %3
  %14 = load i32, ptr @numpflags, align 4, !tbaa !5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %18 = load ptr, ptr @pflaglist, align 8, !tbaa !9
  %19 = load i32, ptr @numpflags, align 4, !tbaa !5
  tail call fastcc void @tbldump(ptr noundef %18, i32 noundef %19)
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i32, ptr @numsflags, align 4, !tbaa !5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14)
  %25 = load ptr, ptr @sflaglist, align 8, !tbaa !9
  %26 = load i32, ptr @numsflags, align 4, !tbaa !5
  tail call fastcc void @tbldump(ptr noundef %25, i32 noundef %26)
  br label %27

27:                                               ; preds = %23, %20
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @tbldump(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %93

4:                                                ; preds = %2, %89
  %5 = phi i32 [ %7, %89 ], [ %1, %2 ]
  %6 = phi ptr [ %8, %89 ], [ %0, %2 ]
  %7 = add nsw i32 %5, -1
  %8 = getelementptr inbounds %struct.flagent, ptr %6, i64 1
  %9 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 6
  %10 = load i16, ptr %9, align 8, !tbaa !11
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  %13 = select i1 %12, ptr @.str.7, ptr @.str.6
  %14 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 2
  %15 = load i16, ptr %14, align 8, !tbaa !14
  %16 = sext i16 %15 to i32
  %17 = add nsw i32 %16, 65
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull %13, i32 noundef %17)
  %19 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 5
  %20 = load i16, ptr %19, align 2, !tbaa !15
  %21 = icmp slt i16 %20, 1
  br i1 %21, label %67, label %22

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 7
  br label %24

24:                                               ; preds = %62, %22
  %25 = phi i32 [ 0, %22 ], [ %63, %62 ]
  %26 = shl nuw i32 1, %25
  br label %27

27:                                               ; preds = %27, %24
  %28 = phi i64 [ 128, %24 ], [ %31, %27 ]
  %29 = phi i32 [ 0, %24 ], [ %40, %27 ]
  %30 = phi i32 [ 0, %24 ], [ %38, %27 ]
  %31 = add nsw i64 %28, -1
  %32 = getelementptr inbounds i8, ptr %23, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !16
  %34 = sext i8 %33 to i32
  %35 = and i32 %26, %34
  %36 = icmp ne i32 %35, 0
  %37 = trunc i64 %31 to i32
  %38 = select i1 %36, i32 %37, i32 %30
  %39 = zext i1 %36 to i32
  %40 = add nuw nsw i32 %29, %39
  %41 = icmp ugt i64 %28, 1
  br i1 %41, label %27, label %42, !llvm.loop !17

42:                                               ; preds = %27
  switch i32 %40, label %44 [
    i32 1, label %51
    i32 128, label %43
  ]

43:                                               ; preds = %42
  br label %51

44:                                               ; preds = %42
  %45 = icmp ugt i32 %40, 64
  br i1 %45, label %46, label %48

46:                                               ; preds = %44
  %47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12)
  tail call fastcc void @subsetdump(ptr noundef nonnull %23, i32 noundef %26, i32 noundef 0)
  br label %51

48:                                               ; preds = %44
  %49 = load ptr, ptr @outfile1, align 8, !tbaa !9
  %50 = tail call i32 @putc(i32 noundef 91, ptr noundef %49)
  tail call fastcc void @subsetdump(ptr noundef nonnull %23, i32 noundef %26, i32 noundef %26)
  br label %51

51:                                               ; preds = %42, %48, %46, %43
  %52 = phi i32 [ 93, %48 ], [ 93, %46 ], [ 46, %43 ], [ %38, %42 ]
  %53 = load ptr, ptr @outfile1, align 8, !tbaa !9
  %54 = tail call i32 @putc(i32 noundef %52, ptr noundef %53)
  %55 = load i16, ptr %19, align 2, !tbaa !15
  %56 = sext i16 %55 to i32
  %57 = add nsw i32 %56, -1
  %58 = icmp slt i32 %25, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load ptr, ptr @outfile1, align 8, !tbaa !9
  %61 = tail call i32 @putc(i32 noundef 32, ptr noundef %60)
  br label %62

62:                                               ; preds = %59, %51
  %63 = add nuw nsw i32 %25, 1
  %64 = load i16, ptr %19, align 2, !tbaa !15
  %65 = sext i16 %64 to i32
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %24, label %70, !llvm.loop !19

67:                                               ; preds = %4
  %68 = load ptr, ptr @outfile1, align 8, !tbaa !9
  %69 = tail call i32 @putc(i32 noundef 46, ptr noundef %68)
  br label %70

70:                                               ; preds = %62, %67
  %71 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8)
  %72 = load ptr, ptr @outfile1, align 8, !tbaa !9
  %73 = tail call i32 @putc(i32 noundef 9, ptr noundef %72)
  %74 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 3
  %75 = load i16, ptr %74, align 2, !tbaa !20
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %70
  %78 = load ptr, ptr %6, align 8, !tbaa !21
  %79 = tail call ptr @ichartosstr(ptr noundef %78, i32 noundef 1) #5
  %80 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %79)
  br label %81

81:                                               ; preds = %77, %70
  %82 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 4
  %83 = load i16, ptr %82, align 4, !tbaa !22
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !23
  %88 = tail call ptr @ichartosstr(ptr noundef %87, i32 noundef 1) #5
  br label %89

89:                                               ; preds = %81, %85
  %90 = phi ptr [ %88, %85 ], [ @.str.11, %81 ]
  %91 = tail call i32 @puts(ptr nonnull dereferenceable(1) %90)
  %92 = icmp sgt i32 %5, 1
  br i1 %92, label %4, label %93, !llvm.loop !24

93:                                               ; preds = %89, %2
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

declare ptr @ichartosstr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @subsetdump(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
  br label %4

4:                                                ; preds = %3, %53
  %5 = phi i32 [ 0, %3 ], [ %57, %53 ]
  %6 = phi ptr [ %0, %3 ], [ %56, %53 ]
  %7 = load i8, ptr %6, align 1, !tbaa !16
  %8 = sext i8 %7 to i32
  %9 = xor i32 %8, %2
  %10 = and i32 %9, %1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %53

12:                                               ; preds = %4
  %13 = icmp slt i32 %5, 128
  br i1 %13, label %14, label %31

14:                                               ; preds = %12
  %15 = getelementptr i8, ptr %6, i64 1
  %16 = sub i32 127, %5
  %17 = zext i32 %16 to i64
  %18 = getelementptr i8, ptr %15, i64 %17
  br label %19

19:                                               ; preds = %14, %27
  %20 = phi i32 [ %29, %27 ], [ %5, %14 ]
  %21 = phi ptr [ %28, %27 ], [ %6, %14 ]
  %22 = load i8, ptr %21, align 1, !tbaa !16
  %23 = sext i8 %22 to i32
  %24 = xor i32 %23, %2
  %25 = and i32 %24, %1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = getelementptr inbounds i8, ptr %21, i64 1
  %29 = add i32 %20, 1
  %30 = icmp eq i32 %29, 128
  br i1 %30, label %31, label %19, !llvm.loop !25

31:                                               ; preds = %27, %19, %12
  %32 = phi ptr [ %6, %12 ], [ %18, %27 ], [ %21, %19 ]
  %33 = phi i32 [ %5, %12 ], [ 128, %27 ], [ %20, %19 ]
  %34 = add nsw i32 %5, 1
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load ptr, ptr @outfile1, align 8, !tbaa !9
  %38 = tail call i32 @putc(i32 noundef %5, ptr noundef %37)
  br label %53

39:                                               ; preds = %31
  %40 = add nsw i32 %5, 3
  %41 = icmp sgt i32 %33, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = icmp slt i32 %5, %33
  br i1 %43, label %44, label %53

44:                                               ; preds = %42, %44
  %45 = phi i32 [ %48, %44 ], [ %5, %42 ]
  %46 = load ptr, ptr @outfile1, align 8, !tbaa !9
  %47 = tail call i32 @putc(i32 noundef %45, ptr noundef %46)
  %48 = add i32 %45, 1
  %49 = icmp eq i32 %48, %33
  br i1 %49, label %53, label %44, !llvm.loop !26

50:                                               ; preds = %39
  %51 = add nsw i32 %33, -1
  %52 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %5, i32 noundef %51)
  br label %53

53:                                               ; preds = %44, %42, %4, %50, %36
  %54 = phi ptr [ %32, %36 ], [ %32, %50 ], [ %6, %4 ], [ %32, %42 ], [ %32, %44 ]
  %55 = phi i32 [ %33, %36 ], [ %33, %50 ], [ %5, %4 ], [ %33, %42 ], [ %33, %44 ]
  %56 = getelementptr inbounds i8, ptr %54, i64 1
  %57 = add nsw i32 %55, 1
  %58 = icmp slt i32 %55, 127
  br i1 %58, label %4, label %59, !llvm.loop !27

59:                                               ; preds = %53
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !13, i64 24}
!12 = !{!"flagent", !10, i64 0, !10, i64 8, !13, i64 16, !13, i64 18, !13, i64 20, !13, i64 22, !13, i64 24, !7, i64 26}
!13 = !{!"short", !7, i64 0}
!14 = !{!12, !13, i64 16}
!15 = !{!12, !13, i64 22}
!16 = !{!7, !7, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !18}
!20 = !{!12, !13, i64 18}
!21 = !{!12, !10, i64 0}
!22 = !{!12, !13, i64 20}
!23 = !{!12, !10, i64 8}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !18}
!26 = distinct !{!26, !18}
!27 = distinct !{!27, !18}
