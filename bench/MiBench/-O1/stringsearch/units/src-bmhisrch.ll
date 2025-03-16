; ModuleID = 'src/bmhisrch.c'
source_filename = "src/bmhisrch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@patlen = internal unnamed_addr global i32 0, align 4
@pat = internal unnamed_addr global ptr null, align 8
@skip = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@skip2 = internal unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @bmhi_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  %3 = trunc i64 %2 to i32
  store i32 %3, ptr @patlen, align 4, !tbaa !5
  %4 = load ptr, ptr @pat, align 8, !tbaa !9
  %5 = shl i64 %2, 32
  %6 = ashr exact i64 %5, 32
  %7 = tail call ptr @realloc(ptr noundef %4, i64 noundef %6) #11
  store ptr %7, ptr @pat, align 8, !tbaa !9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void @exit(i32 noundef 1) #12
  unreachable

10:                                               ; preds = %1
  %11 = tail call i32 @atexit(ptr noundef nonnull @bhmi_cleanup) #13
  %12 = load i32, ptr @patlen, align 4, !tbaa !5
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %19, %10
  br label %39

15:                                               ; preds = %10
  %16 = tail call ptr @__ctype_toupper_loc() #14
  %17 = load ptr, ptr @pat, align 8, !tbaa !9
  %18 = zext nneg i32 %12 to i64
  br label %19

19:                                               ; preds = %15, %19
  %20 = phi i64 [ 0, %15 ], [ %29, %19 ]
  %21 = load ptr, ptr %16, align 8, !tbaa !9
  %22 = getelementptr inbounds i8, ptr %0, i64 %20
  %23 = load i8, ptr %22, align 1, !tbaa !11
  %24 = sext i8 %23 to i64
  %25 = getelementptr inbounds i32, ptr %21, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !5
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds i8, ptr %17, i64 %20
  store i8 %27, ptr %28, align 1, !tbaa !11
  %29 = add nuw nsw i64 %20, 1
  %30 = icmp eq i64 %29, %18
  br i1 %30, label %14, label %19, !llvm.loop !12

31:                                               ; preds = %39
  %32 = add i32 %12, -1
  %33 = icmp sgt i32 %12, 1
  br i1 %33, label %34, label %59

34:                                               ; preds = %31
  %35 = load ptr, ptr @pat, align 8, !tbaa !9
  %36 = tail call ptr @__ctype_tolower_loc() #14
  %37 = load ptr, ptr %36, align 8, !tbaa !9
  %38 = zext i32 %32 to i64
  br label %44

39:                                               ; preds = %14, %39
  %40 = phi i64 [ %42, %39 ], [ 0, %14 ]
  %41 = getelementptr inbounds [256 x i32], ptr @skip, i64 0, i64 %40
  store i32 %12, ptr %41, align 4, !tbaa !5
  %42 = add nuw nsw i64 %40, 1
  %43 = icmp eq i64 %42, 256
  br i1 %43, label %31, label %39, !llvm.loop !14

44:                                               ; preds = %34, %44
  %45 = phi i64 [ 0, %34 ], [ %57, %44 ]
  %46 = trunc i64 %45 to i32
  %47 = xor i32 %46, -1
  %48 = add nsw i32 %12, %47
  %49 = getelementptr inbounds i8, ptr %35, i64 %45
  %50 = load i8, ptr %49, align 1, !tbaa !11
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds [256 x i32], ptr @skip, i64 0, i64 %51
  store i32 %48, ptr %52, align 4, !tbaa !5
  %53 = getelementptr inbounds i32, ptr %37, i64 %51
  %54 = load i32, ptr %53, align 4, !tbaa !5
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [256 x i32], ptr @skip, i64 0, i64 %55
  store i32 %48, ptr %56, align 4, !tbaa !5
  %57 = add nuw nsw i64 %45, 1
  %58 = icmp eq i64 %57, %38
  br i1 %58, label %59, label %44, !llvm.loop !15

59:                                               ; preds = %44, %31
  %60 = load ptr, ptr @pat, align 8, !tbaa !9
  %61 = sext i32 %32 to i64
  %62 = getelementptr inbounds i8, ptr %60, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !11
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds [256 x i32], ptr @skip, i64 0, i64 %64
  store i32 32767, ptr %65, align 4, !tbaa !5
  %66 = tail call ptr @__ctype_tolower_loc() #14
  %67 = load ptr, ptr %66, align 8, !tbaa !9
  %68 = zext i8 %63 to i64
  %69 = getelementptr inbounds i32, ptr %67, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !5
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [256 x i32], ptr @skip, i64 0, i64 %71
  store i32 32767, ptr %72, align 4, !tbaa !5
  store i32 %12, ptr @skip2, align 4, !tbaa !5
  %73 = icmp sgt i32 %12, 1
  br i1 %73, label %74, label %88

74:                                               ; preds = %59
  %75 = zext i32 %32 to i64
  br label %76

76:                                               ; preds = %74, %85
  %77 = phi i64 [ 0, %74 ], [ %86, %85 ]
  %78 = getelementptr inbounds i8, ptr %60, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !11
  %80 = icmp eq i8 %79, %63
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = trunc i64 %77 to i32
  %83 = xor i32 %82, -1
  %84 = add nsw i32 %12, %83
  store i32 %84, ptr @skip2, align 4, !tbaa !5
  br label %85

85:                                               ; preds = %76, %81
  %86 = add nuw nsw i64 %77, 1
  %87 = icmp eq i64 %86, %75
  br i1 %87, label %88, label %76, !llvm.loop !16

88:                                               ; preds = %85, %59
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @bhmi_cleanup() #5 {
  %1 = load ptr, ptr @pat, align 8, !tbaa !9
  tail call void @free(ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @bmhi_search(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = load i32, ptr @patlen, align 4, !tbaa !5
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
  %23 = load i32, ptr %22, align 4, !tbaa !5
  %24 = add nsw i32 %23, %17
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16, %58
  %27 = phi i32 [ %24, %16 ], [ %59, %58 ]
  br label %16, !llvm.loop !17

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
  %42 = tail call ptr @__ctype_toupper_loc() #14
  %43 = load ptr, ptr %42, align 8, !tbaa !9
  %44 = getelementptr inbounds i8, ptr %34, i64 %40
  %45 = load i8, ptr %44, align 1, !tbaa !11
  %46 = sext i8 %45 to i64
  %47 = getelementptr inbounds i32, ptr %43, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !5
  %49 = getelementptr inbounds i8, ptr %12, i64 %40
  %50 = load i8, ptr %49, align 1, !tbaa !11
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %35, label %53, !llvm.loop !18

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

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind allocsize(1) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(none) }

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
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
