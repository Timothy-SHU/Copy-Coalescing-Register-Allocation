; ModuleID = 'src/debug.c'
source_filename = "src/debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"%s [%d .. %d]: \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s: %d\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @gsm_debug_words(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef %0, i32 noundef %1, i32 noundef %2) #2
  %7 = icmp sgt i32 %1, %2
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = sext i32 %1 to i64
  %10 = sext i32 %2 to i64
  %11 = add i32 %2, 1
  br label %12

12:                                               ; preds = %8, %28
  %13 = phi i64 [ %9, %8 ], [ %20, %28 ]
  %14 = phi i32 [ 0, %8 ], [ %29, %28 ]
  %15 = load ptr, ptr @stderr, align 8, !tbaa !5
  %16 = getelementptr inbounds i16, ptr %3, i64 %13
  %17 = load i16, ptr %16, align 2, !tbaa !9
  %18 = sext i16 %17 to i32
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.1, i32 noundef %18) #2
  %20 = add nsw i64 %13, 1
  %21 = add nsw i32 %14, 1
  %22 = icmp sgt i32 %14, 6
  br i1 %22, label %23, label %28

23:                                               ; preds = %12
  %24 = icmp slt i64 %20, %10
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load ptr, ptr @stderr, align 8, !tbaa !5
  %27 = tail call i32 @putc(i32 noundef 10, ptr noundef %26)
  br label %28

28:                                               ; preds = %23, %25, %12
  %29 = phi i32 [ 0, %25 ], [ 0, %23 ], [ %21, %12 ]
  %30 = trunc i64 %20 to i32
  %31 = icmp eq i32 %11, %30
  br i1 %31, label %32, label %12, !llvm.loop !11

32:                                               ; preds = %28, %4
  %33 = load ptr, ptr @stderr, align 8, !tbaa !5
  %34 = tail call i32 @putc(i32 noundef 10, ptr noundef %33)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @gsm_debug_longwords(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef %0, i32 noundef %1, i32 noundef %2) #2
  %7 = icmp sgt i32 %1, %2
  br i1 %7, label %31, label %8

8:                                                ; preds = %4
  %9 = sext i32 %1 to i64
  %10 = sext i32 %2 to i64
  %11 = add i32 %2, 1
  br label %12

12:                                               ; preds = %8, %27
  %13 = phi i64 [ %9, %8 ], [ %19, %27 ]
  %14 = phi i32 [ 0, %8 ], [ %28, %27 ]
  %15 = load ptr, ptr @stderr, align 8, !tbaa !5
  %16 = getelementptr inbounds i64, ptr %3, i64 %13
  %17 = load i64, ptr %16, align 8, !tbaa !13
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.1, i64 noundef %17) #2
  %19 = add nsw i64 %13, 1
  %20 = add nsw i32 %14, 1
  %21 = icmp sgt i32 %14, 6
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = icmp slt i64 %19, %10
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load ptr, ptr @stderr, align 8, !tbaa !5
  %26 = tail call i32 @putc(i32 noundef 10, ptr noundef %25)
  br label %27

27:                                               ; preds = %22, %24, %12
  %28 = phi i32 [ 0, %24 ], [ 0, %22 ], [ %20, %12 ]
  %29 = trunc i64 %19 to i32
  %30 = icmp eq i32 %11, %29
  br i1 %30, label %31, label %12, !llvm.loop !15

31:                                               ; preds = %27, %4
  %32 = load ptr, ptr @stderr, align 8, !tbaa !5
  %33 = tail call i32 @putc(i32 noundef 10, ptr noundef %32)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @gsm_debug_longword(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef %0, i64 noundef %1) #2
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @gsm_debug_word(ptr noundef %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = sext i16 %1 to i64
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef %0, i64 noundef %4) #2
  ret void
}

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = distinct !{!15, !12}
