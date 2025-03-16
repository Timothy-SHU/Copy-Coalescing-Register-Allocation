; ModuleID = 'src/rawcaudio.c'
source_filename = "src/rawcaudio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.adpcm_state = type { i16, i8 }

@.str = private unnamed_addr constant [15 x i8] c"CT_REPEAT_MAIN\00", align 1
@state = dso_local global %struct.adpcm_state zeroinitializer, align 4
@sbuf = dso_local global [1000 x i16] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [11 x i8] c"input file\00", align 1
@abuf = dso_local global [500 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  %1 = tail call ptr @getenv(ptr noundef nonnull @.str) #6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i64 @strtol(ptr nocapture noundef nonnull %1, ptr noundef null, i32 noundef 10) #6
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i64 [ %4, %3 ], [ 1, %0 ]
  %7 = icmp sgt i64 %6, 0
  br label %8

8:                                                ; preds = %22, %5
  %9 = load i32, ptr @state, align 4
  %10 = tail call i32 (i32, ptr, i32, ...) @read(i32 noundef 0, ptr noundef nonnull @sbuf, i32 noundef 2000) #6
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @perror(ptr noundef nonnull @.str.1) #7
  tail call void @exit(i32 noundef 1) #8
  unreachable

13:                                               ; preds = %8
  %14 = icmp eq i32 %10, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %13
  br i1 %7, label %16, label %22

16:                                               ; preds = %15
  %17 = lshr i32 %10, 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ 0, %16 ], [ %20, %18 ]
  store i32 %9, ptr @state, align 4
  tail call void @adpcm_coder(ptr noundef nonnull @sbuf, ptr noundef nonnull @abuf, i32 noundef %17, ptr noundef nonnull @state) #6
  %20 = add nuw nsw i64 %19, 1
  %21 = icmp eq i64 %20, %6
  br i1 %21, label %22, label %18, !llvm.loop !5

22:                                               ; preds = %18, %15
  %23 = lshr i32 %10, 2
  %24 = tail call i32 (i32, ptr, i32, ...) @write(i32 noundef 1, ptr noundef nonnull @abuf, i32 noundef %23) #6
  br i1 %14, label %25, label %8

25:                                               ; preds = %13, %22
  ret i32 0
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #1

declare i32 @read(...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

declare void @adpcm_coder(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @write(...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { cold }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
