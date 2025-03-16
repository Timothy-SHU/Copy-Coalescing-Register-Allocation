; ModuleID = 'gp_unifn.c'
source_filename = "gp_unifn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@gp_file_name_list_separator = dso_local local_unnamed_addr constant i8 58, align 1
@gp_fmode_binary_suffix = dso_local local_unnamed_addr constant [1 x i8] zeroinitializer, align 1
@gp_fmode_rb = dso_local local_unnamed_addr constant [2 x i8] c"r\00", align 1
@gp_fmode_wb = dso_local local_unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @gp_file_name_is_absolute(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %9
  %5 = phi i32 [ %11, %9 ], [ %1, %2 ]
  %6 = phi ptr [ %10, %9 ], [ %0, %2 ]
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = icmp eq i8 %7, 46
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  %11 = add i32 %5, -1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %4, !llvm.loop !8

13:                                               ; preds = %4
  %14 = icmp eq i8 %7, 47
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %9, %2, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %2 ], [ 0, %9 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull ptr @gp_file_name_concat_string(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %4
  %7 = add i32 %1, -1
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !5
  %11 = icmp eq i8 %10, 47
  br i1 %11, label %13, label %12

12:                                               ; preds = %6, %4
  br label %13

13:                                               ; preds = %6, %12
  %14 = phi ptr [ @.str.1, %12 ], [ @gp_fmode_binary_suffix, %6 ]
  ret ptr %14
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
