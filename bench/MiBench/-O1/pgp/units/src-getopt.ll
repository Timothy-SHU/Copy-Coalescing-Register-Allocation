; ModuleID = 'src/getopt.c'
source_filename = "src/getopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@opterr = dso_local local_unnamed_addr global i32 1, align 4
@optind = dso_local local_unnamed_addr global i32 1, align 4
@optopt = dso_local local_unnamed_addr global i32 0, align 4
@optarg = dso_local local_unnamed_addr global ptr null, align 8
@pgp_getopt.sp = internal unnamed_addr global i32 1, align 4
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%s%s%c\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c": illegal option -- \00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c": option requires an argument -- \00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @pgp_getopt(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = load i32, ptr @pgp_getopt.sp, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %27

6:                                                ; preds = %3
  %7 = load i32, ptr @optind, align 4, !tbaa !5
  %8 = icmp slt i32 %7, %0
  br i1 %8, label %9, label %95

9:                                                ; preds = %6
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %1, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = load i8, ptr %12, align 1, !tbaa !11
  switch i8 %13, label %95 [
    i8 43, label %14
    i8 45, label %14
  ]

14:                                               ; preds = %9, %9
  %15 = getelementptr inbounds i8, ptr %12, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !11
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %95, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(3) @.str) #3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = add nsw i32 %7, 1
  store i32 %22, ptr @optind, align 4, !tbaa !5
  br label %95

23:                                               ; preds = %18
  %24 = icmp eq i8 %13, 43
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = add nsw i32 %7, 1
  store i32 %26, ptr @optind, align 4, !tbaa !5
  store ptr %15, ptr @optarg, align 8, !tbaa !9
  br label %95

27:                                               ; preds = %23, %3
  %28 = load i32, ptr @optind, align 4, !tbaa !5
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %1, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !9
  %32 = sext i32 %4 to i64
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !11
  %35 = sext i8 %34 to i32
  store i32 %35, ptr @optopt, align 4, !tbaa !5
  %36 = icmp eq i8 %34, 58
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %35) #3
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %60

40:                                               ; preds = %37, %27
  %41 = load i32, ptr @opterr, align 4, !tbaa !5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr @stderr, align 8, !tbaa !9
  %45 = load ptr, ptr %1, align 8, !tbaa !9
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.1, ptr noundef %45, ptr noundef nonnull @.str.2, i32 noundef %35) #4
  br label %47

47:                                               ; preds = %40, %43
  %48 = load i32, ptr @optind, align 4, !tbaa !5
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds ptr, ptr %1, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !9
  %52 = load i32, ptr @pgp_getopt.sp, align 4, !tbaa !5
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr @pgp_getopt.sp, align 4, !tbaa !5
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, ptr %51, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !11
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %95

58:                                               ; preds = %47
  %59 = add nsw i32 %48, 1
  store i32 %59, ptr @optind, align 4, !tbaa !5
  store i32 1, ptr @pgp_getopt.sp, align 4, !tbaa !5
  br label %95

60:                                               ; preds = %37
  %61 = getelementptr inbounds i8, ptr %38, i64 1
  %62 = load i8, ptr %61, align 1, !tbaa !11
  %63 = icmp eq i8 %62, 58
  br i1 %63, label %64, label %86

64:                                               ; preds = %60
  %65 = getelementptr i8, ptr %33, i64 1
  %66 = load i8, ptr %65, align 1, !tbaa !11
  %67 = icmp eq i8 %66, 0
  %68 = add nsw i32 %28, 1
  store i32 %68, ptr @optind, align 4, !tbaa !5
  br i1 %67, label %69, label %84

69:                                               ; preds = %64
  %70 = icmp slt i32 %68, %0
  br i1 %70, label %79, label %71

71:                                               ; preds = %69
  %72 = load i32, ptr @opterr, align 4, !tbaa !5
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr @stderr, align 8, !tbaa !9
  %76 = load ptr, ptr %1, align 8, !tbaa !9
  %77 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef nonnull @.str.1, ptr noundef %76, ptr noundef nonnull @.str.3, i32 noundef %35) #4
  br label %78

78:                                               ; preds = %71, %74
  store i32 1, ptr @pgp_getopt.sp, align 4, !tbaa !5
  br label %95

79:                                               ; preds = %69
  %80 = add nsw i32 %28, 2
  store i32 %80, ptr @optind, align 4, !tbaa !5
  %81 = sext i32 %68 to i64
  %82 = getelementptr inbounds ptr, ptr %1, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !9
  br label %84

84:                                               ; preds = %64, %79
  %85 = phi ptr [ %83, %79 ], [ %65, %64 ]
  store ptr %85, ptr @optarg, align 8, !tbaa !9
  store i32 1, ptr @pgp_getopt.sp, align 4, !tbaa !5
  br label %95

86:                                               ; preds = %60
  %87 = add nsw i32 %4, 1
  store i32 %87, ptr @pgp_getopt.sp, align 4, !tbaa !5
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, ptr %31, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !11
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  store i32 1, ptr @pgp_getopt.sp, align 4, !tbaa !5
  %93 = add nsw i32 %28, 1
  store i32 %93, ptr @optind, align 4, !tbaa !5
  br label %94

94:                                               ; preds = %92, %86
  store ptr null, ptr @optarg, align 8, !tbaa !9
  br label %95

95:                                               ; preds = %84, %94, %47, %58, %6, %14, %9, %78, %25, %21
  %96 = phi i32 [ -1, %21 ], [ 43, %25 ], [ 0, %78 ], [ -1, %9 ], [ -1, %14 ], [ -1, %6 ], [ 0, %58 ], [ 0, %47 ], [ %35, %94 ], [ %35, %84 ]
  ret i32 %96
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) }
attributes #4 = { cold }

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
!11 = !{!7, !7, i64 0}
