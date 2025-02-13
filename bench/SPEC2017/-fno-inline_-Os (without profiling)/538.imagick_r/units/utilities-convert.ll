; ModuleID = 'utilities/convert.c'
source_filename = "utilities/convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @ConvertMain(i32 noundef %0, ptr noundef %1) #2, !range !5
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ConvertMain(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !6
  tail call void @MagickCoreGenesis(ptr noundef %3, i32 noundef 1) #3
  %4 = tail call ptr @AcquireExceptionInfo() #3
  %5 = tail call ptr @AcquireImageInfo() #3
  %6 = tail call i32 @MagickCommandGenesis(ptr noundef %5, ptr noundef nonnull @ConvertImageCommand, i32 noundef %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef %4) #3
  %7 = tail call ptr @DestroyImageInfo(ptr noundef %5) #3
  %8 = tail call ptr @DestroyExceptionInfo(ptr noundef %4) #3
  tail call void @MagickCoreTerminus() #3
  %9 = icmp ne i32 %6, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: optsize
declare void @MagickCoreGenesis(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @AcquireExceptionInfo() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @AcquireImageInfo() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @MagickCommandGenesis(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ConvertImageCommand(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize }
attributes #3 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{i32 0, i32 2}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
