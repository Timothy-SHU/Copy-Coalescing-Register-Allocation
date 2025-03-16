; ModuleID = 'gs.c'
source_filename = "gs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_main_instance_s = type { ptr, ptr, ptr, i32, i64, i32, i32, i32, i32, %struct.gs_file_path_s }
%struct.gs_file_path_s = type { %struct.ref_s, %struct.ref_s, ptr, ptr, i32 }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @gs_main_instance_default() #2
  %4 = tail call i32 @gs_main_init_with_args(ptr noundef %3, i32 noundef %0, ptr noundef %1) #2
  %5 = getelementptr inbounds %struct.gs_main_instance_s, ptr %3, i64 0, i32 8
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @gs_main_run_start(ptr noundef %3) #2
  br label %9

9:                                                ; preds = %8, %2
  tail call void @gs_exit(i32 noundef 0) #2
  ret i32 0
}

declare ptr @gs_main_instance_default() local_unnamed_addr #1

declare i32 @gs_main_init_with_args(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @gs_main_run_start(ptr noundef) local_unnamed_addr #1

declare void @gs_exit(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 52}
!6 = !{!"gs_main_instance_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !11, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !12, i64 56}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!"gs_file_path_s", !13, i64 0, !13, i64 16, !7, i64 32, !7, i64 40, !10, i64 48}
!13 = !{!"ref_s", !14, i64 0, !8, i64 8}
!14 = !{!"tas_s", !15, i64 0, !15, i64 2}
!15 = !{!"short", !8, i64 0}
