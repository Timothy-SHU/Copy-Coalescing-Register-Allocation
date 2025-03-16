; ModuleID = 'src/bmhsrch.c'
source_filename = "src/bmhsrch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@pat = internal unnamed_addr global ptr null, align 8
@patlen = internal unnamed_addr global i32 0, align 4
@skip = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@skip2 = internal unnamed_addr global i32 0, align 4

; Function Attrs: nofree nounwind memory(write, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @bmh_init(ptr noundef %0) local_unnamed_addr #0 {
  store ptr %0, ptr @pat, align 8, !tbaa !5
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #4
  %3 = trunc i64 %2 to i32
  store i32 %3, ptr @patlen, align 4, !tbaa !9
  br label %8

4:                                                ; preds = %8
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %4
  %7 = and i64 %2, 4294967295
  br label %13

8:                                                ; preds = %1, %8
  %9 = phi i64 [ 0, %1 ], [ %11, %8 ]
  %10 = getelementptr inbounds [256 x i32], ptr @skip, i64 0, i64 %9
  store i32 %3, ptr %10, align 4, !tbaa !9
  %11 = add nuw nsw i64 %9, 1
  %12 = icmp eq i64 %11, 256
  br i1 %12, label %4, label %8, !llvm.loop !11

13:                                               ; preds = %6, %13
  %14 = phi i64 [ 0, %6 ], [ %22, %13 ]
  %15 = trunc i64 %14 to i32
  %16 = xor i32 %15, -1
  %17 = add nsw i32 %16, %3
  %18 = getelementptr inbounds i8, ptr %0, i64 %14
  %19 = load i8, ptr %18, align 1, !tbaa !13
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds [256 x i32], ptr @skip, i64 0, i64 %20
  store i32 %17, ptr %21, align 4, !tbaa !9
  %22 = add nuw nsw i64 %14, 1
  %23 = icmp eq i64 %22, %7
  br i1 %23, label %24, label %13, !llvm.loop !14

24:                                               ; preds = %13, %4
  %25 = shl i64 %2, 32
  %26 = ashr exact i64 %25, 32
  %27 = getelementptr i8, ptr %0, i64 %26
  %28 = getelementptr i8, ptr %27, i64 -1
  %29 = load i8, ptr %28, align 1, !tbaa !13
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds [256 x i32], ptr @skip, i64 0, i64 %30
  store i32 32767, ptr %31, align 4, !tbaa !9
  store i32 %3, ptr @skip2, align 4, !tbaa !9
  %32 = icmp sgt i32 %3, 1
  br i1 %32, label %33, label %48

33:                                               ; preds = %24
  %34 = add i64 %2, 4294967295
  %35 = and i64 %34, 4294967295
  br label %36

36:                                               ; preds = %33, %45
  %37 = phi i64 [ 0, %33 ], [ %46, %45 ]
  %38 = getelementptr inbounds i8, ptr %0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !13
  %40 = icmp eq i8 %39, %29
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = trunc i64 %37 to i32
  %43 = xor i32 %42, -1
  %44 = add nsw i32 %43, %3
  store i32 %44, ptr @skip2, align 4, !tbaa !9
  br label %45

45:                                               ; preds = %36, %41
  %46 = add nuw nsw i64 %37, 1
  %47 = icmp eq i64 %46, %35
  br i1 %47, label %48, label %36, !llvm.loop !15

48:                                               ; preds = %45, %24
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @bmh_search(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load i32, ptr @patlen, align 4, !tbaa !9
  %4 = xor i32 %1, -1
  %5 = add i32 %3, %4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %57, label %7

7:                                                ; preds = %2
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = sub nsw i32 32767, %1
  %11 = add i32 %3, -1
  %12 = load ptr, ptr @pat, align 8
  %13 = load i32, ptr @skip2, align 4
  %14 = zext i32 %11 to i64
  %15 = tail call i32 @llvm.smin.i32(i32 %11, i32 0)
  br label %16

16:                                               ; preds = %26, %7
  %17 = phi i32 [ %5, %7 ], [ %27, %26 ]
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %9, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !13
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds [256 x i32], ptr @skip, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !9
  %24 = add nsw i32 %23, %17
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16, %54
  %27 = phi i32 [ %24, %16 ], [ %55, %54 ]
  br label %16, !llvm.loop !16

28:                                               ; preds = %16
  %29 = icmp slt i32 %24, %10
  br i1 %29, label %57, label %30

30:                                               ; preds = %28
  %31 = add nsw i32 %24, -32767
  %32 = sub nsw i32 %31, %11
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %9, i64 %33
  br label %35

35:                                               ; preds = %39, %30
  %36 = phi i64 [ %41, %39 ], [ %14, %30 ]
  %37 = trunc i64 %36 to i32
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = add nsw i64 %36, -1
  %41 = add nsw i64 %36, -1
  %42 = getelementptr inbounds i8, ptr %34, i64 %40
  %43 = load i8, ptr %42, align 1, !tbaa !13
  %44 = sext i8 %43 to i32
  %45 = getelementptr inbounds i8, ptr %12, i64 %40
  %46 = load i8, ptr %45, align 1, !tbaa !13
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %35, label %49, !llvm.loop !17

49:                                               ; preds = %39
  %50 = trunc i64 %36 to i32
  br label %51

51:                                               ; preds = %35, %49
  %52 = phi i32 [ %50, %49 ], [ %15, %35 ]
  %53 = icmp slt i32 %52, 1
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = add nsw i32 %13, %31
  %56 = icmp sgt i32 %55, -1
  br i1 %56, label %57, label %26

57:                                               ; preds = %54, %51, %28, %2
  %58 = phi ptr [ null, %2 ], [ null, %28 ], [ %34, %51 ], [ null, %54 ]
  ret ptr %58
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nofree nounwind memory(write, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind willreturn memory(read) }

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
!10 = !{!"int", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!7, !7, i64 0}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
