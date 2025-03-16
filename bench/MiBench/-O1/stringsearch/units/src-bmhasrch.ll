; ModuleID = 'src/bmhasrch.c'
source_filename = "src/bmhasrch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@lowervec = dso_local local_unnamed_addr global [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7Fcueaaaaceeeiiiaae\91\92ooouuyou\9B\9C\9D\9E\9Faiounn\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@pat = internal unnamed_addr global ptr null, align 8
@patlen = internal unnamed_addr global i32 0, align 4
@skip = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@skip2 = internal unnamed_addr global i32 0, align 4

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @bmha_init(ptr noundef %0) local_unnamed_addr #0 {
  store ptr %0, ptr @pat, align 8, !tbaa !5
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #4
  %3 = trunc i64 %2 to i32
  store i32 %3, ptr @patlen, align 4, !tbaa !9
  %4 = and i64 %2, 4294967295
  %5 = getelementptr i8, ptr %0, i64 -1
  br label %6

6:                                                ; preds = %1, %32
  %7 = phi i64 [ 0, %1 ], [ %33, %32 ]
  %8 = getelementptr inbounds [256 x i32], ptr @skip, i64 0, i64 %7
  store i32 %3, ptr %8, align 4, !tbaa !9
  %9 = getelementptr inbounds [256 x i8], ptr @lowervec, i64 0, i64 %7
  br label %10

10:                                               ; preds = %14, %6
  %11 = phi i64 [ %15, %14 ], [ %4, %6 ]
  %12 = trunc i64 %11 to i32
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = add nsw i64 %11, -1
  %16 = load i8, ptr %9, align 1, !tbaa !11
  %17 = getelementptr i8, ptr %5, i64 %11
  %18 = load i8, ptr %17, align 1, !tbaa !11
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [256 x i8], ptr @lowervec, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !11
  %22 = icmp eq i8 %16, %21
  br i1 %22, label %23, label %10, !llvm.loop !12

23:                                               ; preds = %14
  %24 = trunc i64 %11 to i32
  %25 = sub i32 %3, %24
  store i32 %25, ptr %8, align 4, !tbaa !9
  br label %28

26:                                               ; preds = %10
  %27 = trunc i64 %11 to i32
  br label %28

28:                                               ; preds = %26, %23
  %29 = phi i32 [ %27, %26 ], [ %24, %23 ]
  %30 = icmp eq i32 %29, %3
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 32767, ptr %8, align 4, !tbaa !9
  br label %32

32:                                               ; preds = %28, %31
  %33 = add nuw nsw i64 %7, 1
  %34 = icmp eq i64 %33, 256
  br i1 %34, label %35, label %6, !llvm.loop !14

35:                                               ; preds = %32
  store i32 %3, ptr @skip2, align 4, !tbaa !9
  %36 = icmp sgt i32 %3, 1
  br i1 %36, label %37, label %61

37:                                               ; preds = %35
  %38 = add nsw i32 %3, -1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !11
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds [256 x i8], ptr @lowervec, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !11
  %45 = zext i32 %38 to i64
  br label %46

46:                                               ; preds = %37, %58
  %47 = phi i64 [ 0, %37 ], [ %59, %58 ]
  %48 = getelementptr inbounds i8, ptr %0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !11
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds [256 x i8], ptr @lowervec, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !11
  %53 = icmp eq i8 %52, %44
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = trunc i64 %47 to i32
  %56 = xor i32 %55, -1
  %57 = add nsw i32 %56, %3
  store i32 %57, ptr @skip2, align 4, !tbaa !9
  br label %58

58:                                               ; preds = %46, %54
  %59 = add nuw nsw i64 %47, 1
  %60 = icmp eq i64 %59, %45
  br i1 %60, label %61, label %46, !llvm.loop !15

61:                                               ; preds = %58, %35
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @bmha_search(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load i32, ptr @patlen, align 4, !tbaa !9
  %4 = xor i32 %1, -1
  %5 = add i32 %3, %4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %61, label %7

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
  %20 = load i8, ptr %19, align 1, !tbaa !11
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds [256 x i32], ptr @skip, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !9
  %24 = add nsw i32 %23, %17
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16, %58
  %27 = phi i32 [ %24, %16 ], [ %59, %58 ]
  br label %16, !llvm.loop !16

28:                                               ; preds = %16
  %29 = icmp slt i32 %24, %10
  br i1 %29, label %61, label %30

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
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = add nsw i64 %36, -1
  %41 = add nsw i64 %36, -1
  %42 = getelementptr inbounds i8, ptr %34, i64 %40
  %43 = load i8, ptr %42, align 1, !tbaa !11
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds [256 x i8], ptr @lowervec, i64 0, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !11
  %47 = getelementptr inbounds i8, ptr %12, i64 %40
  %48 = load i8, ptr %47, align 1, !tbaa !11
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds [256 x i8], ptr @lowervec, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !11
  %52 = icmp eq i8 %46, %51
  br i1 %52, label %35, label %53, !llvm.loop !17

53:                                               ; preds = %39
  %54 = trunc i64 %36 to i32
  br label %55

55:                                               ; preds = %35, %53
  %56 = phi i32 [ %54, %53 ], [ %15, %35 ]
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = add nsw i32 %13, %31
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %61, label %26

61:                                               ; preds = %58, %55, %28, %2
  %62 = phi ptr [ null, %2 ], [ null, %28 ], [ %34, %55 ], [ null, %58 ]
  ret ptr %62
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nofree nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
