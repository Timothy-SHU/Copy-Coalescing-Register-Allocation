; ModuleID = 'src/preprocess.c'
source_filename = "src/preprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

@.str = private unnamed_addr constant [14 x i8] c"SO >= -0x4000\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"src/preprocess.c\00", align 1
@__PRETTY_FUNCTION__.Gsm_Preprocess = private unnamed_addr constant [56 x i8] c"void Gsm_Preprocess(struct gsm_state *, word *, word *)\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"SO <= 0x3FFC\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"s1 != MIN_WORD\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @Gsm_Preprocess(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !12
  %8 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !13
  %10 = zext i32 %9 to i64
  br label %11

11:                                               ; preds = %3, %57
  %12 = phi i32 [ 159, %3 ], [ %74, %57 ]
  %13 = phi ptr [ %1, %3 ], [ %21, %57 ]
  %14 = phi ptr [ %2, %3 ], [ %73, %57 ]
  %15 = phi i16 [ %5, %3 ], [ %20, %57 ]
  %16 = phi i64 [ %7, %3 ], [ %58, %57 ]
  %17 = phi i64 [ %10, %3 ], [ %66, %57 ]
  %18 = load i16, ptr %13, align 2, !tbaa !14
  %19 = ashr i16 %18, 1
  %20 = and i16 %19, -4
  %21 = getelementptr inbounds i16, ptr %13, i64 1
  %22 = icmp sgt i16 %20, -16385
  br i1 %22, label %24, label %23

23:                                               ; preds = %11
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 64, ptr noundef nonnull @__PRETTY_FUNCTION__.Gsm_Preprocess) #3
  unreachable

24:                                               ; preds = %11
  %25 = icmp slt i16 %20, 16381
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 65, ptr noundef nonnull @__PRETTY_FUNCTION__.Gsm_Preprocess) #3
  unreachable

27:                                               ; preds = %24
  %28 = sub i16 %20, %15
  %29 = icmp eq i16 %28, -32768
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 81, ptr noundef nonnull @__PRETTY_FUNCTION__.Gsm_Preprocess) #3
  unreachable

31:                                               ; preds = %27
  %32 = sext i16 %28 to i64
  %33 = shl nsw i64 %32, 15
  %34 = shl i64 %16, 33
  %35 = ashr i64 %34, 48
  %36 = shl i64 %35, 63
  %37 = shl i64 %16, 48
  %38 = sub i64 %37, %36
  %39 = ashr exact i64 %38, 48
  %40 = mul nsw i64 %39, 32735
  %41 = add nsw i64 %40, 16384
  %42 = ashr i64 %41, 15
  %43 = add nsw i64 %33, %42
  %44 = mul nsw i64 %35, 32735
  %45 = icmp slt i64 %35, 0
  %46 = add nsw i64 %43, %44
  br i1 %45, label %47, label %53

47:                                               ; preds = %31
  %48 = icmp sgt i64 %43, -1
  br i1 %48, label %57, label %49

49:                                               ; preds = %47
  %50 = add nsw i64 %46, 1
  %51 = icmp ult i64 %50, -2147483647
  %52 = select i1 %51, i64 -2147483648, i64 %46
  br label %57

53:                                               ; preds = %31
  %54 = icmp slt i64 %43, 1
  br i1 %54, label %57, label %55

55:                                               ; preds = %53
  %56 = tail call i64 @llvm.umin.i64(i64 %46, i64 2147483647)
  br label %57

57:                                               ; preds = %53, %47, %55, %49
  %58 = phi i64 [ %52, %49 ], [ %56, %55 ], [ %46, %47 ], [ %46, %53 ]
  %59 = icmp slt i64 %58, 0
  %60 = add nsw i64 %58, 16384
  %61 = icmp ugt i64 %58, 2147467262
  %62 = select i1 %61, i64 2147467262, i64 %60
  %63 = select i1 %59, i64 %60, i64 %62
  %64 = shl i64 %17, 48
  %65 = ashr exact i64 %64, 48
  %66 = lshr i64 %63, 15
  %67 = mul nsw i64 %65, -242064356802560
  %68 = add nsw i64 %67, 140737488355328
  %69 = lshr i64 %68, 48
  %70 = trunc i64 %66 to i16
  %71 = trunc i64 %69 to i16
  %72 = tail call i16 @llvm.sadd.sat.i16(i16 %70, i16 %71)
  %73 = getelementptr inbounds i16, ptr %14, i64 1
  store i16 %72, ptr %14, align 2, !tbaa !14
  %74 = add nsw i32 %12, -1
  %75 = icmp eq i32 %12, 0
  br i1 %75, label %76, label %11, !llvm.loop !15

76:                                               ; preds = %57
  %77 = trunc i64 %66 to i32
  store i16 %20, ptr %4, align 8, !tbaa !5
  store i64 %58, ptr %6, align 8, !tbaa !12
  %78 = shl i32 %77, 16
  %79 = ashr exact i32 %78, 16
  store i32 %79, ptr %8, align 8, !tbaa !13
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !9, i64 560}
!6 = !{!"gsm_state", !7, i64 0, !9, i64 560, !10, i64 568, !11, i64 576, !7, i64 580, !7, i64 596, !9, i64 628, !9, i64 630, !7, i64 632, !9, i64 650, !7, i64 652, !7, i64 653}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"short", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!"int", !7, i64 0}
!12 = !{!6, !10, i64 568}
!13 = !{!6, !11, i64 576}
!14 = !{!9, !9, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
