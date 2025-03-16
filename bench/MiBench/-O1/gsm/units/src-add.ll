; ModuleID = 'src/add.c'
source_filename = "src/add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"a != MIN_WORD || b != MIN_WORD\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"src/add.c\00", align 1
@__PRETTY_FUNCTION__.gsm_L_mult = private unnamed_addr constant [32 x i8] c"longword gsm_L_mult(word, word)\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"a != 0\00", align 1
@__PRETTY_FUNCTION__.gsm_norm = private unnamed_addr constant [24 x i8] c"word gsm_norm(longword)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"num >= 0 && denum >= num\00", align 1
@__PRETTY_FUNCTION__.gsm_div = private unnamed_addr constant [25 x i8] c"word gsm_div(word, word)\00", align 1
@bitoff = internal unnamed_addr constant <{ [128 x i8], [128 x i8] }> <{ [128 x i8] c"\08\07\06\06\05\05\05\05\04\04\04\04\04\04\04\04\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [128 x i8] zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @gsm_add(i16 noundef signext %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = tail call i16 @llvm.sadd.sat.i16(i16 %0, i16 %1)
  ret i16 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @gsm_sub(i16 noundef signext %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = tail call i16 @llvm.ssub.sat.i16(i16 %0, i16 %1)
  ret i16 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext i16 @gsm_mult(i16 noundef signext %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = icmp eq i16 %0, -32768
  %4 = icmp eq i16 %1, -32768
  %5 = and i1 %3, %4
  %6 = sext i16 %0 to i32
  %7 = sext i16 %1 to i32
  %8 = mul nsw i32 %7, %6
  %9 = lshr i32 %8, 15
  %10 = trunc i32 %9 to i16
  %11 = select i1 %5, i16 32767, i16 %10
  ret i16 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext i16 @gsm_mult_r(i16 noundef signext %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = icmp eq i16 %1, -32768
  %4 = icmp eq i16 %0, -32768
  %5 = and i1 %4, %3
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = sext i16 %0 to i64
  %8 = sext i16 %1 to i64
  %9 = mul nsw i64 %8, %7
  %10 = add nsw i64 %9, 16384
  %11 = lshr i64 %10, 15
  %12 = trunc i64 %11 to i16
  br label %13

13:                                               ; preds = %2, %6
  %14 = phi i16 [ %12, %6 ], [ 32767, %2 ]
  ret i16 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @gsm_abs(i16 noundef signext %0) local_unnamed_addr #0 {
  %2 = icmp slt i16 %0, 0
  %3 = icmp eq i16 %0, -32768
  %4 = sub i16 0, %0
  %5 = select i1 %3, i16 32767, i16 %4
  %6 = select i1 %2, i16 %5, i16 %0
  ret i16 %6
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gsm_L_mult(i16 noundef signext %0, i16 noundef signext %1) local_unnamed_addr #1 {
  %3 = icmp ne i16 %0, -32768
  %4 = icmp ne i16 %1, -32768
  %5 = or i1 %3, %4
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 58, ptr noundef nonnull @__PRETTY_FUNCTION__.gsm_L_mult) #4
  unreachable

7:                                                ; preds = %2
  %8 = sext i16 %0 to i64
  %9 = sext i16 %1 to i64
  %10 = shl nsw i64 %8, 1
  %11 = mul nsw i64 %10, %9
  ret i64 %11
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @gsm_L_add(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i64 %0, 0
  %4 = add i64 %1, %0
  br i1 %3, label %5, label %11

5:                                                ; preds = %2
  %6 = icmp sgt i64 %1, -1
  br i1 %6, label %15, label %7

7:                                                ; preds = %5
  %8 = add i64 %4, 1
  %9 = icmp ult i64 %8, -2147483647
  %10 = select i1 %9, i64 -2147483648, i64 %4
  br label %15

11:                                               ; preds = %2
  %12 = icmp slt i64 %1, 1
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = tail call i64 @llvm.umin.i64(i64 %4, i64 2147483647)
  br label %15

15:                                               ; preds = %11, %5, %13, %7
  %16 = phi i64 [ %10, %7 ], [ %14, %13 ], [ %4, %5 ], [ %4, %11 ]
  ret i64 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @gsm_L_sub(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i64 %0, -1
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = icmp sgt i64 %1, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = sub nsw i64 %0, %1
  br label %18

8:                                                ; preds = %4
  %9 = sub nuw i64 %1, %0
  %10 = icmp ult i64 %9, -2147483647
  %11 = sub i64 %0, %1
  %12 = select i1 %10, i64 2147483647, i64 %11
  br label %18

13:                                               ; preds = %2
  %14 = icmp slt i64 %1, 1
  %15 = sub i64 %0, %1
  br i1 %14, label %18, label %16

16:                                               ; preds = %13
  %17 = tail call i64 @llvm.umax.i64(i64 %15, i64 -2147483648)
  br label %18

18:                                               ; preds = %13, %16, %8, %6
  %19 = phi i64 [ %7, %6 ], [ %12, %8 ], [ %17, %16 ], [ %15, %13 ]
  ret i64 %19
}

; Function Attrs: nounwind uwtable
define dso_local signext i16 @gsm_norm(i64 noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 137, ptr noundef nonnull @__PRETTY_FUNCTION__.gsm_norm) #4
  unreachable

4:                                                ; preds = %1
  %5 = icmp slt i64 %0, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = icmp slt i64 %0, -1073741823
  br i1 %7, label %35, label %8

8:                                                ; preds = %6
  %9 = xor i64 %0, -1
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i64 [ %9, %8 ], [ %0, %4 ]
  %12 = and i64 %11, 4294901760
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = and i64 %11, 4278190080
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = lshr i64 %11, 24
  br label %27

19:                                               ; preds = %14
  %20 = lshr i64 %11, 16
  br label %27

21:                                               ; preds = %10
  %22 = and i64 %11, 65280
  %23 = icmp eq i64 %22, 0
  %24 = lshr i64 %11, 8
  %25 = select i1 %23, i64 %11, i64 %24
  %26 = select i1 %23, i16 23, i16 15
  br label %27

27:                                               ; preds = %21, %17, %19
  %28 = phi i64 [ %20, %19 ], [ %18, %17 ], [ %25, %21 ]
  %29 = phi i16 [ 7, %19 ], [ -1, %17 ], [ %26, %21 ]
  %30 = and i64 %28, 255
  %31 = getelementptr inbounds [256 x i8], ptr @bitoff, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !5
  %33 = zext i8 %32 to i16
  %34 = add nsw i16 %29, %33
  br label %35

35:                                               ; preds = %27, %6
  %36 = phi i16 [ 0, %6 ], [ %34, %27 ]
  ret i16 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @gsm_L_asl(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 31
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = icmp slt i32 %1, -31
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = ashr i64 %0, 63
  br label %17

8:                                                ; preds = %4
  %9 = icmp slt i32 %1, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = sub nsw i32 0, %1
  %12 = zext nneg i32 %11 to i64
  %13 = ashr i64 %0, %12
  br label %17

14:                                               ; preds = %8
  %15 = zext nneg i32 %1 to i64
  %16 = shl i64 %0, %15
  br label %17

17:                                               ; preds = %10, %2, %14, %6
  %18 = phi i64 [ %7, %6 ], [ %16, %14 ], [ 0, %2 ], [ %13, %10 ]
  ret i64 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @gsm_L_asr(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 31
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = ashr i64 %0, 63
  br label %17

6:                                                ; preds = %2
  %7 = icmp slt i32 %1, -31
  br i1 %7, label %17, label %8

8:                                                ; preds = %6
  %9 = icmp slt i32 %1, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = sub nsw i32 0, %1
  %12 = zext nneg i32 %11 to i64
  %13 = shl i64 %0, %12
  br label %17

14:                                               ; preds = %8
  %15 = zext nneg i32 %1 to i64
  %16 = ashr i64 %0, %15
  br label %17

17:                                               ; preds = %6, %14, %10, %4
  %18 = phi i64 [ %5, %4 ], [ %13, %10 ], [ %16, %14 ], [ 0, %6 ]
  ret i64 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext i16 @gsm_asl(i16 noundef signext %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 15
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = icmp slt i32 %1, -15
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = ashr i16 %0, 15
  br label %19

8:                                                ; preds = %4
  %9 = icmp slt i32 %1, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = sub nsw i32 0, %1
  %12 = sext i16 %0 to i32
  %13 = ashr i32 %12, %11
  %14 = trunc i32 %13 to i16
  br label %19

15:                                               ; preds = %8
  %16 = zext i16 %0 to i32
  %17 = shl i32 %16, %1
  %18 = trunc i32 %17 to i16
  br label %19

19:                                               ; preds = %10, %2, %15, %6
  %20 = phi i16 [ %7, %6 ], [ %18, %15 ], [ 0, %2 ], [ %14, %10 ]
  ret i16 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext i16 @gsm_asr(i16 noundef signext %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 15
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = ashr i16 %0, 15
  br label %19

6:                                                ; preds = %2
  %7 = icmp slt i32 %1, -15
  br i1 %7, label %19, label %8

8:                                                ; preds = %6
  %9 = icmp slt i32 %1, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = zext i16 %0 to i32
  %12 = sub nsw i32 0, %1
  %13 = shl i32 %11, %12
  %14 = trunc i32 %13 to i16
  br label %19

15:                                               ; preds = %8
  %16 = sext i16 %0 to i32
  %17 = ashr i32 %16, %1
  %18 = trunc i32 %17 to i16
  br label %19

19:                                               ; preds = %6, %15, %10, %4
  %20 = phi i16 [ %5, %4 ], [ %14, %10 ], [ %18, %15 ], [ 0, %6 ]
  ret i16 %20
}

; Function Attrs: nounwind uwtable
define dso_local signext i16 @gsm_div(i16 noundef signext %0, i16 noundef signext %1) local_unnamed_addr #1 {
  %3 = sext i16 %1 to i64
  %4 = icmp slt i16 %0, 0
  %5 = icmp slt i16 %1, %0
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 220, ptr noundef nonnull @__PRETTY_FUNCTION__.gsm_div) #4
  unreachable

8:                                                ; preds = %2
  %9 = icmp eq i16 %0, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %8
  %11 = sext i16 %0 to i64
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %16, %12 ], [ 15, %10 ]
  %14 = phi i16 [ %23, %12 ], [ 0, %10 ]
  %15 = phi i64 [ %21, %12 ], [ %11, %10 ]
  %16 = add nsw i32 %13, -1
  %17 = shl i16 %14, 1
  %18 = shl i64 %15, 1
  %19 = icmp sge i64 %18, %3
  %20 = select i1 %19, i64 %3, i64 0
  %21 = sub nsw i64 %18, %20
  %22 = zext i1 %19 to i16
  %23 = or disjoint i16 %17, %22
  %24 = icmp eq i32 %16, 0
  br i1 %24, label %25, label %12, !llvm.loop !8

25:                                               ; preds = %12, %8
  %26 = phi i16 [ 0, %8 ], [ %23, %12 ]
  ret i16 %26
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ssub.sat.i16(i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { noreturn nounwind }

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
