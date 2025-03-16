; ModuleID = 'src/zip.c'
source_filename = "src/zip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"\0AOut of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"\0ACompression/decompression error\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @err(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, 4
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %5 = select i1 %3, ptr @.str, ptr @.str.1
  %6 = select i1 %3, i32 7, i32 23
  %7 = tail call ptr @LANG(ptr noundef nonnull %5) #3
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef %7) #4
  tail call void @exitPGP(i32 noundef %6) #3
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @LANG(ptr noundef) local_unnamed_addr #2

declare void @exitPGP(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @error(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %3 = tail call ptr @LANG(ptr noundef nonnull @.str.1) #3
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef %3) #4
  tail call void @exitPGP(i32 noundef 23) #3
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { cold }

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
