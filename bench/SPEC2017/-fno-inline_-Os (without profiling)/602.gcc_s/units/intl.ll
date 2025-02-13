; ModuleID = 'intl.c'
source_filename = "intl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@open_quote = dso_local local_unnamed_addr global ptr @.str, align 8
@.str = private unnamed_addr constant [2 x i8] c"'\00", align 1
@close_quote = dso_local local_unnamed_addr global ptr @.str, align 8
@locale_encoding = dso_local local_unnamed_addr global ptr null, align 8
@locale_utf8 = dso_local local_unnamed_addr global i8 0, align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @fake_ngettext(ptr noundef readnone %0, ptr noundef readnone %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %2, 1
  %5 = select i1 %4, ptr %0, ptr %1
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_spaces(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #5
  %3 = add i64 %2, 1
  %4 = tail call ptr @xmalloc(i64 noundef %3) #6
  tail call void @llvm.memset.p0.i64(ptr align 1 %4, i8 32, i64 %2, i1 false)
  %5 = getelementptr inbounds i8, ptr %4, i64 %2
  store i8 0, ptr %5, align 1, !tbaa !6
  ret ptr %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
