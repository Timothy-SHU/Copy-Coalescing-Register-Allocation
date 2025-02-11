; ModuleID = 'liblzma/simple/powerpc.c'
source_filename = "liblzma/simple/powerpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_simple_powerpc_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @powerpc_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true) #3
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @powerpc_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = tail call i32 @lzma_simple_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @powerpc_code, i64 noundef 0, i64 noundef 4, i32 noundef 4, i1 noundef zeroext %3) #4
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_simple_powerpc_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @powerpc_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false) #3
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal i64 @powerpc_code(ptr nocapture readnone %0, i32 noundef %1, i1 noundef zeroext %2, ptr nocapture noundef %3, i64 noundef %4) #2 {
  %6 = icmp ult i64 %4, 4
  br i1 %6, label %58, label %7

7:                                                ; preds = %5, %55
  %8 = phi i64 [ %56, %55 ], [ 4, %5 ]
  %9 = phi i64 [ %8, %55 ], [ 0, %5 ]
  %10 = getelementptr inbounds i8, ptr %3, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !5
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 252
  %14 = icmp eq i32 %13, 72
  br i1 %14, label %15, label %55

15:                                               ; preds = %7
  %16 = or disjoint i64 %9, 3
  %17 = getelementptr inbounds i8, ptr %3, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !5
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 3
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %55

22:                                               ; preds = %15
  %23 = shl nuw nsw i32 %12, 24
  %24 = and i32 %23, 50331648
  %25 = or disjoint i64 %9, 1
  %26 = getelementptr inbounds i8, ptr %3, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !5
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 16
  %30 = or disjoint i64 %9, 2
  %31 = getelementptr inbounds i8, ptr %3, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !5
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = and i32 %19, 252
  %36 = trunc i64 %9 to i32
  %37 = add i32 %36, %1
  %38 = sub i32 0, %37
  %39 = select i1 %2, i32 %37, i32 %38
  %40 = add i32 %24, %39
  %41 = add i32 %40, %35
  %42 = add i32 %41, %29
  %43 = add i32 %42, %34
  %44 = lshr i32 %43, 24
  %45 = trunc i32 %44 to i8
  %46 = and i8 %45, 3
  %47 = or disjoint i8 %46, 72
  store i8 %47, ptr %10, align 1, !tbaa !5
  %48 = lshr i32 %43, 16
  %49 = trunc i32 %48 to i8
  store i8 %49, ptr %26, align 1, !tbaa !5
  %50 = lshr i32 %43, 8
  %51 = trunc i32 %50 to i8
  store i8 %51, ptr %31, align 1, !tbaa !5
  %52 = and i8 %18, 3
  %53 = trunc i32 %41 to i8
  %54 = or i8 %52, %53
  store i8 %54, ptr %17, align 1, !tbaa !5
  br label %55

55:                                               ; preds = %7, %15, %22
  %56 = add nuw i64 %8, 4
  %57 = icmp ugt i64 %56, %4
  br i1 %57, label %58, label %7, !llvm.loop !8

58:                                               ; preds = %55, %5
  %59 = phi i64 [ 0, %5 ], [ %8, %55 ]
  ret i64 %59
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize }
attributes #4 = { nounwind optsize }

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
!9 = !{!"llvm.loop.mustprogress"}
