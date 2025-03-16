; ModuleID = 'zpaint.c'
source_filename = "zpaint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }

@zpaint_op_defs.op_defs_ = internal constant [6 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zeofill }, %struct.op_def { ptr @.str.1, ptr @zfill }, %struct.op_def { ptr @.str.2, ptr @zstroke }, %struct.op_def { ptr @.str.3, ptr @zfillpage }, %struct.op_def { ptr @.str.4, ptr @zimagepath }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [8 x i8] c"0eofill\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"0fill\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"0stroke\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"0.fillpage\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"3.imagepath\00", align 1
@igs = external local_unnamed_addr global ptr, align 8
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zpaint_op_defs() local_unnamed_addr #0 {
  ret ptr @zpaint_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zeofill(ptr nocapture readnone %0) #1 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call i32 @gs_eofill(ptr noundef %2) #3
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @zfill(ptr nocapture readnone %0) #1 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call i32 @gs_fill(ptr noundef %2) #3
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @zstroke(ptr nocapture readnone %0) #1 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call i32 @gs_stroke(ptr noundef %2) #3
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @zfillpage(ptr nocapture readnone %0) #1 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call i32 @gs_fillpage(ptr noundef %2) #3
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @zimagepath(ptr noundef %0) #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -31
  %3 = load i8, ptr %2, align 1, !tbaa !9
  %4 = icmp eq i8 %3, 11
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %7 = tail call i32 @check_type_failed(ptr noundef nonnull %6) #3
  br label %48

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, ptr %0, i64 -15
  %10 = load i8, ptr %9, align 1, !tbaa !9
  %11 = icmp eq i8 %10, 11
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %14 = tail call i32 @check_type_failed(ptr noundef nonnull %13) #3
  br label %48

15:                                               ; preds = %8
  %16 = load i16, ptr %0, align 8, !tbaa !10
  %17 = and i16 %16, 16160
  %18 = icmp eq i16 %17, 4640
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, ptr %0, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !9
  %22 = icmp eq i8 %21, 18
  br i1 %22, label %48, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #3
  br label %48

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %27 = load i16, ptr %26, align 2, !tbaa !14
  %28 = zext i16 %27 to i64
  %29 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !9
  %31 = add nsw i64 %30, 7
  %32 = ashr i64 %31, 3
  %33 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !9
  %35 = mul nsw i64 %32, %34
  %36 = icmp sgt i64 %35, %28
  br i1 %36, label %48, label %37

37:                                               ; preds = %25
  %38 = load ptr, ptr @igs, align 8, !tbaa !5
  %39 = trunc i64 %30 to i32
  %40 = trunc i64 %34 to i32
  %41 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !9
  %43 = tail call i32 @gs_imagepath(ptr noundef %38, i32 noundef %39, i32 noundef %40, ptr noundef %42) #3
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %47 = getelementptr inbounds %struct.ref_s, ptr %46, i64 -3
  store ptr %47, ptr @o_stack, align 8, !tbaa !15
  br label %48

48:                                               ; preds = %37, %45, %25, %23, %19, %12, %5
  %49 = phi i32 [ %14, %12 ], [ %7, %5 ], [ %24, %23 ], [ -7, %19 ], [ -15, %25 ], [ %43, %45 ], [ %43, %37 ]
  ret i32 %49
}

declare i32 @gs_eofill(ptr noundef) local_unnamed_addr #2

declare i32 @gs_fill(ptr noundef) local_unnamed_addr #2

declare i32 @gs_stroke(ptr noundef) local_unnamed_addr #2

declare i32 @gs_fillpage(ptr noundef) local_unnamed_addr #2

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #2

declare i32 @gs_imagepath(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!9 = !{!7, !7, i64 0}
!10 = !{!11, !13, i64 0}
!11 = !{!"ref_s", !12, i64 0, !7, i64 8}
!12 = !{!"tas_s", !13, i64 0, !13, i64 2}
!13 = !{!"short", !7, i64 0}
!14 = !{!11, !13, i64 2}
!15 = !{!16, !6, i64 0}
!16 = !{!"ref_stack_s", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !17, i64 40, !17, i64 44, !11, i64 48, !17, i64 64, !17, i64 68, !17, i64 72, !17, i64 76, !17, i64 80, !11, i64 88, !17, i64 104, !17, i64 108, !17, i64 112, !6, i64 120}
!17 = !{!"int", !7, i64 0}
