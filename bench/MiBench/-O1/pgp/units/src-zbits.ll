; ModuleID = 'src/zbits.c'
source_filename = "src/zbits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@zfile = internal unnamed_addr global ptr null, align 8
@bi_buf = internal unnamed_addr global i16 0, align 2
@bi_valid = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"write error on zip file\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @bi_init(ptr noundef %0) local_unnamed_addr #0 {
  store ptr %0, ptr @zfile, align 8, !tbaa !5
  store i16 0, ptr @bi_buf, align 2, !tbaa !9
  store i32 0, ptr @bi_valid, align 4, !tbaa !11
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @send_bits(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr @bi_valid, align 4, !tbaa !11
  %4 = sub nsw i32 16, %1
  %5 = icmp sgt i32 %3, %4
  %6 = shl i32 %0, %3
  %7 = load i16, ptr @bi_buf, align 2, !tbaa !9
  %8 = trunc i32 %6 to i16
  %9 = or i16 %7, %8
  store i16 %9, ptr @bi_buf, align 2, !tbaa !9
  br i1 %5, label %10, label %30

10:                                               ; preds = %2
  %11 = zext i16 %9 to i32
  %12 = shl i32 %11, 24
  %13 = ashr exact i32 %12, 24
  %14 = load ptr, ptr @zfile, align 8, !tbaa !5
  %15 = tail call i32 @putc(i32 noundef %13, ptr noundef %14)
  %16 = load i16, ptr @bi_buf, align 2, !tbaa !9
  %17 = lshr i16 %16, 8
  %18 = zext nneg i16 %17 to i32
  %19 = shl nuw i32 %18, 24
  %20 = ashr exact i32 %19, 24
  %21 = load ptr, ptr @zfile, align 8, !tbaa !5
  %22 = tail call i32 @putc(i32 noundef %20, ptr noundef %21)
  %23 = and i32 %0, 65535
  %24 = load i32, ptr @bi_valid, align 4, !tbaa !11
  %25 = sub i32 16, %24
  %26 = lshr i32 %23, %25
  %27 = trunc i32 %26 to i16
  store i16 %27, ptr @bi_buf, align 2, !tbaa !9
  %28 = add i32 %1, -16
  %29 = add i32 %28, %24
  br label %32

30:                                               ; preds = %2
  %31 = add nsw i32 %3, %1
  br label %32

32:                                               ; preds = %30, %10
  %33 = phi i32 [ %31, %30 ], [ %29, %10 ]
  store i32 %33, ptr @bi_valid, align 4, !tbaa !11
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @bi_reverse(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i32 [ %0, %2 ], [ %9, %3 ]
  %5 = phi i32 [ %1, %2 ], [ %11, %3 ]
  %6 = phi i32 [ 0, %2 ], [ %10, %3 ]
  %7 = and i32 %4, 1
  %8 = or disjoint i32 %6, %7
  %9 = lshr i32 %4, 1
  %10 = shl i32 %8, 1
  %11 = add nsw i32 %5, -1
  %12 = icmp sgt i32 %5, 1
  br i1 %12, label %3, label %13, !llvm.loop !13

13:                                               ; preds = %3
  %14 = and i32 %8, 2147483647
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define dso_local void @bi_windup() local_unnamed_addr #4 {
  %1 = load i32, ptr @bi_valid, align 4, !tbaa !11
  %2 = icmp sgt i32 %1, 8
  br i1 %2, label %3, label %12

3:                                                ; preds = %0
  %4 = load i16, ptr @bi_buf, align 2, !tbaa !9
  %5 = zext i16 %4 to i32
  %6 = shl i32 %5, 24
  %7 = ashr exact i32 %6, 24
  %8 = load ptr, ptr @zfile, align 8, !tbaa !5
  %9 = tail call i32 @putc(i32 noundef %7, ptr noundef %8)
  %10 = load i16, ptr @bi_buf, align 2, !tbaa !9
  %11 = lshr i16 %10, 8
  br label %16

12:                                               ; preds = %0
  %13 = icmp sgt i32 %1, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %12
  %15 = load i16, ptr @bi_buf, align 2, !tbaa !9
  br label %16

16:                                               ; preds = %3, %14
  %17 = phi i16 [ %15, %14 ], [ %11, %3 ]
  %18 = zext i16 %17 to i32
  %19 = shl i32 %18, 24
  %20 = ashr exact i32 %19, 24
  %21 = load ptr, ptr @zfile, align 8, !tbaa !5
  %22 = tail call i32 @putc(i32 noundef %20, ptr noundef %21)
  br label %23

23:                                               ; preds = %16, %12
  store i16 0, ptr @bi_buf, align 2, !tbaa !9
  store i32 0, ptr @bi_valid, align 4, !tbaa !11
  %24 = load ptr, ptr @zfile, align 8, !tbaa !5
  %25 = tail call i32 @ferror(ptr noundef %24) #7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @error(ptr noundef nonnull @.str) #7
  br label %28

28:                                               ; preds = %27, %23
  ret void
}

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #5

declare void @error(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @copy_block(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  tail call void @bi_windup()
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %24, label %5

5:                                                ; preds = %3
  %6 = shl i32 %1, 24
  %7 = ashr exact i32 %6, 24
  %8 = load ptr, ptr @zfile, align 8, !tbaa !5
  %9 = tail call i32 @putc(i32 noundef %7, ptr noundef %8)
  %10 = shl i32 %1, 16
  %11 = ashr i32 %10, 24
  %12 = load ptr, ptr @zfile, align 8, !tbaa !5
  %13 = tail call i32 @putc(i32 noundef %11, ptr noundef %12)
  %14 = and i32 %1, 65535
  %15 = xor i32 %14, 65535
  %16 = shl i32 %15, 24
  %17 = ashr exact i32 %16, 24
  %18 = load ptr, ptr @zfile, align 8, !tbaa !5
  %19 = tail call i32 @putc(i32 noundef %17, ptr noundef %18)
  %20 = shl nuw i32 %15, 16
  %21 = ashr i32 %20, 24
  %22 = load ptr, ptr @zfile, align 8, !tbaa !5
  %23 = tail call i32 @putc(i32 noundef %21, ptr noundef %22)
  br label %24

24:                                               ; preds = %5, %3
  %25 = zext i32 %1 to i64
  %26 = load ptr, ptr @zfile, align 8, !tbaa !5
  %27 = tail call i64 @fwrite(ptr noundef %0, i64 noundef 1, i64 noundef %25, ptr noundef %26)
  %28 = load ptr, ptr @zfile, align 8, !tbaa !5
  %29 = tail call i32 @fflush(ptr noundef %28)
  %30 = load ptr, ptr @zfile, align 8, !tbaa !5
  %31 = tail call i32 @ferror(ptr noundef %30) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  tail call void @error(ptr noundef nonnull @.str) #7
  br label %34

34:                                               ; preds = %33, %24
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
