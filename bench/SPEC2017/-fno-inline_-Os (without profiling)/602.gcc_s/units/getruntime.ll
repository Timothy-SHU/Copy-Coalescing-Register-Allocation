; ModuleID = 'getruntime.c'
source_filename = "getruntime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rusage = type { %struct.timeval, %struct.timeval, %union.anon, %union.anon.0, %union.anon.1, %union.anon.2, %union.anon.3, %union.anon.4, %union.anon.5, %union.anon.6, %union.anon.7, %union.anon.8, %union.anon.9, %union.anon.10, %union.anon.11, %union.anon.12 }
%struct.timeval = type { i64, i64 }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%union.anon.1 = type { i64 }
%union.anon.2 = type { i64 }
%union.anon.3 = type { i64 }
%union.anon.4 = type { i64 }
%union.anon.5 = type { i64 }
%union.anon.6 = type { i64 }
%union.anon.7 = type { i64 }
%union.anon.8 = type { i64 }
%union.anon.9 = type { i64 }
%union.anon.10 = type { i64 }
%union.anon.11 = type { i64 }
%union.anon.12 = type { i64 }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @get_run_time() local_unnamed_addr #0 {
  %1 = alloca %struct.rusage, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %1) #3
  %2 = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %1) #4
  %3 = load i64, ptr %1, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.timeval, ptr %1, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !12
  %6 = getelementptr inbounds %struct.rusage, ptr %1, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.rusage, ptr %1, i64 0, i32 1, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !14
  %10 = add i64 %7, %3
  %11 = mul i64 %10, 1000000
  %12 = add i64 %9, %5
  %13 = add i64 %12, %11
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %1) #3
  ret i64 %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @getrusage(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !9, i64 0}
!7 = !{!"rusage", !8, i64 0, !8, i64 16, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136}
!8 = !{!"timeval", !9, i64 0, !9, i64 8}
!9 = !{!"long", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!7, !9, i64 8}
!13 = !{!7, !9, i64 16}
!14 = !{!7, !9, i64 24}
